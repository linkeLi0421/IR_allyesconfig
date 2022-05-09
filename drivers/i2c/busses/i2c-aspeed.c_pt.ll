; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-aspeed.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-aspeed.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.aspeed_i2c_bus = type { %struct.i2c_adapter, ptr, ptr, ptr, %struct.spinlock, %struct.completion, ptr, i32, i32, i32, ptr, i32, i32, i32, i8, i32, i32, i8, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_i2c_aspeed__294_1087_aspeed_i2c_bus_driver_init6 = internal global ptr @aspeed_i2c_bus_driver_init, section ".initcall6.init", align 4
@aspeed_i2c_bus_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aspeed_i2c_probe_bus, ptr @aspeed_i2c_remove_bus, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aspeed_i2c_bus_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_aspeed_i2c_bus_driver_exit = internal global ptr @aspeed_i2c_bus_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [62 x i8] c"i2c_aspeed.author=Brendan Higgins <brendanhiggins@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [45 x i8] c"i2c_aspeed.description=Aspeed I2C Bus Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [46 x i8] c"i2c_aspeed.file=drivers/i2c/busses/i2c-aspeed\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [26 x i8] c"i2c_aspeed.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aspeed-i2c-bus\00", [17 x i8] zeroinitializer }, align 32
@aspeed_i2c_bus_of_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2400-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_24xx_get_clk_reg_val }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2500-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_25xx_get_clk_reg_val }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"aspeed,ast2600-i2c-bus\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @aspeed_i2c_25xx_get_clk_reg_val }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"missing or invalid reset controller device tree entry\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aspeed_i2c_probe_bus\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/i2c/busses/i2c-aspeed.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry_ptr = internal global ptr @aspeed_i2c_probe_bus._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bus-frequency\00", [18 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1006, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Could not read bus-frequency property\0A\00", [57 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry_ptr.9 = internal global ptr @aspeed_i2c_probe_bus._entry.7, section ".printk_index", align 4
@aspeed_i2c_probe_bus.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&bus->lock\00", [21 x i8] zeroinitializer }, align 32
@aspeed_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @aspeed_i2c_master_xfer, ptr null, ptr null, ptr null, ptr @aspeed_i2c_functionality, ptr @aspeed_i2c_reg_slave, ptr @aspeed_i2c_unreg_slave }, [36 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1054, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c bus %d registered, irq %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aspeed_i2c_probe_bus._entry_ptr.14 = internal global ptr @aspeed_i2c_probe_bus._entry.11, section ".printk_index", align 4
@aspeed_i2c_get_clk_reg_val._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 841, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"clamping clock divider: divider requested, %u, is greater than largest possible divider, %u.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"aspeed_i2c_get_clk_reg_val\00", [37 x i8] zeroinitializer }, align 32
@aspeed_i2c_get_clk_reg_val._entry_ptr = internal global ptr @aspeed_i2c_get_clk_reg_val._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c_aspeed\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed_i2c_recover_bus\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SCL hung (state %x), attempting recovery\0A\00", [54 x i8] zeroinitializer }, align 32
@aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 52, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"SDA hung (state %x), attempting recovery\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"multi-master\00", [19 x i8] zeroinitializer }, align 32
@aspeed_i2c_bus_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 646, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"irq handled != irq. expected 0x%08x, but was 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aspeed_i2c_bus_irq\00", [45 x i8] zeroinitializer }, align 32
@aspeed_i2c_bus_irq._entry_ptr = internal global ptr @aspeed_i2c_bus_irq._entry, section ".printk_index", align 4
@aspeed_i2c_master_irq.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"aspeed_i2c_master_irq\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"received error interrupt: 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 439, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"bus in unknown state. irq_status: 0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr = internal global ptr @aspeed_i2c_master_irq._entry, section ".printk_index", align 4
@aspeed_i2c_master_irq.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.25, ptr @.str.3, ptr @.str.28, i8 0, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"master goes pending due to a slave start\0A\00", [54 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.25, ptr @.str.3, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017no slave present at %02x\0A\00", [36 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr.31 = internal global ptr @aspeed_i2c_master_irq._entry.29, section ".printk_index", align 4
@aspeed_i2c_master_irq.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.25, ptr @.str.3, ptr @.str.32, i8 0, i8 124, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slave NACKed TX\0A\00", [47 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"slave failed to ACK TX\0A\00", [40 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr.35 = internal global ptr @aspeed_i2c_master_irq._entry.33, section ".printk_index", align 4
@aspeed_i2c_master_irq._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.25, ptr @.str.3, i32 525, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"master failed to RX\0A\00", [43 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr.38 = internal global ptr @aspeed_i2c_master_irq._entry.36, section ".printk_index", align 4
@aspeed_i2c_master_irq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.25, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"master failed to STOP. irq_status:0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr.41 = internal global ptr @aspeed_i2c_master_irq._entry.39, section ".printk_index", align 4
@aspeed_i2c_master_irq._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.25, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"master received interrupt 0x%08x, but is inactive\0A\00", [45 x i8] zeroinitializer }, align 32
@aspeed_i2c_master_irq._entry_ptr.44 = internal global ptr @aspeed_i2c_master_irq._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unknown master state\0A\00", [42 x i8] zeroinitializer }, align 32
@aspeed_i2c_slave_irq.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 66, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aspeed_i2c_slave_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"slave irq status 0x%08x, cmd 0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@aspeed_i2c_slave_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected ACK on read request.\0A\00", [63 x i8] zeroinitializer }, align 32
@aspeed_i2c_slave_irq._entry_ptr = internal global ptr @aspeed_i2c_slave_irq._entry, section ".printk_index", align 4
@aspeed_i2c_slave_irq._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.46, ptr @.str.3, i32 304, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Expected ACK after processed read.\0A\00", [60 x i8] zeroinitializer }, align 32
@aspeed_i2c_slave_irq._entry_ptr.51 = internal global ptr @aspeed_i2c_slave_irq._entry.49, section ".printk_index", align 4
@aspeed_i2c_slave_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.46, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown slave_state: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@aspeed_i2c_slave_irq._entry_ptr.54 = internal global ptr @aspeed_i2c_slave_irq._entry.52, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.56 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"aspeed_i2c_bus_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1079, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1083, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [24 x i8] c"aspeed_i2c_bus_of_table\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 953, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 996, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1003, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1005, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1018, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"aspeed_i2c_algo\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 788, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 1053, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 839, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 87, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 186, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 207, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 913, i32 47 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 644, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 421, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 438, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 467, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 478, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 498, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 502, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 525, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 556, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 568, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 575, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 263, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 295, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 303, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [35 x i8] c"../drivers/i2c/busses/i2c-aspeed.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 327, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_aspeed_i2c_bus_driver_exit, ptr @__initcall__kmod_i2c_aspeed__294_1087_aspeed_i2c_bus_driver_init6, ptr @aspeed_i2c_bus_driver_exit, ptr @aspeed_i2c_bus_irq._entry, ptr @aspeed_i2c_bus_irq._entry_ptr, ptr @aspeed_i2c_get_clk_reg_val._entry, ptr @aspeed_i2c_get_clk_reg_val._entry_ptr, ptr @aspeed_i2c_master_irq._entry, ptr @aspeed_i2c_master_irq._entry.29, ptr @aspeed_i2c_master_irq._entry.33, ptr @aspeed_i2c_master_irq._entry.36, ptr @aspeed_i2c_master_irq._entry.39, ptr @aspeed_i2c_master_irq._entry.42, ptr @aspeed_i2c_master_irq._entry_ptr, ptr @aspeed_i2c_master_irq._entry_ptr.31, ptr @aspeed_i2c_master_irq._entry_ptr.35, ptr @aspeed_i2c_master_irq._entry_ptr.38, ptr @aspeed_i2c_master_irq._entry_ptr.41, ptr @aspeed_i2c_master_irq._entry_ptr.44, ptr @aspeed_i2c_probe_bus._entry, ptr @aspeed_i2c_probe_bus._entry.11, ptr @aspeed_i2c_probe_bus._entry.7, ptr @aspeed_i2c_probe_bus._entry_ptr, ptr @aspeed_i2c_probe_bus._entry_ptr.14, ptr @aspeed_i2c_probe_bus._entry_ptr.9, ptr @aspeed_i2c_slave_irq._entry, ptr @aspeed_i2c_slave_irq._entry.49, ptr @aspeed_i2c_slave_irq._entry.52, ptr @aspeed_i2c_slave_irq._entry_ptr, ptr @aspeed_i2c_slave_irq._entry_ptr.51, ptr @aspeed_i2c_slave_irq._entry_ptr.54, ptr @aspeed_i2c_bus_driver, ptr @.str, ptr @aspeed_i2c_bus_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @aspeed_i2c_probe_bus.__key, ptr @.str.10, ptr @aspeed_i2c_algo, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @init_completion.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53], section "llvm.metadata"
@0 = internal global [56 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_bus_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_bus_of_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_probe_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_probe_bus._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_probe_bus.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_probe_bus._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_get_clk_reg_val._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_bus_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_master_irq._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_slave_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_slave_irq._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aspeed_i2c_slave_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_bus_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @aspeed_i2c_bus_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aspeed_i2c_bus_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @aspeed_i2c_bus_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_probe_bus(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1528, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %cmp.i163 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %call16 = tail call i32 @clk_get_rate(ptr noundef %call11) #8
  %parent_clk_frequency = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %parent_clk_frequency to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call16, ptr %parent_clk_frequency, align 4
  tail call void @devm_clk_put(ptr noundef %dev, ptr noundef %call11) #8
  %call.i164 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %rst = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i164, ptr %rst, align 8
  %cmp.i165 = icmp ugt ptr %call.i164, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %do.end, label %if.end26

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %5 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rst, align 8
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %call28 = tail call i32 @reset_control_deassert(ptr noundef %call.i164) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %bus_frequency = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef %bus_frequency, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end34, label %if.end26.if.end37_crit_edge

if.end26.if.end37_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

do.end34:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %10 = ptrtoint ptr %bus_frequency to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 100000, ptr %bus_frequency, align 8
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %if.end26.if.end37_crit_edge
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %call40 = tail call ptr @of_match_node(ptr noundef nonnull @aspeed_i2c_bus_of_table, ptr noundef %12) #8
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end37.do.body45_crit_edge, label %if.else

if.end37.do.body45_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body45

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call40, i32 0, i32 3
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  br label %do.body45

do.body45:                                        ; preds = %if.else, %if.end37.do.body45_crit_edge
  %.sink = phi ptr [ %14, %if.else ], [ @aspeed_i2c_24xx_get_clk_reg_val, %if.end37.do.body45_crit_edge ]
  %15 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %.sink, ptr %15, align 8
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @aspeed_i2c_probe_bus.__key, i16 noundef signext 3) #8
  %cmd_complete = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 5
  %17 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cmd_complete, align 4
  %wait.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 5, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @init_completion.__key) #8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %call.i, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %retries, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @aspeed_i2c_algo, ptr %algo, align 8
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %21 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %parent, align 8
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node58 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %24 = ptrtoint ptr %of_node58 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node58, align 8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev, align 8
  %call61 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %26, i32 noundef 48) #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev64 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %dev64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr73 = getelementptr i8, ptr %32, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 -1) #8, !srcloc !125
  tail call fastcc void @aspeed_i2c_init(ptr noundef nonnull %call.i, ptr noundef %pdev)
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call80 = tail call i32 @irq_of_parse_and_map(ptr noundef %34, i32 noundef 0) #8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body45.dev_name.exit_crit_edge

