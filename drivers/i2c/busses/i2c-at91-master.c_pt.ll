; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-at91-master.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-at91-master.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.at91_twi_dev = type { ptr, ptr, %struct.completion, ptr, ptr, i32, ptr, i32, i32, i32, %struct.i2c_adapter, i32, ptr, i8, i8, i8, i32, %struct.at91_twi_dma, i8, %struct.i2c_bus_recovery_info, i32, ptr, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.at91_twi_dma = type { ptr, ptr, [2 x %struct.scatterlist], ptr, i32, i8, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at91_twi_pdata = type { i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@at91_twi_probe_master._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 878, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot get irq %d: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at91_twi_probe_master\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/i2c/busses/i2c-at91-master.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at91_twi_probe_master._entry_ptr = internal global ptr @at91_twi_probe_master._entry, section ".printk_index", align 4
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"atmel,fifo-size\00", [16 x i8] zeroinitializer }, align 32
@at91_twi_probe_master._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 890, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Using FIFO (%u data)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at91_twi_probe_master._entry_ptr.9 = internal global ptr @at91_twi_probe_master._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-digital-filter\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c-analog-filter\00", [46 x i8] zeroinitializer }, align 32
@at91_twi_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @at91_twi_xfer, ptr null, ptr null, ptr null, ptr @at91_twi_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at91_twi_quirks = internal constant { %struct.i2c_adapter_quirks, [40 x i8] } { %struct.i2c_adapter_quirks { i64 11, i32 0, i16 0, i16 0, i16 3, i16 0 }, [40 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@at91_twi_read_next_byte.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 74, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_at91\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at91_twi_read_next_byte\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"received block length %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_twi_read_next_byte.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.14, ptr @.str.2, ptr @.str.16, i8 0, i8 77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read 0x%x, to go %zu\0A\00", [42 x i8] zeroinitializer }, align 32
@at91_twi_write_next_byte.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 42, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at91_twi_write_next_byte\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wrote 0x%x, to go %zu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@at91_twi_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 786, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to configure tx channel\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at91_twi_configure_dma\00", [41 x i8] zeroinitializer }, align 32
@at91_twi_configure_dma._entry_ptr = internal global ptr @at91_twi_configure_dma._entry, section ".printk_index", align 4
@at91_twi_configure_dma._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 793, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to configure rx channel\0A\00", [32 x i8] zeroinitializer }, align 32
@at91_twi_configure_dma._entry_ptr.25 = internal global ptr @at91_twi_configure_dma._entry.23, section ".printk_index", align 4
@at91_twi_configure_dma._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 804, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", [51 x i8] zeroinitializer }, align 32
@at91_twi_configure_dma._entry_ptr.28 = internal global ptr @at91_twi_configure_dma._entry.26, section ".printk_index", align 4
@at91_twi_configure_dma._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.2, i32 810, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"can't get DMA channel, continue without DMA support\0A\00", [43 x i8] zeroinitializer }, align 32
@at91_twi_configure_dma._entry_ptr.31 = internal global ptr @at91_twi_configure_dma._entry.29, section ".printk_index", align 4
@at91_calc_twi_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 84, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d exceeds ckdiv max value which is %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at91_calc_twi_clock\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at91_calc_twi_clock._entry_ptr = internal global ptr @at91_calc_twi_clock._entry, section ".printk_index", align 4
@at91_calc_twi_clock._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 103, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"HOLD field set to its maximum value (%d instead of %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_calc_twi_clock._entry_ptr.37 = internal global ptr @at91_calc_twi_clock._entry.35, section ".printk_index", align 4
@at91_calc_twi_clock._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.2, i32 118, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Filter threshold set to its maximum value (%d instead of %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@at91_calc_twi_clock._entry_ptr.40 = internal global ptr @at91_calc_twi_clock._entry.38, section ".printk_index", align 4
@at91_calc_twi_clock.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.2, ptr @.str.41, i8 0, i8 32, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"cdiv %d ckdiv %d hold %d (%d ns), filter_width %d (%d ns)\0A\00", [37 x i8] zeroinitializer }, align 32
@at91_init_twi_recovery_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 825, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"can't get pinctrl, bus recovery not supported\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"at91_init_twi_recovery_gpio\00", [36 x i8] zeroinitializer }, align 32
@at91_init_twi_recovery_gpio._entry_ptr = internal global ptr @at91_init_twi_recovery_gpio._entry, section ".printk_index", align 4
@at91_twi_recover_bus_cmd.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at91_twi_recover_bus_cmd\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SDA is down; sending bus clear command\0A\00", [56 x i8] zeroinitializer }, align 32
@at91_twi_xfer.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 -91, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at91_twi_xfer\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"at91_xfer: processing %d messages:\0A\00", [60 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 -125, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at91_do_twi_transfer\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transfer: %s %zu bytes.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.48, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"controller timed out\0A\00", [42 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry_ptr = internal global ptr @at91_do_twi_transfer._entry, section ".printk_index", align 4
@at91_do_twi_transfer.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.2, ptr @.str.53, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"received nack\0A\00", [17 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.48, ptr @.str.2, i32 606, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"overrun while reading\0A\00", [41 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry_ptr.56 = internal global ptr @at91_do_twi_transfer._entry.54, section ".printk_index", align 4
@at91_do_twi_transfer._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.48, ptr @.str.2, i32 611, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"underrun while writing\0A\00", [40 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry_ptr.59 = internal global ptr @at91_do_twi_transfer._entry.57, section ".printk_index", align 4
@at91_do_twi_transfer._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.48, ptr @.str.2, i32 617, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tx locked\0A\00", [21 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry_ptr.62 = internal global ptr @at91_do_twi_transfer._entry.60, section ".printk_index", align 4
@at91_do_twi_transfer._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.48, ptr @.str.2, i32 622, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid smbus block length recvd\0A\00", [62 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer._entry_ptr.65 = internal global ptr @at91_do_twi_transfer._entry.63, section ".printk_index", align 4
@at91_do_twi_transfer.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.2, ptr @.str.66, i8 0, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"transfer complete\0A\00", [45 x i8] zeroinitializer }, align 32
@at91_do_twi_transfer.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.48, ptr @.str.2, ptr @.str.67, i8 0, i8 -97, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"unlock tx\0A\00", [21 x i8] zeroinitializer }, align 32
@at91_twi_read_data_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 348, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma map failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at91_twi_read_data_dma\00", [41 x i8] zeroinitializer }, align 32
@at91_twi_read_data_dma._entry_ptr = internal global ptr @at91_twi_read_data_dma._entry, section ".printk_index", align 4
@at91_twi_read_data_dma._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 373, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dma prep slave sg failed\0A\00", [38 x i8] zeroinitializer }, align 32
@at91_twi_read_data_dma._entry_ptr.72 = internal global ptr @at91_twi_read_data_dma._entry.70, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@at91_twi_write_data_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.75, ptr @.str.2, i32 211, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at91_twi_write_data_dma\00", [40 x i8] zeroinitializer }, align 32
@at91_twi_write_data_dma._entry_ptr = internal global ptr @at91_twi_write_data_dma._entry, section ".printk_index", align 4
@at91_twi_write_data_dma._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.75, ptr @.str.2, i32 255, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@at91_twi_write_data_dma._entry_ptr.77 = internal global ptr @at91_twi_write_data_dma._entry.76, section ".printk_index", align 4
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 878, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 888, i32 47 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 890, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 894, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 897, i32 12 }
@___asan_gen_.115 = private unnamed_addr constant [19 x i8] c"at91_twi_algorithm\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 731, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"at91_twi_quirks\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 720, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 298, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 311, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 170, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 770, i32 44 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 777, i32 44 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 786, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 793, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 803, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 810, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 83, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 101, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 116, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 128, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 825, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 839, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 660, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 526, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 595, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 601, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 606, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 611, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 617, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 622, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 627, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 637, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 348, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 373, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 326, i32 6 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 211, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private constant [40 x i8] c"../drivers/i2c/busses/i2c-at91-master.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 255, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.308, i32 1169, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @at91_calc_twi_clock._entry, ptr @at91_calc_twi_clock._entry.35, ptr @at91_calc_twi_clock._entry.38, ptr @at91_calc_twi_clock._entry_ptr, ptr @at91_calc_twi_clock._entry_ptr.37, ptr @at91_calc_twi_clock._entry_ptr.40, ptr @at91_do_twi_transfer._entry, ptr @at91_do_twi_transfer._entry.54, ptr @at91_do_twi_transfer._entry.57, ptr @at91_do_twi_transfer._entry.60, ptr @at91_do_twi_transfer._entry.63, ptr @at91_do_twi_transfer._entry_ptr, ptr @at91_do_twi_transfer._entry_ptr.56, ptr @at91_do_twi_transfer._entry_ptr.59, ptr @at91_do_twi_transfer._entry_ptr.62, ptr @at91_do_twi_transfer._entry_ptr.65, ptr @at91_init_twi_recovery_gpio._entry, ptr @at91_init_twi_recovery_gpio._entry_ptr, ptr @at91_twi_configure_dma._entry, ptr @at91_twi_configure_dma._entry.23, ptr @at91_twi_configure_dma._entry.26, ptr @at91_twi_configure_dma._entry.29, ptr @at91_twi_configure_dma._entry_ptr, ptr @at91_twi_configure_dma._entry_ptr.25, ptr @at91_twi_configure_dma._entry_ptr.28, ptr @at91_twi_configure_dma._entry_ptr.31, ptr @at91_twi_probe_master._entry, ptr @at91_twi_probe_master._entry.6, ptr @at91_twi_probe_master._entry_ptr, ptr @at91_twi_probe_master._entry_ptr.9, ptr @at91_twi_read_data_dma._entry, ptr @at91_twi_read_data_dma._entry.70, ptr @at91_twi_read_data_dma._entry_ptr, ptr @at91_twi_read_data_dma._entry_ptr.72, ptr @at91_twi_write_data_dma._entry, ptr @at91_twi_write_data_dma._entry.76, ptr @at91_twi_write_data_dma._entry_ptr, ptr @at91_twi_write_data_dma._entry_ptr.77, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @at91_twi_algorithm, ptr @at91_twi_quirks, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.78], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_probe_master._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_probe_master._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_quirks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_configure_dma._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_configure_dma._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_configure_dma._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_calc_twi_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_calc_twi_clock._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_calc_twi_clock._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_init_twi_recovery_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_do_twi_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_do_twi_transfer._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_do_twi_transfer._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_do_twi_transfer._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_do_twi_transfer._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_read_data_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_read_data_dma._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_write_data_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_twi_write_data_dma._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @at91_init_twi_bus_master(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %fifo_size = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 268435456) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 4) #6
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 32) #6
  %twi_cwgr_reg = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 11
  %4 = ptrtoint ptr %twi_cwgr_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %twi_cwgr_reg, align 8
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 16, i32 noundef %5) #6
  %has_dig_filtr = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %has_dig_filtr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_dig_filtr, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %enable_dig_filt = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 22
  %8 = ptrtoint ptr %enable_dig_filt to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable_dig_filt, align 4, !range !155
  %10 = zext i8 %9 to i32
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true, %if.end.if.end5_crit_edge
  %filtr.0 = phi i32 [ 0, %if.end.if.end5_crit_edge ], [ %10, %land.lhs.true ]
  %has_adv_dig_filtr = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %has_adv_dig_filtr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_adv_dig_filtr, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %if.end5.if.end13_crit_edge, label %land.lhs.true7

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

land.lhs.true7:                                   ; preds = %if.end5
  %enable_dig_filt8 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 22
  %13 = ptrtoint ptr %enable_dig_filt8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable_dig_filt8, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end13_crit_edge, label %if.then10

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #8
  %filter_width = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 24
  %15 = ptrtoint ptr %filter_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %filter_width, align 8
  %shl = shl i32 %16, 8
  %and = and i32 %shl, 1792
  %or11 = or i32 %and, 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true7.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %filtr.1 = phi i32 [ %or11, %if.then10 ], [ %filtr.0, %land.lhs.true7.if.end13_crit_edge ], [ %filtr.0, %if.end5.if.end13_crit_edge ]
  %has_ana_filtr = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %has_ana_filtr to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_ana_filtr, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool14.not = icmp eq i8 %18, 0
  br i1 %tobool14.not, label %if.end13.if.end19_crit_edge, label %land.lhs.true15

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

land.lhs.true15:                                  ; preds = %if.end13
  %enable_ana_filt = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 23
  %19 = ptrtoint ptr %enable_ana_filt to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %enable_ana_filt, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool16.not = icmp eq i8 %20, 0
  %or18 = or i32 %filtr.1, 2
  br i1 %tobool16.not, label %land.lhs.true15.if.end19_crit_edge, label %land.lhs.true15.if.then21_crit_edge

land.lhs.true15.if.then21_crit_edge:              ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

land.lhs.true15.if.end19_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %land.lhs.true15.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filtr.1)
  %tobool20.not = icmp eq i32 %filtr.1, 0
  br i1 %tobool20.not, label %if.end19.if.end22_crit_edge, label %if.end19.if.then21_crit_edge

if.end19.if.then21_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then21:                                        ; preds = %if.end19.if.then21_crit_edge, %land.lhs.true15.if.then21_crit_edge
  %filtr.243 = phi i32 [ %filtr.1, %if.end19.if.then21_crit_edge ], [ %or18, %land.lhs.true15.if.then21_crit_edge ]
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 68, i32 noundef %filtr.243) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end19.if.end22_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @at91_twi_probe_master(ptr noundef %pdev, i32 noundef %phy_addr, ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %slave_config.i = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_complete = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #6
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %irq = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 7
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %2, ptr noundef nonnull @atmel_twi_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %dev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, i32 noundef %12, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %of_node = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %if.end.if.end12_crit_edge, label %if.then8

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %slave_config.i) #6
  %dma1.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17
  %fifo_size.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 16
  %15 = ptrtoint ptr %fifo_size.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fifo_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i62 = icmp eq i32 %16, 0
  %spec.store.select.i = select i1 %tobool.not.i62, i32 1, i32 4
  %17 = call ptr @memset(ptr %slave_config.i, i32 0, i32 48)
  %add.i = add i32 %phy_addr, 48
  %src_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 1
  %18 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add.i, ptr %src_addr.i, align 4
  %src_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 3
  %19 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select.i, ptr %src_addr_width.i, align 4
  %src_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 5
  %20 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %src_maxburst.i, align 4
  %add2.i = add i32 %phy_addr, 52
  %dst_addr.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 2
  %21 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add2.i, ptr %dst_addr.i, align 4
  %dst_addr_width.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 4
  %22 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.store.select.i, ptr %dst_addr_width.i, align 4
  %dst_maxburst.i = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config.i, i32 0, i32 6
  %23 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %dst_maxburst.i, align 4
  %call.i63 = tail call ptr @dma_request_chan(ptr noundef %10, ptr noundef nonnull @.str.19) #6
  %chan_tx.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 1
  %24 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i63, ptr %chan_tx.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then8.error.i_crit_edge, label %if.end10.i

