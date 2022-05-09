; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-mxs.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-mxs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
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
%struct.mxs_i2c_dev = type { ptr, i32, ptr, %struct.completion, i32, %struct.i2c_adapter, i32, i32, i32, ptr, [2 x i32], i32, [2 x %struct.scatterlist], i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@__initcall__kmod_i2c_mxs__298_886_mxs_i2c_init4 = internal global ptr @mxs_i2c_init, section ".initcall4.init", align 4
@mxs_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mxs_i2c_probe, ptr @mxs_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_i2c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mxs_i2c_exit = internal global ptr @mxs_i2c_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [43 x i8] c"i2c_mxs.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [52 x i8] c"i2c_mxs.author=Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [39 x i8] c"i2c_mxs.description=MXS I2C Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [40 x i8] c"i2c_mxs.file=drivers/i2c/busses/i2c-mxs\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [20 x i8] c"i2c_mxs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias304 = internal constant [31 x i8] c"i2c_mxs.alias=platform:mxs-i2c\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mxs-i2c\00", [24 x i8] zeroinitializer }, align 32
@mxs_i2c_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rx-tx\00", [26 x i8] zeroinitializer }, align 32
@mxs_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request dma\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mxs_i2c_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/i2c/busses/i2c-mxs.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mxs_i2c_probe._entry_ptr = internal global ptr @mxs_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MXS I2C adapter\00", [16 x i8] zeroinitializer }, align 32
@mxs_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @mxs_i2c_xfer, ptr null, ptr null, ptr null, ptr @mxs_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mxs_i2c_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 96, i32 0, i16 0, i16 0, i16 0, i16 0 }, [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@mxs_i2c_get_ofdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 775, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"No I2C speed selected, using 100kHz\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mxs_i2c_get_ofdata\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mxs_i2c_get_ofdata._entry_ptr = internal global ptr @mxs_i2c_get_ofdata._entry, section ".printk_index", align 4
@mxs_i2c_derive_timing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.4, i32 711, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Speed too high (%u.%03u kHz), using %u.%03u kHz\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mxs_i2c_derive_timing\00", [42 x i8] zeroinitializer }, align 32
@mxs_i2c_derive_timing._entry_ptr = internal global ptr @mxs_i2c_derive_timing._entry, section ".printk_index", align 4
@mxs_i2c_derive_timing._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.4, i32 721, ptr @.str.12, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Speed too low (%u.%03u kHz), using %u.%03u kHz\0A\00", [48 x i8] zeroinitializer }, align 32
@mxs_i2c_derive_timing._entry_ptr.17 = internal global ptr @mxs_i2c_derive_timing._entry.15, section ".printk_index", align 4
@mxs_i2c_derive_timing.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.14, ptr @.str.4, ptr @.str.19, i8 0, i8 -67, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_mxs\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"speed=%u(actual %u) divider=%u low=%u high=%u xmit=%u rcv=%u leadin=%u bus_free=%u\0A\00", [44 x i8] zeroinitializer }, align 32
@mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 -113, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mxs_i2c_xfer_msg\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"addr: 0x%04x, len: %d, flags: 0x%x, stop: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.20, ptr @.str.4, ptr @.str.22, i8 0, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Done with err=%d\0A\00", [46 x i8] zeroinitializer }, align 32
@mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.20, ptr @.str.4, ptr @.str.23, i8 0, i8 -98, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Timeout!\0A\00", [22 x i8] zeroinitializer }, align 32
@mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxs_i2c_pio_setup_xfer\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"PIO: Failed to send SELECT command!\0A\00", [59 x i8] zeroinitializer }, align 32
@mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.4, ptr @.str.26, i8 0, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"PIO: Failed to send READ command!\0A\00", [61 x i8] zeroinitializer }, align 32
@mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.4, ptr @.str.27, i8 0, i8 127, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"PIO: len=%i pos=%i total=%i [W%s%s%s]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"S\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"E\00", [30 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"C\00", [30 x i8] zeroinitializer }, align 32
@mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.24, ptr @.str.4, ptr @.str.32, i8 0, i8 -124, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"PIO: Failed to finish WRITE cmd!\0A\00", [62 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@mxs_i2c_dma_setup_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 195, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get PIO reg. write descriptor.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxs_i2c_dma_setup_xfer\00", [41 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr = internal global ptr @mxs_i2c_dma_setup_xfer._entry, section ".printk_index", align 4
@mxs_i2c_dma_setup_xfer._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 208, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get DMA data write descriptor.\0A\00", [54 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr.37 = internal global ptr @mxs_i2c_dma_setup_xfer._entry.35, section ".printk_index", align 4
@mxs_i2c_dma_setup_xfer._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr.39 = internal global ptr @mxs_i2c_dma_setup_xfer._entry.38, section ".printk_index", align 4
@mxs_i2c_dma_setup_xfer._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 237, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr.41 = internal global ptr @mxs_i2c_dma_setup_xfer._entry.40, section ".printk_index", align 4
@mxs_i2c_dma_setup_xfer._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr.43 = internal global ptr @mxs_i2c_dma_setup_xfer._entry.42, section ".printk_index", align 4
@mxs_i2c_dma_setup_xfer._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 270, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@mxs_i2c_dma_setup_xfer._entry_ptr.45 = internal global ptr @mxs_i2c_dma_setup_xfer._entry.44, section ".printk_index", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967290]
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"mxs_i2c_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 873, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 875, i32 14 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"mxs_i2c_dt_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 784, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 827, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 829, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 841, i32 22 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"mxs_i2c_algo\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 682, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"mxs_i2c_quirks\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 687, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 87, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 773, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 775, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 708, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 718, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 754, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 571, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 627, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 632, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 419, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 431, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 506, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 527, i32 5 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 194, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 207, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 223, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 236, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 254, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private constant [32 x i8] c"../drivers/i2c/busses/i2c-mxs.c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.192, i32 269, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1169, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias304, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_mxs_i2c_exit, ptr @__initcall__kmod_i2c_mxs__298_886_mxs_i2c_init4, ptr @mxs_i2c_derive_timing._entry, ptr @mxs_i2c_derive_timing._entry.15, ptr @mxs_i2c_derive_timing._entry_ptr, ptr @mxs_i2c_derive_timing._entry_ptr.17, ptr @mxs_i2c_dma_setup_xfer._entry, ptr @mxs_i2c_dma_setup_xfer._entry.35, ptr @mxs_i2c_dma_setup_xfer._entry.38, ptr @mxs_i2c_dma_setup_xfer._entry.40, ptr @mxs_i2c_dma_setup_xfer._entry.42, ptr @mxs_i2c_dma_setup_xfer._entry.44, ptr @mxs_i2c_dma_setup_xfer._entry_ptr, ptr @mxs_i2c_dma_setup_xfer._entry_ptr.37, ptr @mxs_i2c_dma_setup_xfer._entry_ptr.39, ptr @mxs_i2c_dma_setup_xfer._entry_ptr.41, ptr @mxs_i2c_dma_setup_xfer._entry_ptr.43, ptr @mxs_i2c_dma_setup_xfer._entry_ptr.45, ptr @mxs_i2c_exit, ptr @mxs_i2c_get_ofdata._entry, ptr @mxs_i2c_get_ofdata._entry_ptr, ptr @mxs_i2c_probe._entry, ptr @mxs_i2c_probe._entry_ptr, ptr @mxs_i2c_driver, ptr @.str, ptr @mxs_i2c_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mxs_i2c_algo, ptr @mxs_i2c_quirks, ptr @init_completion.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.46], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_get_ofdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_derive_timing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_derive_timing._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxs_i2c_dma_setup_xfer._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_i2c_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mxs_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mxs_i2c_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mxs_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %speed.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1504, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #8
  %0 = ptrtoint ptr %call3 to i32
  %dev_type = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %dev_type, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end13.dev_name.exit_crit_edge ]
  %call.i102 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call11, ptr noundef nonnull @mxs_i2c_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool16.not = icmp eq i32 %call.i102, 0
  br i1 %tobool16.not, label %if.end18, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %dev_name.exit
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev1, ptr %call.i, align 8
  %cmd_complete = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %tobool20.not = icmp eq ptr %11, null
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %speed.i) #8
  %12 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %speed.i, align 4, !annotation !120
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.9, ptr noundef nonnull %speed.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i103 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i103, label %if.then21.mxs_i2c_get_ofdata.exit_crit_edge, label %do.end.i

if.then21.mxs_i2c_get_ofdata.exit_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxs_i2c_get_ofdata.exit

do.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %14, ptr noundef nonnull @.str.10) #11
  %17 = ptrtoint ptr %speed.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100000, ptr %speed.i, align 4
  br label %mxs_i2c_get_ofdata.exit

mxs_i2c_get_ofdata.exit:                          ; preds = %do.end.i, %if.then21.mxs_i2c_get_ofdata.exit_crit_edge
  %18 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %speed.i, align 4
  call fastcc void @mxs_i2c_derive_timing(ptr noundef nonnull %call.i, i32 noundef %19) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %speed.i) #8
  br label %if.end26