do.body45.dev_name.exit_crit_edge:                ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %38, %if.end.i ], [ %36, %do.body45.dev_name.exit_crit_edge ]
  %call.i166 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call80, ptr noundef nonnull @aspeed_i2c_bus_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %cmp85 = icmp slt i32 %call.i166, 0
  br i1 %cmp85, label %dev_name.exit.cleanup_crit_edge, label %if.end87

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end87:                                         ; preds = %dev_name.exit
  %call89 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.end87.cleanup_crit_edge, label %if.end92

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end92:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i167 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i167 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i167, align 4
  %40 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev64, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 11
  %42 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.12, i32 noundef %43, i32 noundef %call80) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end92, %if.end87.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %2, %if.then13 ], [ %7, %do.end ], [ 0, %if.end92 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i166, %dev_name.exit.cleanup_crit_edge ], [ %call89, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_remove_bus(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr13 = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #8, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  %rst = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 8
  %call15 = tail call i32 @reset_control_assert(ptr noundef %7) #8
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_24xx_get_clk_reg_val(ptr noundef %dev, i32 noundef %divisor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %divisor)
  %cmp.i = icmp ugt i32 %divisor, 16
  %sub.i = add i32 %divisor, -1
  br i1 %cmp.i, label %cond.end16.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

cond.end16.i:                                     ; preds = %entry
  %div.i3 = lshr i32 %sub.i, 4
  %0 = tail call i32 @llvm.ctlz.i32(i32 %div.i3, i1 true) #8, !range !129
  %add14.i = sub nuw nsw i32 32, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 524287, i32 %sub.i)
  %cmp18.i = icmp ugt i32 %sub.i, 524287
  br i1 %cmp18.i, label %if.then.i, label %cond.end16.i.if.else.i_crit_edge

cond.end16.i.if.else.i_crit_edge:                 ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %divisor, i32 noundef 524288) #11
  br label %aspeed_i2c_get_clk_reg_val.exit

if.else.i:                                        ; preds = %cond.end16.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %cond1763.i = phi i32 [ %add14.i, %cond.end16.i.if.else.i_crit_edge ], [ 0, %entry.if.else.i_crit_edge ]
  %shl21.i = shl nuw nsw i32 1, %cond1763.i
  %sub23.i = add i32 %shl21.i, %sub.i
  %shr.i = lshr i32 %sub23.i, %cond1763.i
  %div2460.i = lshr i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %div2460.i)
  %tobool.not.i = icmp eq i32 %shr.i, %div2460.i
  %1 = xor i32 %div2460.i, -1
  %dec.i = add i32 %shr.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %tobool27.not.i = icmp ult i32 %shr.i, 2
  %dec.i.op = shl i32 %dec.i, 16
  %dec.i.op.op = and i32 %dec.i.op, 983040
  %phi.bo1 = select i1 %tobool.not.i, i32 0, i32 %dec.i.op.op
  %dec29.i = shl i32 %div2460.i, 12
  %dec29.i.op = add i32 %dec29.i, 61440
  %dec29.i.op.op = and i32 %dec29.i.op, 61440
  %phi.bo2 = select i1 %tobool27.not.i, i32 0, i32 %dec29.i.op.op
  %2 = or i32 %phi.bo1, %cond1763.i
  %3 = or i32 %2, %phi.bo2
  br label %aspeed_i2c_get_clk_reg_val.exit

aspeed_i2c_get_clk_reg_val.exit:                  ; preds = %if.else.i, %if.then.i
  %or36.i = phi i32 [ %3, %if.else.i ], [ 487439, %if.then.i ]
  ret i32 %or36.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_init(ptr nocapture noundef %bus, ptr nocapture noundef readonly %pdev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !125
  %parent_clk_frequency.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 7
  %2 = ptrtoint ptr %parent_clk_frequency.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_clk_frequency.i, align 4
  %bus_frequency.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 8
  %4 = ptrtoint ptr %bus_frequency.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bus_frequency.i, align 8
  %add.i = add i32 %3, -1
  %sub.i = add i32 %add.i, %5
  %div.i = udiv i32 %sub.i, %5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  %9 = and i32 %8, 61695
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  %get_clk_reg_val.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 6
  %11 = ptrtoint ptr %get_clk_reg_val.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_clk_reg_val.i, align 8
  %dev.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 8
  %call3.i = tail call i32 %12(ptr noundef %14, i32 noundef %div.i) #8
  %or.i = or i32 %call3.i, %10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  tail call void @arm_heavy_mb() #8
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %15) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #8, !srcloc !125
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.22, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.do.body4_crit_edge, label %if.then2

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %multi_master = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 17
  %22 = ptrtoint ptr %multi_master to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %multi_master, align 4
  br label %do.body4