if.then8.error.i_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end10.i:                                       ; preds = %if.then8
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 8
  %call12.i = tail call ptr @dma_request_chan(ptr noundef %26, ptr noundef nonnull @.str.20) #6
  %27 = ptrtoint ptr %dma1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call12.i, ptr %dma1.i, align 4
  %cmp.i94.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94.i, label %if.end10.i.error.i_crit_edge, label %if.end19.i

if.end10.i.error.i_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end19.i:                                       ; preds = %if.end10.i
  %28 = ptrtoint ptr %slave_config.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %slave_config.i, align 4
  %29 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan_tx.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %device_config.i.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 44
  %33 = ptrtoint ptr %device_config.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %device_config.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end19.i.do.end47.sink.split.i_crit_edge, label %dmaengine_slave_config.exit.i

if.end19.i.do.end47.sink.split.i_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.sink.split.i

dmaengine_slave_config.exit.i:                    ; preds = %if.end19.i
  %call.i.i = call i32 %34(ptr noundef %30, ptr noundef nonnull %slave_config.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool22.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool22.not.i, label %if.end25.i, label %dmaengine_slave_config.exit.i.do.end47.sink.split.i_crit_edge

dmaengine_slave_config.exit.i.do.end47.sink.split.i_crit_edge: ; preds = %dmaengine_slave_config.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.sink.split.i

if.end25.i:                                       ; preds = %dmaengine_slave_config.exit.i
  %35 = ptrtoint ptr %slave_config.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %slave_config.i, align 4
  %36 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dma1.i, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %device_config.i95.i = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 44
  %40 = ptrtoint ptr %device_config.i95.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %device_config.i95.i, align 4
  %tobool.not.i96.i = icmp eq ptr %41, null
  br i1 %tobool.not.i96.i, label %if.end25.i.do.end47.sink.split.i_crit_edge, label %dmaengine_slave_config.exit100.i

if.end25.i.do.end47.sink.split.i_crit_edge:       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.sink.split.i

dmaengine_slave_config.exit100.i:                 ; preds = %if.end25.i
  %call.i97.i = call i32 %41(ptr noundef %37, ptr noundef nonnull %slave_config.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool29.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool29.not.i, label %if.end35.i, label %dmaengine_slave_config.exit100.i.do.end47.sink.split.i_crit_edge

dmaengine_slave_config.exit100.i.do.end47.sink.split.i_crit_edge: ; preds = %dmaengine_slave_config.exit100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.sink.split.i

if.end35.i:                                       ; preds = %dmaengine_slave_config.exit100.i
  %sg.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2
  call void @sg_init_table(ptr noundef %sg.i, i32 noundef 2) #6
  %buf_mapped.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 5
  %42 = ptrtoint ptr %buf_mapped.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %buf_mapped.i, align 4
  %xfer_in_progress.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 6
  %43 = ptrtoint ptr %xfer_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %xfer_in_progress.i, align 1
  %use_dma.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 13
  %44 = ptrtoint ptr %use_dma.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %use_dma.i, align 8
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 8
  %47 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan_tx.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %50, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end35.i.dma_chan_name.exit.i_crit_edge

if.end35.i.dma_chan_name.exit.i_crit_edge:        ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_chan_name.exit.i

if.end.i.i.i:                                     ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #8
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %50, i32 0, i32 1
  %53 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %device.i.i, align 4
  br label %dma_chan_name.exit.i

dma_chan_name.exit.i:                             ; preds = %if.end.i.i.i, %if.end35.i.dma_chan_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %54, %if.end.i.i.i ], [ %52, %if.end35.i.dma_chan_name.exit.i_crit_edge ]
  %55 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma1.i, align 4
  %dev.i101.i = getelementptr inbounds %struct.dma_chan, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %dev.i101.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i101.i, align 4
  %init_name.i.i102.i = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1, i32 3
  %59 = ptrtoint ptr %init_name.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %init_name.i.i102.i, align 8
  %tobool.not.i.i103.i = icmp eq ptr %60, null
  br i1 %tobool.not.i.i103.i, label %if.end.i.i105.i, label %dma_chan_name.exit.i.at91_twi_configure_dma.exit.thread_crit_edge

dma_chan_name.exit.i.at91_twi_configure_dma.exit.thread_crit_edge: ; preds = %dma_chan_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_twi_configure_dma.exit.thread

if.end.i.i105.i:                                  ; preds = %dma_chan_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %device.i104.i = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  %61 = ptrtoint ptr %device.i104.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device.i104.i, align 4
  br label %at91_twi_configure_dma.exit.thread

at91_twi_configure_dma.exit.thread:               ; preds = %if.end.i.i105.i, %dma_chan_name.exit.i.at91_twi_configure_dma.exit.thread_crit_edge
  %retval.0.i.i106.i = phi ptr [ %62, %if.end.i.i105.i ], [ %60, %dma_chan_name.exit.i.at91_twi_configure_dma.exit.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %46, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i.i.i, ptr noundef %retval.0.i.i106.i) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #6
  br label %if.end12

error.i:                                          ; preds = %if.end10.i.error.i_crit_edge, %if.then8.error.i_crit_edge
  %dma1.sink.i = phi ptr [ %chan_tx.i, %if.then8.error.i_crit_edge ], [ %dma1.i, %if.end10.i.error.i_crit_edge ]
  %ret.0.in.i = phi ptr [ %call.i63, %if.then8.error.i_crit_edge ], [ %call12.i, %if.end10.i.error.i_crit_edge ]
  %63 = ptrtoint ptr %dma1.sink.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %dma1.sink.i, align 4
  %ret.0.i = ptrtoint ptr %ret.0.in.i to i32
  %cmp.not.i = icmp eq ptr %ret.0.in.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not.i, label %error.i.if.end49.i_crit_edge, label %error.i.do.end47.i_crit_edge

error.i.do.end47.i_crit_edge:                     ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47.i

error.i.if.end49.i_crit_edge:                     ; preds = %error.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

do.end47.sink.split.i:                            ; preds = %dmaengine_slave_config.exit100.i.do.end47.sink.split.i_crit_edge, %if.end25.i.do.end47.sink.split.i_crit_edge, %dmaengine_slave_config.exit.i.do.end47.sink.split.i_crit_edge, %if.end19.i.do.end47.sink.split.i_crit_edge
  %.str.24.sink.i = phi ptr [ @.str.21, %if.end19.i.do.end47.sink.split.i_crit_edge ], [ @.str.21, %dmaengine_slave_config.exit.i.do.end47.sink.split.i_crit_edge ], [ @.str.24, %if.end25.i.do.end47.sink.split.i_crit_edge ], [ @.str.24, %dmaengine_slave_config.exit100.i.do.end47.sink.split.i_crit_edge ]
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull %.str.24.sink.i) #9
  br label %do.end47.i

