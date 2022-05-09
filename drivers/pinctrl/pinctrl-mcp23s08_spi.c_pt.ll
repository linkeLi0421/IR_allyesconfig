; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-mcp23s08_spi.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-mcp23s08_spi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.mcp23s08_driver_data = type { i32, [8 x ptr], [0 x %struct.mcp23s08] }
%struct.mcp23s08 = type { i8, i8, i8, i16, i16, i32, i8, i32, %struct.mutex, %struct.gpio_chip, %struct.irq_chip, ptr, ptr, ptr, %struct.pinctrl_desc, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.71, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.71 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }

@__initcall__kmod_pinctrl_mcp23s08_spi__230_253_mcp23s08_spi_init4 = internal global ptr @mcp23s08_spi_init, section ".initcall4.init", align 4
@__exitcall_mcp23s08_spi_exit = internal global ptr @mcp23s08_spi_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [63 x i8] c"pinctrl_mcp23s08_spi.file=drivers/pinctrl/pinctrl-mcp23s08_spi\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [33 x i8] c"pinctrl_mcp23s08_spi.license=GPL\00", section ".modinfo", align 1
@mcp23s08_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcp23s08_ids, ptr @mcp23s08_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp23s08_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@mcp23s08_ids = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcp23s08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"mcp23s17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"mcp23s18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcp23s08\00", [23 x i8] zeroinitializer }, align 32
@mcp23s08_spi_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp23s08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp23s17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp23s18\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp,mcp23s08\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp,mcp23s17\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"microchip,spi-present-mask\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcp,spi-present-mask\00", [43 x i8] zeroinitializer }, align 32
@mcp23s08_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 157, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing spi-present-mask\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcp23s08_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/pinctrl/pinctrl-mcp23s08_spi.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp23s08_probe._entry_ptr = internal global ptr @mcp23s08_probe._entry, section ".printk_index", align 4
@mcp23s08_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid spi-present-mask\00", [39 x i8] zeroinitializer }, align 32
@mcp23s08_probe._entry_ptr.10 = internal global ptr @mcp23s08_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcp23xxx-pinctrl.%d\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcp23s08.%d\00", [20 x i8] zeroinitializer }, align 32
@mcp23x08_regmap = external dso_local constant %struct.regmap_config, align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcp23s17.%d\00", [20 x i8] zeroinitializer }, align 32
@mcp23x17_regmap = external dso_local constant %struct.regmap_config, align 4
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcp23s18\00", [23 x i8] zeroinitializer }, align 32
@mcp23s08_spi_regmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 118, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid device type (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mcp23s08_spi_regmap_init\00", [39 x i8] zeroinitializer }, align 32
@mcp23s08_spi_regmap_init._entry_ptr = internal global ptr @mcp23s08_spi_regmap_init._entry, section ".printk_index", align 4
@mcp23s08_spi_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcp23sxx_spi_regmap = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @mcp23sxx_spi_write, ptr @mcp23sxx_spi_gather_write, ptr null, ptr null, ptr null, ptr @mcp23sxx_spi_read, ptr null, ptr null, ptr null, i8 0, i32 0, i32 0, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pinctrl_mcp23s08_spi:128:(copy)->lock\00", [58 x i8] zeroinitializer }, align 32
@mcp23s08_spi_regmap_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.5, i32 130, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"regmap init failed for %s\0A\00", [37 x i8] zeroinitializer }, align 32
@mcp23s08_spi_regmap_init._entry_ptr.21 = internal global ptr @mcp23s08_spi_regmap_init._entry.19, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 5]
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"mcp23s08_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 235, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"mcp23s08_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 201, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 239, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [22 x i8] c"mcp23s08_spi_of_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 209, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 153, i32 38 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 155, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 157, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 164, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 185, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 93, i32 53 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 96, i32 42 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 102, i32 53 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 111, i32 21 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 118, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"mcp23sxx_spi_regmap\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 76, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 128, i32 16 }
@___asan_gen_.97 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [42 x i8] c"../drivers/pinctrl/pinctrl-mcp23s08_spi.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 130, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_mcp23s08_spi_exit, ptr @__initcall__kmod_pinctrl_mcp23s08_spi__230_253_mcp23s08_spi_init4, ptr @mcp23s08_probe._entry, ptr @mcp23s08_probe._entry.8, ptr @mcp23s08_probe._entry_ptr, ptr @mcp23s08_probe._entry_ptr.10, ptr @mcp23s08_spi_regmap_init._entry, ptr @mcp23s08_spi_regmap_init._entry.19, ptr @mcp23s08_spi_regmap_init._entry_ptr, ptr @mcp23s08_spi_regmap_init._entry_ptr.21, ptr @mcp23s08_driver, ptr @mcp23s08_ids, ptr @.str, ptr @mcp23s08_spi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mcp23s08_spi_regmap_init._key, ptr @mcp23sxx_spi_regmap, ptr @.str.18, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_spi_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_spi_regmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_spi_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23sxx_spi_regmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp23s08_spi_regmap_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_spi_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcp23s08_driver) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcp23s08_spi_exit() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcp23s08_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23s08_probe(ptr noundef %spi) #1 align 64 {
entry:
  %spi_present_mask = alloca i32, align 4
  %v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_present_mask) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #6
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !64
  %call = tail call ptr @device_get_match_data(ptr noundef %spi) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call to i32
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #6
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %type.0 = phi i32 [ %1, %if.then ], [ %3, %if.else ]
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull %v, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call.i109 = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.2, ptr noundef nonnull %v, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool7.not = icmp eq i32 %call.i109, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %do.end

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  %6 = ptrtoint ptr %spi_present_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %spi_present_mask, align 4
  %7 = add i32 %5, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -255, i32 %7)
  %8 = icmp ult i32 %7, -255
  br i1 %8, label %do.end15, label %cond.false.i

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9) #9
  br label %cleanup