do.body4:                                         ; preds = %if.then2, %entry.do.body4_crit_edge
  %fun_ctrl_reg.0 = phi i32 [ 1, %if.then2 ], [ 32769, %entry.do.body4_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #8, !srcloc !131
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !136
  %or11 = or i32 %26, %fun_ctrl_reg.0
  %27 = tail call i32 @llvm.bswap.i32(i32 %or11)
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #8, !srcloc !125
  %slave = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 18
  %30 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slave, align 8
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %do.body4.do.body17_crit_edge, label %if.then14

do.body4.do.body17_crit_edge:                     ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body17

if.then14:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr, align 2
  %34 = and i16 %33, 127
  %and.i = zext i16 %34 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %35 = shl nuw nsw i32 %and.i, 24
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr.i2 = getelementptr i8, ptr %37, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 %35) #8, !srcloc !125
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %41 = or i32 %40, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #8, !srcloc !125
  br label %do.body17

do.body17:                                        ; preds = %if.then14, %do.body4.do.body17_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !140
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr21 = getelementptr i8, ptr %45, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 2136997888) #8, !srcloc !125
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_bus_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %dev_id, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !142
  tail call void @arm_heavy_mb() #8
  %and = and i32 %3, -5
  %4 = tail call i32 @llvm.bswap.i32(i32 %and)
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #8, !srcloc !125
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 16
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !143
  %and11 = and i32 %3, -268369921
  %master_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %dev_id, i32 0, i32 9
  %10 = ptrtoint ptr %master_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %master_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch = icmp ult i32 %11, 2
  br i1 %switch, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call14 = tail call fastcc i32 @aspeed_i2c_master_irq(ptr noundef %dev_id, i32 noundef %and11)
  %neg = xor i32 %call14, -1
  %and15 = and i32 %and11, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool.not = icmp eq i32 %and15, 0
  br i1 %tobool.not, label %if.then.if.end26_crit_edge, label %if.then16

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then16:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call fastcc i32 @aspeed_i2c_slave_irq(ptr noundef %dev_id, i32 noundef %and15)
  %or = or i32 %call17, %call14
  br label %if.end26

if.else:                                          ; preds = %entry
  %call18 = tail call fastcc i32 @aspeed_i2c_slave_irq(ptr noundef %dev_id, i32 noundef %and11)
  %neg19 = xor i32 %call18, -1
  %and20 = and i32 %and11, %neg19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.else.if.end26_crit_edge, label %if.then22

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call fastcc i32 @aspeed_i2c_master_irq(ptr noundef %dev_id, i32 noundef %and20)
  %or24 = or i32 %call23, %call18
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.else.if.end26_crit_edge, %if.then16, %if.then.if.end26_crit_edge
  %irq_handled.0 = phi i32 [ %or, %if.then16 ], [ %call14, %if.then.if.end26_crit_edge ], [ %or24, %if.then22 ], [ %call18, %if.else.if.end26_crit_edge ]
  %irq_remaining.0 = phi i32 [ %and15, %if.then16 ], [ 0, %if.then.if.end26_crit_edge ], [ %and20, %if.then22 ], [ 0, %if.else.if.end26_crit_edge ]
  %12 = ptrtoint ptr %master_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %master_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp28 = icmp eq i32 %13, 1
  br i1 %cmp28, label %land.lhs.true29, label %if.end26.if.end32_crit_edge

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true29:                                  ; preds = %if.end26
  %slave_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %dev_id, i32 0, i32 19
  %14 = ptrtoint ptr %slave_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slave_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp30 = icmp eq i32 %15, 0
  br i1 %cmp30, label %if.then31, label %land.lhs.true29.if.end32_crit_edge

land.lhs.true29.if.end32_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_i2c_do_start(ptr noundef %dev_id)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %land.lhs.true29.if.end32_crit_edge, %if.end26.if.end32_crit_edge
  %neg33 = xor i32 %irq_handled.0, -1
  %and34 = and i32 %irq_remaining.0, %neg33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end32.if.end40_crit_edge, label %do.end39

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

do.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %dev_id, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.23, i32 noundef %and11, i32 noundef %irq_handled.0) #11
  br label %if.end40

if.end40:                                         ; preds = %do.end39, %if.end32.if.end40_crit_edge
  %and41 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end56_crit_edge, label %do.body44

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

do.body44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !144
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr48 = getelementptr i8, ptr %19, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 67108864) #8, !srcloc !125
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr52 = getelementptr i8, ptr %21, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !145
  br label %if.end56

if.end56:                                         ; preds = %do.body44, %if.end40.if.end56_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %cond = zext i1 %tobool35.not to i32
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_master_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %cmd_err = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %cmd_err, align 4
  %multi_master = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 17
  %3 = ptrtoint ptr %multi_master to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %multi_master, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end28_crit_edge

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true:                                    ; preds = %entry
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !147
  %8 = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool9.not = icmp eq i32 %8, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end28_crit_edge, label %if.then

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  tail call fastcc void @aspeed_i2c_recover_bus(ptr noundef %1)
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.lhs.true.if.end28_crit_edge, %entry.if.end28_crit_edge
  %flags.1 = phi i32 [ %call3, %entry.if.end28_crit_edge ], [ %call23, %if.then ], [ %call3, %land.lhs.true.if.end28_crit_edge ]
  %9 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %cmd_err, align 4
  %msgs30 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %msgs30 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msgs, ptr %msgs30, align 8
  %msgs_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %msgs_index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msgs_index, align 8
  %msgs_count = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %msgs_count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %num, ptr %msgs_count, align 4
  %cmd_complete = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cmd_complete, align 4
  tail call fastcc void @aspeed_i2c_do_start(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %timeout, align 4
  %call34 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then37, label %if.end74

if.then37:                                        ; preds = %if.end28
  %16 = ptrtoint ptr %multi_master to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %multi_master, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool39.not = icmp eq i8 %17, 0
  br i1 %tobool39.not, label %if.then37.do.body55_crit_edge, label %land.lhs.true41

if.then37.do.body55_crit_edge:                    ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

land.lhs.true41:                                  ; preds = %if.then37
  %base44 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %base44 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base44, align 4
  %add.ptr45 = getelementptr i8, ptr %19, i32 20
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %21 = and i32 %20, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool50.not = icmp eq i32 %21, 0
  br i1 %tobool50.not, label %land.lhs.true41.do.body55_crit_edge, label %if.then51

land.lhs.true41.do.body55_crit_edge:              ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body55

if.then51:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_i2c_recover_bus(ptr noundef %1)
  br label %do.body55

do.body55:                                        ; preds = %if.then51, %land.lhs.true41.do.body55_crit_edge, %if.then37.do.body55_crit_edge
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %master_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %master_state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %master_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp68 = icmp eq i32 %23, 1
  br i1 %cmp68, label %if.then70, label %do.body55.if.end72_crit_edge

do.body55.if.end72_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

if.then70:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %master_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %master_state, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %do.body55.if.end72_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call63) #8
  br label %cleanup75

if.end74:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %master_xfer_result = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %1, i32 0, i32 16
  %25 = ptrtoint ptr %master_xfer_result to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %master_xfer_result, align 8
  br label %cleanup75

cleanup75:                                        ; preds = %if.end74, %if.end72
  %retval.1 = phi i32 [ -110, %if.end72 ], [ %26, %if.end74 ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @aspeed_i2c_functionality(ptr nocapture noundef readnone %adap) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 268369929
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_reg_slave(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %slave = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %8 = and i16 %7, 127
  %and.i = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !137
  tail call void @arm_heavy_mb() #8
  %9 = shl nuw nsw i32 %and.i, 24
  %base.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #8, !srcloc !125
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !138
  %15 = or i32 %14, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !139
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #8, !srcloc !125
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %client, ptr %slave, align 8
  %slave_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %slave_state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %slave_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_unreg_slave(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %slave = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %9 = and i32 %8, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !125
  %12 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %slave, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_recover_bus(ptr noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 4
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !151
  %and = and i32 %3, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body64, label %if.then

if.then:                                          ; preds = %entry
  %and8 = and i32 %3, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.body11, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body11:                                        ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_recover_bus, %do.end21)) #8
          to label %if.then18 [label %do.end21], !srcloc !152

if.then18:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %3) #8
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.body11
  %cmd_complete = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 5
  %6 = ptrtoint ptr %cmd_complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cmd_complete, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %8, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 536870912) #8, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %timeout = getelementptr inbounds %struct.i2c_adapter, ptr %bus, i32 0, i32 7
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  %call29 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete, i32 noundef %10) #8
  %call39 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp44 = icmp eq i32 %call29, 0
  br i1 %cmp44, label %do.end21.reset_out_crit_edge, label %if.else