if.end26:                                         ; preds = %mxs_i2c_get_ofdata.exit, %if.end18.if.end26_crit_edge
  %call27 = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %dmach = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 9
  %20 = ptrtoint ptr %dmach to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call27, ptr %dmach, align 4
  %cmp.i105 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %do.end, label %if.end33

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  %21 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dmach, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call34 = call fastcc i32 @mxs_i2c_reset(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end33
  %adapter = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5
  %name = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 12
  %call38 = call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str.7, i32 noundef 48) #8
  %25 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %adapter, align 8
  %algo = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mxs_i2c_algo, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 17
  %27 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @mxs_i2c_quirks, ptr %quirks, align 8
  %parent = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 9, i32 1
  %28 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev1, ptr %parent, align 8
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %id, align 4
  %nr = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 11
  %31 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %nr, align 4
  %32 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node, align 8
  %of_node43 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 9, i32 27
  %34 = ptrtoint ptr %of_node43 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node43, align 8
  %driver_data.i.i106 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %call.i, i32 0, i32 5, i32 9, i32 8
  %35 = ptrtoint ptr %driver_data.i.i106 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i, ptr %driver_data.i.i106, align 4
  %call44 = call i32 @i2c_add_numbered_adapter(ptr noundef %adapter) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end37.cleanup_crit_edge, label %do.body47

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !121
  call void @arm_heavy_mb() #8
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %37, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #8, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %do.body47, %if.end37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %do.end, %dev_name.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then7 ], [ %23, %do.end ], [ %call44, %do.body47 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call.i102, %dev_name.exit.cleanup_crit_edge ], [ %call34, %if.end33.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %adapter = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %adapter) #8
  %dmach = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dmach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dmach, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_release_channel(ptr noundef nonnull %3) #8
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 128) #8, !srcloc !122
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_i2c_isr(i32 noundef %this_irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 64
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !124
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  %and = and i32 %3, 111
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = and i32 %2, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp eq i32 %4, 0
  br i1 %tobool3.not, label %if.else, label %if.end.do.body.sink.split_crit_edge

if.end.do.body.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

if.else:                                          ; preds = %if.end
  %5 = and i32 %2, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  br i1 %tobool6.not, label %if.else.do.body_crit_edge, label %if.else.do.body.sink.split_crit_edge

if.else.do.body.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.sink.split

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body.sink.split:                               ; preds = %if.else.do.body.sink.split_crit_edge, %if.end.do.body.sink.split_crit_edge
  %.sink = phi i32 [ -6, %if.end.do.body.sink.split_crit_edge ], [ -5, %if.else.do.body.sink.split_crit_edge ]
  %cmd_err = getelementptr inbounds %struct.mxs_i2c_dev, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %cmd_err, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.else.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %7 = shl nuw nsw i32 %and, 24
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %7) #8, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_i2c_reset(ptr nocapture noundef readonly %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %call = tail call i32 @stmp_reset_block(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %timing0 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %timing0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %timing0, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %timing1 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 7
  %7 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timing1, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !129
  tail call void @arm_heavy_mb() #8
  %timing2 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 8
  %12 = ptrtoint ptr %timing2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %timing2, align 8
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr11 = getelementptr i8, ptr %16, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %14) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 7274496) #8, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_numbered_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_i2c_derive_timing(ptr nocapture noundef %i2c, i32 noundef %speed) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %sub = add i32 %speed, 23999999
  %div = udiv i32 %sub, %speed
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %div)
  %cmp = icmp ult i32 %div, 25
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div2 = udiv i32 %speed, 1000
  %rem = urem i32 %speed, 1000
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.13, i32 noundef %div2, i32 noundef %rem, i32 noundef 960, i32 noundef 0) #11
  br label %if.end18

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1897, i32 %div)
  %cmp7 = icmp ugt i32 %div, 1897
  br i1 %cmp7, label %if.then8, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %div12 = udiv i32 %speed, 1000
  %2 = mul i32 %div12, 1000
  %rem13.decomposed = sub i32 %speed, %2
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %div12, i32 noundef %rem13.decomposed, i32 noundef 12, i32 noundef 651) #11
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.else.if.end18_crit_edge, %if.then
  %divider.0 = phi i32 [ 25, %if.then ], [ 1897, %if.then8 ], [ %div, %if.else.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %speed)
  %cmp19 = icmp ugt i32 %speed, 100000
  br i1 %cmp19, label %if.then20, label %if.else32

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %3 = trunc i32 %divider.0 to i16
  %4 = mul nuw nsw i16 %3, 13
  %div23.lhs.trunc = add nuw nsw i16 %4, 9
  %div23126 = udiv i16 %div23.lhs.trunc, 19
  %div23.zext = zext i16 %div23126 to i32
  %5 = mul nuw nsw i16 %3, 6
  %div30.lhs.trunc = add nuw nsw i16 %5, 9
  %div30127 = udiv i16 %div30.lhs.trunc, 19
  %div30.zext = zext i16 %div30127 to i32
  br label %if.end49

if.else32:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %mul34 = mul nuw nsw i32 %divider.0, 47
  %add38 = add nuw nsw i32 %mul34, 43
  %div39 = udiv i32 %add38, 87
  %mul42 = mul nuw nsw i32 %divider.0, 40
  %add46 = add nuw nsw i32 %mul42, 43
  %div47 = udiv i32 %add46, 87
  br label %if.end49

if.end49:                                         ; preds = %if.else32, %if.then20
  %leadin.0 = phi i32 [ 15, %if.then20 ], [ 113, %if.else32 ]
  %bus_free.0 = phi i32 [ 32, %if.then20 ], [ 113, %if.else32 ]
  %low_count.0.in = phi i32 [ %div23.zext, %if.then20 ], [ %div39, %if.else32 ]
  %high_count.0.in = phi i32 [ %div30.zext, %if.then20 ], [ %div47, %if.else32 ]
  %mul51 = mul nuw nsw i32 %high_count.0.in, 3
  %div52123 = lshr i32 %mul51, 3
  %mul55 = mul nuw nsw i32 %low_count.0.in, 3
  %div56124 = lshr i32 %mul55, 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_derive_timing.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_derive_timing, %do.end71)) #8
          to label %if.then63 [label %do.end71], !srcloc !131

if.then63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %div64 = udiv i32 24000000, %divider.0
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_derive_timing.__UNIQUE_ID_ddebug297, ptr noundef %1, ptr noundef nonnull @.str.19, i32 noundef %speed, i32 noundef %div64, i32 noundef %divider.0, i32 noundef %low_count.0.in, i32 noundef %high_count.0.in, i32 noundef %div56124, i32 noundef %div52123, i32 noundef %leadin.0, i32 noundef %bus_free.0) #8
  br label %do.end71

do.end71:                                         ; preds = %if.then63, %if.end49
  %conv77 = shl nuw nsw i32 %high_count.0.in, 16
  %shl = add nsw i32 %conv77, -458752
  %or = or i32 %shl, %div52123
  %timing0 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 6
  %6 = ptrtoint ptr %timing0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or, ptr %timing0, align 8
  %conv74 = shl nuw nsw i32 %low_count.0.in, 16
  %shl81 = add nsw i32 %conv74, -131072
  %or83 = or i32 %shl81, %div56124
  %timing1 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 7
  %7 = ptrtoint ptr %timing1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or83, ptr %timing1, align 4
  %shl84 = shl nuw nsw i32 %bus_free.0, 16
  %or85 = or i32 %shl84, %leadin.0
  %timing2 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 8
  %8 = ptrtoint ptr %timing2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or85, ptr %timing2, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mxs_i2c_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp9 = icmp sgt i32 %num, 0
  br i1 %cmp9, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sub = add nsw i32 %num, -1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.010
  call void @__sanitizer_cov_trace_cmp4(i32 %i.010, i32 %sub)
  %cmp1 = icmp eq i32 %i.010, %sub
  %conv = zext i1 %cmp1 to i32
  %call = tail call fastcc i32 @mxs_i2c_xfer_msg(ptr noundef %adap, ptr noundef %arrayidx, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %entry.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ], [ %call, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mxs_i2c_func(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_i2c_xfer_msg(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %stop) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stop)
  %tobool.not = icmp eq i32 %stop, 0
  %cond = select i1 %tobool.not, i32 0, i32 1048576
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_xfer_msg, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %msg, align 4
  %conv = zext i16 %5 to i32
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %len, align 4
  %conv6 = zext i16 %7 to i32
  %flags7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags7, align 2
  %conv8 = zext i16 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug294, ptr noundef %3, ptr noundef nonnull @.str.21, i32 noundef %conv, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %stop) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags9 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %10 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags9, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool11.not = icmp eq i16 %12, 0
  %len22 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len22, align 4
  br i1 %tobool11.not, label %land.lhs.true21, label %if.end16

if.end16:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %14)
  %cmp = icmp ult i16 %14, 5
  br i1 %cmp, label %if.end16.if.then29_crit_edge, label %if.end16.if.else_crit_edge

if.end16.if.else_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.end16.if.then29_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

land.lhs.true21:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %14)
  %cmp24 = icmp ult i16 %14, 7
  br i1 %cmp24, label %land.lhs.true21.if.then29_crit_edge, label %land.lhs.true21.if.else_crit_edge

land.lhs.true21.if.else_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true21.if.then29_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true21.if.then29_crit_edge, %if.end16.if.then29_crit_edge
  %cmd_err = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cmd_err, align 4
  %call30 = tail call fastcc i32 @mxs_i2c_pio_setup_xfer(ptr noundef %adap, ptr noundef %msg, i32 noundef %cond)
  %16 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call30, label %if.then35 [
    i32 0, label %if.then29.if.end56_crit_edge
    i32 -6, label %if.then29.do.body53_crit_edge
  ]

if.then29.do.body53_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.then29.if.end56_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.then35:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = tail call fastcc i32 @mxs_i2c_reset(ptr noundef %1)
  br label %if.end56