do.end47.i:                                       ; preds = %do.end47.sink.split.i, %error.i.do.end47.i_crit_edge
  %ret.0114.i = phi i32 [ %ret.0.i, %error.i.do.end47.i_crit_edge ], [ -22, %do.end47.sink.split.i ]
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str.30) #9
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end47.i, %error.i.if.end49.i_crit_edge
  %ret.0115.i = phi i32 [ %ret.0114.i, %do.end47.i ], [ -517, %error.i.if.end49.i_crit_edge ]
  %68 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma1.i, align 4
  %tobool51.not.i = icmp eq ptr %69, null
  br i1 %tobool51.not.i, label %if.end49.i.if.end54.i_crit_edge, label %if.then52.i

if.end49.i.if.end54.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %69) #6
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end54.i_crit_edge
  %70 = ptrtoint ptr %chan_tx.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chan_tx.i, align 4
  %tobool56.not.i = icmp eq ptr %71, null
  br i1 %tobool56.not.i, label %if.end54.i.at91_twi_configure_dma.exit_crit_edge, label %if.then57.i

if.end54.i.at91_twi_configure_dma.exit_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %at91_twi_configure_dma.exit

if.then57.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_release_channel(ptr noundef nonnull %71) #6
  br label %at91_twi_configure_dma.exit

at91_twi_configure_dma.exit:                      ; preds = %if.then57.i, %if.end54.i.at91_twi_configure_dma.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %slave_config.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.0115.i)
  %cmp = icmp eq i32 %ret.0115.i, -517
  br i1 %cmp, label %at91_twi_configure_dma.exit.cleanup_crit_edge, label %at91_twi_configure_dma.exit.if.end12_crit_edge

at91_twi_configure_dma.exit.if.end12_crit_edge:   ; preds = %at91_twi_configure_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

at91_twi_configure_dma.exit.cleanup_crit_edge:    ; preds = %at91_twi_configure_dma.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %at91_twi_configure_dma.exit.if.end12_crit_edge, %at91_twi_configure_dma.exit.thread, %if.end.if.end12_crit_edge
  %of_node14 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %72 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node14, align 8
  %fifo_size = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 16
  %call.i.i65 = call i32 @of_property_read_variable_u32_array(ptr noundef %73, ptr noundef nonnull @.str.5, ptr noundef %fifo_size, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i65)
  %tobool16.not = icmp sgt i32 %call.i.i65, -1
  br i1 %tobool16.not, label %do.end20, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  %76 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %fifo_size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.7, i32 noundef %77) #9
  br label %if.end23

if.end23:                                         ; preds = %do.end20, %if.end12.if.end23_crit_edge
  %78 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node14, align 8
  %call.i66 = call ptr @of_find_property(ptr noundef %79, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i66, null
  %enable_dig_filt = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 22
  %frombool = zext i1 %tobool.i to i8
  %80 = ptrtoint ptr %enable_dig_filt to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %frombool, ptr %enable_dig_filt, align 4
  %81 = ptrtoint ptr %of_node14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %of_node14, align 8
  %call.i67 = call ptr @of_find_property(ptr noundef %82, ptr noundef nonnull @.str.11, ptr noundef null) #6
  %tobool.i68 = icmp ne ptr %call.i67, null
  %enable_ana_filt = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 23
  %frombool30 = zext i1 %tobool.i68 to i8
  %83 = ptrtoint ptr %enable_ana_filt to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %frombool30, ptr %enable_ana_filt, align 1
  call fastcc void @at91_calc_twi_clock(ptr noundef %dev)
  %pdata.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 12
  %84 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdata.i, align 4
  %has_clear_cmd2.i = getelementptr inbounds %struct.at91_twi_pdata, ptr %85, i32 0, i32 8
  %86 = ptrtoint ptr %has_clear_cmd2.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %has_clear_cmd2.i, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i69 = icmp eq i8 %87, 0
  br i1 %tobool.not.i69, label %if.then.i, label %if.end.i72

if.then.i:                                        ; preds = %if.end23
  %call.i.i70 = call ptr @devm_pinctrl_get(ptr noundef %dev1) #6
  %pinctrl.i.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 19, i32 10
  %88 = ptrtoint ptr %pinctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i.i70, ptr %pinctrl.i.i, align 4
  %tobool.not.i.i71 = icmp eq ptr %call.i.i70, null
  %cmp.i.i.i = icmp ugt ptr %call.i.i70, inttoptr (i32 -4096 to ptr)
  %or.cond.i.i = or i1 %tobool.not.i.i71, %cmp.i.i.i
  br i1 %or.cond.i.i, label %at91_init_twi_recovery_info.exit, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %rinfo1.i.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 19
  br label %if.end34.sink.split

if.end.i72:                                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %rinfo1.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 19
  %89 = ptrtoint ptr %rinfo1.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @at91_twi_recover_bus_cmd, ptr %rinfo1.i, align 4
  br label %if.end34.sink.split

at91_init_twi_recovery_info.exit:                 ; preds = %if.then.i
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %91, ptr noundef nonnull @.str.42) #9
  %92 = ptrtoint ptr %pinctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pinctrl.i.i, align 4
  %cmp32 = icmp eq ptr %93, inttoptr (i32 -517 to ptr)
  br i1 %cmp32, label %at91_init_twi_recovery_info.exit.cleanup_crit_edge, label %at91_init_twi_recovery_info.exit.if.end34_crit_edge

at91_init_twi_recovery_info.exit.if.end34_crit_edge: ; preds = %at91_init_twi_recovery_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

at91_init_twi_recovery_info.exit.cleanup_crit_edge: ; preds = %at91_init_twi_recovery_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34.sink.split:                              ; preds = %if.end.i72, %if.end.i.i
  %rinfo1.i.i.sink = phi ptr [ %rinfo1.i.i, %if.end.i.i ], [ %rinfo1.i, %if.end.i72 ]
  %bus_recovery_info.i.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10, i32 16
  %94 = ptrtoint ptr %bus_recovery_info.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %rinfo1.i.i.sink, ptr %bus_recovery_info.i.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %at91_init_twi_recovery_info.exit.if.end34_crit_edge
  %algo = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10, i32 2
  %95 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @at91_twi_algorithm, ptr %algo, align 8
  %quirks = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10, i32 17
  %96 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @at91_twi_quirks, ptr %quirks, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %at91_init_twi_recovery_info.exit.cleanup_crit_edge, %at91_twi_configure_dma.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end34 ], [ -517, %at91_twi_configure_dma.exit.cleanup_crit_edge ], [ -517, %at91_init_twi_recovery_info.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_twi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @at91_twi_read(ptr noundef %dev_id, i32 noundef 32) #6
  %call1 = tail call i32 @at91_twi_read(ptr noundef %dev_id, i32 noundef 44) #6
  %and = and i32 %call1, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

do.body:                                          ; preds = %do.body.do.body_crit_edge, %if.end.do.body_crit_edge
  tail call fastcc void @at91_twi_read_next_byte(ptr noundef %dev_id)
  %call5 = tail call i32 @at91_twi_read(ptr noundef %dev_id, i32 noundef 32) #6
  %and6 = and i32 %call5, 2
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body.if.end8_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.if.end8_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %do.body.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %and9 = and i32 %and, 257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_disable_twi_interrupts(ptr noundef %dev_id) #6
  %cmd_complete = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 2
  tail call void @complete(ptr noundef %cmd_complete) #6
  br label %if.end16

if.else:                                          ; preds = %if.end8
  %and12 = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.else.if.end16_crit_edge, label %if.then14

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @at91_twi_write_next_byte(ptr noundef %dev_id)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.else.if.end16_crit_edge, %if.then11
  %transfer_status = getelementptr inbounds %struct.at91_twi_dev, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %transfer_status, align 8
  %or = or i32 %1, %call
  store i32 %or, ptr %transfer_status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_calc_twi_clock(ptr nocapture noundef %dev) unnamed_addr #0 align 64 {
entry:
  %timings = alloca %struct.i2c_timings, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %clk_offset = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %clk_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clk_offset, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %timings) #6
  %6 = getelementptr inbounds %struct.i2c_timings, ptr %timings, i32 0, i32 5
  %7 = getelementptr inbounds %struct.i2c_timings, ptr %timings, i32 0, i32 6
  %8 = call ptr @memset(ptr %timings, i32 255, i32 32)
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  call void @i2c_parse_fw_timings(ptr noundef %10, ptr noundef nonnull %timings, i1 noundef zeroext true) #6
  %clk = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 3
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 8
  %call = call i32 @clk_get_rate(ptr noundef %12) #6
  %13 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timings, align 4
  %mul = shl i32 %14, 1
  %add = add i32 %call, -1
  %sub = add i32 %add, %mul
  %div5 = udiv i32 %sub, %mul
  %sub6 = sub i32 %div5, %3
  %15 = call i32 @llvm.smax.i32(i32 %sub6, i32 0)
  %shr106 = lshr i32 %15, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %15)
  %tobool.not.i = icmp ult i32 %15, 256
  %16 = call i32 @llvm.ctlz.i32(i32 %shr106, i1 true) #6, !range !156
  %sub.i = sub nuw nsw i32 32, %16
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %shr8107 = lshr i32 %15, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %5)
  %cmp9 = icmp sgt i32 %cond.i, %5
  br i1 %cmp9, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.32, i32 noundef %cond.i, i32 noundef %5) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cdiv.0 = phi i32 [ 255, %do.end ], [ %shr8107, %entry.if.end_crit_edge ]
  %ckdiv.0 = phi i32 [ %5, %do.end ], [ %cond.i, %entry.if.end_crit_edge ]
  %has_hold_field = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %has_hold_field to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_hold_field, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not = icmp eq i8 %20, 0
  br i1 %tobool.not, label %if.end.if.end30_crit_edge, label %if.then11