do.end21.reset_out_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

if.else:                                          ; preds = %do.end21
  %cmd_err = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %11 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool47.not = icmp eq i32 %12, 0
  br i1 %tobool47.not, label %if.else49, label %if.else.reset_out_crit_edge

if.else.reset_out_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

if.else49:                                        ; preds = %if.else
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr53 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !154
  %16 = and i32 %15, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool58.not = icmp eq i32 %16, 0
  br i1 %tobool58.not, label %if.else49.reset_out_crit_edge, label %if.else49.cleanup_crit_edge

if.else49.cleanup_crit_edge:                      ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else49.reset_out_crit_edge:                    ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

do.body64:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_recover_bus, %do.end82)) #8
          to label %if.then78 [label %do.end82], !srcloc !152

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %dev79 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %17 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev79, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug289, ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef %3) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then78, %do.body64
  %cmd_complete83 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 5
  %19 = ptrtoint ptr %cmd_complete83 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cmd_complete83, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr88 = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88, i32 524288) #8, !srcloc !125
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #8
  %timeout92 = getelementptr inbounds %struct.i2c_adapter, ptr %bus, i32 0, i32 7
  %22 = ptrtoint ptr %timeout92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %timeout92, align 4
  %call93 = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_complete83, i32 noundef %23) #8
  %call103 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp108 = icmp eq i32 %call93, 0
  br i1 %cmp108, label %do.end82.reset_out_crit_edge, label %if.else111

do.end82.reset_out_crit_edge:                     ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

if.else111:                                       ; preds = %do.end82
  %cmd_err112 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %24 = ptrtoint ptr %cmd_err112 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cmd_err112, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool113.not = icmp eq i32 %25, 0
  br i1 %tobool113.not, label %if.else115, label %if.else111.reset_out_crit_edge

if.else111.reset_out_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

if.else115:                                       ; preds = %if.else111
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr119 = getelementptr i8, ptr %27, i32 20
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !156
  %29 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool124.not = icmp eq i32 %29, 0
  br i1 %tobool124.not, label %if.else115.reset_out_crit_edge, label %if.else115.cleanup_crit_edge

if.else115.cleanup_crit_edge:                     ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else115.reset_out_crit_edge:                   ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #10
  br label %reset_out

reset_out:                                        ; preds = %if.else115.reset_out_crit_edge, %if.else111.reset_out_crit_edge, %do.end82.reset_out_crit_edge, %if.else49.reset_out_crit_edge, %if.else.reset_out_crit_edge, %do.end21.reset_out_crit_edge
  %flags.1 = phi i32 [ %call39, %do.end21.reset_out_crit_edge ], [ %call39, %if.else.reset_out_crit_edge ], [ %call39, %if.else49.reset_out_crit_edge ], [ %call103, %do.end82.reset_out_crit_edge ], [ %call103, %if.else111.reset_out_crit_edge ], [ %call103, %if.else115.reset_out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #8
  %dev.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 8
  %add.ptr.i = getelementptr i8, ptr %31, i32 -16
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !157
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr9.i = getelementptr i8, ptr %33, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr14.i = getelementptr i8, ptr %35, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 -1) #8, !srcloc !125
  tail call fastcc void @aspeed_i2c_init(ptr noundef %bus, ptr noundef %add.ptr.i) #8
  br label %cleanup

cleanup:                                          ; preds = %reset_out, %if.else115.cleanup_crit_edge, %if.else49.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %call3.i.sink = phi i32 [ %call3.i, %reset_out ], [ %call2, %if.then.cleanup_crit_edge ], [ %call39, %if.else49.cleanup_crit_edge ], [ %call103, %if.else115.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3.i.sink) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_do_start(ptr nocapture noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 10
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msgs, align 8
  %msgs_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 12
  %2 = ptrtoint ptr %msgs_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgs_index, align 8
  %arrayidx = getelementptr %struct.i2c_msg, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 4
  %conv.i = zext i16 %5 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 1
  %flags.i = getelementptr %struct.i2c_msg, ptr %1, i32 %3, i32 1
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags.i, align 2
  %8 = and i16 %7, 1
  %9 = zext i16 %8 to i32
  %slave_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 19
  %10 = ptrtoint ptr %slave_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slave_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  %master_state1 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 9
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %master_state1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %master_state1, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %13 = ptrtoint ptr %master_state1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %master_state1, align 4
  %buf_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 11
  %14 = ptrtoint ptr %buf_index to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %buf_index, align 4
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags.i, align 2
  %conv = zext i16 %16 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.do.body_crit_edge, label %if.then2

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %len = getelementptr %struct.i2c_msg, ptr %1, i32 %3, i32 2
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp4 = icmp eq i16 %18, 1
  %and8 = and i32 %conv, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  %or.cond = select i1 %cmp4, i1 %tobool9.not, i1 false
  %spec.select = select i1 %or.cond, i32 452984832, i32 184549376
  br label %do.body

do.body:                                          ; preds = %if.then2, %if.end.do.body_crit_edge
  %command.0 = phi i32 [ 50331648, %if.end.do.body_crit_edge ], [ %spec.select, %if.then2 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  tail call void @arm_heavy_mb() #8
  %shl.i.masked = and i32 %shl.i, 254
  %conv14 = or i32 %shl.i.masked, %9
  %19 = shl nuw i32 %conv14, 24
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %23, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %command.0) #8, !srcloc !125
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_i2c_master_irq(ptr noundef %bus, i32 noundef %irq_status) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %irq_status, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %master_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 9
  %0 = ptrtoint ptr %master_state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %master_state, align 4
  br label %out_complete

if.end:                                           ; preds = %entry
  %and.i = and i32 %irq_status, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %and1.i = and i32 %irq_status, 16448
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.body_crit_edge

if.end.i.do.body_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end4.i:                                        ; preds = %if.end.i
  %and5.i = and i32 %irq_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end4.i.if.end16_crit_edge, label %if.end4.i.do.body_crit_edge

if.end4.i.do.body_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end4.i.if.end16_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.body:                                          ; preds = %if.end4.i.do.body_crit_edge, %if.end.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %retval.0.i458.ph = phi i32 [ -71, %if.end4.i.do.body_crit_edge ], [ -16, %if.end.i.do.body_crit_edge ], [ -11, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_master_irq, %do.end)) #8
          to label %if.then8 [label %do.end], !srcloc !152

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug291, ptr noundef %2, ptr noundef nonnull @.str.26, i32 noundef %irq_status) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %and10 = and i32 %irq_status, 16488
  %master_state12 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 9
  %3 = ptrtoint ptr %master_state12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %master_state12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %do.end.if.end16_crit_edge, label %if.then13

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %5 = ptrtoint ptr %cmd_err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %retval.0.i458.ph, ptr %cmd_err, align 4
  %6 = ptrtoint ptr %master_state12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %master_state12, align 4
  br label %out_complete

if.end16:                                         ; preds = %do.end.if.end16_crit_edge, %if.end4.i.if.end16_crit_edge
  %irq_handled.0 = phi i32 [ %and10, %do.end.if.end16_crit_edge ], [ 0, %if.end4.i.if.end16_crit_edge ]
  %master_state17 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 9
  %7 = ptrtoint ptr %master_state17 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %master_state17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp ult i32 %8, 2
  br i1 %switch, label %if.end16.out_no_complete_crit_edge, label %if.end22

if.end16.out_no_complete_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_complete