if.else:                                          ; preds = %land.lhs.true21.if.else_crit_edge, %if.end16.if.else_crit_edge
  %cmd_err157 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %cmd_err157 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cmd_err157, align 4
  %cmd_complete = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %cmd_complete, align 4
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %msg, align 4
  %conv.i.i = zext i16 %22 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %23 = ptrtoint ptr %flags9 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags9, align 2
  %25 = and i16 %24, 1
  %26 = zext i16 %25 to i32
  %shl.i.masked.i = and i32 %shl.i.i, 254
  %conv.i = or i32 %shl.i.masked.i, %26
  %addr_data.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 11
  %27 = ptrtoint ptr %addr_data.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %addr_data.i, align 8
  %28 = load i16, ptr %flags9, align 2
  %29 = and i16 %28, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i = icmp eq i16 %29, 0
  %dma_read61.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 13
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %30 = ptrtoint ptr %dma_read61.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %dma_read61.i, align 4
  %pio_data.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 10
  %31 = ptrtoint ptr %pio_data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2818049, ptr %pio_data.i, align 8
  %dmach.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 9
  %32 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dmach.i, align 4
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.then.i.do.end.i_crit_edge, label %lor.lhs.false.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %if.then.i
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tobool1.not.i.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i.i = tail call ptr %37(ptr noundef nonnull %33, ptr noundef %pio_data.i, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null) #8
  %tobool7.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool7.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, label %if.end.i

dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i.do.end.i_crit_edge, %lor.lhs.false2.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %38 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.33) #11
  br label %select_init_pio_fail.i

if.end.i:                                         ; preds = %dmaengine_prep_slave_sg.exit.i
  %sg_io.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12
  tail call void @sg_init_one(ptr noundef %sg_io.i, ptr noundef %addr_data.i, i32 noundef 1) #8
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %20, align 8
  %call14.i = tail call i32 @dma_map_sg_attrs(ptr noundef %41, ptr noundef %sg_io.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %42 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dmach.i, align 4
  %tobool.not.i183.i = icmp eq ptr %43, null
  br i1 %tobool.not.i183.i, label %if.end.i.do.end23.i_crit_edge, label %lor.lhs.false.i185.i

if.end.i.do.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

lor.lhs.false.i185.i:                             ; preds = %if.end.i
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %tobool1.not.i184.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i184.i, label %lor.lhs.false.i185.i.do.end23.i_crit_edge, label %lor.lhs.false2.i188.i

lor.lhs.false.i185.i.do.end23.i_crit_edge:        ; preds = %lor.lhs.false.i185.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

lor.lhs.false2.i188.i:                            ; preds = %lor.lhs.false.i185.i
  %device_prep_slave_sg.i186.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 39
  %46 = ptrtoint ptr %device_prep_slave_sg.i186.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_prep_slave_sg.i186.i, align 4
  %tobool4.not.i187.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i187.i, label %lor.lhs.false2.i188.i.do.end23.i_crit_edge, label %dmaengine_prep_slave_sg.exit192.i

lor.lhs.false2.i188.i.do.end23.i_crit_edge:       ; preds = %lor.lhs.false2.i188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

dmaengine_prep_slave_sg.exit192.i:                ; preds = %lor.lhs.false2.i188.i
  %call.i189.i = tail call ptr %47(ptr noundef nonnull %43, ptr noundef %sg_io.i, i32 noundef 1, i32 noundef 1, i32 noundef -2147483647, ptr noundef null) #8
  %tobool19.not.i = icmp eq ptr %call.i189.i, null
  br i1 %tobool19.not.i, label %dmaengine_prep_slave_sg.exit192.i.do.end23.i_crit_edge, label %if.end25.i

dmaengine_prep_slave_sg.exit192.i.do.end23.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit192.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end23.i

do.end23.i:                                       ; preds = %dmaengine_prep_slave_sg.exit192.i.do.end23.i_crit_edge, %lor.lhs.false2.i188.i.do.end23.i_crit_edge, %lor.lhs.false.i185.i.do.end23.i_crit_edge, %if.end.i.do.end23.i_crit_edge
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.36) #11
  br label %select_init_dma_fail.i

if.end25.i:                                       ; preds = %dmaengine_prep_slave_sg.exit192.i
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len.i, align 4
  %conv26.i = zext i16 %51 to i32
  %or.i = or i32 %cond, %conv26.i
  %or28.i = or i32 %or.i, 33685504
  %arrayidx30.i = getelementptr %struct.mxs_i2c_dev, ptr %20, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or28.i, ptr %arrayidx30.i, align 4
  %53 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dmach.i, align 4
  %tobool.not.i193.i = icmp eq ptr %54, null
  br i1 %tobool.not.i193.i, label %if.end25.i.do.end39.i_crit_edge, label %lor.lhs.false.i195.i

if.end25.i.do.end39.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

lor.lhs.false.i195.i:                             ; preds = %if.end25.i
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %tobool1.not.i194.i = icmp eq ptr %56, null
  br i1 %tobool1.not.i194.i, label %lor.lhs.false.i195.i.do.end39.i_crit_edge, label %lor.lhs.false2.i198.i

lor.lhs.false.i195.i.do.end39.i_crit_edge:        ; preds = %lor.lhs.false.i195.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

lor.lhs.false2.i198.i:                            ; preds = %lor.lhs.false.i195.i
  %device_prep_slave_sg.i196.i = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 39
  %57 = ptrtoint ptr %device_prep_slave_sg.i196.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_prep_slave_sg.i196.i, align 4
  %tobool4.not.i197.i = icmp eq ptr %58, null
  br i1 %tobool4.not.i197.i, label %lor.lhs.false2.i198.i.do.end39.i_crit_edge, label %dmaengine_prep_slave_sg.exit202.i

lor.lhs.false2.i198.i.do.end39.i_crit_edge:       ; preds = %lor.lhs.false2.i198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

dmaengine_prep_slave_sg.exit202.i:                ; preds = %lor.lhs.false2.i198.i
  %call.i199.i = tail call ptr %58(ptr noundef nonnull %54, ptr noundef %arrayidx30.i, i32 noundef 1, i32 noundef 4, i32 noundef 1, ptr noundef null) #8
  %tobool35.not.i = icmp eq ptr %call.i199.i, null
  br i1 %tobool35.not.i, label %dmaengine_prep_slave_sg.exit202.i.do.end39.i_crit_edge, label %if.end41.i

dmaengine_prep_slave_sg.exit202.i.do.end39.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39.i

do.end39.i:                                       ; preds = %dmaengine_prep_slave_sg.exit202.i.do.end39.i_crit_edge, %lor.lhs.false2.i198.i.do.end39.i_crit_edge, %lor.lhs.false.i195.i.do.end39.i_crit_edge, %if.end25.i.do.end39.i_crit_edge
  %59 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.33) #11
  br label %select_init_dma_fail.i

if.end41.i:                                       ; preds = %dmaengine_prep_slave_sg.exit202.i
  %arrayidx43.i = getelementptr %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 1
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %61 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf.i, align 4
  %63 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len.i, align 4
  %conv45.i = zext i16 %64 to i32
  tail call void @sg_init_one(ptr noundef %arrayidx43.i, ptr noundef %62, i32 noundef %conv45.i) #8
  %65 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %20, align 8
  %call49.i = tail call i32 @dma_map_sg_attrs(ptr noundef %66, ptr noundef %arrayidx43.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  %67 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dmach.i, align 4
  %tobool.not.i203.i = icmp eq ptr %68, null
  br i1 %tobool.not.i203.i, label %if.end41.i.do.end58.i_crit_edge, label %lor.lhs.false.i205.i

if.end41.i.do.end58.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

lor.lhs.false.i205.i:                             ; preds = %if.end41.i
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 4
  %tobool1.not.i204.i = icmp eq ptr %70, null
  br i1 %tobool1.not.i204.i, label %lor.lhs.false.i205.i.do.end58.i_crit_edge, label %lor.lhs.false2.i208.i

lor.lhs.false.i205.i.do.end58.i_crit_edge:        ; preds = %lor.lhs.false.i205.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

lor.lhs.false2.i208.i:                            ; preds = %lor.lhs.false.i205.i
  %device_prep_slave_sg.i206.i = getelementptr inbounds %struct.dma_device, ptr %70, i32 0, i32 39
  %71 = ptrtoint ptr %device_prep_slave_sg.i206.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %device_prep_slave_sg.i206.i, align 4
  %tobool4.not.i207.i = icmp eq ptr %72, null
  br i1 %tobool4.not.i207.i, label %lor.lhs.false2.i208.i.do.end58.i_crit_edge, label %dmaengine_prep_slave_sg.exit212.i

lor.lhs.false2.i208.i.do.end58.i_crit_edge:       ; preds = %lor.lhs.false2.i208.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

dmaengine_prep_slave_sg.exit212.i:                ; preds = %lor.lhs.false2.i208.i
  %call.i209.i = tail call ptr %72(ptr noundef nonnull %68, ptr noundef %arrayidx43.i, i32 noundef 1, i32 noundef 2, i32 noundef -2147483647, ptr noundef null) #8
  %tobool54.not.i = icmp eq ptr %call.i209.i, null
  br i1 %tobool54.not.i, label %dmaengine_prep_slave_sg.exit212.i.do.end58.i_crit_edge, label %dmaengine_prep_slave_sg.exit212.i.if.end41_crit_edge

dmaengine_prep_slave_sg.exit212.i.if.end41_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

dmaengine_prep_slave_sg.exit212.i.do.end58.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end58.i

do.end58.i:                                       ; preds = %dmaengine_prep_slave_sg.exit212.i.do.end58.i_crit_edge, %lor.lhs.false2.i208.i.do.end58.i_crit_edge, %lor.lhs.false.i205.i.do.end58.i_crit_edge, %if.end41.i.do.end58.i_crit_edge
  %73 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.36) #11
  %75 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %20, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %76, ptr noundef %arrayidx43.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  br label %select_init_dma_fail.i