if.end.if.end30_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then11:                                        ; preds = %if.end
  %21 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %6, align 4
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 8
  %call13 = call i32 @clk_get_rate(ptr noundef %24) #6
  %div14 = udiv i32 %call13, 1000
  %mul15 = mul i32 %div14, %22
  %sub17 = add i32 %mul15, 999999
  %div18 = udiv i32 %sub17, 1000000
  %25 = call i32 @llvm.smax.i32(i32 %div18, i32 3)
  %26 = add nsw i32 %25, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %25)
  %cmp23 = icmp ugt i32 %25, 34
  br i1 %cmp23, label %do.end27, label %if.then11.if.end30_crit_edge

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.end27:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.36, i32 noundef 31, i32 noundef %26) #9
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %if.then11.if.end30_crit_edge, %if.end.if.end30_crit_edge
  %hold.0 = phi i32 [ 31, %do.end27 ], [ %26, %if.then11.if.end30_crit_edge ], [ 0, %if.end.if.end30_crit_edge ]
  %has_adv_dig_filtr = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %has_adv_dig_filtr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_adv_dig_filtr, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool31.not = icmp eq i8 %30, 0
  br i1 %tobool31.not, label %if.end30.if.end47_crit_edge, label %if.then32

if.end30.if.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then32:                                        ; preds = %if.end30
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %7, align 4
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk, align 8
  %call34 = call i32 @clk_get_rate(ptr noundef %34) #6
  %div35 = udiv i32 %call34, 1000
  %mul36 = mul i32 %div35, %32
  %sub38 = add i32 %mul36, 999999
  %div39 = udiv i32 %sub38, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999999, i32 %sub38)
  %cmp40 = icmp ugt i32 %sub38, 7999999
  br i1 %cmp40, label %do.end44, label %if.then32.if.end47_crit_edge

if.then32.if.end47_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

do.end44:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %36, ptr noundef nonnull @.str.39, i32 noundef 7, i32 noundef %div39) #9
  br label %if.end47

if.end47:                                         ; preds = %do.end44, %if.then32.if.end47_crit_edge, %if.end30.if.end47_crit_edge
  %filter_width.0 = phi i32 [ 7, %do.end44 ], [ %div39, %if.then32.if.end47_crit_edge ], [ 0, %if.end30.if.end47_crit_edge ]
  %shl = shl i32 %ckdiv.0, 16
  %shl48 = shl i32 %cdiv.0, 8
  %and = shl nuw nsw i32 %hold.0, 24
  %shl50 = and i32 %and, 520093696
  %or = or i32 %shl48, %cdiv.0
  %or49 = or i32 %or, %shl
  %or51 = or i32 %or49, %shl50
  %twi_cwgr_reg = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 11
  %37 = ptrtoint ptr %twi_cwgr_reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or51, ptr %twi_cwgr_reg, align 8
  %filter_width52 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 24
  %38 = ptrtoint ptr %filter_width52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %filter_width.0, ptr %filter_width52, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_calc_twi_clock.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_calc_twi_clock, %do.end66)) #6
          to label %if.then60 [label %do.end66], !srcloc !157

if.then60:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %41 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %6, align 4
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_calc_twi_clock.__UNIQUE_ID_ddebug293, ptr noundef %40, ptr noundef nonnull @.str.41, i32 noundef %cdiv.0, i32 noundef %ckdiv.0, i32 noundef %hold.0, i32 noundef %42, i32 noundef %filter_width.0, i32 noundef %44) #6
  br label %do.end66

do.end66:                                         ; preds = %if.then60, %if.end47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %timings) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @at91_twi_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_twi_read_next_byte(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 48) #6
  br label %return

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 48
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !158
  %buf = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 4
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %buf, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %6, align 1
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %buf_len, align 8
  %recv_len_abort = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %recv_len_abort to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %recv_len_abort, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end5:                                          ; preds = %if.end
  %msg = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 6
  %12 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %flags, align 2
  %16 = and i16 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool6.not = icmp eq i16 %16, 0
  br i1 %tobool6.not, label %if.end5.if.end48_crit_edge, label %if.then9, !prof !159

if.end5.if.end48_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.then9:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buf, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 1
  %21 = add i8 %20, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %21)
  %22 = icmp ult i8 %21, -32
  br i1 %22, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = and i16 %15, -1025
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %and21, ptr %flags, align 2
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %buf, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 1
  %conv24 = zext i8 %27 to i32
  %28 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %buf_len, align 8
  %add = add i32 %29, %conv24
  store i32 %add, ptr %buf_len, align 8
  %30 = trunc i32 %add to i16
  %conv28 = add i16 %30, 1
  %31 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msg, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv28, ptr %len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_twi_read_next_byte.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_twi_read_next_byte, %if.end48)) #6
          to label %if.then41 [label %if.end48], !srcloc !157

if.then41:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %36 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buf_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_twi_read_next_byte.__UNIQUE_ID_ddebug295, ptr noundef %35, ptr noundef nonnull @.str.15, i32 noundef %37) #6
  br label %if.end48

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %recv_len_abort to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %recv_len_abort, align 2
  %39 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %buf_len, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then41, %if.then17, %if.end5.if.end48_crit_edge
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 14
  %40 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool49.not = icmp eq i8 %41, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %if.end48.do.body56_crit_edge

if.end48.do.body56_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

land.lhs.true50:                                  ; preds = %if.end48
  %42 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %buf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp52 = icmp eq i32 %43, 1
  br i1 %cmp52, label %if.then54, label %land.lhs.true50.do.body56_crit_edge

land.lhs.true50.do.body56_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body56

if.then54:                                        ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 2) #6
  br label %do.body56

do.body56:                                        ; preds = %if.then54, %land.lhs.true50.do.body56_crit_edge, %if.end48.do.body56_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_twi_read_next_byte.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_twi_read_next_byte, %do.end76)) #6
          to label %if.then70 [label %do.end76], !srcloc !157

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %46 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %buf, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %47, align 1
  %conv73 = zext i8 %49 to i32
  %50 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %buf_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_twi_read_next_byte.__UNIQUE_ID_ddebug296, ptr noundef %45, ptr noundef nonnull @.str.16, i32 noundef %conv73, i32 noundef %51) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %do.body56
  %52 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %53, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  br label %return

return:                                           ; preds = %do.end76, %if.end.return_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_disable_twi_interrupts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_twi_write_next_byte(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %buf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %buf = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buf, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %base = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %5) #6, !srcloc !160
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 8
  %dec = add i32 %9, -1
  store i32 %dec, ptr %buf_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then2, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then2:                                         ; preds = %if.end
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 14
  %10 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.if.end5_crit_edge

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 2) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then2.if.end5_crit_edge
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 40, i32 noundef 4) #6
  br label %do.body