if.end22:                                         ; preds = %if.end16
  %msgs = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 10
  %9 = ptrtoint ptr %msgs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msgs, align 8
  %tobool23.not = icmp eq ptr %10, null
  br i1 %tobool23.not, label %do.end27, label %if.end36

do.end27:                                         ; preds = %if.end22
  %dev28 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %11 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev28, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.27, i32 noundef %irq_status) #11
  %cmd_err29 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %13 = ptrtoint ptr %cmd_err29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -5, ptr %cmd_err29, align 4
  %14 = ptrtoint ptr %master_state17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %master_state17, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %if.then34 [
    i32 7, label %do.end27.out_no_complete_crit_edge
    i32 0, label %do.end27.out_no_complete_crit_edge486
  ]

do.end27.out_no_complete_crit_edge486:            ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_complete

do.end27.out_no_complete_crit_edge:               ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_complete

if.then34:                                        ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 7, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #8, !srcloc !125
  br label %out_no_complete

if.end36:                                         ; preds = %if.end22
  %msgs_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 12
  %20 = ptrtoint ptr %msgs_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %msgs_index, align 8
  %arrayidx = getelementptr %struct.i2c_msg, ptr %10, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp39 = icmp eq i32 %8, 2
  br i1 %cmp39, label %if.then40, label %if.end126

if.then40:                                        ; preds = %if.end36
  %and41 = and i32 %irq_status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end79, label %do.body50, !prof !162

do.body50:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !163
  tail call void @arm_heavy_mb() #8
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 20
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %25 = and i32 %24, -989855745
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr58 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %25) #8, !srcloc !125
  %28 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %master_state17, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_master_irq, %out_no_complete)) #8
          to label %if.then74 [label %out_no_complete], !srcloc !152

if.then74:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %dev75 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %29 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev75, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug292, ptr noundef %30, ptr noundef nonnull @.str.28) #8
  br label %out_no_complete

if.end79:                                         ; preds = %if.then40
  %and80 = and i32 %irq_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.then90, label %if.end112, !prof !165

if.then90:                                        ; preds = %if.end79
  %and91 = and i32 %irq_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.then101, label %do.end107, !prof !165

if.then101:                                       ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err102 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %31 = ptrtoint ptr %cmd_err102 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -6, ptr %cmd_err102, align 4
  %32 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %master_state17, align 4
  br label %out_complete

do.end107:                                        ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %34 to i32
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %conv) #11
  %or110 = or i32 %irq_handled.0, 2
  %cmd_err111 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %35 = ptrtoint ptr %cmd_err111 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -6, ptr %cmd_err111, align 4
  %36 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %base.i460 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %37 = ptrtoint ptr %base.i460 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i460, align 4
  %add.ptr.i461 = getelementptr i8, ptr %38, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i461, i32 536870912) #8, !srcloc !125
  br label %out_no_complete

if.end112:                                        ; preds = %if.end79
  %or113 = or i32 %irq_handled.0, 1
  %len = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 2
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp115 = icmp eq i16 %40, 0
  br i1 %cmp115, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 7, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %base.i463 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %42 = ptrtoint ptr %base.i463 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i463, align 4
  %add.ptr.i464 = getelementptr i8, ptr %43, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i464, i32 536870912) #8, !srcloc !125
  br label %out_no_complete

if.end118:                                        ; preds = %if.end112
  %flags = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 1
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags, align 2
  %46 = and i16 %45, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool121.not = icmp eq i16 %46, 0
  br i1 %tobool121.not, label %if.end126.thread, label %if.end126.thread477

if.end126.thread477:                              ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 5, ptr %master_state17, align 4
  br label %sw.bb198

if.end126.thread:                                 ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %master_state17, align 4
  br label %sw.bb176

if.end126:                                        ; preds = %if.end36
  %49 = ptrtoint ptr %master_state17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr = load i32, ptr %master_state17, align 4
  %50 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %.pr, label %do.end323 [
    i32 4, label %sw.bb
    i32 3, label %if.end126.sw.bb176_crit_edge
    i32 5, label %if.end126.sw.bb198_crit_edge
    i32 6, label %sw.bb203
    i32 7, label %sw.bb285
    i32 0, label %do.end309
  ]

if.end126.sw.bb198_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb198

if.end126.sw.bb176_crit_edge:                     ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

sw.bb:                                            ; preds = %if.end126
  %and128 = and i32 %irq_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool129.not = icmp eq i32 %and128, 0
  br i1 %tobool129.not, label %if.else157, label %do.body137, !prof !162

do.body137:                                       ; preds = %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_master_irq, %do.end155)) #8
          to label %if.then151 [label %do.end155], !srcloc !152

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #10
  %dev152 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %51 = ptrtoint ptr %dev152 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev152, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug293, ptr noundef %52, ptr noundef nonnull @.str.32) #8
  br label %do.end155

do.end155:                                        ; preds = %if.then151, %do.body137
  %or156 = or i32 %irq_handled.0, 2
  br label %error_and_stop

if.else157:                                       ; preds = %sw.bb
  %and158 = and i32 %irq_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %do.end171, label %if.end174, !prof !165

do.end171:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  %dev172 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %53 = ptrtoint ptr %dev172 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev172, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.34) #11
  br label %error_and_stop

if.end174:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #10
  %or175 = or i32 %irq_handled.0, 1
  br label %sw.bb176

sw.bb176:                                         ; preds = %if.end174, %if.end126.sw.bb176_crit_edge, %if.end126.thread
  %irq_handled.2 = phi i32 [ %irq_handled.0, %if.end126.sw.bb176_crit_edge ], [ %or175, %if.end174 ], [ %or113, %if.end126.thread ]
  %buf_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 11
  %55 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_index, align 4
  %len177 = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 2
  %57 = ptrtoint ptr %len177 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %len177, align 4
  %conv178 = zext i16 %58 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %conv178)
  %cmp179 = icmp ult i32 %56, %conv178
  br i1 %cmp179, label %if.then181, label %if.else196

if.then181:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 4, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !166
  tail call void @arm_heavy_mb() #8
  %buf = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 3
  %60 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %buf, align 4
  %62 = ptrtoint ptr %buf_index to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %buf_index, align 4
  %inc = add i32 %63, 1
  store i32 %inc, ptr %buf_index, align 4
  %arrayidx187 = getelementptr i8, ptr %61, i32 %63
  %64 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx187, align 1
  %conv188 = zext i8 %65 to i32
  %66 = shl nuw i32 %conv188, 24
  %base189 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %67 = ptrtoint ptr %base189 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base189, align 4
  %add.ptr190 = getelementptr i8, ptr %68, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr190, i32 %66) #8, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !167
  tail call void @arm_heavy_mb() #8
  %69 = ptrtoint ptr %base189 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base189, align 4
  %add.ptr195 = getelementptr i8, ptr %70, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr195, i32 33554432) #8, !srcloc !125
  br label %out_no_complete

if.else196:                                       ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_i2c_next_msg_or_stop(ptr noundef %bus)
  br label %out_no_complete

sw.bb198:                                         ; preds = %if.end126.sw.bb198_crit_edge, %if.end126.thread477
  %irq_handled.1480 = phi i32 [ %or113, %if.end126.thread477 ], [ %irq_handled.0, %if.end126.sw.bb198_crit_edge ]
  %and199 = and i32 %irq_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199)
  %tobool200.not = icmp eq i32 %and199, 0
  br i1 %tobool200.not, label %sw.bb198.out_no_complete_crit_edge, label %sw.bb198.if.end219_crit_edge

sw.bb198.if.end219_crit_edge:                     ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

sw.bb198.out_no_complete_crit_edge:               ; preds = %sw.bb198
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_no_complete

sw.bb203:                                         ; preds = %if.end126
  %.pre = and i32 %irq_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %tobool205.not = icmp eq i32 %.pre, 0
  br i1 %tobool205.not, label %do.end217, label %sw.bb203.if.end219_crit_edge, !prof !165

sw.bb203.if.end219_crit_edge:                     ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end219

do.end217:                                        ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #10
  %dev218 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %71 = ptrtoint ptr %dev218 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev218, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.37) #11
  br label %error_and_stop