if.else.i:                                        ; preds = %if.else
  %77 = ptrtoint ptr %dma_read61.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %dma_read61.i, align 4
  %len63.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %78 = ptrtoint ptr %len63.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %len63.i, align 4
  %80 = add i16 %79, 1
  %and65.i = zext i16 %80 to i32
  %or62.i = or i32 %cond, %and65.i
  %or66.i = or i32 %or62.i, 720896
  %pio_data67.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 10
  %81 = ptrtoint ptr %pio_data67.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or66.i, ptr %pio_data67.i, align 8
  %dmach69.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 9
  %82 = ptrtoint ptr %dmach69.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dmach69.i, align 4
  %tobool.not.i213.i = icmp eq ptr %83, null
  br i1 %tobool.not.i213.i, label %if.else.i.do.end77.i_crit_edge, label %lor.lhs.false.i215.i

if.else.i.do.end77.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77.i

lor.lhs.false.i215.i:                             ; preds = %if.else.i
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %83, align 4
  %tobool1.not.i214.i = icmp eq ptr %85, null
  br i1 %tobool1.not.i214.i, label %lor.lhs.false.i215.i.do.end77.i_crit_edge, label %lor.lhs.false2.i218.i

lor.lhs.false.i215.i.do.end77.i_crit_edge:        ; preds = %lor.lhs.false.i215.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77.i

lor.lhs.false2.i218.i:                            ; preds = %lor.lhs.false.i215.i
  %device_prep_slave_sg.i216.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 39
  %86 = ptrtoint ptr %device_prep_slave_sg.i216.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %device_prep_slave_sg.i216.i, align 4
  %tobool4.not.i217.i = icmp eq ptr %87, null
  br i1 %tobool4.not.i217.i, label %lor.lhs.false2.i218.i.do.end77.i_crit_edge, label %dmaengine_prep_slave_sg.exit222.i

lor.lhs.false2.i218.i.do.end77.i_crit_edge:       ; preds = %lor.lhs.false2.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77.i

dmaengine_prep_slave_sg.exit222.i:                ; preds = %lor.lhs.false2.i218.i
  %call.i219.i = tail call ptr %87(ptr noundef nonnull %83, ptr noundef %pio_data67.i, i32 noundef 1, i32 noundef 4, i32 noundef 0, ptr noundef null) #8
  %tobool73.not.i = icmp eq ptr %call.i219.i, null
  br i1 %tobool73.not.i, label %dmaengine_prep_slave_sg.exit222.i.do.end77.i_crit_edge, label %if.end79.i

dmaengine_prep_slave_sg.exit222.i.do.end77.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77.i

do.end77.i:                                       ; preds = %dmaengine_prep_slave_sg.exit222.i.do.end77.i_crit_edge, %lor.lhs.false2.i218.i.do.end77.i_crit_edge, %lor.lhs.false.i215.i.do.end77.i_crit_edge, %if.else.i.do.end77.i_crit_edge
  %88 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.33) #11
  br label %write_init_pio_fail.i

if.end79.i:                                       ; preds = %dmaengine_prep_slave_sg.exit222.i
  %sg_io80.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12
  tail call void @sg_init_table(ptr noundef %sg_io80.i, i32 noundef 2) #8
  %90 = ptrtoint ptr %addr_data.i to i32
  %cmp.i.i = icmp ugt ptr %addr_data.i, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end79.i.do.body5.i.i_crit_edge, !prof !132

if.end79.i.do.body5.i.i_crit_edge:                ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

land.lhs.true.i.i:                                ; preds = %if.end79.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %91 = load ptr, ptr @high_memory, align 4
  %cmp1.i.i = icmp ugt ptr %91, %addr_data.i
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.do.body5.i.i_crit_edge, !prof !132

land.lhs.true.i.i.do.body5.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %sub.i.i = add i32 %90, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %92 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %92, %shr.i.i
  %call.i223.i = tail call i32 @pfn_valid(i32 noundef %add.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.i)
  %tobool.i.i = icmp eq i32 %call.i223.i, 0
  br i1 %tobool.i.i, label %land.rhs.i.i.do.body5.i.i_crit_edge, label %do.end8.i.i, !prof !133

land.rhs.i.i.do.body5.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %land.rhs.i.i.do.body5.i.i_crit_edge, %land.lhs.true.i.i.do.body5.i.i_crit_edge, %if.end79.i.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !134
  unreachable

do.end8.i.i:                                      ; preds = %land.rhs.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %93 = load ptr, ptr @mem_map, align 4
  %add.ptr.i.i = getelementptr %struct.page, ptr %93, i32 %shr.i.i
  %94 = ptrtoint ptr %sg_io80.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %sg_io80.i, align 4
  %96 = ptrtoint ptr %add.ptr.i.i to i32
  %and2.i.i.i.i = and i32 %96, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %do.body11.i.i.i.i, label %do.body5.i.i.i.i, !prof !132

do.body5.i.i.i.i:                                 ; preds = %do.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !135
  unreachable

do.body11.i.i.i.i:                                ; preds = %do.end8.i.i
  %and.i.i.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.i.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i.i, label %sg_set_buf.exit.i, label %do.body19.i.i.i.i, !prof !132

do.body19.i.i.i.i:                                ; preds = %do.body11.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !136
  unreachable

sg_set_buf.exit.i:                                ; preds = %do.body11.i.i.i.i
  %and.i.i = and i32 %90, 4095
  %and.i.i.i.i = and i32 %95, 3
  %or.i.i.i.i = or i32 %and.i.i.i.i, %96
  %97 = ptrtoint ptr %sg_io80.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or.i.i.i.i, ptr %sg_io80.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 0, i32 1
  %98 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and.i.i, ptr %offset1.i.i.i, align 4
  %length.i.i.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 0, i32 2
  %99 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %length.i.i.i, align 4
  %arrayidx85.i = getelementptr %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 1
  %buf86.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %100 = ptrtoint ptr %buf86.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %buf86.i, align 4
  %102 = ptrtoint ptr %len63.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %len63.i, align 4
  %conv88.i = zext i16 %103 to i32
  %104 = ptrtoint ptr %101 to i32
  %cmp.i224.i = icmp ugt ptr %101, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i224.i, label %land.lhs.true.i226.i, label %sg_set_buf.exit.i.do.body5.i233.i_crit_edge, !prof !132

sg_set_buf.exit.i.do.body5.i233.i_crit_edge:      ; preds = %sg_set_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i233.i

land.lhs.true.i226.i:                             ; preds = %sg_set_buf.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %105 = load ptr, ptr @high_memory, align 4
  %cmp1.i225.i = icmp ugt ptr %105, %101
  br i1 %cmp1.i225.i, label %land.rhs.i232.i, label %land.lhs.true.i226.i.do.body5.i233.i_crit_edge, !prof !132

land.lhs.true.i226.i.do.body5.i233.i_crit_edge:   ; preds = %land.lhs.true.i226.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i233.i

land.rhs.i232.i:                                  ; preds = %land.lhs.true.i226.i
  %sub.i227.i = add i32 %104, 1073741824
  %shr.i228.i = lshr i32 %sub.i227.i, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %106 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i229.i = add i32 %106, %shr.i228.i
  %call.i230.i = tail call i32 @pfn_valid(i32 noundef %add.i229.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i230.i)
  %tobool.i231.i = icmp eq i32 %call.i230.i, 0
  br i1 %tobool.i231.i, label %land.rhs.i232.i.do.body5.i233.i_crit_edge, label %do.end8.i237.i, !prof !133

land.rhs.i232.i.do.body5.i233.i_crit_edge:        ; preds = %land.rhs.i232.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5.i233.i

do.body5.i233.i:                                  ; preds = %land.rhs.i232.i.do.body5.i233.i_crit_edge, %land.lhs.true.i226.i.do.body5.i233.i_crit_edge, %sg_set_buf.exit.i.do.body5.i233.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #8, !srcloc !134
  unreachable

do.end8.i237.i:                                   ; preds = %land.rhs.i232.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %107 = load ptr, ptr @mem_map, align 4
  %add.ptr.i234.i = getelementptr %struct.page, ptr %107, i32 %shr.i228.i
  %108 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx85.i, align 4
  %110 = ptrtoint ptr %add.ptr.i234.i to i32
  %and2.i.i.i235.i = and i32 %110, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i235.i)
  %tobool.not.i.i.i236.i = icmp eq i32 %and2.i.i.i235.i, 0
  br i1 %tobool.not.i.i.i236.i, label %do.body11.i.i.i241.i, label %do.body5.i.i.i238.i, !prof !132

do.body5.i.i.i238.i:                              ; preds = %do.end8.i237.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #8, !srcloc !135
  unreachable

do.body11.i.i.i241.i:                             ; preds = %do.end8.i237.i
  %and.i.i.i.i239.i = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i239.i)
  %tobool.i.not.i.i.i240.i = icmp eq i32 %and.i.i.i.i239.i, 0
  br i1 %tobool.i.not.i.i.i240.i, label %sg_set_buf.exit248.i, label %do.body19.i.i.i242.i, !prof !132

do.body19.i.i.i242.i:                             ; preds = %do.body11.i.i.i241.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #8, !srcloc !136
  unreachable