do.body:                                          ; preds = %if.end5, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_twi_write_next_byte.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_twi_write_next_byte, %do.end)) #6
          to label %if.then11 [label %do.end], !srcloc !157

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %buf, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buf_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_twi_write_next_byte.__UNIQUE_ID_ddebug294, ptr noundef %13, ptr noundef nonnull @.str.18, i32 noundef %conv, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %20 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf, align 4
  %incdec.ptr = getelementptr i8, ptr %21, i32 1
  store ptr %incdec.ptr, ptr %buf, align 4
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_twi_recover_bus_cmd(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 32) #6
  %transfer_status = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %transfer_status, align 8
  %or = or i32 %3, %call1
  store i32 %or, ptr %transfer_status, align 8
  %and = and i32 %or, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body, label %entry.if.end15_crit_edge

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_twi_recover_bus_cmd.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_twi_recover_bus_cmd, %do.end)) #6
          to label %if.then8 [label %do.end], !srcloc !157

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_twi_recover_bus_cmd.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.45) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not = icmp eq i8 %7, 0
  br i1 %tobool10.not, label %do.end.if.end14_crit_edge, label %if.then11

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call i32 @at91_twi_read(ptr noundef %1, i32 noundef 64) #6
  %and13 = and i32 %call12, -65536
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 64, i32 noundef %and13) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end.if.end14_crit_edge
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 0, i32 noundef 32768) #6
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %entry.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91_twi_xfer(ptr noundef %adap, ptr noundef %msg, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_twi_xfer.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_twi_xfer, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !157

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev5 = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_twi_xfer.__UNIQUE_ID_ddebug301, ptr noundef %dev5, ptr noundef nonnull @.str.47, i32 noundef %num) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end.out_crit_edge, label %if.end9

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %num)
  %cmp10 = icmp eq i32 %num, 2
  br i1 %cmp10, label %if.then11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 1
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp12108.not = icmp eq i16 %5, 0
  br i1 %cmp12108.not, label %if.then11.for.end_crit_edge, label %for.body.lr.ph

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then11
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %internal_address.0110 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %for.body.for.body_crit_edge ]
  %8 = xor i32 %i.0111, -1
  %sub16 = add nsw i32 %conv, %8
  %arrayidx17 = getelementptr i8, ptr %7, i32 %sub16
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %10 to i32
  %mul = shl i32 %i.0111, 3
  %shl = shl i32 %conv18, %mul
  %or = or i32 %shl, %internal_address.0110
  %inc = add nuw nsw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = shl nuw nsw i32 %conv, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.then11.for.end_crit_edge
  %int_addr_flag.0.lcssa = phi i32 [ 0, %if.then11.for.end_crit_edge ], [ %11, %for.end.loopexit ]
  %internal_address.0.lcssa = phi i32 [ 0, %if.then11.for.end_crit_edge ], [ %or, %for.end.loopexit ]
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 12, i32 noundef %internal_address.0.lcssa) #6
  br label %if.end19

if.end19:                                         ; preds = %for.end, %if.end9.if.end19_crit_edge
  %m_start.0 = phi ptr [ %arrayidx, %for.end ], [ %msg, %if.end9.if.end19_crit_edge ]
  %int_addr_flag.1 = phi i32 [ %int_addr_flag.0.lcssa, %for.end ], [ 0, %if.end9.if.end19_crit_edge ]
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %use_alt_cmd, align 1
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %m_start.0, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags, align 2
  %15 = and i16 %14, 1
  %pdata = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdata, align 4
  %has_alt_cmd = getelementptr inbounds %struct.at91_twi_pdata, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %has_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  br i1 %tobool23.not, label %if.end19.if.end42_crit_edge, label %if.then24

if.end19.if.end42_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then24:                                        ; preds = %if.end19
  %len25 = getelementptr inbounds %struct.i2c_msg, ptr %m_start.0, i32 0, i32 2
  %20 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len25, align 4
  %22 = add i16 %21, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %22)
  %23 = icmp ult i16 %22, 255
  br i1 %23, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 0, i32 noundef 65536) #6
  %24 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %len25, align 4
  %26 = shl nuw nsw i16 %15, 8
  %or39104 = or i16 %25, %26
  %or39 = zext i16 %or39104 to i32
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 64, i32 noundef %or39) #6
  %27 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %use_alt_cmd, align 1
  br label %if.end42

if.else:                                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 0, i32 noundef 131072) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then33, %if.end19.if.end42_crit_edge
  %28 = ptrtoint ptr %m_start.0 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %m_start.0, align 4
  %conv44 = zext i16 %29 to i32
  %shl45 = shl nuw i32 %conv44, 16
  %or46 = or i32 %shl45, %int_addr_flag.1
  %30 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool48.not = icmp eq i8 %31, 0
  %32 = shl nuw nsw i16 %15, 12
  %33 = zext i16 %32 to i32
  %34 = select i1 %tobool48.not, i32 %33, i32 0
  %or52 = or i32 %or46, %34
  tail call void @at91_twi_write(ptr noundef %1, i32 noundef 4, i32 noundef %or52) #6
  %len53 = getelementptr inbounds %struct.i2c_msg, ptr %m_start.0, i32 0, i32 2
  %35 = ptrtoint ptr %len53 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len53, align 4
  %conv54 = zext i16 %36 to i32
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %buf_len to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %conv54, ptr %buf_len, align 8
  %buf55 = getelementptr inbounds %struct.i2c_msg, ptr %m_start.0, i32 0, i32 3
  %38 = ptrtoint ptr %buf55 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %buf55, align 4
  %buf56 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %buf56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %buf56, align 4
  %msg57 = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 6
  %41 = ptrtoint ptr %msg57 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %m_start.0, ptr %msg57, align 4
  %recv_len_abort = getelementptr inbounds %struct.at91_twi_dev, ptr %1, i32 0, i32 15
  %42 = ptrtoint ptr %recv_len_abort to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %recv_len_abort, align 2
  %call58 = tail call fastcc i32 @at91_do_twi_transfer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  %cond61 = select i1 %cmp59, i32 %call58, i32 %num
  br label %out

out:                                              ; preds = %if.end42, %do.end.out_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end.out_crit_edge ], [ %cond61, %if.end42 ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %call.i105 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 22
  %45 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %call.i105, ptr %last_busy.i, align 8
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %call.i106 = tail call i32 @__pm_runtime_suspend(ptr noundef %47, i32 noundef 13) #6
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91_twi_func(ptr nocapture noundef readnone %adapter) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at91_do_twi_transfer(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 12
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %has_unre_flag1 = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %has_unre_flag1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_unre_flag1, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %has_alt_cmd3 = getelementptr inbounds %struct.at91_twi_pdata, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %has_alt_cmd3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_alt_cmd3, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_do_twi_transfer, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !157

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %msg = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 2
  %12 = and i16 %11, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool12.not = icmp eq i16 %12, 0
  %cond = select i1 %tobool12.not, ptr @.str.51, ptr @.str.50
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 5
  %13 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buf_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_do_twi_transfer.__UNIQUE_ID_ddebug297, ptr noundef %7, ptr noundef nonnull @.str.49, ptr noundef nonnull %cond, i32 noundef %14) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmd_complete = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 2
  %15 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %cmd_complete, align 4
  %transfer_status = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 9
  %16 = ptrtoint ptr %transfer_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %transfer_status, align 8
  %call13 = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 32) #6
  %fifo_size = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 16
  %17 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %do.end.if.end19_crit_edge, label %if.then15

do.end.if.end19_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 80) #6
  %and17 = and i32 %call16, -52
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 80, i32 noundef %and17) #6
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 50331648) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %do.end.if.end19_crit_edge
  %buf_len20 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 5
  %19 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %buf_len20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 64) #6
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 36, i32 noundef 1) #6
  br label %if.end66

if.else:                                          ; preds = %if.end19
  %msg23 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 6
  %21 = ptrtoint ptr %msg23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %msg23, align 4
  %flags24 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %flags24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %flags24, align 2
  %conv25 = zext i16 %24 to i32
  %and26 = and i32 %conv25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else50, label %if.then28

if.then28:                                        ; preds = %if.else
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 14
  %25 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp ult i32 %20, 2
  %or.cond = select i1 %tobool29.not, i1 %cmp, i1 false
  %and36 = and i32 %conv25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %or.cond260 = select i1 %or.cond, i1 %tobool37.not, i1 false
  %start_flags.0 = select i1 %or.cond260, i32 3, i32 1
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef %start_flags.0) #6
  %use_dma = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 13
  %27 = ptrtoint ptr %use_dma to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %use_dma, align 8, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool41.not = icmp eq i8 %28, 0
  br i1 %tobool41.not, label %if.then28.if.else48_crit_edge, label %land.lhs.true43

if.then28.if.else48_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

land.lhs.true43:                                  ; preds = %if.then28
  %29 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_len20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp45 = icmp ugt i32 %30, 8
  br i1 %cmp45, label %if.then47, label %land.lhs.true43.if.else48_crit_edge

land.lhs.true43.if.else48_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else48

if.then47:                                        ; preds = %land.lhs.true43
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 36, i32 noundef 256) #6
  %dma1.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17
  %31 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dma1.i, align 4
  %33 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i = icmp eq i8 %34, 0
  %35 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buf_len20, align 8
  %sub.i = add i32 %36, -2
  %cond.i = select i1 %tobool.not.i, i32 %sub.i, i32 %36
  %direction.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 4
  %37 = ptrtoint ptr %direction.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %direction.i, align 4
  tail call void @at91_twi_irq_save(ptr noundef %dev) #6
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 8
  %buf.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 4
  %40 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %buf.i, align 4
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %41) #6
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.then47
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !159

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %39) #6
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 3
  %42 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %39, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %45, %if.end.i.i.i ], [ %43, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %47, i32 noundef -1) #6
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %if.then47
  tail call void @debug_dma_map_single(ptr noundef %39, ptr noundef %41, i32 noundef %cond.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %48 = load ptr, ptr @mem_map, align 4
  %49 = ptrtoint ptr %41 to i32
  %sub.i.i = add i32 %49, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %48, i32 %shr.i.i
  %and.i.i = and i32 %49, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %39, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %cond.i, i32 noundef 2, i32 noundef 0) #6
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %51, i32 noundef %call41.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.68) #9
  br label %if.end66

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %buf_mapped.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 5
  %54 = ptrtoint ptr %buf_mapped.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %buf_mapped.i, align 4
  tail call void @at91_twi_irq_restore(ptr noundef %dev) #6
  %55 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool10.not.i = icmp ne i32 %56, 0
  %and.i = and i32 %cond.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %tobool10.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %if.then11.i, label %if.end.i.if.end14.i_crit_edge

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call12.i = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 80) #6
  %and13.i = and i32 %call12.i, -49
  %or.i = or i32 %and13.i, 32
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 80, i32 noundef %or.i) #6
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end.i.if.end14.i_crit_edge
  %sg.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2
  %dma_length.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4
  %57 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond.i, ptr %dma_length.i, align 4
  %dma_address.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 3
  %58 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call41.i.i, ptr %dma_address.i, align 4
  %tobool.not.i.i = icmp eq ptr %32, null
  br i1 %tobool.not.i.i, label %if.end14.i.do.end23.i_crit_edge, label %lor.lhs.false.i.i