cond.false.i:                                     ; preds = %if.end10
  %call.i.i = call i32 @__sw_hweight32(i32 noundef %5) #6
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 656) #6
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %12 = add nuw i32 %11, 36
  %retval.0.i = select i1 %10, i32 -1, i32 %12
  %call.i110 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef %retval.0.i, i32 noundef 3520) #6
  %tobool20.not = icmp eq ptr %call.i110, null
  br i1 %tobool20.not, label %cond.false.i.cleanup_crit_edge, label %if.end22

cond.false.i.cleanup_crit_edge:                   ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %cond.false.i
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i110, ptr %driver_data.i.i, align 4
  %call23 = call i32 @_find_next_bit_be(ptr noundef nonnull %spi_present_mask, i32 noundef 8, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call23)
  %cmp24127 = icmp ult i32 %call23, 8
  br i1 %cmp24127, label %for.body.lr.ph, label %if.end22.for.end_crit_edge

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end22
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end50.for.body_crit_edge, %for.body.lr.ph
  %chips.0131 = phi i32 [ %call.i.i, %for.body.lr.ph ], [ %dec, %if.end50.for.body_crit_edge ]
  %ngpio.0130 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end50.for.body_crit_edge ]
  %addr.0128 = phi i32 [ %call23, %for.body.lr.ph ], [ %call56, %if.end50.for.body_crit_edge ]
  %dec = add i32 %chips.0131, -1
  %arrayidx = getelementptr %struct.mcp23s08_driver_data, ptr %call.i110, i32 0, i32 2, i32 %dec
  %arrayidx25 = getelementptr %struct.mcp23s08_driver_data, ptr %call.i110, i32 0, i32 1, i32 %addr.0128
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx, ptr %arrayidx25, align 4
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  %irq28 = getelementptr %struct.mcp23s08_driver_data, ptr %call.i110, i32 0, i32 2, i32 %dec, i32 5
  %17 = ptrtoint ptr %irq28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq28, align 4
  %18 = load ptr, ptr %arrayidx25, align 4
  %19 = zext i32 %type.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type.0, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 5, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %reg_shift.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %reg_shift.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %reg_shift.i, align 2
  %chip.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9
  %ngpio.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9, i32 20
  %21 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 8, ptr %ngpio.i, align 4
  %call.i111 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %spi, i32 noundef 3264, ptr noundef nonnull @.str.12, i32 noundef %addr.0128) #6
  %22 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i111, ptr %chip.i, align 4
  %call2.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %spi, i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %addr.0128) #6
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %reg_shift4.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %reg_shift4.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %reg_shift4.i, align 2
  %chip5.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9
  %ngpio6.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9, i32 20
  %24 = ptrtoint ptr %ngpio6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 16, ptr %ngpio6.i, align 4
  %call7.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %spi, i32 noundef 3264, ptr noundef nonnull @.str.14, i32 noundef %addr.0128) #6
  %25 = ptrtoint ptr %chip5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %chip5.i, align 4
  %call10.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %spi, i32 noundef 3264, ptr noundef nonnull @.str.13, i32 noundef %addr.0128) #6
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %reg_shift12.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 2
  %26 = ptrtoint ptr %reg_shift12.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %reg_shift12.i, align 2
  %chip13.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9
  %ngpio14.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9, i32 20
  %27 = ptrtoint ptr %ngpio14.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 16, ptr %ngpio14.i, align 4
  %28 = ptrtoint ptr %chip13.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.15, ptr %chip13.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mcp23x17_regmap to i32))
  %29 = load ptr, ptr @mcp23x17_regmap, align 4
  br label %sw.epilog.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.16, i32 noundef %type.0) #9
  br label %cleanup

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb3.i, %sw.bb.i
  %config.0.i = phi ptr [ @mcp23x17_regmap, %sw.bb11.i ], [ @mcp23x17_regmap, %sw.bb3.i ], [ @mcp23x08_regmap, %sw.bb.i ]
  %name.0.i = phi ptr [ %29, %sw.bb11.i ], [ %call10.i, %sw.bb3.i ], [ %call2.i, %sw.bb.i ]
  %call18.i = call ptr @devm_kmemdup(ptr noundef %spi, ptr noundef nonnull %config.0.i, i32 noundef 172, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.cleanup_crit_edge, label %if.end.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog.i
  %30 = ptrtoint ptr %call18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %name.0.i, ptr %call18.i, align 4
  %call20.i = call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull @mcp23sxx_spi_regmap, ptr noundef %18, ptr noundef nonnull %call18.i, ptr noundef nonnull @mcp23s08_spi_regmap_init._key, ptr noundef nonnull @.str.18) #6
  %regmap.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 11
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20.i, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end26.i, label %if.end.i.if.end29.i_crit_edge