sg_set_buf.exit248.i:                             ; preds = %do.body11.i.i.i241.i
  %and.i243.i = and i32 %104, 4095
  %and.i.i.i244.i = and i32 %109, 3
  %or.i.i.i245.i = or i32 %and.i.i.i244.i, %110
  %111 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or.i.i.i245.i, ptr %arrayidx85.i, align 4
  %offset1.i.i246.i = getelementptr %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 1, i32 1
  %112 = ptrtoint ptr %offset1.i.i246.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %and.i243.i, ptr %offset1.i.i246.i, align 4
  %length.i.i247.i = getelementptr %struct.mxs_i2c_dev, ptr %20, i32 0, i32 12, i32 1, i32 2
  %113 = ptrtoint ptr %length.i.i247.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %conv88.i, ptr %length.i.i247.i, align 4
  %114 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %20, align 8
  %call92.i = tail call i32 @dma_map_sg_attrs(ptr noundef %115, ptr noundef %sg_io80.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  %116 = ptrtoint ptr %dmach69.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dmach69.i, align 4
  %tobool.not.i249.i = icmp eq ptr %117, null
  br i1 %tobool.not.i249.i, label %sg_set_buf.exit248.i.do.end101.i_crit_edge, label %lor.lhs.false.i251.i

sg_set_buf.exit248.i.do.end101.i_crit_edge:       ; preds = %sg_set_buf.exit248.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101.i

lor.lhs.false.i251.i:                             ; preds = %sg_set_buf.exit248.i
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 4
  %tobool1.not.i250.i = icmp eq ptr %119, null
  br i1 %tobool1.not.i250.i, label %lor.lhs.false.i251.i.do.end101.i_crit_edge, label %lor.lhs.false2.i254.i

lor.lhs.false.i251.i.do.end101.i_crit_edge:       ; preds = %lor.lhs.false.i251.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101.i

lor.lhs.false2.i254.i:                            ; preds = %lor.lhs.false.i251.i
  %device_prep_slave_sg.i252.i = getelementptr inbounds %struct.dma_device, ptr %119, i32 0, i32 39
  %120 = ptrtoint ptr %device_prep_slave_sg.i252.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %device_prep_slave_sg.i252.i, align 4
  %tobool4.not.i253.i = icmp eq ptr %121, null
  br i1 %tobool4.not.i253.i, label %lor.lhs.false2.i254.i.do.end101.i_crit_edge, label %dmaengine_prep_slave_sg.exit258.i

lor.lhs.false2.i254.i.do.end101.i_crit_edge:      ; preds = %lor.lhs.false2.i254.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101.i

dmaengine_prep_slave_sg.exit258.i:                ; preds = %lor.lhs.false2.i254.i
  %call.i255.i = tail call ptr %121(ptr noundef nonnull %117, ptr noundef %sg_io80.i, i32 noundef 2, i32 noundef 1, i32 noundef -2147483647, ptr noundef null) #8
  %tobool97.not.i = icmp eq ptr %call.i255.i, null
  br i1 %tobool97.not.i, label %dmaengine_prep_slave_sg.exit258.i.do.end101.i_crit_edge, label %dmaengine_prep_slave_sg.exit258.i.if.end41_crit_edge

dmaengine_prep_slave_sg.exit258.i.if.end41_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

dmaengine_prep_slave_sg.exit258.i.do.end101.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit258.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end101.i

do.end101.i:                                      ; preds = %dmaengine_prep_slave_sg.exit258.i.do.end101.i_crit_edge, %lor.lhs.false2.i254.i.do.end101.i_crit_edge, %lor.lhs.false.i251.i.do.end101.i_crit_edge, %sg_set_buf.exit248.i.do.end101.i_crit_edge
  %122 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %20, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %123, ptr noundef nonnull @.str.36) #11
  %124 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %20, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %125, ptr noundef %sg_io80.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  br label %write_init_pio_fail.i

select_init_dma_fail.i:                           ; preds = %do.end58.i, %do.end39.i, %do.end23.i
  %126 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %20, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %127, ptr noundef %sg_io.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  br label %select_init_pio_fail.i

select_init_pio_fail.i:                           ; preds = %select_init_dma_fail.i, %do.end.i
  %128 = ptrtoint ptr %dmach.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dmach.i, align 4
  %130 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %129, align 4
  %device_terminate_all.i.i.i = getelementptr inbounds %struct.dma_device, ptr %131, i32 0, i32 47
  %132 = ptrtoint ptr %device_terminate_all.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %device_terminate_all.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %133, null
  br i1 %tobool.not.i.i.i, label %select_init_pio_fail.i.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i.i

select_init_pio_fail.i.cleanup_crit_edge:         ; preds = %select_init_pio_fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i.i:               ; preds = %select_init_pio_fail.i
  %call.i.i.i = tail call i32 %133(ptr noundef %129) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i260.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i260.i, label %if.end.i261.i, label %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i261.i:                                    ; preds = %dmaengine_terminate_async.exit.i.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 1169) #8
  %134 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %129, align 4
  %device_synchronize.i.i.i = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 48
  %136 = ptrtoint ptr %device_synchronize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %device_synchronize.i.i.i, align 4
  %tobool.not.i1.i.i = icmp eq ptr %137, null
  br i1 %tobool.not.i1.i.i, label %if.end.i261.i.cleanup_crit_edge, label %if.then.i2.i.i

if.end.i261.i.cleanup_crit_edge:                  ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i.i:                                   ; preds = %if.end.i261.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %137(ptr noundef %129) #8
  br label %cleanup

write_init_pio_fail.i:                            ; preds = %do.end101.i, %do.end77.i
  %138 = ptrtoint ptr %dmach69.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dmach69.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %device_terminate_all.i.i262.i = getelementptr inbounds %struct.dma_device, ptr %141, i32 0, i32 47
  %142 = ptrtoint ptr %device_terminate_all.i.i262.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %device_terminate_all.i.i262.i, align 4
  %tobool.not.i.i263.i = icmp eq ptr %143, null
  br i1 %tobool.not.i.i263.i, label %write_init_pio_fail.i.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i266.i

write_init_pio_fail.i.cleanup_crit_edge:          ; preds = %write_init_pio_fail.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i266.i:            ; preds = %write_init_pio_fail.i
  %call.i.i264.i = tail call i32 %143(ptr noundef %139) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i264.i)
  %tobool.not.i265.i = icmp eq i32 %call.i.i264.i, 0
  br i1 %tobool.not.i265.i, label %if.end.i269.i, label %dmaengine_terminate_async.exit.i266.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i266.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i266.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i269.i:                                    ; preds = %dmaengine_terminate_async.exit.i266.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.46, i32 noundef 1169) #8
  %144 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %139, align 4
  %device_synchronize.i.i267.i = getelementptr inbounds %struct.dma_device, ptr %145, i32 0, i32 48
  %146 = ptrtoint ptr %device_synchronize.i.i267.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %device_synchronize.i.i267.i, align 4
  %tobool.not.i1.i268.i = icmp eq ptr %147, null
  br i1 %tobool.not.i1.i268.i, label %if.end.i269.i.cleanup_crit_edge, label %if.then.i2.i270.i

if.end.i269.i.cleanup_crit_edge:                  ; preds = %if.end.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i2.i270.i:                                ; preds = %if.end.i269.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %147(ptr noundef %139) #8
  br label %cleanup

if.end41:                                         ; preds = %dmaengine_prep_slave_sg.exit258.i.if.end41_crit_edge, %dmaengine_prep_slave_sg.exit212.i.if.end41_crit_edge
  %desc.0.i = phi ptr [ %call.i209.i, %dmaengine_prep_slave_sg.exit212.i.if.end41_crit_edge ], [ %call.i255.i, %dmaengine_prep_slave_sg.exit258.i.if.end41_crit_edge ]
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.i, i32 0, i32 6
  %148 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @mxs_i2c_dma_irq_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.i, i32 0, i32 8
  %149 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %20, ptr %callback_param.i, align 4
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %desc.0.i, i32 0, i32 4
  %150 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i259.i = tail call i32 %151(ptr noundef nonnull %desc.0.i) #8
  %dmach106.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %20, i32 0, i32 9
  %152 = ptrtoint ptr %dmach106.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dmach106.i, align 4
  %154 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %153, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %155, i32 0, i32 50
  %156 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %157(ptr noundef %153) #8
  %call44 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %do.body81, label %if.end49

if.end49:                                         ; preds = %if.end41
  %158 = ptrtoint ptr %cmd_err157 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cmd_err157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %159)
  %cmp50 = icmp eq i32 %159, -6
  br i1 %cmp50, label %if.end49.do.body53_crit_edge, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

if.end49.do.body53_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

do.body53:                                        ; preds = %if.end49.do.body53_crit_edge, %if.then29.do.body53_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 2
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %161, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16) #8, !srcloc !122
  br label %if.end56

if.end56:                                         ; preds = %do.body53, %if.end49.if.end56_crit_edge, %if.then35, %if.then29.if.end56_crit_edge
  %ret.0164 = phi i32 [ -6, %do.body53 ], [ %159, %if.end49.if.end56_crit_edge ], [ %call30, %if.then29.if.end56_crit_edge ], [ %call30, %if.then35 ]
  %dev_type = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 1
  %162 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %163)
  %cmp57 = icmp eq i32 %163, 1
  br i1 %cmp57, label %if.then59, label %if.end56.do.body62_crit_edge

if.end56.do.body62_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body62

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %call60 = tail call fastcc i32 @mxs_i2c_reset(ptr noundef %1)
  br label %do.body62

do.body62:                                        ; preds = %if.then59, %if.end56.do.body62_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_xfer_msg, %cleanup)) #8
          to label %if.then76 [label %cleanup], !srcloc !131

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %164 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug295, ptr noundef %165, ptr noundef nonnull @.str.22, i32 noundef %ret.0164) #8
  br label %cleanup