if.end14.i.do.end23.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

lor.lhs.false.i.i:                                ; preds = %if.end14.i
  %59 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %32, align 4
  %tobool1.not.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i, label %lor.lhs.false.i.i.do.end23.i_crit_edge, label %lor.lhs.false2.i.i

lor.lhs.false.i.i.do.end23.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

lor.lhs.false2.i.i:                               ; preds = %lor.lhs.false.i.i
  %device_prep_slave_sg.i.i = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 39
  %61 = ptrtoint ptr %device_prep_slave_sg.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %device_prep_slave_sg.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %62, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false2.i.i.do.end23.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i

lor.lhs.false2.i.i.do.end23.i_crit_edge:          ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

dmaengine_prep_slave_sg.exit.i:                   ; preds = %lor.lhs.false2.i.i
  %call.i62.i = tail call ptr %62(ptr noundef nonnull %32, ptr noundef %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 3, ptr noundef null) #6
  %tobool19.not.i = icmp eq ptr %call.i62.i, null
  br i1 %tobool19.not.i, label %dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge, label %if.end25.i

dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23.i

do.end23.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i.do.end23.i_crit_edge, %lor.lhs.false2.i.i.do.end23.i_crit_edge, %lor.lhs.false.i.i.do.end23.i_crit_edge, %if.end14.i.do.end23.i_crit_edge
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.71) #9
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %dev) #6
  br label %if.end66

if.end25.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 6
  %65 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @at91_twi_read_data_dma_callback, ptr %callback.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 8
  %66 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %dev, ptr %callback_param.i, align 4
  %xfer_in_progress.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 6
  %67 = ptrtoint ptr %xfer_in_progress.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %xfer_in_progress.i, align 1
  %tx_submit.i.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i62.i, i32 0, i32 4
  %68 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tx_submit.i.i, align 4
  %call.i64.i = tail call i32 %69(ptr noundef nonnull %call.i62.i) #6
  %70 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dma1.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %71, align 4
  %device_issue_pending.i.i = getelementptr inbounds %struct.dma_device, ptr %73, i32 0, i32 50
  %74 = ptrtoint ptr %device_issue_pending.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %device_issue_pending.i.i, align 4
  tail call void %75(ptr noundef %71) #6
  br label %if.end66

if.else48:                                        ; preds = %land.lhs.true43.if.else48_crit_edge, %if.then28.if.else48_crit_edge
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 36, i32 noundef 259) #6
  br label %if.end66

if.else50:                                        ; preds = %if.else
  %use_dma51 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 13
  %76 = ptrtoint ptr %use_dma51 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %use_dma51, align 8, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool52.not = icmp ne i8 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %20)
  %cmp56 = icmp ugt i32 %20, 8
  %or.cond261 = select i1 %tobool52.not, i1 %cmp56, i1 false
  br i1 %or.cond261, label %if.then58, label %if.else59

if.then58:                                        ; preds = %if.else50
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 36, i32 noundef 256) #6
  %chan_tx2.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 1
  %78 = ptrtoint ptr %chan_tx2.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chan_tx2.i, align 4
  %80 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %buf_len20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i272 = icmp eq i32 %81, 0
  br i1 %tobool.not.i272, label %if.then58.if.end66_crit_edge, label %if.end.i276

if.then58.if.end66_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.end.i276:                                      ; preds = %if.then58
  %direction.i273 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 4
  %82 = ptrtoint ptr %direction.i273 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %direction.i273, align 4
  tail call void @at91_twi_irq_save(ptr noundef %dev) #6
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  %buf.i274 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 4
  %85 = ptrtoint ptr %buf.i274 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %buf.i274, align 4
  %87 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %buf_len20, align 8
  %call.i.i275 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %86) #6
  br i1 %call.i.i275, label %land.rhs.i.i278, label %dma_map_single_attrs.exit.i293

land.rhs.i.i278:                                  ; preds = %if.end.i276
  %.b1.i.i277 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i277, label %land.rhs.i.i278.dma_map_single_attrs.exit.thread.i286_crit_edge, label %if.then.i.i282, !prof !159

land.rhs.i.i278.dma_map_single_attrs.exit.thread.i286_crit_edge: ; preds = %land.rhs.i.i278
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i286

if.then.i.i282:                                   ; preds = %land.rhs.i.i278
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i279 = tail call ptr @dev_driver_string(ptr noundef %84) #6
  %init_name.i.i.i280 = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i.i.i280 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i.i280, align 8
  %tobool.not.i.i.i281 = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i281, label %if.end.i.i.i283, label %if.then.i.i282.dev_name.exit.i.i285_crit_edge

if.then.i.i282.dev_name.exit.i.i285_crit_edge:    ; preds = %if.then.i.i282
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i285

if.end.i.i.i283:                                  ; preds = %if.then.i.i282
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %84, align 4
  br label %dev_name.exit.i.i285

dev_name.exit.i.i285:                             ; preds = %if.end.i.i.i283, %if.then.i.i282.dev_name.exit.i.i285_crit_edge
  %retval.0.i.i.i284 = phi ptr [ %92, %if.end.i.i.i283 ], [ %90, %if.then.i.i282.dev_name.exit.i.i285_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.73, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.74, ptr noundef %call16.i.i279, ptr noundef %retval.0.i.i.i284) #6
  br label %dma_map_single_attrs.exit.thread.i286

dma_map_single_attrs.exit.thread.i286:            ; preds = %dev_name.exit.i.i285, %land.rhs.i.i278.dma_map_single_attrs.exit.thread.i286_crit_edge
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %94, i32 noundef -1) #6
  br label %do.end.i294

dma_map_single_attrs.exit.i293:                   ; preds = %if.end.i276
  tail call void @debug_dma_map_single(ptr noundef %84, ptr noundef %86, i32 noundef %88) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %95 = load ptr, ptr @mem_map, align 4
  %96 = ptrtoint ptr %86 to i32
  %sub.i.i287 = add i32 %96, 1073741824
  %shr.i.i288 = lshr i32 %sub.i.i287, 12
  %add.ptr.i.i289 = getelementptr %struct.page, ptr %95, i32 %shr.i.i288
  %and.i.i290 = and i32 %96, 4095
  %call41.i.i291 = tail call i32 @dma_map_page_attrs(ptr noundef %84, ptr noundef %add.ptr.i.i289, i32 noundef %and.i.i290, i32 noundef %88, i32 noundef 1, i32 noundef 0) #6
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %98, i32 noundef %call41.i.i291) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i291)
  %cmp.i.i292 = icmp eq i32 %call41.i.i291, -1
  br i1 %cmp.i.i292, label %dma_map_single_attrs.exit.i293.do.end.i294_crit_edge, label %if.end10.i

dma_map_single_attrs.exit.i293.do.end.i294_crit_edge: ; preds = %dma_map_single_attrs.exit.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i294

do.end.i294:                                      ; preds = %dma_map_single_attrs.exit.i293.do.end.i294_crit_edge, %dma_map_single_attrs.exit.thread.i286
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.68) #9
  br label %if.end66

if.end10.i:                                       ; preds = %dma_map_single_attrs.exit.i293
  %buf_mapped.i295 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 5
  %101 = ptrtoint ptr %buf_mapped.i295 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %buf_mapped.i295, align 4
  tail call void @at91_twi_irq_restore(ptr noundef %dev) #6
  %102 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool11.not.i = icmp eq i32 %103, 0
  %104 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %buf_len20, align 8
  br i1 %tobool11.not.i, label %if.else.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.end10.i
  %and.i297 = and i32 %105, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i297)
  %tobool14.not.i = icmp eq i32 %and.i297, 0
  br i1 %tobool14.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then15.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_length.i298 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4
  %106 = ptrtoint ptr %dma_length.i298 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %and.i297, ptr %dma_length.i298, align 4
  %dma_address.i299 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 3
  %107 = ptrtoint ptr %dma_address.i299 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %call41.i.i291, ptr %dma_address.i299, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %if.then12.i.if.end17.i_crit_edge
  %sg_len.0.i = phi i32 [ 1, %if.then15.i ], [ 0, %if.then12.i.if.end17.i_crit_edge ]
  %and19.i = and i32 %105, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.end17.i.if.end27.i_crit_edge, label %if.then21.i

if.end17.i.if.end27.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then21.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc23.i = add nuw nsw i32 %sg_len.0.i, 1
  %dma_length25.i = getelementptr %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 %sg_len.0.i, i32 4
  %108 = ptrtoint ptr %dma_length25.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %and19.i, ptr %dma_length25.i, align 4
  %add.i = add i32 %and.i297, %call41.i.i291
  %dma_address26.i = getelementptr %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 %sg_len.0.i, i32 3
  %109 = ptrtoint ptr %dma_address26.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %add.i, ptr %dma_address26.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then21.i, %if.end17.i.if.end27.i_crit_edge
  %sg_len.1.i = phi i32 [ %inc23.i, %if.then21.i ], [ %sg_len.0.i, %if.end17.i.if.end27.i_crit_edge ]
  %call28.i = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 80) #6
  %and29.i = and i32 %call28.i, -4
  %or.i300 = or i32 %and29.i, 2
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 80, i32 noundef %or.i300) #6
  br label %if.end37.i