if.end219:                                        ; preds = %sw.bb203.if.end219_crit_edge, %sw.bb198.if.end219_crit_edge
  %irq_handled.1479485 = phi i32 [ %irq_handled.0, %sw.bb203.if.end219_crit_edge ], [ %irq_handled.1480, %sw.bb198.if.end219_crit_edge ]
  %or220 = or i32 %irq_handled.1479485, 4
  %base223 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %73 = ptrtoint ptr %base223 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base223, align 4
  %add.ptr224 = getelementptr i8, ptr %74, i32 32
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr224) #8, !srcloc !131
  %76 = lshr i32 %75, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !168
  %conv228 = trunc i32 %76 to i8
  %buf229 = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 3
  %77 = ptrtoint ptr %buf229 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %buf229, align 4
  %buf_index230 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 11
  %79 = ptrtoint ptr %buf_index230 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %buf_index230, align 4
  %inc231 = add i32 %80, 1
  store i32 %inc231, ptr %buf_index230, align 4
  %arrayidx232 = getelementptr i8, ptr %78, i32 %80
  %81 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv228, ptr %arrayidx232, align 1
  %flags233 = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 1
  %82 = ptrtoint ptr %flags233 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flags233, align 2
  %conv234 = zext i16 %83 to i32
  %and235 = and i32 %conv234, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %if.end219.if.end261_crit_edge, label %if.then237

if.end219.if.end261_crit_edge:                    ; preds = %if.end219
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end261

if.then237:                                       ; preds = %if.end219
  %conv238 = and i32 %76, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv238)
  %cmp239 = icmp ugt i32 %conv238, 32
  br i1 %cmp239, label %if.then247, label %if.end249, !prof !165

if.then247:                                       ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  %cmd_err248 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %84 = ptrtoint ptr %cmd_err248 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -71, ptr %cmd_err248, align 4
  %85 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 7, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %86 = ptrtoint ptr %base223 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base223, align 4
  %add.ptr.i467 = getelementptr i8, ptr %87, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i467, i32 536870912) #8, !srcloc !125
  br label %out_no_complete

if.end249:                                        ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #10
  %and253 = and i32 %conv234, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and253)
  %tobool254.not = icmp eq i32 %and253, 0
  %cond = select i1 %tobool254.not, i32 1, i32 2
  %add = add nuw nsw i32 %cond, %conv238
  %conv255 = trunc i32 %add to i16
  %len256 = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 2
  %88 = ptrtoint ptr %len256 to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv255, ptr %len256, align 4
  %89 = and i16 %83, -1025
  %90 = ptrtoint ptr %flags233 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %89, ptr %flags233, align 2
  br label %if.end261

if.end261:                                        ; preds = %if.end249, %if.end219.if.end261_crit_edge
  %91 = ptrtoint ptr %buf_index230 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %buf_index230, align 4
  %len263 = getelementptr %struct.i2c_msg, ptr %10, i32 %21, i32 2
  %93 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %len263, align 4
  %conv264 = zext i16 %94 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %conv264)
  %cmp265 = icmp ult i32 %92, %conv264
  br i1 %cmp265, label %if.then267, label %if.else283

if.then267:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 6, ptr %master_state17, align 4
  %add270 = add nuw i32 %92, 1
  %96 = ptrtoint ptr %len263 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %len263, align 4
  %conv272 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add270, i32 %conv272)
  %cmp273 = icmp eq i32 %add270, %conv272
  %spec.select = select i1 %cmp273, i32 402653184, i32 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !169
  tail call void @arm_heavy_mb() #8
  %98 = ptrtoint ptr %base223 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base223, align 4
  %add.ptr282 = getelementptr i8, ptr %99, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr282, i32 %spec.select) #8, !srcloc !125
  br label %out_no_complete

if.else283:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @aspeed_i2c_next_msg_or_stop(ptr noundef %bus)
  br label %out_no_complete

sw.bb285:                                         ; preds = %if.end126
  %and286 = and i32 %irq_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and286)
  %tobool287.not = icmp eq i32 %and286, 0
  br i1 %tobool287.not, label %do.end299, label %if.else302, !prof !165

do.end299:                                        ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #10
  %dev300 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %100 = ptrtoint ptr %dev300 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev300, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.40, i32 noundef %irq_status) #11
  %cmd_err301 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %102 = ptrtoint ptr %cmd_err301 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -5, ptr %cmd_err301, align 4
  br label %if.end304

if.else302:                                       ; preds = %sw.bb285
  call void @__sanitizer_cov_trace_pc() #10
  %or303 = or i32 %irq_handled.0, 16
  br label %if.end304

if.end304:                                        ; preds = %if.else302, %do.end299
  %irq_handled.3 = phi i32 [ %irq_handled.0, %do.end299 ], [ %or303, %if.else302 ]
  %103 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %master_state17, align 4
  br label %out_complete

do.end309:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  %dev310 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %104 = ptrtoint ptr %dev310 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev310, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.43, i32 noundef %irq_status) #11
  %cmd_err311 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %106 = ptrtoint ptr %cmd_err311 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -5, ptr %cmd_err311, align 4
  br label %out_complete

do.end323:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 575, i32 noundef 9, ptr noundef nonnull @.str.45) #8
  %107 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %master_state17, align 4
  %cmd_err338 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %108 = ptrtoint ptr %cmd_err338 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -22, ptr %cmd_err338, align 4
  br label %out_complete

error_and_stop:                                   ; preds = %do.end217, %do.end171, %do.end155
  %irq_handled.4 = phi i32 [ %irq_handled.0, %do.end217 ], [ %or156, %do.end155 ], [ %irq_handled.0, %do.end171 ]
  %cmd_err339 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %109 = ptrtoint ptr %cmd_err339 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 -5, ptr %cmd_err339, align 4
  %110 = ptrtoint ptr %master_state17 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 7, ptr %master_state17, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %base.i469 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %111 = ptrtoint ptr %base.i469 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base.i469, align 4
  %add.ptr.i470 = getelementptr i8, ptr %112, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i470, i32 536870912) #8, !srcloc !125
  br label %out_no_complete

out_complete:                                     ; preds = %do.end323, %do.end309, %if.end304, %if.then101, %if.then13, %if.then
  %irq_handled.5 = phi i32 [ 8192, %if.then ], [ %and10, %if.then13 ], [ %irq_handled.0, %if.then101 ], [ %irq_handled.0, %do.end323 ], [ %irq_handled.0, %do.end309 ], [ %irq_handled.3, %if.end304 ]
  %msgs340 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 10
  %113 = ptrtoint ptr %msgs340 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %msgs340, align 8
  %cmd_err341 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 15
  %114 = ptrtoint ptr %cmd_err341 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %cmd_err341, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool342.not = icmp eq i32 %115, 0
  br i1 %tobool342.not, label %if.else345, label %out_complete.if.end349_crit_edge

out_complete.if.end349_crit_edge:                 ; preds = %out_complete
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end349

if.else345:                                       ; preds = %out_complete
  call void @__sanitizer_cov_trace_pc() #10
  %msgs_index346 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 12
  %116 = ptrtoint ptr %msgs_index346 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %msgs_index346, align 8
  %add347 = add i32 %117, 1
  br label %if.end349

if.end349:                                        ; preds = %if.else345, %out_complete.if.end349_crit_edge
  %.sink = phi i32 [ %add347, %if.else345 ], [ %115, %out_complete.if.end349_crit_edge ]
  %118 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 16
  %119 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %.sink, ptr %118, align 8
  %cmd_complete = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 5
  tail call void @complete(ptr noundef %cmd_complete) #8
  br label %out_no_complete