do.body81:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_xfer_msg, %do.end99)) #8
          to label %if.then95 [label %do.end99], !srcloc !131

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #10
  %166 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug296, ptr noundef %167, ptr noundef nonnull @.str.23) #8
  br label %do.end99

do.end99:                                         ; preds = %if.then95, %do.body81
  %dma_read.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 13
  %168 = ptrtoint ptr %dma_read.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %dma_read.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.i148 = icmp eq i8 %169, 0
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %sg_io5.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 12
  br i1 %tobool.not.i148, label %if.else.i150, label %if.then.i149

if.then.i149:                                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_unmap_sg_attrs(ptr noundef %171, ptr noundef %sg_io5.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 8
  %arrayidx3.i = getelementptr %struct.mxs_i2c_dev, ptr %1, i32 0, i32 12, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %173, ptr noundef %arrayidx3.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  br label %mxs_i2c_dma_finish.exit

if.else.i150:                                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_unmap_sg_attrs(ptr noundef %171, ptr noundef %sg_io5.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  br label %mxs_i2c_dma_finish.exit

mxs_i2c_dma_finish.exit:                          ; preds = %if.else.i150, %if.then.i149
  %call100 = tail call fastcc i32 @mxs_i2c_reset(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  %.call100 = select i1 %tobool101.not, i32 -110, i32 %call100
  br label %cleanup

cleanup:                                          ; preds = %mxs_i2c_dma_finish.exit, %if.then76, %do.body62, %if.then.i2.i270.i, %if.end.i269.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i266.i.cleanup_crit_edge, %write_init_pio_fail.i.cleanup_crit_edge, %if.then.i2.i.i, %if.end.i261.i.cleanup_crit_edge, %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge, %select_init_pio_fail.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0164, %if.then76 ], [ %.call100, %mxs_i2c_dma_finish.exit ], [ -22, %select_init_pio_fail.i.cleanup_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i.i.cleanup_crit_edge ], [ -22, %if.end.i261.i.cleanup_crit_edge ], [ -22, %if.then.i2.i.i ], [ -22, %write_init_pio_fail.i.cleanup_crit_edge ], [ -22, %dmaengine_terminate_async.exit.i266.i.cleanup_crit_edge ], [ -22, %if.end.i269.i.cleanup_crit_edge ], [ -22, %if.then.i2.i270.i ], [ %ret.0164, %do.body62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mxs_i2c_pio_setup_xfer(ptr nocapture noundef readonly %adap, ptr nocapture noundef readonly %msg, i32 noundef %flags) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %msg, align 4
  %conv.i = zext i16 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags.i, align 2
  %6 = and i16 %5, 1
  %7 = zext i16 %6 to i32
  %shl.i.masked = and i32 %shl.i, 254
  %conv = or i32 %shl.i.masked, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 7274496) #8, !srcloc !122
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags.i, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not = icmp eq i16 %12, 0
  %len77 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len77, align 4
  br i1 %tobool.not, label %if.else, label %do.body4

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %cmp = icmp ugt i16 %14, 4
  br i1 %cmp, label %do.body10, label %do.end17, !prof !133

do.body10:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/i2c/busses/i2c-mxs.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 411, 0\0A.popsection", ""() #8, !srcloc !140
  unreachable

do.end17:                                         ; preds = %do.body4
  tail call fastcc void @mxs_i2c_pio_trigger_write_cmd(ptr noundef %1, i32 noundef 2818049, i32 noundef %conv)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %15, 100
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %19 = and i32 %18, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not17.i = icmp eq i32 %19, 0
  br i1 %tobool.not17.i, label %do.end17.if.end36_crit_edge, label %do.end17.while.body.i_crit_edge

do.end17.while.body.i_crit_edge:                  ; preds = %do.end17
  br label %while.body.i

do.end17.if.end36_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

while.body.i:                                     ; preds = %if.end13.i.while.body.i_crit_edge, %do.end17.while.body.i_crit_edge
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr6.i = getelementptr i8, ptr %21, i32 64
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %23 = and i32 %22, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool11.not.i = icmp eq i32 %23, 0
  br i1 %tobool11.not.i, label %if.end.i, label %while.body.i.do.body21_crit_edge

while.body.i.do.body21_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end.i.do.body21_crit_edge, label %if.end13.i

if.end.i.do.body21_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

if.end13.i:                                       ; preds = %if.end.i
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 314, i32 noundef 0) #8
  %call.i.i = tail call i32 @__cond_resched() #8
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %28 = and i32 %27, 32
  %tobool.not.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i, label %if.end13.i.if.end36_crit_edge, label %if.end13.i.while.body.i_crit_edge

if.end13.i.while.body.i_crit_edge:                ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end13.i.if.end36_crit_edge:                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

do.body21:                                        ; preds = %if.end.i.do.body21_crit_edge, %while.body.i.do.body21_crit_edge
  %retval.0.i300 = phi i32 [ -110, %if.end.i.do.body21_crit_edge ], [ -6, %while.body.i.do.body21_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_pio_setup_xfer, %do.body203)) #8
          to label %if.then32 [label %do.body203], !srcloc !131

if.then32:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug290, ptr noundef %30, ptr noundef nonnull @.str.25) #8
  br label %do.body203

if.end36:                                         ; preds = %if.end13.i.if.end36_crit_edge, %do.end17.if.end36_crit_edge
  %31 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %len77, align 4
  %conv38 = zext i16 %32 to i32
  %or = or i32 %conv38, %flags
  %or40 = or i32 %or, 33685504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  tail call void @arm_heavy_mb() #8
  %33 = tail call i32 @llvm.bswap.i32(i32 %or40) #8
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !122
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  %39 = or i32 %38, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %39) #8, !srcloc !122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %42 = load volatile i32, ptr @jiffies, align 128
  %add.i302 = add i32 %42, 100
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %46 = and i32 %45, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not17.i304 = icmp eq i32 %46, 0
  br i1 %tobool.not17.i304, label %if.end36.if.end63_crit_edge, label %if.end36.while.body.i307_crit_edge

if.end36.while.body.i307_crit_edge:               ; preds = %if.end36
  br label %while.body.i307

if.end36.if.end63_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

while.body.i307:                                  ; preds = %if.end13.i313.while.body.i307_crit_edge, %if.end36.while.body.i307_crit_edge
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr6.i305 = getelementptr i8, ptr %48, i32 64
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i305) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %50 = and i32 %49, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool11.not.i306 = icmp eq i32 %50, 0
  br i1 %tobool11.not.i306, label %if.end.i310, label %while.body.i307.do.body44_crit_edge

while.body.i307.do.body44_crit_edge:              ; preds = %while.body.i307
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.end.i310:                                      ; preds = %while.body.i307
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %51 = load volatile i32, ptr @jiffies, align 128
  %sub.i308 = sub i32 %add.i302, %51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i308)
  %cmp.i309 = icmp slt i32 %sub.i308, 0
  br i1 %cmp.i309, label %if.end.i310.do.body44_crit_edge, label %if.end13.i313

if.end.i310.do.body44_crit_edge:                  ; preds = %if.end.i310
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.end13.i313:                                    ; preds = %if.end.i310
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 314, i32 noundef 0) #8
  %call.i.i311 = tail call i32 @__cond_resched() #8
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %55 = and i32 %54, 32
  %tobool.not.i312 = icmp eq i32 %55, 0
  br i1 %tobool.not.i312, label %if.end13.i313.if.end63_crit_edge, label %if.end13.i313.while.body.i307_crit_edge

if.end13.i313.while.body.i307_crit_edge:          ; preds = %if.end13.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i307

if.end13.i313.if.end63_crit_edge:                 ; preds = %if.end13.i313
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

do.body44:                                        ; preds = %if.end.i310.do.body44_crit_edge, %while.body.i307.do.body44_crit_edge
  %retval.0.i314 = phi i32 [ -110, %if.end.i310.do.body44_crit_edge ], [ -6, %while.body.i307.do.body44_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_pio_setup_xfer, %do.body203)) #8
          to label %if.then58 [label %do.body203], !srcloc !131

if.then58:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug291, ptr noundef %57, ptr noundef nonnull @.str.26) #8
  br label %do.body203

if.end63:                                         ; preds = %if.end13.i313.if.end63_crit_edge, %if.end36.if.end63_crit_edge
  %58 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs, align 8
  %dev_type = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 1
  %60 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %61)
  %cmp65 = icmp eq i32 %61, 1
  %cond = select i1 %cmp65, i32 96, i32 160
  %add.ptr67 = getelementptr i8, ptr %59, i32 %cond
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr67) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !146
  %63 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %len77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %cmp73347.not = icmp eq i16 %64, 0
  br i1 %cmp73347.not, label %if.end63.if.end201_crit_edge, label %for.body.lr.ph

if.end63.if.end201_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

for.body.lr.ph:                                   ; preds = %if.end63
  %65 = tail call i32 @llvm.bswap.i32(i32 %62)
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data.0349 = phi i32 [ %65, %for.body.lr.ph ], [ %shr, %for.body.for.body_crit_edge ]
  %i.0348 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv76 = trunc i32 %data.0349 to i8
  %66 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %67, i32 %i.0348
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv76, ptr %arrayidx, align 1
  %shr = lshr i32 %data.0349, 8
  %inc = add nuw nsw i32 %i.0348, 1
  %69 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %len77, align 4
  %conv72 = zext i16 %70 to i32
  %cmp73 = icmp ult i32 %inc, %conv72
  br i1 %cmp73, label %for.body.for.body_crit_edge, label %for.body.if.end201_crit_edge