if.else.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %dma_length33.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 4
  %110 = ptrtoint ptr %dma_length33.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %105, ptr %dma_length33.i, align 4
  %dma_address36.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 3
  %111 = ptrtoint ptr %dma_address36.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call41.i.i291, ptr %dma_address36.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.else.i, %if.end27.i
  %sg_len.2.i = phi i32 [ %sg_len.1.i, %if.end27.i ], [ 1, %if.else.i ]
  %sg38.i = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2
  %tobool.not.i.i301 = icmp eq ptr %79, null
  br i1 %tobool.not.i.i301, label %if.end37.i.do.end44.i_crit_edge, label %lor.lhs.false.i.i303

if.end37.i.do.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

lor.lhs.false.i.i303:                             ; preds = %if.end37.i
  %112 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %79, align 4
  %tobool1.not.i.i302 = icmp eq ptr %113, null
  br i1 %tobool1.not.i.i302, label %lor.lhs.false.i.i303.do.end44.i_crit_edge, label %lor.lhs.false2.i.i306

lor.lhs.false.i.i303.do.end44.i_crit_edge:        ; preds = %lor.lhs.false.i.i303
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

lor.lhs.false2.i.i306:                            ; preds = %lor.lhs.false.i.i303
  %device_prep_slave_sg.i.i304 = getelementptr inbounds %struct.dma_device, ptr %113, i32 0, i32 39
  %114 = ptrtoint ptr %device_prep_slave_sg.i.i304 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %device_prep_slave_sg.i.i304, align 4
  %tobool4.not.i.i305 = icmp eq ptr %115, null
  br i1 %tobool4.not.i.i305, label %lor.lhs.false2.i.i306.do.end44.i_crit_edge, label %dmaengine_prep_slave_sg.exit.i307

lor.lhs.false2.i.i306.do.end44.i_crit_edge:       ; preds = %lor.lhs.false2.i.i306
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

dmaengine_prep_slave_sg.exit.i307:                ; preds = %lor.lhs.false2.i.i306
  %call.i94.i = tail call ptr %115(ptr noundef nonnull %79, ptr noundef %sg38.i, i32 noundef %sg_len.2.i, i32 noundef 1, i32 noundef 3, ptr noundef null) #6
  %tobool40.not.i = icmp eq ptr %call.i94.i, null
  br i1 %tobool40.not.i, label %dmaengine_prep_slave_sg.exit.i307.do.end44.i_crit_edge, label %if.end46.i

dmaengine_prep_slave_sg.exit.i307.do.end44.i_crit_edge: ; preds = %dmaengine_prep_slave_sg.exit.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44.i

do.end44.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i307.do.end44.i_crit_edge, %lor.lhs.false2.i.i306.do.end44.i_crit_edge, %lor.lhs.false.i.i303.do.end44.i_crit_edge, %if.end37.i.do.end44.i_crit_edge
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.71) #9
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %dev) #6
  br label %if.end66

if.end46.i:                                       ; preds = %dmaengine_prep_slave_sg.exit.i307
  call void @__sanitizer_cov_trace_pc() #8
  %callback.i308 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i94.i, i32 0, i32 6
  %118 = ptrtoint ptr %callback.i308 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @at91_twi_write_data_dma_callback, ptr %callback.i308, align 4
  %callback_param.i309 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i94.i, i32 0, i32 8
  %119 = ptrtoint ptr %callback_param.i309 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %dev, ptr %callback_param.i309, align 4
  %xfer_in_progress.i310 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 6
  %120 = ptrtoint ptr %xfer_in_progress.i310 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 1, ptr %xfer_in_progress.i310, align 1
  %tx_submit.i.i311 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i94.i, i32 0, i32 4
  %121 = ptrtoint ptr %tx_submit.i.i311 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %tx_submit.i.i311, align 4
  %call.i96.i = tail call i32 %122(ptr noundef nonnull %call.i94.i) #6
  %123 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %79, align 4
  %device_issue_pending.i.i312 = getelementptr inbounds %struct.dma_device, ptr %124, i32 0, i32 50
  %125 = ptrtoint ptr %device_issue_pending.i.i312 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %device_issue_pending.i.i312, align 4
  tail call void %126(ptr noundef nonnull %79) #6
  br label %if.end66

if.else59:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @at91_twi_write_next_byte(ptr noundef %dev)
  %127 = ptrtoint ptr %buf_len20 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %buf_len20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool61.not = icmp eq i32 %128, 0
  %or63 = select i1 %tobool61.not, i32 257, i32 261
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 36, i32 noundef %or63) #6
  br label %if.end66

if.end66:                                         ; preds = %if.else59, %if.end46.i, %do.end44.i, %do.end.i294, %if.then58.if.end66_crit_edge, %if.else48, %if.end25.i, %do.end23.i, %do.end.i, %if.then22
  %adapter = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10
  %timeout = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 10, i32 7
  %129 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %timeout, align 4
  %call68 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %130) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %cmp69 = icmp eq i32 %call68, 0
  br i1 %cmp69, label %if.then71, label %if.end79

if.then71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 @at91_twi_read(ptr noundef %dev, i32 noundef 32) #6
  %131 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %transfer_status, align 8
  %or74 = or i32 %132, %call72
  store i32 %or74, ptr %transfer_status, align 8
  %133 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.52) #9
  tail call void @at91_init_twi_bus(ptr noundef %dev) #6
  br label %error

if.end79:                                         ; preds = %if.end66
  %135 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %transfer_status, align 8
  %and81 = and i32 %136, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end103, label %do.body84

do.body84:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_do_twi_transfer, %error)) #6
          to label %if.then98 [label %error], !srcloc !157

if.then98:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_do_twi_transfer.__UNIQUE_ID_ddebug298, ptr noundef %138, ptr noundef nonnull @.str.53) #6
  br label %error

if.end103:                                        ; preds = %if.end79
  %and105 = and i32 %136, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end112, label %do.end110

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  %139 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.55) #9
  br label %error

if.end112:                                        ; preds = %if.end103
  %and117 = and i32 %136, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %or.cond262 = select i1 %tobool.not, i1 true, i1 %tobool118.not
  br i1 %or.cond262, label %if.end124, label %do.end122

do.end122:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %141 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %142, ptr noundef nonnull @.str.58) #9
  br label %error

if.end124:                                        ; preds = %if.end112
  br i1 %tobool4.not, label %lor.lhs.false, label %land.lhs.true129

lor.lhs.false:                                    ; preds = %if.end124
  %143 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool128.not = icmp eq i32 %144, 0
  %and131 = and i32 %136, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  %or.cond317 = select i1 %tobool128.not, i1 true, i1 %tobool132.not
  br i1 %or.cond317, label %lor.lhs.false.if.end138_crit_edge, label %lor.lhs.false.do.end136_crit_edge

lor.lhs.false.do.end136_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

lor.lhs.false.if.end138_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

land.lhs.true129:                                 ; preds = %if.end124
  %and131.old = and i32 %136, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.old)
  %tobool132.not.old = icmp eq i32 %and131.old, 0
  br i1 %tobool132.not.old, label %land.lhs.true129.if.end138_crit_edge, label %land.lhs.true129.do.end136_crit_edge

land.lhs.true129.do.end136_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

land.lhs.true129.if.end138_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end138

do.end136:                                        ; preds = %land.lhs.true129.do.end136_crit_edge, %lor.lhs.false.do.end136_crit_edge
  %145 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.61) #9
  br label %error

if.end138:                                        ; preds = %land.lhs.true129.if.end138_crit_edge, %lor.lhs.false.if.end138_crit_edge
  %recv_len_abort = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 15
  %147 = ptrtoint ptr %recv_len_abort to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %recv_len_abort, align 2, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %tobool139.not = icmp eq i8 %148, 0
  br i1 %tobool139.not, label %do.body146, label %do.end143

do.end143:                                        ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.64) #9
  br label %error

do.body146:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_do_twi_transfer, %cleanup)) #6
          to label %if.then160 [label %cleanup], !srcloc !157

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_do_twi_transfer.__UNIQUE_ID_ddebug299, ptr noundef %152, ptr noundef nonnull @.str.66) #6
  br label %cleanup

error:                                            ; preds = %do.end143, %do.end136, %do.end122, %do.end110, %if.then98, %do.body84, %if.then71
  %ret.0 = phi i32 [ -110, %if.then71 ], [ -5, %do.end110 ], [ -5, %do.end122 ], [ -5, %do.end136 ], [ -71, %do.end143 ], [ -121, %if.then98 ], [ -121, %do.body84 ]
  tail call fastcc void @at91_twi_dma_cleanup(ptr noundef %dev)
  br i1 %tobool4.not, label %lor.lhs.false167, label %error.land.lhs.true170_crit_edge

error.land.lhs.true170_crit_edge:                 ; preds = %error
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true170

lor.lhs.false167:                                 ; preds = %error
  %153 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool169.not = icmp eq i32 %154, 0
  br i1 %tobool169.not, label %lor.lhs.false167.if.end194_crit_edge, label %lor.lhs.false167.land.lhs.true170_crit_edge

lor.lhs.false167.land.lhs.true170_crit_edge:      ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true170

lor.lhs.false167.if.end194_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

land.lhs.true170:                                 ; preds = %lor.lhs.false167.land.lhs.true170_crit_edge, %error.land.lhs.true170_crit_edge
  %155 = ptrtoint ptr %transfer_status to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %transfer_status, align 8
  %and172 = and i32 %156, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %land.lhs.true170.if.end194_crit_edge, label %do.body175

land.lhs.true170.if.end194_crit_edge:             ; preds = %land.lhs.true170
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end194

do.body175:                                       ; preds = %land.lhs.true170
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at91_do_twi_transfer, %do.end193)) #6
          to label %if.then189 [label %do.end193], !srcloc !157

if.then189:                                       ; preds = %do.body175
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at91_do_twi_transfer.__UNIQUE_ID_ddebug300, ptr noundef %158, ptr noundef nonnull @.str.67) #6
  br label %do.end193

do.end193:                                        ; preds = %if.then189, %do.body175
  tail call void @at91_twi_write(ptr noundef %dev, i32 noundef 0, i32 noundef 83886080) #6
  br label %if.end194