out_no_complete:                                  ; preds = %if.end349, %error_and_stop, %if.else283, %if.then267, %if.then247, %sw.bb198.out_no_complete_crit_edge, %if.else196, %if.then181, %if.then117, %do.end107, %if.then74, %do.body50, %if.then34, %do.end27.out_no_complete_crit_edge, %do.end27.out_no_complete_crit_edge486, %if.end16.out_no_complete_crit_edge
  %irq_handled.6 = phi i32 [ %irq_handled.5, %if.end349 ], [ %irq_handled.0, %if.then74 ], [ %or110, %do.end107 ], [ %or113, %if.then117 ], [ %irq_handled.4, %error_and_stop ], [ %or220, %if.then247 ], [ %or220, %if.then267 ], [ %or220, %if.else283 ], [ %irq_handled.1480, %sw.bb198.out_no_complete_crit_edge ], [ %irq_handled.2, %if.then181 ], [ %irq_handled.2, %if.else196 ], [ %irq_handled.0, %if.then34 ], [ %irq_handled.0, %do.end27.out_no_complete_crit_edge ], [ %irq_handled.0, %if.end16.out_no_complete_crit_edge ], [ %irq_handled.0, %do.end27.out_no_complete_crit_edge486 ], [ %irq_handled.0, %do.body50 ]
  ret i32 %irq_handled.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aspeed_i2c_slave_irq(ptr nocapture noundef %bus, i32 noundef %irq_status) unnamed_addr #2 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave1 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 18
  %0 = ptrtoint ptr %slave1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #8
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %value, align 1, !annotation !170
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 20
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !131
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !171
  %and = and i32 %irq_status, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %slave_state = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 19
  %7 = ptrtoint ptr %slave_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %slave_state, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %irq_handled.0 = phi i32 [ 128, %if.then4 ], [ 0, %if.end.if.end5_crit_edge ]
  %slave_state6 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 19
  %8 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slave_state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aspeed_i2c_slave_irq.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aspeed_i2c_slave_irq, %do.end)) #8
          to label %if.then15 [label %do.end], !srcloc !152

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aspeed_i2c_slave_irq.__UNIQUE_ID_ddebug290, ptr noundef %11, ptr noundef nonnull @.str.47, i32 noundef %irq_status, i32 noundef %6) #8
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %and17 = and i32 %irq_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end.if.end40_crit_edge, label %if.then19

do.end.if.end40_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then19:                                        ; preds = %do.end
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #8, !srcloc !131
  %15 = lshr i32 %14, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !172
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %value, align 1
  %17 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %slave_state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp28 = icmp eq i32 %18, 1
  br i1 %cmp28, label %if.then30, label %if.then19.if.end38_crit_edge

if.then19.if.end38_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then30:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = and i32 %14, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool33.not = icmp eq i32 %19, 0
  %. = select i1 %tobool33.not, i32 4, i32 2
  %20 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %., ptr %slave_state6, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then30, %if.then19.if.end38_crit_edge
  %or39 = or i32 %irq_handled.0, 4
  br label %if.end40

if.end40:                                         ; preds = %if.end38, %do.end.if.end40_crit_edge
  %irq_handled.1 = phi i32 [ %or39, %if.end38 ], [ %irq_handled.0, %do.end.if.end40_crit_edge ]
  %and41 = and i32 %irq_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %or44 = or i32 %irq_handled.1, 16
  %21 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %slave_state6, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.then43, %if.end40.if.end46_crit_edge
  %irq_handled.2 = phi i32 [ %or44, %if.then43 ], [ %irq_handled.1, %if.end40.if.end46_crit_edge ]
  %and47 = and i32 %irq_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp ne i32 %and47, 0
  %22 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %slave_state6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp50 = icmp eq i32 %.pr, 3
  %or.cond = select i1 %tobool48.not, i1 %cmp50, i1 false
  br i1 %or.cond, label %if.end55.thread, label %if.end55

if.end55.thread:                                  ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %or53 = or i32 %irq_handled.2, 2
  %23 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %slave_state6, align 4
  br label %sw.bb119

if.end55:                                         ; preds = %if.end46
  %24 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %.pr, label %do.end125 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb84
    i32 4, label %sw.bb114
    i32 5, label %sw.bb117
    i32 6, label %if.end55.sw.bb119_crit_edge
    i32 1, label %if.end55.cleanup_crit_edge
  ]

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end55.sw.bb119_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb119

sw.bb:                                            ; preds = %if.end55
  %and57 = and i32 %irq_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %sw.bb.if.end70_crit_edge, label %do.end68, !prof !162

sw.bb.if.end70_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70

do.end68:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %dev69 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %25 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev69, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.48) #11
  br label %if.end70

if.end70:                                         ; preds = %do.end68, %sw.bb.if.end70_crit_edge
  %27 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %slave_state6, align 4
  %slave_cb.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %slave_cb.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %slave_cb.i, align 8
  %call.i = call i32 %29(ptr noundef nonnull %1, i32 noundef 0, ptr noundef nonnull %value) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !173
  call void @arm_heavy_mb() #8
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %value, align 1
  %conv76 = zext i8 %31 to i32
  %32 = shl nuw i32 %conv76, 24
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr78 = getelementptr i8, ptr %34, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %32) #8, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr83 = getelementptr i8, ptr %36, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr83, i32 67108864) #8, !srcloc !125
  br label %cleanup

sw.bb84:                                          ; preds = %if.end55
  %and85 = and i32 %irq_status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %do.end98, label %if.end100, !prof !165

do.end98:                                         ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %dev99 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %37 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev99, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.50) #11
  br label %cleanup

if.end100:                                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #10
  %or101 = or i32 %irq_handled.2, 1
  %slave_cb.i173 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %slave_cb.i173 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slave_cb.i173, align 8
  %call.i174 = call i32 %40(ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull %value) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !175
  call void @arm_heavy_mb() #8
  %41 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %value, align 1
  %conv106 = zext i8 %42 to i32
  %43 = shl nuw i32 %conv106, 24
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr108 = getelementptr i8, ptr %45, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108, i32 %43) #8, !srcloc !125
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr113 = getelementptr i8, ptr %47, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr113, i32 67108864) #8, !srcloc !125
  br label %cleanup

sw.bb114:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %slave_state6, align 4
  %slave_cb.i175 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %slave_cb.i175 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slave_cb.i175, align 8
  %call.i176 = call i32 %50(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %value) #8
  br label %cleanup

sw.bb117:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %slave_cb.i177 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %slave_cb.i177 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %slave_cb.i177, align 8
  %call.i178 = call i32 %52(ptr noundef nonnull %1, i32 noundef 3, ptr noundef nonnull %value) #8
  br label %cleanup

sw.bb119:                                         ; preds = %if.end55.sw.bb119_crit_edge, %if.end55.thread
  %irq_handled.3183 = phi i32 [ %or53, %if.end55.thread ], [ %irq_handled.2, %if.end55.sw.bb119_crit_edge ]
  %slave_cb.i179 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %slave_cb.i179 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %slave_cb.i179, align 8
  %call.i180 = call i32 %54(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %value) #8
  %55 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %slave_state6, align 4
  br label %cleanup

do.end125:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %dev126 = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 1
  %56 = ptrtoint ptr %dev126 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev126, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.53, i32 noundef %.pr) #11
  %58 = ptrtoint ptr %slave_state6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %slave_state6, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end125, %sw.bb119, %sw.bb117, %sw.bb114, %if.end100, %do.end98, %if.end70, %if.end55.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %irq_handled.0, %if.end5.cleanup_crit_edge ], [ %irq_handled.2, %do.end125 ], [ %irq_handled.2, %if.end55.cleanup_crit_edge ], [ %irq_handled.3183, %sw.bb119 ], [ %irq_handled.2, %sw.bb117 ], [ %irq_handled.2, %sw.bb114 ], [ %irq_handled.2, %do.end98 ], [ %or101, %if.end100 ], [ %irq_handled.2, %if.end70 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aspeed_i2c_next_msg_or_stop(ptr nocapture noundef %bus) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %msgs_index = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 12
  %0 = ptrtoint ptr %msgs_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgs_index, align 8
  %add = add i32 %1, 1
  %msgs_count = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 13
  %2 = ptrtoint ptr %msgs_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msgs_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ult i32 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %msgs_index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add, ptr %msgs_index, align 8
  tail call fastcc void @aspeed_i2c_do_start(ptr noundef %bus)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %master_state.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 9
  %5 = ptrtoint ptr %master_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %master_state.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.aspeed_i2c_bus, ptr %bus, i32 0, i32 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #8, !srcloc !125
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aspeed_i2c_25xx_get_clk_reg_val(ptr noundef %dev, i32 noundef %divisor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %divisor)
  %cmp.i = icmp ugt i32 %divisor, 32
  %sub.i = add i32 %divisor, -1
  br i1 %cmp.i, label %cond.end16.i, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

cond.end16.i:                                     ; preds = %entry
  %div.i3 = lshr i32 %sub.i, 5
  %0 = tail call i32 @llvm.ctlz.i32(i32 %div.i3, i1 true) #8, !range !129
  %add14.i = sub nuw nsw i32 32, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %sub.i)
  %cmp18.i = icmp ugt i32 %sub.i, 1048575
  br i1 %cmp18.i, label %if.then.i, label %cond.end16.i.if.else.i_crit_edge