for.body.if.end201_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp87351.not = icmp eq i16 %14, 0
  br i1 %cmp87351.not, label %if.else.if.end201_crit_edge, label %for.body89.lr.ph

if.else.if.end201_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

for.body89.lr.ph:                                 ; preds = %if.else
  %conv86350 = zext i16 %14 to i32
  %71 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %len77, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %72)
  %cmp79 = icmp ugt i16 %72, 3
  %spec.select = select i1 %cmp79, i32 2621440, i32 524288
  %shl = shl nuw i32 %conv, 24
  %buf91 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %dev_type154 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 1
  br label %for.body89

for.body89:                                       ; preds = %for.inc198.for.body89_crit_edge, %for.body89.lr.ph
  %conv86355 = phi i32 [ %conv86350, %for.body89.lr.ph ], [ %conv86, %for.inc198.for.body89_crit_edge ]
  %data.1354 = phi i32 [ %shl, %for.body89.lr.ph ], [ %data.2, %for.inc198.for.body89_crit_edge ]
  %i.1353 = phi i32 [ 0, %for.body89.lr.ph ], [ %add, %for.inc198.for.body89_crit_edge ]
  %start.1352 = phi i32 [ %spec.select, %for.body89.lr.ph ], [ %start.3, %for.inc198.for.body89_crit_edge ]
  %73 = ptrtoint ptr %buf91 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %buf91, align 4
  %arrayidx92 = getelementptr i8, ptr %74, i32 %i.1353
  %75 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx92, align 1
  %conv93 = zext i8 %76 to i32
  %or95 = tail call i32 @llvm.fshl.i32(i32 %conv93, i32 %data.1354, i32 24)
  %add = add nuw nsw i32 %i.1353, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv86355)
  %cmp98 = icmp eq i32 %add, %conv86355
  %or101 = or i32 %start.1352, %flags
  %and102 = and i32 %or101, -2097153
  %start.2 = select i1 %cmp98, i32 %and102, i32 %start.1352
  %and104 = and i32 %i.1353, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and104)
  %cmp105 = icmp eq i32 %and104, 2
  %narrow = select i1 %cmp105, i1 true, i1 %cmp98
  br i1 %narrow, label %if.end111, label %for.body89.for.inc198_crit_edge

for.body89.for.inc198_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc198

if.end111:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and104)
  %cmp112 = icmp eq i32 %and104, 3
  %add117 = add nuw nsw i32 %and104, 2
  %xlen.0 = select i1 %cmp112, i32 1, i32 %add117
  %.neg = mul nsw i32 %xlen.0, -8
  %mul = add nsw i32 %.neg, 32
  %shr119 = lshr i32 %or95, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_pio_setup_xfer, %do.body150)) #8
          to label %if.then134 [label %do.body150], !srcloc !131

if.then134:                                       ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 8
  %79 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %len77, align 4
  %conv137 = zext i16 %80 to i32
  %and138 = and i32 %start.2, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and138)
  %tobool139.not = icmp eq i32 %and138, 0
  %cond140 = select i1 %tobool139.not, ptr @.str.29, ptr @.str.28
  %and141 = and i32 %start.2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  %cond143 = select i1 %tobool142.not, ptr @.str.29, ptr @.str.30
  %and144 = and i32 %start.2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  %cond146 = select i1 %tobool145.not, ptr @.str.29, ptr @.str.31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug292, ptr noundef %78, ptr noundef nonnull @.str.27, i32 noundef %xlen.0, i32 noundef %i.1353, i32 noundef %conv137, ptr noundef nonnull %cond140, ptr noundef nonnull %cond143, ptr noundef nonnull %cond146) #8
  br label %do.body150

do.body150:                                       ; preds = %if.then134, %if.end111
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 8
  %83 = ptrtoint ptr %dev_type154 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dev_type154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp155 = icmp eq i32 %84, 1
  %cond157 = select i1 %cmp155, i32 120, i32 184
  %add.ptr158 = getelementptr i8, ptr %82, i32 %cond157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr158, i32 128) #8, !srcloc !122
  %or160 = or i32 %xlen.0, %start.2
  %or162 = or i32 %or160, 196608
  tail call fastcc void @mxs_i2c_pio_trigger_write_cmd(ptr noundef %1, i32 noundef %or162, i32 noundef %shr119)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %85 = load volatile i32, ptr @jiffies, align 128
  %add.i316 = add i32 %85, 100
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 8
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %89 = and i32 %88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not17.i318 = icmp eq i32 %89, 0
  br i1 %tobool.not17.i318, label %do.body150.if.end186_crit_edge, label %do.body150.while.body.i321_crit_edge

do.body150.while.body.i321_crit_edge:             ; preds = %do.body150
  br label %while.body.i321

do.body150.if.end186_crit_edge:                   ; preds = %do.body150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

while.body.i321:                                  ; preds = %if.end13.i327.while.body.i321_crit_edge, %do.body150.while.body.i321_crit_edge
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs, align 8
  %add.ptr6.i319 = getelementptr i8, ptr %91, i32 64
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i319) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  %93 = and i32 %92, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool11.not.i320 = icmp eq i32 %93, 0
  br i1 %tobool11.not.i320, label %if.end.i324, label %while.body.i321.do.body167_crit_edge

while.body.i321.do.body167_crit_edge:             ; preds = %while.body.i321
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body167

if.end.i324:                                      ; preds = %while.body.i321
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %94 = load volatile i32, ptr @jiffies, align 128
  %sub.i322 = sub i32 %add.i316, %94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i322)
  %cmp.i323 = icmp slt i32 %sub.i322, 0
  br i1 %cmp.i323, label %if.end.i324.do.body167_crit_edge, label %if.end13.i327

if.end.i324.do.body167_crit_edge:                 ; preds = %if.end.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body167

if.end13.i327:                                    ; preds = %if.end.i324
  tail call void @__might_resched(ptr noundef nonnull @.str.4, i32 noundef 314, i32 noundef 0) #8
  %call.i.i325 = tail call i32 @__cond_resched() #8
  %95 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regs, align 8
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %96) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  %98 = and i32 %97, 32
  %tobool.not.i326 = icmp eq i32 %98, 0
  br i1 %tobool.not.i326, label %if.end13.i327.if.end186_crit_edge, label %if.end13.i327.while.body.i321_crit_edge

if.end13.i327.while.body.i321_crit_edge:          ; preds = %if.end13.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i321

if.end13.i327.if.end186_crit_edge:                ; preds = %if.end13.i327
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end186

do.body167:                                       ; preds = %if.end.i324.do.body167_crit_edge, %while.body.i321.do.body167_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mxs_i2c_pio_setup_xfer, %if.end201)) #8
          to label %if.then181 [label %if.end201], !srcloc !131

if.then181:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug293, ptr noundef %100, ptr noundef nonnull @.str.32) #8
  br label %if.end201

if.end186:                                        ; preds = %if.end13.i327.if.end186_crit_edge, %do.body150.if.end186_crit_edge
  %and163 = and i32 %start.2, -524289
  %101 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs, align 8
  %add.ptr190 = getelementptr i8, ptr %102, i32 80
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr190) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %104 = and i32 %103, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool195.not = icmp eq i32 %104, 0
  br i1 %tobool195.not, label %if.end186.for.inc198_crit_edge, label %if.end186.do.body203_crit_edge

if.end186.do.body203_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body203

if.end186.for.inc198_crit_edge:                   ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc198

for.inc198:                                       ; preds = %if.end186.for.inc198_crit_edge, %for.body89.for.inc198_crit_edge
  %start.3 = phi i32 [ %and163, %if.end186.for.inc198_crit_edge ], [ %start.2, %for.body89.for.inc198_crit_edge ]
  %data.2 = phi i32 [ %shr119, %if.end186.for.inc198_crit_edge ], [ %or95, %for.body89.for.inc198_crit_edge ]
  %105 = ptrtoint ptr %len77 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %len77, align 4
  %conv86 = zext i16 %106 to i32
  %cmp87 = icmp ult i32 %add, %conv86
  br i1 %cmp87, label %for.inc198.for.body89_crit_edge, label %for.inc198.if.end201_crit_edge

for.inc198.if.end201_crit_edge:                   ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end201

for.inc198.for.body89_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

if.end201:                                        ; preds = %for.inc198.if.end201_crit_edge, %if.then181, %do.body167, %if.else.if.end201_crit_edge, %for.body.if.end201_crit_edge, %if.end63.if.end201_crit_edge
  %107 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %108, i32 72
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %110 = and i32 %109, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool.not.i331 = icmp eq i32 %110, 0
  br i1 %tobool.not.i331, label %if.else.i, label %if.end201.if.end7.sink.split.i_crit_edge

if.end201.if.end7.sink.split.i_crit_edge:         ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split.i

if.else.i:                                        ; preds = %if.end201
  %111 = and i32 %109, 251658240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool4.not.i = icmp eq i32 %111, 0
  br i1 %tobool4.not.i, label %if.else.i.mxs_i2c_pio_check_error_state.exit_crit_edge, label %if.else.i.if.end7.sink.split.i_crit_edge

if.else.i.if.end7.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.sink.split.i

if.else.i.mxs_i2c_pio_check_error_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mxs_i2c_pio_check_error_state.exit

if.end7.sink.split.i:                             ; preds = %if.else.i.if.end7.sink.split.i_crit_edge, %if.end201.if.end7.sink.split.i_crit_edge
  %.sink.i = phi i32 [ -6, %if.end201.if.end7.sink.split.i_crit_edge ], [ -5, %if.else.i.if.end7.sink.split.i_crit_edge ]
  %cmd_err6.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 4
  %112 = ptrtoint ptr %cmd_err6.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %.sink.i, ptr %cmd_err6.i, align 4
  br label %mxs_i2c_pio_check_error_state.exit