if.end194:                                        ; preds = %do.end193, %land.lhs.true170.if.end194_crit_edge, %lor.lhs.false167.if.end194_crit_edge
  %call196 = tail call i32 @i2c_recover_bus(ptr noundef %adapter) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end194, %if.then160, %do.body146
  %retval.0 = phi i32 [ %ret.0, %if.end194 ], [ 0, %if.then160 ], [ 0, %do.body146 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_init_twi_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at91_twi_dma_cleanup(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dma1 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17
  tail call void @at91_twi_irq_save(ptr noundef %dev) #6
  %xfer_in_progress = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 6
  %0 = ptrtoint ptr %xfer_in_progress to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %xfer_in_progress, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %direction = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 4
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = ptrtoint ptr %dma1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then2.if.end_crit_edge, label %dmaengine_terminate_async.exit.i

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dmaengine_terminate_async.exit.i:                 ; preds = %if.then2
  %call.i.i = tail call i32 %9(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.if.end_crit_edge

dmaengine_terminate_async.exit.i.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 1169) #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 48
  %12 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i1.i = icmp eq ptr %13, null
  br i1 %tobool.not.i1.i, label %if.end.i.if.end_crit_edge, label %if.then.i2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i2.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %13(ptr noundef %5) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  %chan_tx = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 1
  %14 = ptrtoint ptr %chan_tx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan_tx, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %device_terminate_all.i.i24 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all.i.i24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device_terminate_all.i.i24, align 4
  %tobool.not.i.i25 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i25, label %if.else.if.end_crit_edge, label %dmaengine_terminate_async.exit.i28

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

dmaengine_terminate_async.exit.i28:               ; preds = %if.else
  %call.i.i26 = tail call i32 %19(ptr noundef %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26)
  %tobool.not.i27 = icmp eq i32 %call.i.i26, 0
  br i1 %tobool.not.i27, label %if.end.i31, label %dmaengine_terminate_async.exit.i28.if.end_crit_edge

dmaengine_terminate_async.exit.i28.if.end_crit_edge: ; preds = %dmaengine_terminate_async.exit.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i31:                                       ; preds = %dmaengine_terminate_async.exit.i28
  tail call void @__might_sleep(ptr noundef nonnull @.str.78, i32 noundef 1169) #6
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %15, align 4
  %device_synchronize.i.i29 = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 48
  %22 = ptrtoint ptr %device_synchronize.i.i29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device_synchronize.i.i29, align 4
  %tobool.not.i1.i30 = icmp eq ptr %23, null
  br i1 %tobool.not.i1.i30, label %if.end.i31.if.end_crit_edge, label %if.then.i2.i32

if.end.i31.if.end_crit_edge:                      ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i2.i32:                                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %23(ptr noundef %15) #6
  br label %if.end

if.end:                                           ; preds = %if.then.i2.i32, %if.end.i31.if.end_crit_edge, %dmaengine_terminate_async.exit.i28.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then.i2.i, %if.end.i.if.end_crit_edge, %dmaengine_terminate_async.exit.i.if.end_crit_edge, %if.then2.if.end_crit_edge
  %24 = ptrtoint ptr %xfer_in_progress to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %xfer_in_progress, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %buf_mapped = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 5
  %25 = ptrtoint ptr %buf_mapped to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %buf_mapped, align 4, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool6.not = icmp eq i8 %26, 0
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %if.then7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %dma_address = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 2, i32 0, i32 3
  %29 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_address, align 4
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 5
  %31 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buf_len, align 8
  %direction9 = getelementptr inbounds %struct.at91_twi_dev, ptr %dev, i32 0, i32 17, i32 4
  %33 = ptrtoint ptr %direction9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %direction9, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %28, i32 noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0) #6
  %35 = ptrtoint ptr %buf_mapped to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %buf_mapped, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end5.if.end11_crit_edge
  tail call void @at91_twi_irq_restore(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_recover_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_irq_save(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @at91_twi_irq_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_twi_read_data_dma_callback(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dma_address = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 17, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address, align 4
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 2, i32 noundef 0) #6
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buf_len, align 8
  %sub = add i32 %9, -2
  %buf = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 4
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %sub
  store ptr %add.ptr, ptr %buf, align 4
  store i32 2, ptr %buf_len, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ier.0 = phi i32 [ 1, %entry.if.end_crit_edge ], [ 3, %if.then ]
  tail call void @at91_twi_write(ptr noundef %data, i32 noundef 36, i32 noundef %ier.0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at91_twi_write_data_dma_callback(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dma_address = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 17, i32 2, i32 0, i32 3
  %2 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_address, align 4
  %buf_len = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %buf_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buf_len, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef 1, i32 noundef 0) #6
  tail call void @at91_twi_write(ptr noundef %data, i32 noundef 36, i32 noundef 1) #6
  %use_alt_cmd = getelementptr inbounds %struct.at91_twi_dev, ptr %data, i32 0, i32 14
  %6 = ptrtoint ptr %use_alt_cmd to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %use_alt_cmd, align 1, !range !155
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @at91_twi_write(ptr noundef %data, i32 noundef 0, i32 noundef 2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !22, !24, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !144}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 878, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @at91_twi_probe_master._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @at91_twi_probe_master._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 888, i32 47}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 890, i32 3}
!12 = !{ptr @.str.8, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @at91_twi_probe_master._entry.6, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @at91_twi_probe_master._entry_ptr.9, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 894, i32 12}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 897, i32 12}
!19 = !{ptr @init_completion.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../include/linux/completion.h", i32 87, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 298, i32 4}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @at91_twi_read_next_byte.__UNIQUE_ID_ddebug295, !23, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 311, i32 2}
!29 = !{ptr @at91_twi_read_next_byte.__UNIQUE_ID_ddebug296, !28, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 170, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @at91_twi_write_next_byte.__UNIQUE_ID_ddebug294, !31, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 770, i32 44}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 777, i32 44}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 786, i32 3}
!40 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @at91_twi_configure_dma._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @at91_twi_configure_dma._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 793, i32 3}
!45 = !{ptr @at91_twi_configure_dma._entry.23, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @at91_twi_configure_dma._entry_ptr.25, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 803, i32 2}
!49 = !{ptr @at91_twi_configure_dma._entry.26, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @at91_twi_configure_dma._entry_ptr.28, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 810, i32 3}
!53 = !{ptr @at91_twi_configure_dma._entry.29, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @at91_twi_configure_dma._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 83, i32 3}
!57 = !{ptr @.str.33, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @at91_calc_twi_clock._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @at91_calc_twi_clock._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 101, i32 4}
!63 = !{ptr @at91_calc_twi_clock._entry.35, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @at91_calc_twi_clock._entry_ptr.37, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 116, i32 4}
!67 = !{ptr @at91_calc_twi_clock._entry.38, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @at91_calc_twi_clock._entry_ptr.40, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 128, i32 2}
!71 = !{ptr @at91_calc_twi_clock.__UNIQUE_ID_ddebug293, !70, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 825, i32 3}
!74 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @at91_init_twi_recovery_gpio._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @at91_init_twi_recovery_gpio._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 839, i32 3}
!79 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @at91_twi_recover_bus_cmd.__UNIQUE_ID_ddebug302, !78, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!81 = !{ptr @at91_twi_algorithm, !82, !"at91_twi_algorithm", i1 false, i1 false}
!82 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 731, i32 35}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 660, i32 2}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @at91_twi_xfer.__UNIQUE_ID_ddebug301, !84, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 526, i32 2}
!89 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug297, !88, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!91 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 595, i32 3}
!95 = !{ptr @at91_do_twi_transfer._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @at91_do_twi_transfer._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 601, i32 3}
!99 = !{ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug298, !98, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 606, i32 3}
!102 = !{ptr @at91_do_twi_transfer._entry.54, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @at91_do_twi_transfer._entry_ptr.56, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 611, i32 3}
!106 = !{ptr @at91_do_twi_transfer._entry.57, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @at91_do_twi_transfer._entry_ptr.59, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 617, i32 3}
!110 = !{ptr @at91_do_twi_transfer._entry.60, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @at91_do_twi_transfer._entry_ptr.62, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.64, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 622, i32 3}
!114 = !{ptr @at91_do_twi_transfer._entry.63, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @at91_do_twi_transfer._entry_ptr.65, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 627, i32 2}
!118 = !{ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug299, !117, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 637, i32 3}
!121 = !{ptr @at91_do_twi_transfer.__UNIQUE_ID_ddebug300, !120, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 348, i32 3}
!124 = !{ptr @.str.69, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @at91_twi_read_data_dma._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @at91_twi_read_data_dma._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 373, i32 3}
!129 = !{ptr @at91_twi_read_data_dma._entry.70, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @at91_twi_read_data_dma._entry_ptr.72, !128, !"_entry_ptr", i1 false, i1 false}
!131 = distinct !{null, !132, !"__already_done", i1 false, i1 false}
!132 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!133 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 211, i32 3}
!137 = !{ptr @at91_twi_write_data_dma._entry, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @at91_twi_write_data_dma._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @at91_twi_write_data_dma._entry.76, !140, !"_entry", i1 false, i1 false}
!140 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 255, i32 3}
!141 = !{ptr @at91_twi_write_data_dma._entry_ptr.77, !140, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!144 = !{ptr @at91_twi_quirks, !145, !"at91_twi_quirks", i1 false, i1 false}
!145 = !{!"../drivers/i2c/busses/i2c-at91-master.c", i32 720, i32 40}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{i8 0, i8 2}
!156 = !{i32 0, i32 33}
!157 = !{i64 2148747681, i64 2148747686, i64 2148747699, i64 2148747743, i64 2148747777, i64 2148747798}
!158 = !{i64 6274279}
!159 = !{!"branch_weights", i32 2000, i32 1}
!160 = !{i64 6273884}