if.end.i.if.end29.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29.i

do.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip27.i = getelementptr inbounds %struct.mcp23s08, ptr %18, i32 0, i32 9
  %32 = ptrtoint ptr %chip27.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chip27.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20, ptr noundef %33) #9
  %34 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pr = load ptr, ptr %regmap.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %do.end26.i, %if.end.i.if.end29.i_crit_edge
  %35 = phi ptr [ %.pr, %do.end26.i ], [ %call20.i, %if.end.i.if.end29.i_crit_edge ]
  %cmp.i.i.i.not = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i.not, label %cleanup.loopexit.split.loop.exit125, label %if.end34

if.end34:                                         ; preds = %if.end29.i
  %call35 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %spi, i32 noundef 3264, ptr noundef nonnull @.str.11, i32 noundef %addr.0128) #6
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx25, align 4
  %pinctrl_desc = getelementptr inbounds %struct.mcp23s08, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %pinctrl_desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call35, ptr %pinctrl_desc, align 4
  %39 = load ptr, ptr %arrayidx25, align 4
  %pinctrl_desc40 = getelementptr inbounds %struct.mcp23s08, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %pinctrl_desc40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pinctrl_desc40, align 4
  %tobool42.not = icmp eq ptr %41, null
  br i1 %tobool42.not, label %if.end34.cleanup_crit_edge, label %if.end44

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %shl = shl nuw nsw i32 %addr.0128, 1
  %or = or i32 %shl, 64
  %call47 = call i32 @mcp23s08_probe_one(ptr noundef %39, ptr noundef %spi, i32 noundef %or, i32 noundef %type.0, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end44.cleanup_crit_edge, label %if.end50

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  %42 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx25, align 4
  %ngpio54 = getelementptr inbounds %struct.mcp23s08, ptr %43, i32 0, i32 9, i32 20
  %44 = ptrtoint ptr %ngpio54 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio54, align 4
  %conv = zext i16 %45 to i32
  %add = add i32 %ngpio.0130, %conv
  %add55 = add nuw nsw i32 %addr.0128, 1
  %call56 = call i32 @_find_next_bit_be(ptr noundef nonnull %spi_present_mask, i32 noundef 8, i32 noundef %add55) #6
  %cmp24 = icmp ult i32 %call56, 8
  br i1 %cmp24, label %if.end50.for.body_crit_edge, label %if.end50.for.end_crit_edge

if.end50.for.end_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end50.for.body_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end50.for.end_crit_edge, %if.end22.for.end_crit_edge
  %ngpio.0.lcssa = phi i32 [ 0, %if.end22.for.end_crit_edge ], [ %add, %if.end50.for.end_crit_edge ]
  %46 = ptrtoint ptr %call.i110 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %ngpio.0.lcssa, ptr %call.i110, align 4
  br label %cleanup

cleanup.loopexit.split.loop.exit125:              ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %35 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit125, %for.end, %if.end44.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %sw.epilog.i.cleanup_crit_edge, %do.end.i, %cond.false.i.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ %call.i109, %do.end ], [ -19, %do.end15 ], [ 0, %for.end ], [ -12, %cond.false.i.cleanup_crit_edge ], [ -22, %do.end.i ], [ %47, %cleanup.loopexit.split.loop.exit125 ], [ -12, %if.end34.cleanup_crit_edge ], [ %call47, %if.end44.cleanup_crit_edge ], [ -12, %sw.epilog.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_present_mask) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcp23s08_probe_one(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23sxx_spi_write(ptr noundef %context, ptr noundef %data, i32 noundef %count) #1 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mcp23s08, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #6
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %context, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %data, ptr %arrayinit.element, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %count, ptr %len2, align 4
  %8 = getelementptr inbounds i8, ptr %m, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i10 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i10, ptr noundef %19, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i12, label %if.end.i.i.i14, label %spi_message_add_tail.exit.spi_message_add_tail.exit15_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit15_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit15

if.end.i.i.i14:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i10, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m, ptr %transfer_list.i10, align 4
  %prev3.i.i.i13 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i13, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i10, ptr %19, align 4
  br label %spi_message_add_tail.exit15

spi_message_add_tail.exit15:                      ; preds = %if.end.i.i.i14, %spi_message_add_tail.exit.spi_message_add_tail.exit15_crit_edge
  %call8 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23sxx_spi_gather_write(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #1 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mcp23s08, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %t) #6
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 284)
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %context, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %arrayinit.element, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %reg_size, ptr %len2, align 4
  %arrayinit.element7 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 2
  %8 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %val, ptr %arrayinit.element7, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 2, i32 2
  %9 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val_size, ptr %len9, align 4
  %10 = getelementptr inbounds i8, ptr %m, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %transfer_list.i18 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i20 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i18, ptr noundef %21, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i20, label %if.end.i.i.i22, label %spi_message_add_tail.exit.spi_message_add_tail.exit23_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit23_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit23

if.end.i.i.i22:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i18, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m, ptr %transfer_list.i18, align 4
  %prev3.i.i.i21 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i21, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i18, ptr %21, align 4
  br label %spi_message_add_tail.exit23

spi_message_add_tail.exit23:                      ; preds = %if.end.i.i.i22, %spi_message_add_tail.exit.spi_message_add_tail.exit23_crit_edge
  %transfer_list.i24 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i26 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i24, ptr noundef %27, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i26, label %if.end.i.i.i28, label %spi_message_add_tail.exit23.spi_message_add_tail.exit29_crit_edge

spi_message_add_tail.exit23.spi_message_add_tail.exit29_crit_edge: ; preds = %spi_message_add_tail.exit23
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit29

if.end.i.i.i28:                                   ; preds = %spi_message_add_tail.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i24, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m, ptr %transfer_list.i24, align 4
  %prev3.i.i.i27 = getelementptr inbounds [3 x %struct.spi_transfer], ptr %t, i32 0, i32 2, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i27, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i24, ptr %27, align 4
  br label %spi_message_add_tail.exit29

spi_message_add_tail.exit29:                      ; preds = %if.end.i.i.i28, %spi_message_add_tail.exit23.spi_message_add_tail.exit29_crit_edge
  %call16 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp23sxx_spi_read(ptr nocapture noundef readonly %context, ptr nocapture noundef readonly %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #1 align 64 {
entry:
  %tx = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mcp23s08, ptr %context, i32 0, i32 12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg_size)
  %cmp.not = icmp eq i32 %reg_size, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = getelementptr inbounds [2 x i8], ptr %tx, i32 0, i32 1
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %context, align 4
  %5 = or i8 %4, 1
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tx, align 1
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %reg, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %2, align 1
  %call3 = call i32 @spi_write_then_read(ptr noundef %1, ptr noundef nonnull %tx, i32 noundef 2, ptr noundef %val, i32 noundef %val_size) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_pinctrl_mcp23s08_spi__230_253_mcp23s08_spi_init4, !1, !"__initcall__kmod_pinctrl_mcp23s08_spi__230_253_mcp23s08_spi_init4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 253, i32 1}
!2 = !{ptr @__exitcall_mcp23s08_spi_exit, !3, !"__exitcall_mcp23s08_spi_exit", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 259, i32 1}
!4 = !{ptr @__UNIQUE_ID_file231, !5, !"__UNIQUE_ID_file231", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 261, i32 1}
!6 = !{ptr @__UNIQUE_ID_license232, !5, !"__UNIQUE_ID_license232", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 239, i32 11}
!9 = !{ptr @mcp23s08_driver, !10, !"mcp23s08_driver", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 235, i32 26}
!11 = !{ptr @mcp23s08_ids, !12, !"mcp23s08_ids", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 201, i32 35}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 153, i32 38}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 155, i32 39}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 157, i32 4}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mcp23s08_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcp23s08_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 164, i32 3}
!27 = !{ptr @mcp23s08_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @mcp23s08_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 185, i32 13}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 93, i32 53}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 96, i32 42}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 102, i32 53}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 111, i32 21}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 118, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mcp23s08_spi_regmap_init._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mcp23s08_spi_regmap_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mcp23s08_spi_regmap_init._key, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 128, i32 16}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 130, i32 3}
!49 = !{ptr @mcp23s08_spi_regmap_init._entry.19, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mcp23s08_spi_regmap_init._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mcp23sxx_spi_regmap, !52, !"mcp23sxx_spi_regmap", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 76, i32 32}
!53 = !{ptr @mcp23s08_spi_of_match, !54, !"mcp23s08_spi_of_match", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-mcp23s08_spi.c", i32 209, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