cond.end16.i.if.else.i_crit_edge:                 ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %cond.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %divisor, i32 noundef 1048576) #11
  br label %aspeed_i2c_get_clk_reg_val.exit

if.else.i:                                        ; preds = %cond.end16.i.if.else.i_crit_edge, %entry.if.else.i_crit_edge
  %cond1763.i = phi i32 [ %add14.i, %cond.end16.i.if.else.i_crit_edge ], [ 0, %entry.if.else.i_crit_edge ]
  %shl21.i = shl nuw nsw i32 1, %cond1763.i
  %sub23.i = add i32 %shl21.i, %sub.i
  %shr.i = lshr i32 %sub23.i, %cond1763.i
  %div2460.i = lshr i32 %shr.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %div2460.i)
  %tobool.not.i = icmp eq i32 %shr.i, %div2460.i
  %1 = xor i32 %div2460.i, -1
  %dec.i = add i32 %shr.i, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %shr.i)
  %tobool27.not.i = icmp ult i32 %shr.i, 2
  %dec.i.op = shl i32 %dec.i, 16
  %dec.i.op.op = and i32 %dec.i.op, 983040
  %phi.bo1 = select i1 %tobool.not.i, i32 0, i32 %dec.i.op.op
  %dec29.i = shl i32 %div2460.i, 12
  %dec29.i.op = add i32 %dec29.i, 61440
  %dec29.i.op.op = and i32 %dec29.i.op, 61440
  %phi.bo2 = select i1 %tobool27.not.i, i32 0, i32 %dec29.i.op.op
  %2 = or i32 %phi.bo1, %cond1763.i
  %3 = or i32 %2, %phi.bo2
  br label %aspeed_i2c_get_clk_reg_val.exit

aspeed_i2c_get_clk_reg_val.exit:                  ; preds = %if.else.i, %if.then.i
  %or36.i = phi i32 [ %3, %if.else.i ], [ 1044495, %if.then.i ]
  ret i32 %or36.i
}

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 56)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !40, !41, !43, !44, !46, !48, !49, !50, !51, !53, !54, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_i2c_aspeed__294_1087_aspeed_i2c_bus_driver_init6, !1, !"__initcall__kmod_i2c_aspeed__294_1087_aspeed_i2c_bus_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1087, i32 1}
!2 = !{ptr @__exitcall_aspeed_i2c_bus_driver_exit, !1, !"__exitcall_aspeed_i2c_bus_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1089, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1090, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1091, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1083, i32 12}
!12 = !{ptr @aspeed_i2c_bus_driver, !13, !"aspeed_i2c_bus_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1079, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 996, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @aspeed_i2c_probe_bus._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @aspeed_i2c_probe_bus._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1003, i32 8}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1005, i32 3}
!26 = !{ptr @aspeed_i2c_probe_bus._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @aspeed_i2c_probe_bus._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @aspeed_i2c_probe_bus.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1018, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 1053, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @aspeed_i2c_probe_bus._entry.11, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @aspeed_i2c_probe_bus._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 839, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @aspeed_i2c_get_clk_reg_val._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @aspeed_i2c_get_clk_reg_val._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @init_completion.__key, !42, !"__key", i1 false, i1 false}
!42 = !{!"../include/linux/completion.h", i32 87, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @aspeed_i2c_algo, !45, !"aspeed_i2c_algo", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 788, i32 35}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 186, i32 3}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug288, !47, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 207, i32 3}
!53 = !{ptr @aspeed_i2c_recover_bus.__UNIQUE_ID_ddebug289, !52, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 913, i32 47}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 644, i32 3}
!58 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @aspeed_i2c_bus_irq._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @aspeed_i2c_bus_irq._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 421, i32 3}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug291, !62, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 438, i32 3}
!67 = !{ptr @aspeed_i2c_master_irq._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @aspeed_i2c_master_irq._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 467, i32 4}
!71 = !{ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug292, !70, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 478, i32 4}
!74 = !{ptr @aspeed_i2c_master_irq._entry.29, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @aspeed_i2c_master_irq._entry_ptr.31, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 498, i32 4}
!78 = !{ptr @aspeed_i2c_master_irq.__UNIQUE_ID_ddebug293, !77, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 502, i32 4}
!81 = !{ptr @aspeed_i2c_master_irq._entry.33, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @aspeed_i2c_master_irq._entry_ptr.35, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 525, i32 4}
!85 = !{ptr @aspeed_i2c_master_irq._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @aspeed_i2c_master_irq._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 556, i32 4}
!89 = !{ptr @aspeed_i2c_master_irq._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @aspeed_i2c_master_irq._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 568, i32 3}
!93 = !{ptr @aspeed_i2c_master_irq._entry.42, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @aspeed_i2c_master_irq._entry_ptr.44, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 575, i32 3}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 263, i32 2}
!99 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @aspeed_i2c_slave_irq.__UNIQUE_ID_ddebug290, !98, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 295, i32 4}
!103 = !{ptr @aspeed_i2c_slave_irq._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @aspeed_i2c_slave_irq._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 303, i32 4}
!107 = !{ptr @aspeed_i2c_slave_irq._entry.49, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @aspeed_i2c_slave_irq._entry_ptr.51, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 327, i32 3}
!111 = !{ptr @aspeed_i2c_slave_irq._entry.52, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @aspeed_i2c_slave_irq._entry_ptr.54, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @aspeed_i2c_bus_of_table, !114, !"aspeed_i2c_bus_of_table", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-aspeed.c", i32 953, i32 34}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i64 2155763694}
!125 = !{i64 6885477}
!126 = !{i64 2155764087}
!127 = !{i64 2155766548}
!128 = !{i64 2155766932}
!129 = !{i32 0, i32 33}
!130 = !{i64 2155747571}
!131 = !{i64 6885895}
!132 = !{i64 2155744387}
!133 = !{i64 2155746689}
!134 = !{i64 2155747105}
!135 = !{i64 2155748786}
!136 = !{i64 2155749707}
!137 = !{i64 2155732891}
!138 = !{i64 2155733579}
!139 = !{i64 2155733893}
!140 = !{i64 2155751891}
!141 = !{i64 2155723739}
!142 = !{i64 2155724080}
!143 = !{i64 2155724864}
!144 = !{i64 2155727729}
!145 = !{i64 2155728462}
!146 = !{i8 0, i8 2}
!147 = !{i64 2155729301}
!148 = !{i64 2155730224}
!149 = !{i64 2155735306}
!150 = !{i64 2155735620}
!151 = !{i64 2155674689}
!152 = !{i64 2148752705, i64 2148752710, i64 2148752723, i64 2148752767, i64 2148752801, i64 2148752822}
!153 = !{i64 2155677645}
!154 = !{i64 2155678730}
!155 = !{i64 2155681605}
!156 = !{i64 2155682693}
!157 = !{i64 2155754777}
!158 = !{i64 2155755170}
!159 = !{i64 2155695864}
!160 = !{i64 2155696281}
!161 = !{i64 2155696791}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{i64 2155704605}
!164 = !{i64 2155705816}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i64 2155715005}
!167 = !{i64 2155715572}
!168 = !{i64 2155718224}
!169 = !{i64 2155718677}
!170 = !{!"auto-init"}
!171 = !{i64 2155683804}
!172 = !{i64 2155687004}
!173 = !{i64 2155689460}
!174 = !{i64 2155689964}
!175 = !{i64 2155692369}
!176 = !{i64 2155692873}