mxs_i2c_pio_check_error_state.exit:               ; preds = %if.end7.sink.split.i, %if.else.i.mxs_i2c_pio_check_error_state.exit_crit_edge
  %cmd_err8.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 4
  %113 = ptrtoint ptr %cmd_err8.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %cmd_err8.i, align 4
  br label %do.body203

do.body203:                                       ; preds = %mxs_i2c_pio_check_error_state.exit, %if.end186.do.body203_crit_edge, %if.then58, %do.body44, %if.then32, %do.body21
  %ret.0 = phi i32 [ %retval.0.i300, %if.then32 ], [ %retval.0.i314, %if.then58 ], [ %114, %mxs_i2c_pio_check_error_state.exit ], [ %retval.0.i300, %do.body21 ], [ %retval.0.i314, %do.body44 ], [ -6, %if.end186.do.body203_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regs, align 8
  %add.ptr207 = getelementptr i8, ptr %116, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207, i32 1862270976) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  tail call void @arm_heavy_mb() #8
  %117 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs, align 8
  %add.ptr212 = getelementptr i8, ptr %118, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr212, i32 7274496) #8, !srcloc !122
  %dev_type213 = getelementptr inbounds %struct.mxs_i2c_dev, ptr %1, i32 0, i32 1
  %119 = ptrtoint ptr %dev_type213 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dev_type213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %120)
  %cmp214 = icmp eq i32 %120, 1
  br i1 %cmp214, label %do.body217, label %do.body203.if.end222_crit_edge

do.body203.if.end222_crit_edge:                   ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

do.body217:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs, align 8
  %add.ptr221 = getelementptr i8, ptr %122, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 1) #8, !srcloc !122
  br label %if.end222

if.end222:                                        ; preds = %do.body217, %do.body203.if.end222_crit_edge
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mxs_i2c_pio_trigger_write_cmd(ptr nocapture noundef readonly %i2c, i32 noundef %cmd, i32 noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %regs = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %2, i32 %0) #8, !srcloc !122
  %dev_type = getelementptr inbounds %struct.mxs_i2c_dev, ptr %i2c, i32 0, i32 1
  %3 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %do.body1, label %entry.do.body5_crit_edge

entry.do.body5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body5

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  tail call void @arm_heavy_mb() #8
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %6, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 1) #8, !srcloc !122
  br label %do.body5

do.body5:                                         ; preds = %do.body1, %entry.do.body5_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %7 = tail call i32 @llvm.bswap.i32(i32 %data)
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %10 = ptrtoint ptr %dev_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp9 = icmp eq i32 %11, 1
  %cond = select i1 %cmp9, i32 96, i32 160
  %add.ptr10 = getelementptr i8, ptr %9, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %7) #8, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 32) #8, !srcloc !122
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mxs_i2c_dma_irq_callback(ptr noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_complete = getelementptr inbounds %struct.mxs_i2c_dev, ptr %param, i32 0, i32 3
  tail call void @complete(ptr noundef %cmd_complete) #8
  %dma_read.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %param, i32 0, i32 13
  %0 = ptrtoint ptr %dma_read.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dma_read.i, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 8
  %sg_io5.i = getelementptr inbounds %struct.mxs_i2c_dev, ptr %param, i32 0, i32 12
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %sg_io5.i, i32 noundef 1, i32 noundef 1, i32 noundef 0) #8
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 8
  %arrayidx3.i = getelementptr %struct.mxs_i2c_dev, ptr %param, i32 0, i32 12, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %5, ptr noundef %arrayidx3.i, i32 noundef 1, i32 noundef 2, i32 noundef 0) #8
  br label %mxs_i2c_dma_finish.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %sg_io5.i, i32 noundef 2, i32 noundef 1, i32 noundef 0) #8
  br label %mxs_i2c_dma_finish.exit

mxs_i2c_dma_finish.exit:                          ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !76, !77, !78, !79, !80, !81, !83, !84, !86, !87, !88, !89, !91, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__initcall__kmod_i2c_mxs__298_886_mxs_i2c_init4, !1, !"__initcall__kmod_i2c_mxs__298_886_mxs_i2c_init4", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 886, i32 1}
!2 = !{ptr @__exitcall_mxs_i2c_exit, !3, !"__exitcall_mxs_i2c_exit", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 892, i32 1}
!4 = !{ptr @__UNIQUE_ID_author299, !5, !"__UNIQUE_ID_author299", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 894, i32 1}
!6 = !{ptr @__UNIQUE_ID_author300, !7, !"__UNIQUE_ID_author300", i1 false, i1 false}
!7 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 895, i32 1}
!8 = !{ptr @__UNIQUE_ID_description301, !9, !"__UNIQUE_ID_description301", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 896, i32 1}
!10 = !{ptr @__UNIQUE_ID_file302, !11, !"__UNIQUE_ID_file302", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 897, i32 1}
!12 = !{ptr @__UNIQUE_ID_license303, !11, !"__UNIQUE_ID_license303", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias304, !14, !"__UNIQUE_ID_alias304", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 898, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 875, i32 14}
!17 = !{ptr @mxs_i2c_driver, !18, !"mxs_i2c_driver", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 873, i32 31}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 827, i32 37}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 829, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mxs_i2c_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @mxs_i2c_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 841, i32 22}
!31 = !{ptr @init_completion.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/completion.h", i32 87, i32 2}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 773, i32 35}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 775, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mxs_i2c_get_ofdata._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @mxs_i2c_get_ofdata._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 708, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mxs_i2c_derive_timing._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mxs_i2c_derive_timing._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 718, i32 3}
!49 = !{ptr @mxs_i2c_derive_timing._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mxs_i2c_derive_timing._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 754, i32 2}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mxs_i2c_derive_timing.__UNIQUE_ID_ddebug297, !52, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!55 = !{ptr @mxs_i2c_algo, !56, !"mxs_i2c_algo", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 682, i32 35}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 571, i32 2}
!59 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug294, !58, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 627, i32 2}
!63 = !{ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug295, !62, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 632, i32 2}
!66 = !{ptr @mxs_i2c_xfer_msg.__UNIQUE_ID_ddebug296, !65, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 419, i32 4}
!69 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug290, !68, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 431, i32 4}
!73 = !{ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug291, !72, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 506, i32 4}
!76 = !{ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug292, !75, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!77 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 527, i32 5}
!83 = !{ptr @mxs_i2c_pio_setup_xfer.__UNIQUE_ID_ddebug293, !82, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 194, i32 4}
!86 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @mxs_i2c_dma_setup_xfer._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 207, i32 4}
!91 = !{ptr @mxs_i2c_dma_setup_xfer._entry.35, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr.37, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @mxs_i2c_dma_setup_xfer._entry.38, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 223, i32 4}
!95 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr.39, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mxs_i2c_dma_setup_xfer._entry.40, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 236, i32 4}
!98 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @mxs_i2c_dma_setup_xfer._entry.42, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 254, i32 4}
!101 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr.43, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @mxs_i2c_dma_setup_xfer._entry.44, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 269, i32 4}
!104 = !{ptr @mxs_i2c_dma_setup_xfer._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!107 = !{ptr @mxs_i2c_quirks, !108, !"mxs_i2c_quirks", i1 false, i1 false}
!108 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 687, i32 40}
!109 = !{ptr @mxs_i2c_dt_ids, !110, !"mxs_i2c_dt_ids", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-mxs.c", i32 784, i32 34}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{!"auto-init"}
!121 = !{i64 2155778317}
!122 = !{i64 6845594}
!123 = !{i64 2155778754}
!124 = !{i64 6846012}
!125 = !{i64 2155764887}
!126 = !{i64 2155765395}
!127 = !{i64 2155716000}
!128 = !{i64 2155716434}
!129 = !{i64 2155716868}
!130 = !{i64 2155717594}
!131 = !{i64 2148223728, i64 2148223733, i64 2148223746, i64 2148223790, i64 2148223824, i64 2148223845}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 2155630854, i64 2155631346, i64 2155630891, i64 2155630947, i64 2155630981, i64 2155631005, i64 2155631046, i64 2155631067, i64 2155631095, i64 2155631129}
!135 = !{i64 2155624535, i64 2155625027, i64 2155624572, i64 2155624628, i64 2155624662, i64 2155624686, i64 2155624727, i64 2155624748, i64 2155624776, i64 2155624810}
!136 = !{i64 2155626145, i64 2155626637, i64 2155626182, i64 2155626238, i64 2155626272, i64 2155626296, i64 2155626337, i64 2155626358, i64 2155626386, i64 2155626420}
!137 = !{i64 2155759140}
!138 = !{i8 0, i8 2}
!139 = !{i64 2155735747}
!140 = !{i64 2155736419, i64 2155736912, i64 2155736456, i64 2155736512, i64 2155736546, i64 2155736570, i64 2155736611, i64 2155736632, i64 2155736660, i64 2155736694}
!141 = !{i64 2155730364}
!142 = !{i64 2155730872}
!143 = !{i64 2155732343}
!144 = !{i64 2155733016}
!145 = !{i64 2155733249}
!146 = !{i64 2155743467}
!147 = !{i64 2155746956}
!148 = !{i64 2155754159}
!149 = !{i64 2155731836}
!150 = !{i64 2155754690}
!151 = !{i64 2155755509}
!152 = !{i64 2155756060}
!153 = !{i64 2155733647}
!154 = !{i64 2155734063}
!155 = !{i64 2155734567}
!156 = !{i64 2155735027}
