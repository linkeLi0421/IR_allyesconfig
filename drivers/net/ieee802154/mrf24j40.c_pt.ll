; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/mrf24j40.c_pt.bc'
source_filename = "../drivers/net/ieee802154/mrf24j40.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_bus = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i32, i32, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
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
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.mrf24j40 = type { ptr, ptr, ptr, ptr, %struct.spi_message, [2 x i8], %struct.spi_transfer, [2 x i8], %struct.spi_transfer, %struct.spi_transfer, ptr, %struct.spi_message, [2 x i8], %struct.spi_transfer, %struct.spi_message, [3 x i8], %struct.spi_transfer, %struct.spi_message, [2 x i8], %struct.spi_transfer, [2 x i8], %struct.spi_transfer, [144 x i8], %struct.spi_transfer, %struct.spi_message, [2 x i8], %struct.spi_transfer }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }

@__initcall__kmod_mrf24j40__349_1399_mrf24j40_driver_init6 = internal global ptr @mrf24j40_driver_init, section ".initcall6.init", align 4
@mrf24j40_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mrf24j40_ids, ptr @mrf24j40_probe, ptr @mrf24j40_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mrf24j40_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mrf24j40_driver_exit = internal global ptr @mrf24j40_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file350 = internal constant [46 x i8] c"mrf24j40.file=drivers/net/ieee802154/mrf24j40\00", section ".modinfo", align 1
@__UNIQUE_ID_license351 = internal constant [21 x i8] c"mrf24j40.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author352 = internal constant [25 x i8] c"mrf24j40.author=Alan Ott\00", section ".modinfo", align 1
@__UNIQUE_ID_description353 = internal constant [61 x i8] c"mrf24j40.description=MRF24J40 SPI 802.15.4 Controller Driver\00", section ".modinfo", align 1
@mrf24j40_ids = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mrf24j40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"mrf24j40ma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"mrf24j40mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mrf24j40\00", [23 x i8] zeroinitializer }, align 32
@mrf24j40_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mrf24j40\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mrf24j40ma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mrf24j40mc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1277, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"probe(). IRQ: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mrf24j40_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/net/ieee802154/mrf24j40.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry_ptr = internal global ptr @mrf24j40_probe._entry, section ".printk_index", align 4
@mrf24j40_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @mrf24j40_start, ptr @mrf24j40_stop, ptr null, ptr @mrf24j40_tx, ptr @mrf24j40_ed, ptr @mrf24j40_set_channel, ptr @mrf24j40_filter, ptr @mrf24j40_set_txpower, ptr null, ptr @mrf24j40_set_cca_mode, ptr @mrf24j40_set_cca_ed_level, ptr @mrf24j40_csma_params, ptr null, ptr @mrf24j40_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@mrf24j40_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mrf24j40_short_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.57, i32 7, i32 0, i32 1, i32 8, ptr @mrf24j40_short_reg_writeable, ptr @mrf24j40_short_reg_readable, ptr @mrf24j40_short_reg_volatile, ptr @mrf24j40_short_reg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 1, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mrf24j40:1303:(&mrf24j40_short_regmap)->lock\00", [51 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1307, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to allocate short register map: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry_ptr.10 = internal global ptr @mrf24j40_probe._entry.7, section ".printk_index", align 4
@mrf24j40_probe._key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mrf24j40_long_regmap_bus = internal constant { %struct.regmap_bus, [32 x i8] } { %struct.regmap_bus { i8 0, ptr @mrf24j40_long_regmap_write, ptr null, ptr null, ptr null, ptr null, ptr @mrf24j40_long_regmap_read, ptr null, ptr null, ptr null, i8 0, i32 1, i32 1, i32 0, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mrf24j40_long_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.58, i32 11, i32 0, i32 5, i32 8, ptr @mrf24j40_long_reg_writeable, ptr @mrf24j40_long_reg_readable, ptr @mrf24j40_long_reg_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 911, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 128, i32 128, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"mrf24j40:1313:(&mrf24j40_long_regmap)->lock\00", [52 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1317, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to allocate long register map: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry_ptr.15 = internal global ptr @mrf24j40_probe._entry.13, section ".printk_index", align 4
@mrf24j40_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1323, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"spi clock above possible maximum: %d\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry_ptr.19 = internal global ptr @mrf24j40_probe._entry.16, section ".printk_index", align 4
@mrf24j40_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1342, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unable to get IRQ\00", [46 x i8] zeroinitializer }, align 32
@mrf24j40_probe._entry_ptr.22 = internal global ptr @mrf24j40_probe._entry.20, section ".printk_index", align 4
@mrf24j40_probe.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.23, i8 1, i8 80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"registered mrf24j40\0A\00", [43 x i8] zeroinitializer }, align 32
@mrf24j40_start.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mrf24j40_start\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"start\0A\00", [25 x i8] zeroinitializer }, align 32
@mrf24j40_stop.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mrf24j40_stop\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stop\0A\00", [26 x i8] zeroinitializer }, align 32
@mrf24j40_tx.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mrf24j40_tx\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx packet of %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@write_tx_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 573, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"write_tx_buf() was passed too large a buffer. Performing short write.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_tx_buf\00", [19 x i8] zeroinitializer }, align 32
@write_tx_buf._entry_ptr = internal global ptr @write_tx_buf._entry, section ".printk_index", align 4
@write_tx_buf._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 587, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPI write Failed for TX buf\0A\00", [35 x i8] zeroinitializer }, align 32
@write_tx_buf._entry_ptr.34 = internal global ptr @write_tx_buf._entry.32, section ".printk_index", align 4
@mrf24j40_ed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014mrf24j40: ed not implemented\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mrf24j40_ed\00", [20 x i8] zeroinitializer }, align 32
@mrf24j40_ed._entry_ptr = internal global ptr @mrf24j40_ed._entry, section ".printk_index", align 4
@mrf24j40_set_channel.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 -97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mrf24j40_set_channel\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Set Channel %d\0A\00", [16 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mrf24j40_filter.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.40, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mrf24j40_filter\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"filter\0A\00", [24 x i8] zeroinitializer }, align 32
@mrf24j40_filter.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.41, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set short addr to %04hx\0A\00", [39 x i8] zeroinitializer }, align 32
@mrf24j40_filter.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.42, i8 0, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Set PANID to %04hx\0A\00", [44 x i8] zeroinitializer }, align 32
@mrf24j40_filter.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.3, ptr @.str.43, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Set Pan Coord to %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@mrf24j40_ed_levels_map = internal constant { [56 x [2 x i32]], [96 x i8] } { [56 x [2 x i32]] [[2 x i32] [i32 -9000, i32 0], [2 x i32] [i32 -8900, i32 1], [2 x i32] [i32 -8800, i32 2], [2 x i32] [i32 -8700, i32 5], [2 x i32] [i32 -8600, i32 9], [2 x i32] [i32 -8500, i32 13], [2 x i32] [i32 -8400, i32 18], [2 x i32] [i32 -8300, i32 23], [2 x i32] [i32 -8200, i32 27], [2 x i32] [i32 -8100, i32 32], [2 x i32] [i32 -8000, i32 37], [2 x i32] [i32 -7900, i32 43], [2 x i32] [i32 -7800, i32 48], [2 x i32] [i32 -7700, i32 53], [2 x i32] [i32 -7600, i32 58], [2 x i32] [i32 -7500, i32 63], [2 x i32] [i32 -7400, i32 68], [2 x i32] [i32 -7300, i32 73], [2 x i32] [i32 -7200, i32 78], [2 x i32] [i32 -7100, i32 83], [2 x i32] [i32 -7000, i32 89], [2 x i32] [i32 -6900, i32 95], [2 x i32] [i32 -6800, i32 100], [2 x i32] [i32 -6700, i32 107], [2 x i32] [i32 -6600, i32 111], [2 x i32] [i32 -6500, i32 117], [2 x i32] [i32 -6400, i32 121], [2 x i32] [i32 -6300, i32 125], [2 x i32] [i32 -6200, i32 129], [2 x i32] [i32 -6100, i32 133], [2 x i32] [i32 -6000, i32 138], [2 x i32] [i32 -5900, i32 143], [2 x i32] [i32 -5800, i32 148], [2 x i32] [i32 -5700, i32 153], [2 x i32] [i32 -5600, i32 159], [2 x i32] [i32 -5500, i32 165], [2 x i32] [i32 -5400, i32 170], [2 x i32] [i32 -5300, i32 176], [2 x i32] [i32 -5200, i32 183], [2 x i32] [i32 -5100, i32 188], [2 x i32] [i32 -5000, i32 193], [2 x i32] [i32 -4900, i32 198], [2 x i32] [i32 -4800, i32 203], [2 x i32] [i32 -4700, i32 207], [2 x i32] [i32 -4600, i32 212], [2 x i32] [i32 -4500, i32 216], [2 x i32] [i32 -4400, i32 221], [2 x i32] [i32 -4300, i32 225], [2 x i32] [i32 -4200, i32 228], [2 x i32] [i32 -4100, i32 233], [2 x i32] [i32 -4000, i32 239], [2 x i32] [i32 -3900, i32 245], [2 x i32] [i32 -3800, i32 250], [2 x i32] [i32 -3700, i32 253], [2 x i32] [i32 -3600, i32 254], [2 x i32] [i32 -3500, i32 255]], [96 x i8] zeroinitializer }, align 32
@write_tx_buf_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 559, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SPI write Failed for transmit buf\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"write_tx_buf_complete\00", [42 x i8] zeroinitializer }, align 32
@write_tx_buf_complete._entry_ptr = internal global ptr @write_tx_buf_complete._entry, section ".printk_index", align 4
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/mac802154.h\00", [40 x i8] zeroinitializer }, align 32
@mrf24j40_handle_rx_read_buf_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 764, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to allocate skb\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"mrf24j40_handle_rx_read_buf_complete\00", [59 x i8] zeroinitializer }, align 32
@mrf24j40_handle_rx_read_buf_complete._entry_ptr = internal global ptr @mrf24j40_handle_rx_read_buf_complete._entry, section ".printk_index", align 4
@mrf24j40_handle_rx_read_buf_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 749, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to unlock rx buffer\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mrf24j40_handle_rx_read_buf_unlock\00", [61 x i8] zeroinitializer }, align 32
@mrf24j40_handle_rx_read_buf_unlock._entry_ptr = internal global ptr @mrf24j40_handle_rx_read_buf_unlock._entry, section ".printk_index", align 4
@mrf24j40_handle_rx_read_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 815, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read rx buffer length\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mrf24j40_handle_rx_read_len\00", [36 x i8] zeroinitializer }, align 32
@mrf24j40_handle_rx_read_len._entry_ptr = internal global ptr @mrf24j40_handle_rx_read_len._entry, section ".printk_index", align 4
@mrf24j40_handle_rx_read_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 795, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to read rx buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mrf24j40_handle_rx_read_buf\00", [36 x i8] zeroinitializer }, align 32
@mrf24j40_handle_rx_read_buf._entry_ptr = internal global ptr @mrf24j40_handle_rx_read_buf._entry, section ".printk_index", align 4
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mrf24j40_short\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mrf24j40_long\00", [18 x i8] zeroinitializer }, align 32
@mrf24j40_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 1159, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"Using edge triggered irq's are not recommended, because it can cause races and result in a non-functional driver!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mrf24j40_hw_init\00", [47 x i8] zeroinitializer }, align 32
@mrf24j40_hw_init._entry_ptr = internal global ptr @mrf24j40_hw_init._entry, section ".printk_index", align 4
@mrf24j40_ed_levels = internal constant { [56 x i32], [32 x i8] } { [56 x i32] [i32 -9000, i32 -8900, i32 -8800, i32 -8700, i32 -8600, i32 -8500, i32 -8400, i32 -8300, i32 -8200, i32 -8100, i32 -8000, i32 -7900, i32 -7800, i32 -7700, i32 -7600, i32 -7500, i32 -7400, i32 -7300, i32 -7200, i32 -7100, i32 -7000, i32 -6900, i32 -6800, i32 -6700, i32 -6600, i32 -6500, i32 -6400, i32 -6300, i32 -6200, i32 -6100, i32 -6000, i32 -5900, i32 -5800, i32 -5700, i32 -5600, i32 -5500, i32 -5400, i32 -5300, i32 -5200, i32 -5100, i32 -5000, i32 -4900, i32 -4800, i32 -4700, i32 -4600, i32 -4500, i32 -4400, i32 -4300, i32 -4200, i32 -4100, i32 -4000, i32 -3900, i32 -3800, i32 -3700, i32 -3600, i32 -3500], [32 x i8] zeroinitializer }, align 32
@mrf24j40ma_powers = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 0, i32 -50, i32 -120, i32 -190, i32 -280, i32 -370, i32 -490, i32 -630, i32 -1000, i32 -1050, i32 -1120, i32 -1190, i32 -1280, i32 -1370, i32 -1490, i32 -1630, i32 -2000, i32 -2050, i32 -2120, i32 -2190, i32 -2280, i32 -2370, i32 -2490, i32 -2630, i32 -3000, i32 -3050, i32 -3120, i32 -3190, i32 -3280, i32 -3370, i32 -3490, i32 -3630], [32 x i8] zeroinitializer }, align 32
@mrf24j40_remove.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 1, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mrf24j40_remove\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remove\0A\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.63 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 4294966666, i64 4294966806, i64 4294966926, i64 4294967016, i64 4294967106, i64 4294967176, i64 4294967246]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [58 x i64] [i64 56, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 44, i64 45, i64 46, i64 48, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 62, i64 63]
@__sancov_gen_cov_switch_values.66 = internal global [18 x i64] [i64 16, i64 32, i64 13, i64 26, i64 27, i64 28, i64 29, i64 36, i64 37, i64 42, i64 44, i64 48, i64 49, i64 53, i64 54, i64 55, i64 57, i64 62]
@__sancov_gen_cov_switch_values.67 = internal global [45 x i64] [i64 43, i64 32, i64 512, i64 513, i64 514, i64 515, i64 517, i64 518, i64 519, i64 520, i64 523, i64 529, i64 544, i64 546, i64 547, i64 548, i64 549, i64 550, i64 551, i64 552, i64 553, i64 559, i64 560, i64 561, i64 562, i64 563, i64 564, i64 565, i64 566, i64 567, i64 568, i64 569, i64 576, i64 577, i64 578, i64 579, i64 580, i64 581, i64 582, i64 583, i64 584, i64 585, i64 586, i64 587, i64 588]
@__sancov_gen_cov_switch_values.68 = internal global [8 x i64] [i64 6, i64 32, i64 521, i64 522, i64 523, i64 527, i64 528, i64 553]
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"mrf24j40_driver\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1389, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"mrf24j40_ids\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1381, i32 35 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1392, i32 11 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"mrf24j40_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1373, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1277, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"mrf24j40_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1005, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"mrf24j40_short_regmap\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 384, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1302, i32 25 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1306, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"mrf24j40_long_regmap_bus\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 533, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"mrf24j40_long_regmap\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 491, i32 35 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1311, i32 24 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1316, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1322, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1342, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1346, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 614, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 625, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 596, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 573, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 587, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 605, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 638, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 670, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 681, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 711, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 732, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [23 x i8] c"mrf24j40_ed_levels_map\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 893, i32 18 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 559, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [27 x i8] c"../include/net/mac802154.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 244, i32 6 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 764, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 749, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 815, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 795, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 385, i32 10 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 492, i32 10 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1158, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant [19 x i8] c"mrf24j40_ed_levels\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 883, i32 18 }
@___asan_gen_.294 = private unnamed_addr constant [18 x i8] c"mrf24j40ma_powers\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 924, i32 18 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private constant [37 x i8] c"../drivers/net/ieee802154/mrf24j40.c\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 1363, i32 2 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author352, ptr @__UNIQUE_ID_description353, ptr @__UNIQUE_ID_file350, ptr @__UNIQUE_ID_license351, ptr @__exitcall_mrf24j40_driver_exit, ptr @__initcall__kmod_mrf24j40__349_1399_mrf24j40_driver_init6, ptr @mrf24j40_driver_exit, ptr @mrf24j40_ed._entry, ptr @mrf24j40_ed._entry_ptr, ptr @mrf24j40_handle_rx_read_buf._entry, ptr @mrf24j40_handle_rx_read_buf._entry_ptr, ptr @mrf24j40_handle_rx_read_buf_complete._entry, ptr @mrf24j40_handle_rx_read_buf_complete._entry_ptr, ptr @mrf24j40_handle_rx_read_buf_unlock._entry, ptr @mrf24j40_handle_rx_read_buf_unlock._entry_ptr, ptr @mrf24j40_handle_rx_read_len._entry, ptr @mrf24j40_handle_rx_read_len._entry_ptr, ptr @mrf24j40_hw_init._entry, ptr @mrf24j40_hw_init._entry_ptr, ptr @mrf24j40_probe._entry, ptr @mrf24j40_probe._entry.13, ptr @mrf24j40_probe._entry.16, ptr @mrf24j40_probe._entry.20, ptr @mrf24j40_probe._entry.7, ptr @mrf24j40_probe._entry_ptr, ptr @mrf24j40_probe._entry_ptr.10, ptr @mrf24j40_probe._entry_ptr.15, ptr @mrf24j40_probe._entry_ptr.19, ptr @mrf24j40_probe._entry_ptr.22, ptr @write_tx_buf._entry, ptr @write_tx_buf._entry.32, ptr @write_tx_buf._entry_ptr, ptr @write_tx_buf._entry_ptr.34, ptr @write_tx_buf_complete._entry, ptr @write_tx_buf_complete._entry_ptr, ptr @mrf24j40_driver, ptr @mrf24j40_ids, ptr @.str, ptr @mrf24j40_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mrf24j40_ops, ptr @mrf24j40_probe._key, ptr @mrf24j40_short_regmap, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @mrf24j40_probe._key.11, ptr @mrf24j40_long_regmap_bus, ptr @mrf24j40_long_regmap, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @mrf24j40_ed_levels_map, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @mrf24j40_ed_levels, ptr @mrf24j40ma_powers, ptr @.str.61, ptr @.str.62], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_ids to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_short_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_long_regmap_bus to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_long_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tx_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tx_buf._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_ed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_ed_levels_map to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_tx_buf_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_handle_rx_read_buf_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_handle_rx_read_buf_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_handle_rx_read_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_handle_rx_read_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40_ed_levels to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrf24j40ma_powers to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mrf24j40_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mrf24j40_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %1) #10
  %call = tail call ptr @ieee802154_alloc_hw(i32 noundef 1336, ptr noundef nonnull @mrf24j40_ops) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %driver_data.i.i, align 4
  %hw2 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %hw2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %hw2, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %parent, align 4
  %8 = load ptr, ptr %hw2, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %supported = getelementptr inbounds %struct.wpan_phy, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 134215680, ptr %supported, align 4
  %12 = load ptr, ptr %hw2, align 4
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 53, ptr %flags, align 4
  %14 = load ptr, ptr %hw2, align 4
  %phy8 = getelementptr inbounds %struct.ieee802154_hw, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %phy8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy8, align 4
  %flags9 = getelementptr inbounds %struct.wpan_phy, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %flags9, align 4
  %tx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4
  %18 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 1
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %tx_msg.i, ptr %tx_msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx_msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 10
  %22 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %context.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %3, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 4, i32 3
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @write_tx_buf_complete, ptr %complete.i, align 4
  %tx_hdr_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 6
  %len.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 6, i32 2
  %26 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %len.i, align 4
  %tx_hdr_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 5
  %27 = ptrtoint ptr %tx_hdr_trx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tx_hdr_buf.i, ptr %tx_hdr_trx.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 6, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %tx_msg.i, ptr noundef %tx_msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.spi_message_add_tail.exit.i_crit_edge

if.end.spi_message_add_tail.exit.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 6, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %tx_msg.i, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %tx_msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i, ptr %tx_msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end.spi_message_add_tail.exit.i_crit_edge
  %tx_len_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 8
  %len6.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 8, i32 2
  %32 = ptrtoint ptr %len6.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %len6.i, align 4
  %tx_len_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 7
  %33 = ptrtoint ptr %tx_len_trx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %tx_len_buf.i, ptr %tx_len_trx.i, align 4
  %transfer_list.i44.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 8, i32 18
  %34 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i46.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i44.i, ptr noundef %35, ptr noundef %tx_msg.i) #7
  br i1 %call.i.i.i46.i, label %if.end.i.i.i48.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit49.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit49.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit49.i

if.end.i.i.i48.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i44.i, ptr %prev.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i44.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tx_msg.i, ptr %transfer_list.i44.i, align 4
  %prev3.i.i.i47.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 8, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i47.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i44.i, ptr %35, align 4
  br label %spi_message_add_tail.exit49.i

spi_message_add_tail.exit49.i:                    ; preds = %if.end.i.i.i48.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit49.i_crit_edge
  %transfer_list.i50.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 9, i32 18
  %40 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i52.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i50.i, ptr noundef %41, ptr noundef %tx_msg.i) #7
  br i1 %call.i.i.i52.i, label %if.end.i.i.i54.i, label %spi_message_add_tail.exit49.i.spi_message_add_tail.exit55.i_crit_edge

spi_message_add_tail.exit49.i.spi_message_add_tail.exit55.i_crit_edge: ; preds = %spi_message_add_tail.exit49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit55.i

if.end.i.i.i54.i:                                 ; preds = %spi_message_add_tail.exit49.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %transfer_list.i50.i, ptr %prev.i.i.i.i, align 4
  %43 = ptrtoint ptr %transfer_list.i50.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %tx_msg.i, ptr %transfer_list.i50.i, align 4
  %prev3.i.i.i53.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 9, i32 18, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i53.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i53.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %transfer_list.i50.i, ptr %41, align 4
  br label %spi_message_add_tail.exit55.i

spi_message_add_tail.exit55.i:                    ; preds = %if.end.i.i.i54.i, %spi_message_add_tail.exit49.i.spi_message_add_tail.exit55.i_crit_edge
  %tx_post_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11
  %46 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11, i32 1
  %47 = call ptr @memset(ptr %46, i32 0, i32 40)
  %48 = ptrtoint ptr %tx_post_msg.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %tx_post_msg.i, ptr %tx_post_msg.i, align 4
  %prev.i.i.i56.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_post_msg.i, ptr %prev.i.i.i56.i, align 4
  %resources.i.i57.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11, i32 10
  %50 = ptrtoint ptr %resources.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %resources.i.i57.i, ptr %resources.i.i57.i, align 4
  %prev.i2.i.i58.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11, i32 10, i32 1
  %51 = ptrtoint ptr %prev.i2.i.i58.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %resources.i.i57.i, ptr %prev.i2.i.i58.i, align 4
  %context14.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 11, i32 4
  %52 = ptrtoint ptr %context14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %3, ptr %context14.i, align 4
  %tx_post_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 13
  %len15.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 13, i32 2
  %53 = ptrtoint ptr %len15.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 2, ptr %len15.i, align 4
  %tx_post_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 12
  %54 = ptrtoint ptr %tx_post_trx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %tx_post_buf.i, ptr %tx_post_trx.i, align 4
  %transfer_list.i59.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 13, i32 18
  %call.i.i.i61.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i59.i, ptr noundef %tx_post_msg.i, ptr noundef %tx_post_msg.i) #7
  br i1 %call.i.i.i61.i, label %if.end.i.i.i63.i, label %spi_message_add_tail.exit55.i.mrf24j40_setup_tx_spi_messages.exit_crit_edge

spi_message_add_tail.exit55.i.mrf24j40_setup_tx_spi_messages.exit_crit_edge: ; preds = %spi_message_add_tail.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrf24j40_setup_tx_spi_messages.exit

if.end.i.i.i63.i:                                 ; preds = %spi_message_add_tail.exit55.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %prev.i.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %transfer_list.i59.i, ptr %prev.i.i.i56.i, align 4
  %56 = ptrtoint ptr %transfer_list.i59.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %tx_post_msg.i, ptr %transfer_list.i59.i, align 4
  %prev3.i.i.i62.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 13, i32 18, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx_post_msg.i, ptr %prev3.i.i.i62.i, align 4
  %58 = ptrtoint ptr %tx_post_msg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %transfer_list.i59.i, ptr %tx_post_msg.i, align 4
  br label %mrf24j40_setup_tx_spi_messages.exit

mrf24j40_setup_tx_spi_messages.exit:              ; preds = %if.end.i.i.i63.i, %spi_message_add_tail.exit55.i.mrf24j40_setup_tx_spi_messages.exit_crit_edge
  %rx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14
  %59 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14, i32 1
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %rx_msg.i, ptr %rx_msg.i, align 4
  %prev.i.i.i.i128 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %rx_msg.i, ptr %prev.i.i.i.i128, align 4
  %resources.i.i.i129 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14, i32 10
  %63 = ptrtoint ptr %resources.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i129, ptr %resources.i.i.i129, align 4
  %prev.i2.i.i.i130 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i129, ptr %prev.i2.i.i.i130, align 4
  %context.i131 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 14, i32 4
  %65 = ptrtoint ptr %context.i131 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %3, ptr %context.i131, align 4
  %rx_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 16
  %len.i132 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 16, i32 2
  %66 = ptrtoint ptr %len.i132 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 2, ptr %len.i132, align 4
  %rx_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 15
  %67 = ptrtoint ptr %rx_trx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %rx_buf.i, ptr %rx_trx.i, align 4
  %rx_buf6.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 16, i32 1
  %68 = ptrtoint ptr %rx_buf6.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rx_buf.i, ptr %rx_buf6.i, align 4
  %transfer_list.i.i133 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 16, i32 18
  %call.i.i.i.i134 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i133, ptr noundef %rx_msg.i, ptr noundef %rx_msg.i) #7
  br i1 %call.i.i.i.i134, label %if.end.i.i.i.i136, label %mrf24j40_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i138_crit_edge

mrf24j40_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i138_crit_edge: ; preds = %mrf24j40_setup_tx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i138

if.end.i.i.i.i136:                                ; preds = %mrf24j40_setup_tx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %prev.i.i.i.i128 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i.i133, ptr %prev.i.i.i.i128, align 4
  %70 = ptrtoint ptr %transfer_list.i.i133 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %rx_msg.i, ptr %transfer_list.i.i133, align 4
  %prev3.i.i.i.i135 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 16, i32 18, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %rx_msg.i, ptr %prev3.i.i.i.i135, align 4
  %72 = ptrtoint ptr %rx_msg.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i.i133, ptr %rx_msg.i, align 4
  br label %spi_message_add_tail.exit.i138

spi_message_add_tail.exit.i138:                   ; preds = %if.end.i.i.i.i136, %mrf24j40_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i138_crit_edge
  %rx_buf_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17
  %73 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 1
  %74 = call ptr @memset(ptr %73, i32 0, i32 40)
  %75 = ptrtoint ptr %rx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %rx_buf_msg.i, ptr %rx_buf_msg.i, align 4
  %prev.i.i.i55.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %rx_buf_msg.i, ptr %prev.i.i.i55.i, align 4
  %resources.i.i56.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 10
  %77 = ptrtoint ptr %resources.i.i56.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %resources.i.i56.i, ptr %resources.i.i56.i, align 4
  %prev.i2.i.i57.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 10, i32 1
  %78 = ptrtoint ptr %prev.i2.i.i57.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %resources.i.i56.i, ptr %prev.i2.i.i57.i, align 4
  %context10.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 4
  %79 = ptrtoint ptr %context10.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %3, ptr %context10.i, align 4
  %complete.i137 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 17, i32 3
  %80 = ptrtoint ptr %complete.i137 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @mrf24j40_handle_rx_read_buf_complete, ptr %complete.i137, align 4
  %rx_addr_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 19
  %len12.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 19, i32 2
  %81 = ptrtoint ptr %len12.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 2, ptr %len12.i, align 4
  %rx_addr_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 18
  %82 = ptrtoint ptr %rx_addr_trx.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %rx_addr_buf.i, ptr %rx_addr_trx.i, align 4
  %transfer_list.i58.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 19, i32 18
  %call.i.i.i60.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i58.i, ptr noundef %rx_buf_msg.i, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i60.i, label %if.end.i.i.i62.i, label %spi_message_add_tail.exit.i138.spi_message_add_tail.exit63.i_crit_edge

spi_message_add_tail.exit.i138.spi_message_add_tail.exit63.i_crit_edge: ; preds = %spi_message_add_tail.exit.i138
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit63.i

if.end.i.i.i62.i:                                 ; preds = %spi_message_add_tail.exit.i138
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %transfer_list.i58.i, ptr %prev.i.i.i55.i, align 4
  %84 = ptrtoint ptr %transfer_list.i58.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i58.i, align 4
  %prev3.i.i.i61.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 19, i32 18, i32 1
  %85 = ptrtoint ptr %prev3.i.i.i61.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %rx_buf_msg.i, ptr %prev3.i.i.i61.i, align 4
  %86 = ptrtoint ptr %rx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %transfer_list.i58.i, ptr %rx_buf_msg.i, align 4
  br label %spi_message_add_tail.exit63.i

spi_message_add_tail.exit63.i:                    ; preds = %if.end.i.i.i62.i, %spi_message_add_tail.exit.i138.spi_message_add_tail.exit63.i_crit_edge
  %rx_fifo_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 22
  %rx_buf19.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 23, i32 1
  %87 = ptrtoint ptr %rx_buf19.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %rx_fifo_buf.i, ptr %rx_buf19.i, align 4
  %transfer_list.i64.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 23, i32 18
  %88 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i.i55.i, align 4
  %call.i.i.i66.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i64.i, ptr noundef %89, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i66.i, label %if.end.i.i.i68.i, label %spi_message_add_tail.exit63.i.spi_message_add_tail.exit69.i_crit_edge

spi_message_add_tail.exit63.i.spi_message_add_tail.exit69.i_crit_edge: ; preds = %spi_message_add_tail.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit69.i

if.end.i.i.i68.i:                                 ; preds = %spi_message_add_tail.exit63.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %transfer_list.i64.i, ptr %prev.i.i.i55.i, align 4
  %91 = ptrtoint ptr %transfer_list.i64.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i64.i, align 4
  %prev3.i.i.i67.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 23, i32 18, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev3.i.i.i67.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %transfer_list.i64.i, ptr %89, align 4
  br label %spi_message_add_tail.exit69.i

spi_message_add_tail.exit69.i:                    ; preds = %if.end.i.i.i68.i, %spi_message_add_tail.exit63.i.spi_message_add_tail.exit69.i_crit_edge
  %len22.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 21, i32 2
  %94 = ptrtoint ptr %len22.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %len22.i, align 4
  %rx_lqi_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 20
  %rx_buf25.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 21, i32 1
  %95 = ptrtoint ptr %rx_buf25.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %rx_lqi_buf.i, ptr %rx_buf25.i, align 4
  %transfer_list.i70.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 21, i32 18
  %96 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i.i55.i, align 4
  %call.i.i.i72.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i70.i, ptr noundef %97, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i72.i, label %if.end.i.i.i74.i, label %spi_message_add_tail.exit69.i.mrf24j40_setup_rx_spi_messages.exit_crit_edge

spi_message_add_tail.exit69.i.mrf24j40_setup_rx_spi_messages.exit_crit_edge: ; preds = %spi_message_add_tail.exit69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrf24j40_setup_rx_spi_messages.exit

if.end.i.i.i74.i:                                 ; preds = %spi_message_add_tail.exit69.i
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %prev.i.i.i55.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %transfer_list.i70.i, ptr %prev.i.i.i55.i, align 4
  %99 = ptrtoint ptr %transfer_list.i70.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i70.i, align 4
  %prev3.i.i.i73.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 21, i32 18, i32 1
  %100 = ptrtoint ptr %prev3.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev3.i.i.i73.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %transfer_list.i70.i, ptr %97, align 4
  br label %mrf24j40_setup_rx_spi_messages.exit

mrf24j40_setup_rx_spi_messages.exit:              ; preds = %if.end.i.i.i74.i, %spi_message_add_tail.exit69.i.mrf24j40_setup_rx_spi_messages.exit_crit_edge
  %irq_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24
  %102 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 1
  %103 = call ptr @memset(ptr %102, i32 0, i32 40)
  %104 = ptrtoint ptr %irq_msg.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %irq_msg.i, ptr %irq_msg.i, align 4
  %prev.i.i.i.i139 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 0, i32 1
  %105 = ptrtoint ptr %prev.i.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %irq_msg.i, ptr %prev.i.i.i.i139, align 4
  %resources.i.i.i140 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 10
  %106 = ptrtoint ptr %resources.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %resources.i.i.i140, ptr %resources.i.i.i140, align 4
  %prev.i2.i.i.i141 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 10, i32 1
  %107 = ptrtoint ptr %prev.i2.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %resources.i.i.i140, ptr %prev.i2.i.i.i141, align 4
  %context.i142 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 4
  %108 = ptrtoint ptr %context.i142 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %3, ptr %context.i142, align 4
  %complete.i143 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 24, i32 3
  %109 = ptrtoint ptr %complete.i143 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @mrf24j40_intstat_complete, ptr %complete.i143, align 4
  %irq_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 26
  %len.i144 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 26, i32 2
  %110 = ptrtoint ptr %len.i144 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 2, ptr %len.i144, align 4
  %irq_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 25
  %111 = ptrtoint ptr %irq_trx.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %irq_buf.i, ptr %irq_trx.i, align 4
  %rx_buf.i145 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 26, i32 1
  %112 = ptrtoint ptr %rx_buf.i145 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %irq_buf.i, ptr %rx_buf.i145, align 4
  %transfer_list.i.i146 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 26, i32 18
  %call.i.i.i.i147 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i146, ptr noundef %irq_msg.i, ptr noundef %irq_msg.i) #7
  br i1 %call.i.i.i.i147, label %if.end.i.i.i.i149, label %mrf24j40_setup_rx_spi_messages.exit.mrf24j40_setup_irq_spi_messages.exit_crit_edge

mrf24j40_setup_rx_spi_messages.exit.mrf24j40_setup_irq_spi_messages.exit_crit_edge: ; preds = %mrf24j40_setup_rx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrf24j40_setup_irq_spi_messages.exit

if.end.i.i.i.i149:                                ; preds = %mrf24j40_setup_rx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %prev.i.i.i.i139 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %transfer_list.i.i146, ptr %prev.i.i.i.i139, align 4
  %114 = ptrtoint ptr %transfer_list.i.i146 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %irq_msg.i, ptr %transfer_list.i.i146, align 4
  %prev3.i.i.i.i148 = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 26, i32 18, i32 1
  %115 = ptrtoint ptr %prev3.i.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %irq_msg.i, ptr %prev3.i.i.i.i148, align 4
  %116 = ptrtoint ptr %irq_msg.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %transfer_list.i.i146, ptr %irq_msg.i, align 4
  br label %mrf24j40_setup_irq_spi_messages.exit

mrf24j40_setup_irq_spi_messages.exit:             ; preds = %if.end.i.i.i.i149, %mrf24j40_setup_rx_spi_messages.exit.mrf24j40_setup_irq_spi_messages.exit_crit_edge
  %call10 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @mrf24j40_short_regmap, ptr noundef nonnull @mrf24j40_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 2
  %117 = ptrtoint ptr %regmap_short to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call10, ptr %regmap_short, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %mrf24j40_setup_irq_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %118) #10
  br label %err_register_device

if.end20:                                         ; preds = %mrf24j40_setup_irq_spi_messages.exit
  %call23 = tail call ptr @__devm_regmap_init(ptr noundef %spi, ptr noundef nonnull @mrf24j40_long_regmap_bus, ptr noundef %spi, ptr noundef nonnull @mrf24j40_long_regmap, ptr noundef nonnull @mrf24j40_probe._key.11, ptr noundef nonnull @.str.12) #7
  %regmap_long = getelementptr inbounds %struct.mrf24j40, ptr %3, i32 0, i32 3
  %119 = ptrtoint ptr %regmap_long to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %call23, ptr %regmap_long, align 4
  %cmp.i151 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %120 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %120) #10
  br label %err_register_device

if.end33:                                         ; preds = %if.end20
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %121 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %max_speed_hz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %122)
  %cmp = icmp ugt i32 %122, 10000000
  br i1 %cmp, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef 10000000) #10
  br label %err_register_device

if.end39:                                         ; preds = %if.end33
  %123 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap_short, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 42, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.err_register_device_crit_edge

if.end39.err_register_device_crit_edge:           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end.i:                                         ; preds = %if.end39
  %125 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap_short, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %126, i32 noundef 24, i32 noundef 152) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.err_register_device_crit_edge

if.end.i.err_register_device_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end5.i:                                        ; preds = %if.end.i
  %127 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap_short, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %128, i32 noundef 46, i32 noundef 149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end5.i.err_register_device_crit_edge

if.end5.i.err_register_device_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end10.i:                                       ; preds = %if.end5.i
  %129 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap_long, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %130, i32 noundef 512, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end10.i.err_register_device_crit_edge

if.end10.i.err_register_device_crit_edge:         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end14.i:                                       ; preds = %if.end10.i
  %131 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap_long, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %132, i32 noundef 513, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end14.i.err_register_device_crit_edge

if.end14.i.err_register_device_crit_edge:         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end19.i:                                       ; preds = %if.end14.i
  %133 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap_long, align 4
  %call21.i = tail call i32 @regmap_write(ptr noundef %134, i32 noundef 514, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.err_register_device_crit_edge

if.end19.i.err_register_device_crit_edge:         ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end24.i:                                       ; preds = %if.end19.i
  %135 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap_long, align 4
  %call26.i = tail call i32 @regmap_write(ptr noundef %136, i32 noundef 518, i32 noundef 144) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end29.i, label %if.end24.i.err_register_device_crit_edge

if.end24.i.err_register_device_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end29.i:                                       ; preds = %if.end24.i
  %137 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap_long, align 4
  %call31.i = tail call i32 @regmap_write(ptr noundef %138, i32 noundef 519, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end29.i.err_register_device_crit_edge

if.end29.i.err_register_device_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end34.i:                                       ; preds = %if.end29.i
  %139 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap_long, align 4
  %call36.i = tail call i32 @regmap_write(ptr noundef %140, i32 noundef 520, i32 noundef 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.end39.i, label %if.end34.i.err_register_device_crit_edge

if.end34.i.err_register_device_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end39.i:                                       ; preds = %if.end34.i
  %141 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap_long, align 4
  %call41.i = tail call i32 @regmap_write(ptr noundef %142, i32 noundef 544, i32 noundef 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end39.i.err_register_device_crit_edge

if.end39.i.err_register_device_crit_edge:         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end44.i:                                       ; preds = %if.end39.i
  %143 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap_short, align 4
  %call46.i = tail call i32 @regmap_write(ptr noundef %144, i32 noundef 58, i32 noundef 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end44.i.err_register_device_crit_edge

if.end44.i.err_register_device_crit_edge:         ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end49.i:                                       ; preds = %if.end44.i
  %145 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap_short, align 4
  %call51.i = tail call i32 @regmap_write(ptr noundef %146, i32 noundef 63, i32 noundef 96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end49.i.err_register_device_crit_edge

if.end49.i.err_register_device_crit_edge:         ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end54.i:                                       ; preds = %if.end49.i
  %147 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap_short, align 4
  %call56.i = tail call i32 @regmap_write(ptr noundef %148, i32 noundef 62, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool57.not.i = icmp eq i32 %call56.i, 0
  br i1 %tobool57.not.i, label %if.end59.i, label %if.end54.i.err_register_device_crit_edge

if.end54.i.err_register_device_crit_edge:         ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end59.i:                                       ; preds = %if.end54.i
  %149 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap_short, align 4
  %call61.i = tail call i32 @regmap_write(ptr noundef %150, i32 noundef 54, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end59.i.err_register_device_crit_edge

if.end59.i.err_register_device_crit_edge:         ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end64.i:                                       ; preds = %if.end59.i
  %151 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap_short, align 4
  %call66.i = tail call i32 @regmap_write(ptr noundef %152, i32 noundef 54, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end64.i.err_register_device_crit_edge

if.end64.i.err_register_device_crit_edge:         ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end69.i:                                       ; preds = %if.end64.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 41231616) #7
  %154 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap_short, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %155, i32 noundef 0, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool72.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end69.i.err_register_device_crit_edge

if.end69.i.err_register_device_crit_edge:         ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

if.end74.i:                                       ; preds = %if.end69.i
  %156 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %3, align 4
  %call75.i = tail call ptr @spi_get_device_id(ptr noundef %157) #7
  %driver_data.i = getelementptr inbounds %struct.spi_device_id, ptr %call75.i, i32 0, i32 1
  %158 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %159)
  %cmp.i152 = icmp eq i32 %159, 2
  br i1 %cmp.i152, label %if.then76.i, label %if.end74.i.if.end85.i_crit_edge

if.end74.i.if.end85.i_crit_edge:                  ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

if.then76.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regmap_long, align 4
  %call.i141.i = tail call i32 @regmap_update_bits_base(ptr noundef %161, i32 noundef 559, i32 noundef 7, i32 noundef 7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %162 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regmap_short, align 4
  %call.i142.i = tail call i32 @regmap_update_bits_base(ptr noundef %163, i32 noundef 52, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %164 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %regmap_short, align 4
  %call.i143.i = tail call i32 @regmap_update_bits_base(ptr noundef %165, i32 noundef 51, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %166 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %regmap_long, align 4
  %call84.i = tail call i32 @regmap_write(ptr noundef %167, i32 noundef 515, i32 noundef 40) #7
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.then76.i, %if.end74.i.if.end85.i_crit_edge
  %168 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %3, align 4
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %169, i32 0, i32 8
  %170 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %irq.i, align 4
  %call.i144.i = tail call ptr @irq_get_irq_data(i32 noundef %171) #7
  %tobool.not.i.i = icmp eq ptr %call.i144.i, null
  br i1 %tobool.not.i.i, label %if.end85.i.if.end43_crit_edge, label %irq_get_trigger_type.exit.i

if.end85.i.if.end43_crit_edge:                    ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

irq_get_trigger_type.exit.i:                      ; preds = %if.end85.i
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i144.i, i32 0, i32 3
  %172 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %common.i.i.i, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %173, align 4
  %and.i.i.i = and i32 %175, 15
  %176 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i.i, label %irq_get_trigger_type.exit.i.if.end43_crit_edge [
    i32 1, label %irq_get_trigger_type.exit.i.do.end.i_crit_edge
    i32 2, label %irq_get_trigger_type.exit.i.do.end.i_crit_edge169
    i32 4, label %irq_get_trigger_type.exit.i.sw.bb.i_crit_edge
  ]

irq_get_trigger_type.exit.i.sw.bb.i_crit_edge:    ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

irq_get_trigger_type.exit.i.do.end.i_crit_edge169: ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

irq_get_trigger_type.exit.i.do.end.i_crit_edge:   ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

irq_get_trigger_type.exit.i.if.end43_crit_edge:   ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end.i:                                         ; preds = %irq_get_trigger_type.exit.i.do.end.i_crit_edge, %irq_get_trigger_type.exit.i.do.end.i_crit_edge169
  %177 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %178, ptr noundef nonnull @.str.59) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cond.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cond.i, label %do.end.i.sw.bb.i_crit_edge, label %do.end.i.if.end43_crit_edge

do.end.i.if.end43_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

do.end.i.sw.bb.i_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %do.end.i.sw.bb.i_crit_edge, %irq_get_trigger_type.exit.i.sw.bb.i_crit_edge
  %179 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regmap_long, align 4
  %call.i145.i = tail call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 529, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145.i)
  %tobool95.not.i = icmp eq i32 %call.i145.i, 0
  br i1 %tobool95.not.i, label %sw.bb.i.if.end43_crit_edge, label %sw.bb.i.err_register_device_crit_edge

sw.bb.i.err_register_device_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

sw.bb.i.if.end43_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.end43:                                         ; preds = %sw.bb.i.if.end43_crit_edge, %do.end.i.if.end43_crit_edge, %irq_get_trigger_type.exit.i.if.end43_crit_edge, %if.end85.i.if.end43_crit_edge
  %181 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %hw2, align 4
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %phy.i, align 4
  %perm_extended_addr.i = getelementptr inbounds %struct.wpan_phy, ptr %184, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr.i, i32 noundef 8) #7
  %arrayidx.i.i = getelementptr i8, ptr %perm_extended_addr.i, i32 7
  %185 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %arrayidx.i.i, align 1
  %187 = and i8 %186, -4
  %188 = or i8 %187, 2
  store i8 %188, ptr %arrayidx.i.i, align 1
  %189 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %hw2, align 4
  %phy2.i = getelementptr inbounds %struct.ieee802154_hw, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %phy2.i, align 4
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %192, i32 0, i32 2
  %193 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 11, ptr %current_channel.i, align 8
  %194 = load ptr, ptr %hw2, align 4
  %phy4.i = getelementptr inbounds %struct.ieee802154_hw, ptr %194, i32 0, i32 4
  %195 = ptrtoint ptr %phy4.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %phy4.i, align 4
  %max_minbe.i = getelementptr inbounds %struct.wpan_phy, ptr %196, i32 0, i32 4, i32 6
  %197 = ptrtoint ptr %max_minbe.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 3, ptr %max_minbe.i, align 1
  %198 = load ptr, ptr %hw2, align 4
  %phy6.i = getelementptr inbounds %struct.ieee802154_hw, ptr %198, i32 0, i32 4
  %199 = ptrtoint ptr %phy6.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %phy6.i, align 4
  %min_maxbe.i = getelementptr inbounds %struct.wpan_phy, ptr %200, i32 0, i32 4, i32 7
  %201 = ptrtoint ptr %min_maxbe.i to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 5, ptr %min_maxbe.i, align 2
  %202 = load ptr, ptr %hw2, align 4
  %phy9.i = getelementptr inbounds %struct.ieee802154_hw, ptr %202, i32 0, i32 4
  %203 = ptrtoint ptr %phy9.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %phy9.i, align 4
  %max_maxbe.i = getelementptr inbounds %struct.wpan_phy, ptr %204, i32 0, i32 4, i32 8
  %205 = ptrtoint ptr %max_maxbe.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 5, ptr %max_maxbe.i, align 1
  %206 = load ptr, ptr %hw2, align 4
  %phy12.i = getelementptr inbounds %struct.ieee802154_hw, ptr %206, i32 0, i32 4
  %207 = ptrtoint ptr %phy12.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %phy12.i, align 4
  %cca.i = getelementptr inbounds %struct.wpan_phy, ptr %208, i32 0, i32 6
  %209 = ptrtoint ptr %cca.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 2, ptr %cca.i, align 8
  %210 = load ptr, ptr %hw2, align 4
  %phy14.i = getelementptr inbounds %struct.ieee802154_hw, ptr %210, i32 0, i32 4
  %211 = ptrtoint ptr %phy14.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %phy14.i, align 4
  %cca_modes.i = getelementptr inbounds %struct.wpan_phy, ptr %212, i32 0, i32 4, i32 1
  %213 = ptrtoint ptr %cca_modes.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 14, ptr %cca_modes.i, align 4
  %214 = load ptr, ptr %hw2, align 4
  %phy17.i = getelementptr inbounds %struct.ieee802154_hw, ptr %214, i32 0, i32 4
  %215 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %phy17.i, align 4
  %cca_opts.i = getelementptr inbounds %struct.wpan_phy, ptr %216, i32 0, i32 4, i32 2
  %217 = ptrtoint ptr %cca_opts.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 1, ptr %cca_opts.i, align 4
  %218 = load ptr, ptr %hw2, align 4
  %phy20.i = getelementptr inbounds %struct.ieee802154_hw, ptr %218, i32 0, i32 4
  %219 = ptrtoint ptr %phy20.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %phy20.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %220, i32 0, i32 8
  %221 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -6900, ptr %cca_ed_level.i, align 8
  %222 = load ptr, ptr %hw2, align 4
  %phy22.i = getelementptr inbounds %struct.ieee802154_hw, ptr %222, i32 0, i32 4
  %223 = ptrtoint ptr %phy22.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %phy22.i, align 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %224, i32 0, i32 4, i32 16
  %225 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr @mrf24j40_ed_levels, ptr %cca_ed_levels.i, align 4
  %226 = load ptr, ptr %hw2, align 4
  %phy25.i = getelementptr inbounds %struct.ieee802154_hw, ptr %226, i32 0, i32 4
  %227 = ptrtoint ptr %phy25.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %phy25.i, align 4
  %cca_ed_levels_size.i = getelementptr inbounds %struct.wpan_phy, ptr %228, i32 0, i32 4, i32 14
  %229 = ptrtoint ptr %cca_ed_levels_size.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 56, ptr %cca_ed_levels_size.i, align 4
  %230 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %3, align 4
  %call.i154 = tail call ptr @spi_get_device_id(ptr noundef %231) #7
  %driver_data.i155 = getelementptr inbounds %struct.spi_device_id, ptr %call.i154, i32 0, i32 1
  %232 = ptrtoint ptr %driver_data.i155 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %driver_data.i155, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %233)
  %switch.i = icmp ult i32 %233, 2
  br i1 %switch.i, label %sw.bb.i156, label %if.end43.mrf24j40_phy_setup.exit_crit_edge

if.end43.mrf24j40_phy_setup.exit_crit_edge:       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrf24j40_phy_setup.exit

sw.bb.i156:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %234 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %hw2, align 4
  %phy28.i = getelementptr inbounds %struct.ieee802154_hw, ptr %235, i32 0, i32 4
  %236 = ptrtoint ptr %phy28.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %phy28.i, align 4
  %tx_powers.i = getelementptr inbounds %struct.wpan_phy, ptr %237, i32 0, i32 4, i32 15
  %238 = ptrtoint ptr %tx_powers.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr @mrf24j40ma_powers, ptr %tx_powers.i, align 4
  %239 = load ptr, ptr %hw2, align 4
  %phy31.i = getelementptr inbounds %struct.ieee802154_hw, ptr %239, i32 0, i32 4
  %240 = ptrtoint ptr %phy31.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %phy31.i, align 4
  %tx_powers_size.i = getelementptr inbounds %struct.wpan_phy, ptr %241, i32 0, i32 4, i32 13
  %242 = ptrtoint ptr %tx_powers_size.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 32, ptr %tx_powers_size.i, align 4
  %243 = load ptr, ptr %hw2, align 4
  %phy34.i = getelementptr inbounds %struct.ieee802154_hw, ptr %243, i32 0, i32 4
  %244 = ptrtoint ptr %phy34.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %phy34.i, align 4
  %flags.i = getelementptr inbounds %struct.wpan_phy, ptr %245, i32 0, i32 1
  %246 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %247, 2
  store i32 %or.i, ptr %flags.i, align 4
  br label %mrf24j40_phy_setup.exit

mrf24j40_phy_setup.exit:                          ; preds = %sw.bb.i156, %if.end43.mrf24j40_phy_setup.exit_crit_edge
  %248 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %irq, align 4
  %call.i157 = tail call ptr @irq_get_irq_data(i32 noundef %249) #7
  %tobool.not.i158 = icmp eq ptr %call.i157, null
  br i1 %tobool.not.i158, label %mrf24j40_phy_setup.exit.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit

mrf24j40_phy_setup.exit.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %mrf24j40_phy_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit:                        ; preds = %mrf24j40_phy_setup.exit
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i157, i32 0, i32 3
  %250 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %common.i.i, align 4
  %252 = ptrtoint ptr %251 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %251, align 4
  %and.i.i = and i32 %253, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool46.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool46.not, label %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit._crit_edge

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %254

irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit.thread:                 ; preds = %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, %mrf24j40_phy_setup.exit.irq_get_trigger_type.exit.thread_crit_edge
  br label %254

254:                                              ; preds = %irq_get_trigger_type.exit.thread, %irq_get_trigger_type.exit._crit_edge
  %255 = phi i32 [ 8, %irq_get_trigger_type.exit.thread ], [ %and.i.i, %irq_get_trigger_type.exit._crit_edge ]
  %256 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %258 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i160 = icmp eq ptr %259, null
  br i1 %tobool.not.i160, label %if.end.i161, label %.dev_name.exit_crit_edge

.dev_name.exit_crit_edge:                         ; preds = %254
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i161:                                      ; preds = %254
  call void @__sanitizer_cov_trace_pc() #9
  %260 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i161, %.dev_name.exit_crit_edge
  %retval.0.i162 = phi ptr [ %261, %if.end.i161 ], [ %259, %.dev_name.exit_crit_edge ]
  %call.i163 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %257, ptr noundef nonnull @mrf24j40_isr, ptr noundef null, i32 noundef %255, ptr noundef %retval.0.i162, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool54.not = icmp eq i32 %call.i163, 0
  br i1 %tobool54.not, label %do.body62, label %do.end58

do.end58:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %262 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %263, ptr noundef nonnull @.str.21) #10
  br label %err_register_device

do.body62:                                        ; preds = %dev_name.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_probe.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_probe, %if.then68)) #7
          to label %do.end73 [label %if.then68], !srcloc !161

if.then68:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %264 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_probe.__UNIQUE_ID_ddebug347, ptr noundef %265, ptr noundef nonnull @.str.23) #7
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %do.body62
  %266 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %hw2, align 4
  %call75 = tail call i32 @ieee802154_register_hw(ptr noundef %267) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %do.end73.cleanup_crit_edge, label %do.end73.err_register_device_crit_edge

do.end73.err_register_device_crit_edge:           ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_register_device

do.end73.cleanup_crit_edge:                       ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_register_device:                              ; preds = %do.end73.err_register_device_crit_edge, %do.end58, %sw.bb.i.err_register_device_crit_edge, %if.end69.i.err_register_device_crit_edge, %if.end64.i.err_register_device_crit_edge, %if.end59.i.err_register_device_crit_edge, %if.end54.i.err_register_device_crit_edge, %if.end49.i.err_register_device_crit_edge, %if.end44.i.err_register_device_crit_edge, %if.end39.i.err_register_device_crit_edge, %if.end34.i.err_register_device_crit_edge, %if.end29.i.err_register_device_crit_edge, %if.end24.i.err_register_device_crit_edge, %if.end19.i.err_register_device_crit_edge, %if.end14.i.err_register_device_crit_edge, %if.end10.i.err_register_device_crit_edge, %if.end5.i.err_register_device_crit_edge, %if.end.i.err_register_device_crit_edge, %if.end39.err_register_device_crit_edge, %do.end37, %if.then26, %if.then13
  %ret.0 = phi i32 [ %118, %if.then13 ], [ %120, %if.then26 ], [ -22, %do.end37 ], [ %call.i163, %do.end58 ], [ %call75, %do.end73.err_register_device_crit_edge ], [ %call.i, %if.end39.err_register_device_crit_edge ], [ %call2.i, %if.end.i.err_register_device_crit_edge ], [ %call7.i, %if.end5.i.err_register_device_crit_edge ], [ %call11.i, %if.end10.i.err_register_device_crit_edge ], [ %call16.i, %if.end14.i.err_register_device_crit_edge ], [ %call21.i, %if.end19.i.err_register_device_crit_edge ], [ %call26.i, %if.end24.i.err_register_device_crit_edge ], [ %call31.i, %if.end29.i.err_register_device_crit_edge ], [ %call36.i, %if.end34.i.err_register_device_crit_edge ], [ %call41.i, %if.end39.i.err_register_device_crit_edge ], [ %call46.i, %if.end44.i.err_register_device_crit_edge ], [ %call51.i, %if.end49.i.err_register_device_crit_edge ], [ %call56.i, %if.end54.i.err_register_device_crit_edge ], [ %call61.i, %if.end59.i.err_register_device_crit_edge ], [ %call66.i, %if.end64.i.err_register_device_crit_edge ], [ %call.i.i, %if.end69.i.err_register_device_crit_edge ], [ %call.i145.i, %sw.bb.i.err_register_device_crit_edge ]
  %268 = ptrtoint ptr %hw2 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %hw2, align 4
  tail call void @ieee802154_free_hw(ptr noundef %269) #7
  br label %cleanup

cleanup:                                          ; preds = %err_register_device, %do.end73.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end73.cleanup_crit_edge ], [ %ret.0, %err_register_device ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_remove.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_remove.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.62) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %5) #7
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #7
  %irq_buf = getelementptr inbounds %struct.mrf24j40, ptr %data, i32 0, i32 25
  %0 = ptrtoint ptr %irq_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 98, ptr %irq_buf, align 4
  %arrayidx2 = getelementptr %struct.mrf24j40, ptr %data, i32 0, i32 25, i32 1
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %arrayidx2, align 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %irq_msg = getelementptr inbounds %struct.mrf24j40, ptr %data, i32 0, i32 24
  %call = tail call i32 @spi_async(ptr noundef %3, ptr noundef %irq_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @enable_irq(i32 noundef %irq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_start.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_start, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_start.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.25) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_short, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 50, i32 noundef 25, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_stop.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_stop.__UNIQUE_ID_ddebug341, ptr noundef %3, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_short, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 50, i32 noundef 9, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_tx(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_tx.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_tx, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_tx.__UNIQUE_ID_ddebug339, ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %skb, ptr %tx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len3 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %10)
  %cmp.i = icmp ugt i32 %10, 126
  br i1 %cmp.i, label %do.end.i, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.30) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %do.end.if.end.i_crit_edge
  %length.addr.0.i = phi i32 [ 126, %do.end.i ], [ %10, %do.end.if.end.i_crit_edge ]
  %tx_hdr_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %tx_hdr_buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -128, ptr %tx_hdr_buf.i, align 4
  %arrayidx9.i = getelementptr %struct.mrf24j40, ptr %1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %arrayidx9.i, align 1
  %tx_len_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %tx_len_buf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %tx_len_buf.i, align 4
  %conv11.i = trunc i32 %length.addr.0.i to i8
  %arrayidx13.i = getelementptr %struct.mrf24j40, ptr %1, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  %tx_buf_trx.i = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %tx_buf_trx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %tx_buf_trx.i, align 4
  %len.i = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 9, i32 2
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %length.addr.0.i, ptr %len.i, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @spi_async(ptr noundef %20, ptr noundef %tx_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i.write_tx_buf.exit_crit_edge, label %do.end19.i

if.end.i.write_tx_buf.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %write_tx_buf.exit

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.33) #10
  br label %write_tx_buf.exit

write_tx_buf.exit:                                ; preds = %do.end19.i, %if.end.i.write_tx_buf.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_ed(ptr nocapture noundef readnone %hw, ptr nocapture noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_set_channel.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_set_channel, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_set_channel.__UNIQUE_ID_ddebug342, ptr noundef %3, ptr noundef nonnull @.str.38, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp.not = icmp eq i8 %page, 0
  br i1 %cmp.not, label %do.end.if.end26_crit_edge, label %do.end20, !prof !162

do.end.if.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end20:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 640, i32 noundef 9, ptr noundef null) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end20, %do.end.if.end26_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %channel)
  %cmp36 = icmp ult i8 %channel, 11
  br i1 %cmp36, label %if.end26.if.end92.sink.split_crit_edge, label %if.end59, !prof !163

if.end26.if.end92.sink.split_crit_edge:           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.sink.split

if.end59:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %channel)
  %cmp69 = icmp ugt i8 %channel, 26
  br i1 %cmp69, label %if.end59.if.end92.sink.split_crit_edge, label %if.end59.if.end92_crit_edge, !prof !163

if.end59.if.end92_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.end59.if.end92.sink.split_crit_edge:           ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92.sink.split

if.end92.sink.split:                              ; preds = %if.end59.if.end92.sink.split_crit_edge, %if.end26.if.end92.sink.split_crit_edge
  %.sink = phi i32 [ 641, %if.end26.if.end92.sink.split_crit_edge ], [ 642, %if.end59.if.end92.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #7
  br label %if.end92

if.end92:                                         ; preds = %if.end92.sink.split, %if.end59.if.end92_crit_edge
  %sub = shl i8 %channel, 4
  %or = add i8 %sub, 83
  %regmap_long = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_long, align 4
  %conv102 = zext i8 %or to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 512, i32 noundef 240, i32 noundef %conv102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool104.not = icmp eq i32 %call.i, 0
  br i1 %tobool104.not, label %if.end106, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %if.end92
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_short, align 4
  %call.i132 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 54, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool108.not = icmp eq i32 %call.i132, 0
  br i1 %tobool108.not, label %if.end110, label %if.end106.cleanup_crit_edge

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end110:                                        ; preds = %if.end106
  %8 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_short, align 4
  %call.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 54, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i133)
  %tobool113.not = icmp eq i32 %call.i133, 0
  br i1 %tobool113.not, label %if.then114, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 41231616) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then114, %if.end110.cleanup_crit_edge, %if.end106.cleanup_crit_edge, %if.end92.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end92.cleanup_crit_edge ], [ %call.i132, %if.end106.cleanup_crit_edge ], [ 0, %if.then114 ], [ %call.i133, %if.end110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_filter(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_filter.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_filter, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_filter.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.40) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end36_crit_edge, label %if.then4

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %4 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %short_addr, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %7 = lshr i16 %6, 8
  %conv6 = zext i16 %7 to i32
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_short, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 4, i32 noundef %conv6) #7
  %10 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_short, align 4
  %12 = and i16 %6, 255
  %conv14 = zext i16 %12 to i32
  %call15 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 3, i32 noundef %conv14) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_filter.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_filter, %if.then28)) #7
          to label %if.end36 [label %if.then28], !srcloc !161

if.then28:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %short_addr, align 2
  %conv32 = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_filter.__UNIQUE_ID_ddebug344, ptr noundef %14, ptr noundef nonnull @.str.41, i32 noundef %conv32) #7
  br label %if.end36

if.end36:                                         ; preds = %if.then28, %if.then4, %do.end.if.end36_crit_edge
  %and37 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end46_crit_edge, label %if.then39

if.end36.if.end46_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %17 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %ieee_addr, align 8
  %addr.sroa.0.0.extract.shift = lshr i64 %18, 56
  %addr.sroa.0.0.extract.trunc = trunc i64 %addr.sroa.0.0.extract.shift to i32
  %addr.sroa.5.0.extract.shift = lshr i64 %18, 48
  %addr.sroa.5.0.extract.trunc = trunc i64 %addr.sroa.5.0.extract.shift to i32
  %addr.sroa.7.0.extract.shift = lshr i64 %18, 40
  %addr.sroa.7.0.extract.trunc = trunc i64 %addr.sroa.7.0.extract.shift to i32
  %addr.sroa.9.0.extract.shift = lshr i64 %18, 32
  %addr.sroa.9.0.extract.trunc = trunc i64 %addr.sroa.9.0.extract.shift to i32
  %19 = trunc i64 %18 to i32
  %20 = lshr i32 %19, 24
  %21 = trunc i64 %18 to i32
  %22 = lshr i32 %21, 16
  %23 = trunc i64 %18 to i32
  %24 = lshr i32 %23, 8
  %addr.sroa.17.0.extract.trunc = trunc i64 %18 to i32
  %regmap_short42 = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap_short42, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 5, i32 noundef %addr.sroa.0.0.extract.trunc) #7
  %27 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap_short42, align 4
  %conv44.1 = and i32 %addr.sroa.5.0.extract.trunc, 255
  %call45.1 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 6, i32 noundef %conv44.1) #7
  %29 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap_short42, align 4
  %conv44.2 = and i32 %addr.sroa.7.0.extract.trunc, 255
  %call45.2 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 7, i32 noundef %conv44.2) #7
  %31 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_short42, align 4
  %conv44.3 = and i32 %addr.sroa.9.0.extract.trunc, 255
  %call45.3 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 8, i32 noundef %conv44.3) #7
  %33 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap_short42, align 4
  %call45.4 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 9, i32 noundef %20) #7
  %35 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap_short42, align 4
  %conv44.5 = and i32 %22, 255
  %call45.5 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 10, i32 noundef %conv44.5) #7
  %37 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap_short42, align 4
  %conv44.6 = and i32 %24, 255
  %call45.6 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 11, i32 noundef %conv44.6) #7
  %39 = ptrtoint ptr %regmap_short42 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap_short42, align 4
  %conv44.7 = and i32 %addr.sroa.17.0.extract.trunc, 255
  %call45.7 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 12, i32 noundef %conv44.7) #7
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end36.if.end46_crit_edge
  %and47 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.end46.if.end84_crit_edge, label %if.then49

if.end46.if.end84_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %filt, align 8
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %44 = lshr i16 %43, 8
  %conv53 = zext i16 %44 to i32
  %regmap_short58 = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %regmap_short58 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap_short58, align 4
  %call60 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 2, i32 noundef %conv53) #7
  %47 = ptrtoint ptr %regmap_short58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap_short58, align 4
  %49 = and i16 %43, 255
  %conv62 = zext i16 %49 to i32
  %call63 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 1, i32 noundef %conv62) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_filter.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_filter, %if.then76)) #7
          to label %if.end84 [label %if.then76], !srcloc !161

if.then76:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 4
  %52 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %filt, align 8
  %conv80 = zext i16 %53 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_filter.__UNIQUE_ID_ddebug345, ptr noundef %51, ptr noundef nonnull @.str.42, i32 noundef %conv80) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then76, %if.then49, %if.end46.if.end84_crit_edge
  %and85 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.end84.cleanup120_crit_edge, label %if.then87

if.end84.cleanup120_crit_edge:                    ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

if.then87:                                        ; preds = %if.end84
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %54 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pan_coord, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool88.not = icmp eq i8 %55, 0
  %. = select i1 %tobool88.not, i32 0, i32 8
  %regmap_short91 = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %56 = ptrtoint ptr %regmap_short91 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap_short91, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 0, i32 noundef 8, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool94.not = icmp eq i32 %call.i, 0
  br i1 %tobool94.not, label %do.body97, label %if.then87.cleanup120_crit_edge

if.then87.cleanup120_crit_edge:                   ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup120

do.body97:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mrf24j40_filter.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mrf24j40_filter, %if.then109)) #7
          to label %cleanup120 [label %if.then109], !srcloc !161

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 4
  %60 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pan_coord, align 8, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool113.not = icmp eq i8 %61, 0
  %cond = select i1 %tobool113.not, ptr @.str.45, ptr @.str.44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mrf24j40_filter.__UNIQUE_ID_ddebug346, ptr noundef %59, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond) #7
  br label %cleanup120

cleanup120:                                       ; preds = %if.then109, %do.body97, %if.then87.cleanup120_crit_edge, %if.end84.cleanup120_crit_edge
  %retval.1 = phi i32 [ 0, %if.then109 ], [ 0, %if.end84.cleanup120_crit_edge ], [ %call.i, %if.then87.cleanup120_crit_edge ], [ 0, %do.body97 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = add i32 %mbm, 999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %2)
  %3 = icmp ult i32 %2, 1000
  br i1 %3, label %entry.if.end21_crit_edge, label %if.else

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.else:                                          ; preds = %entry
  %4 = add i32 %mbm, 1999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %5 = icmp ult i32 %4, 1000
  br i1 %5, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nsw i32 %mbm, 1000
  br label %if.end21

if.else6:                                         ; preds = %if.else
  %6 = add i32 %mbm, 2999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %6)
  %7 = icmp ult i32 %6, 1000
  br i1 %7, label %if.then10, label %if.else12

if.then10:                                        ; preds = %if.else6
  call void @__sanitizer_cov_trace_pc() #9
  %add11 = add nsw i32 %mbm, 2000
  br label %if.end21

if.else12:                                        ; preds = %if.else6
  %8 = add i32 %mbm, 3999
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %8)
  %9 = icmp ult i32 %8, 1000
  br i1 %9, label %if.then16, label %if.else12.cleanup_crit_edge

if.else12.cleanup_crit_edge:                      ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then16:                                        ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #9
  %add17 = add nsw i32 %mbm, 3000
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.then10, %if.then5, %entry.if.end21_crit_edge
  %small_scale.0 = phi i32 [ %add, %if.then5 ], [ %add11, %if.then10 ], [ %add17, %if.then16 ], [ %mbm, %entry.if.end21_crit_edge ]
  %val.0 = phi i8 [ 64, %if.then5 ], [ -128, %if.then10 ], [ -64, %if.then16 ], [ 0, %entry.if.end21_crit_edge ]
  %10 = zext i32 %small_scale.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %small_scale.0, label %if.end21.cleanup_crit_edge [
    i32 0, label %if.end21.sw.epilog_crit_edge
    i32 -50, label %sw.bb23
    i32 -120, label %sw.bb27
    i32 -190, label %sw.bb31
    i32 -280, label %sw.bb35
    i32 -370, label %sw.bb39
    i32 -490, label %sw.bb43
    i32 -630, label %sw.bb47
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb23:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i8 %val.0, 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i8 %val.0, 16
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i8 %val.0, 24
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %val.0, 32
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i8 %val.0, 40
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i8 %val.0, 48
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %17 = or i8 %val.0, 56
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47, %sw.bb43, %sw.bb39, %sw.bb35, %sw.bb31, %sw.bb27, %sw.bb23, %if.end21.sw.epilog_crit_edge
  %val.1 = phi i8 [ %17, %sw.bb47 ], [ %16, %sw.bb43 ], [ %15, %sw.bb39 ], [ %14, %sw.bb35 ], [ %13, %sw.bb31 ], [ %12, %sw.bb27 ], [ %11, %sw.bb23 ], [ %val.0, %if.end21.sw.epilog_crit_edge ]
  %regmap_long = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %regmap_long to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap_long, align 4
  %conv51 = zext i8 %val.1 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 515, i32 noundef 248, i32 noundef %conv51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end21.cleanup_crit_edge, %if.else12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %if.else12.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_set_cca_mode(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cca) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog5_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog5_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog5

sw.bb2:                                           ; preds = %entry
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cond = icmp eq i32 %6, 0
  br i1 %cond, label %sw.bb2.sw.epilog5_crit_edge, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2.sw.epilog5_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog5

sw.epilog5:                                       ; preds = %sw.bb2.sw.epilog5_crit_edge, %sw.bb1, %entry.sw.epilog5_crit_edge
  %val.0 = phi i32 [ 64, %sw.bb1 ], [ 128, %entry.sw.epilog5_crit_edge ], [ 192, %sw.bb2.sw.epilog5_crit_edge ]
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_short, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 58, i32 noundef 192, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog5, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog5 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [56 x [2 x i32]], ptr @mrf24j40_ed_levels_map, i32 0, i32 %i.010
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %mbm)
  %cmp2 = icmp eq i32 %3, %mbm
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_short, align 4
  %arrayidx4 = getelementptr [56 x [2 x i32]], ptr @mrf24j40_ed_levels_map, i32 0, i32 %i.010, i32 1
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %call = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 63, i32 noundef %7) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 56
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_csma_params(ptr nocapture noundef readonly %hw, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %shl = shl i8 %min_be, 3
  %or8 = or i8 %shl, %retries
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_short, align 4
  %conv6 = zext i8 %or8 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 17, i32 noundef 31, i32 noundef %conv6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_short, align 4
  %. = select i1 %on, i32 35, i32 0
  %call.i4 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 35, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @write_tx_buf_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 10
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.not.i = icmp eq i16 %3, -1
  br i1 %cmp.i.not.i, label %entry.do.end.i_crit_edge, label %lor.rhs.i

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.rhs.i:                                        ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i, align 8
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.ptr.sub.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i, 2
  br i1 %cmp.i, label %lor.rhs.i.do.end.i_crit_edge, label %if.end24.i, !prof !163

lor.rhs.i.do.end.i_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.rhs.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.48, i32 noundef 246, i32 noundef 9, ptr noundef null) #7
  br label %ieee802154_get_fc_from_skb.exit

if.end24.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %fc.0.copyload.i = load i16, ptr %add.ptr.i.i, align 1
  br label %ieee802154_get_fc_from_skb.exit

ieee802154_get_fc_from_skb.exit:                  ; preds = %if.end24.i, %do.end.i
  %retval.0.i = phi i16 [ 0, %do.end.i ], [ %fc.0.copyload.i, %if.end24.i ]
  %9 = and i16 %retval.0.i, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  %spec.select = select i1 %tobool.i.not, i8 1, i8 3
  %10 = lshr i16 %retval.0.i, 11
  %11 = trunc i16 %10 to i8
  %12 = and i8 %11, 4
  %13 = or i8 %12, %spec.select
  %tx_post_msg = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 11
  %complete = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 11, i32 3
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %complete, align 4
  %tx_post_buf = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 12
  %15 = ptrtoint ptr %tx_post_buf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 55, ptr %tx_post_buf, align 4
  %arrayidx10 = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 12, i32 1
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %13, ptr %arrayidx10, align 1
  %17 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %context, align 4
  %call12 = tail call i32 @spi_async(ptr noundef %18, ptr noundef %tx_post_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool.not = icmp eq i32 %call12, 0
  br i1 %tobool.not, label %ieee802154_get_fc_from_skb.exit.if.end15_crit_edge, label %do.end

ieee802154_get_fc_from_skb.exit.if.end15_crit_edge: ; preds = %ieee802154_get_fc_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %ieee802154_get_fc_from_skb.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.46) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %ieee802154_get_fc_from_skb.exit.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_handle_rx_read_buf_complete(ptr noundef %context) #2 align 64 {
entry:
  %rx_local_buf = alloca [144 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %rx_local_buf)
  %rx_fifo_buf = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 22
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -113, i8 %1)
  %2 = icmp ugt i8 %1, -113
  %3 = sub nsw i32 144, %conv
  %4 = select i1 %2, i32 0, i32 %3
  %5 = getelementptr i8, ptr %rx_local_buf, i32 %conv
  %6 = call ptr @memset(ptr %5, i32 255, i32 %4)
  %7 = call ptr @memcpy(ptr %rx_local_buf, ptr %rx_fifo_buf, i32 %conv)
  %rx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14
  %complete.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14, i32 3
  %8 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 15
  %9 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 115, ptr %rx_buf.i, align 4
  %arrayidx2.i = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx2.i, align 1
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %12, ptr noundef %rx_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mrf24j40_handle_rx_read_buf_unlock.exit_crit_edge, label %do.end.i

entry.mrf24j40_handle_rx_read_buf_unlock.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mrf24j40_handle_rx_read_buf_unlock.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51) #10
  br label %mrf24j40_handle_rx_read_buf_unlock.exit

mrf24j40_handle_rx_read_buf_unlock.exit:          ; preds = %do.end.i, %entry.mrf24j40_handle_rx_read_buf_unlock.exit_crit_edge
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 127, i32 noundef 2592) #7
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %mrf24j40_handle_rx_read_buf_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end:                                           ; preds = %mrf24j40_handle_rx_read_buf_unlock.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i15 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #7
  %17 = call ptr @memcpy(ptr %call.i15, ptr %rx_local_buf, i32 %conv)
  %hw = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 1
  %18 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %19, ptr noundef nonnull %call.i.i, i8 noundef zeroext 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %rx_local_buf)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_intstat_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 25, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #7
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_short = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_short to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_short, align 4
  %call = tail call i32 @regmap_write_async(ptr noundef %7, i32 noundef 44, i32 noundef 128) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 1
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  %tx_skb = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 10
  %10 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_skb, align 4
  tail call void @ieee802154_xmit_complete(ptr noundef %9, ptr noundef %11, i1 noundef zeroext false) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %and7 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %if.then9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %rx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14
  %complete.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14, i32 3
  %12 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mrf24j40_handle_rx_read_len, ptr %complete.i, align 4
  %len.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 16, i32 2
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %len.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 15
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 115, ptr %rx_buf.i, align 4
  %arrayidx2.i = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %arrayidx2.i, align 1
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %17, ptr noundef %rx_msg.i) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write_async(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_handle_rx_read_len(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_msg = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14
  %complete = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @mrf24j40_handle_rx_read_buf, ptr %complete, align 4
  %len = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 16, i32 2
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %len, align 4
  %rx_buf = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 15
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -32, ptr %rx_buf, align 4
  %arrayidx6 = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx6, align 1
  %4 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context, align 4
  %call = tail call i32 @spi_async(ptr noundef %5, ptr noundef %rx_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.53) #10
  %8 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %complete, align 4
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 115, ptr %rx_buf, align 4
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx6, align 1
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %12, ptr noundef %rx_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.if.end_crit_edge, label %do.end.i

do.end.if.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.51) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i, %do.end.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mrf24j40_handle_rx_read_buf(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %1)
  %cmp.i = icmp eq i8 %1, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %2 = icmp sgt i8 %1, 8
  %spec.select.i = or i1 %cmp.i, %2
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 127, ptr %arrayidx, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rx_addr_buf = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 18
  %4 = ptrtoint ptr %rx_addr_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -32, ptr %rx_addr_buf, align 4
  %arrayidx9 = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 18, i32 1
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 32, ptr %arrayidx9, align 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 2
  %conv12 = zext i8 %7 to i32
  %len = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 23, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv12, ptr %len, align 4
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %rx_buf_msg = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 17
  %call13 = tail call i32 @spi_async(ptr noundef %10, ptr noundef %rx_buf_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %do.end

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.end
  %11 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.55) #10
  %rx_msg.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14
  %complete.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 14, i32 3
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %complete.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.mrf24j40, ptr %context, i32 0, i32 15
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 115, ptr %rx_buf.i, align 4
  %arrayidx2.i = getelementptr %struct.mrf24j40, ptr %context, i32 0, i32 15, i32 1
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx2.i, align 1
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  %call.i = tail call i32 @spi_async(ptr noundef %17, ptr noundef %rx_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.end.if.end16_crit_edge, label %do.end.i

do.end.if.end16_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.51) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end.i, %do.end.if.end16_crit_edge, %if.end.if.end16_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_short_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 7, label %entry.return_crit_edge7
    i32 8, label %entry.return_crit_edge8
    i32 9, label %entry.return_crit_edge9
    i32 10, label %entry.return_crit_edge10
    i32 11, label %entry.return_crit_edge11
    i32 12, label %entry.return_crit_edge12
    i32 13, label %entry.return_crit_edge13
    i32 16, label %entry.return_crit_edge14
    i32 17, label %entry.return_crit_edge15
    i32 18, label %entry.return_crit_edge16
    i32 19, label %entry.return_crit_edge17
    i32 20, label %entry.return_crit_edge18
    i32 21, label %entry.return_crit_edge19
    i32 22, label %entry.return_crit_edge20
    i32 23, label %entry.return_crit_edge21
    i32 24, label %entry.return_crit_edge22
    i32 26, label %entry.return_crit_edge23
    i32 27, label %entry.return_crit_edge24
    i32 28, label %entry.return_crit_edge25
    i32 29, label %entry.return_crit_edge26
    i32 30, label %entry.return_crit_edge27
    i32 31, label %entry.return_crit_edge28
    i32 32, label %entry.return_crit_edge29
    i32 33, label %entry.return_crit_edge30
    i32 34, label %entry.return_crit_edge31
    i32 35, label %entry.return_crit_edge32
    i32 37, label %entry.return_crit_edge33
    i32 38, label %entry.return_crit_edge34
    i32 39, label %entry.return_crit_edge35
    i32 40, label %entry.return_crit_edge36
    i32 41, label %entry.return_crit_edge37
    i32 42, label %entry.return_crit_edge38
    i32 44, label %entry.return_crit_edge39
    i32 45, label %entry.return_crit_edge40
    i32 46, label %entry.return_crit_edge41
    i32 48, label %entry.return_crit_edge42
    i32 50, label %entry.return_crit_edge43
    i32 52, label %entry.return_crit_edge44
    i32 51, label %entry.return_crit_edge45
    i32 54, label %entry.return_crit_edge46
    i32 55, label %entry.return_crit_edge47
    i32 53, label %entry.return_crit_edge48
    i32 56, label %entry.return_crit_edge49
    i32 57, label %entry.return_crit_edge50
    i32 58, label %entry.return_crit_edge51
    i32 59, label %entry.return_crit_edge52
    i32 60, label %entry.return_crit_edge53
    i32 62, label %entry.return_crit_edge54
    i32 63, label %entry.return_crit_edge55
  ]

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_short_reg_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mrf24j40_short_reg_writeable(ptr noundef %dev, i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %reg)
  %switch.selectcmp.case1 = icmp eq i32 %reg, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %reg)
  %switch.selectcmp.case2 = icmp eq i32 %reg, 49
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %switch.selectcmp, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_short_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %reg, label %sw.default [
    i32 36, label %entry.return_crit_edge
    i32 49, label %entry.return_crit_edge1
    i32 13, label %entry.return_crit_edge2
    i32 27, label %entry.return_crit_edge3
    i32 42, label %entry.return_crit_edge4
    i32 54, label %entry.return_crit_edge5
    i32 26, label %entry.return_crit_edge6
    i32 28, label %entry.return_crit_edge7
    i32 29, label %entry.return_crit_edge8
    i32 37, label %entry.return_crit_edge9
    i32 44, label %entry.return_crit_edge10
    i32 48, label %entry.return_crit_edge11
    i32 53, label %entry.return_crit_edge12
    i32 55, label %entry.return_crit_edge13
    i32 62, label %entry.return_crit_edge14
    i32 57, label %entry.return_crit_edge15
  ]

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_short_reg_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 49, i32 %reg)
  %cond = icmp eq i32 %reg, 49
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_long_regmap_write(ptr noundef %context, ptr nocapture noundef readonly %data, i32 noundef %count) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !165
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !165
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !165
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp = icmp ugt i32 %count, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = call ptr @memcpy(ptr %buf, ptr %data, i32 %count)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  %8 = or i8 %7, 16
  store i8 %8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %9 = getelementptr inbounds i8, ptr %t.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %count, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %context, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mrf24j40_long_regmap_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_write_then_read(ptr noundef %context, ptr noundef %reg, i32 noundef %reg_size, ptr noundef %val, i32 noundef %val_size) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_long_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %reg, label %sw.default [
    i32 512, label %entry.return_crit_edge
    i32 513, label %entry.return_crit_edge1
    i32 514, label %entry.return_crit_edge2
    i32 515, label %entry.return_crit_edge3
    i32 517, label %entry.return_crit_edge4
    i32 518, label %entry.return_crit_edge5
    i32 519, label %entry.return_crit_edge6
    i32 520, label %entry.return_crit_edge7
    i32 523, label %entry.return_crit_edge8
    i32 529, label %entry.return_crit_edge9
    i32 544, label %entry.return_crit_edge10
    i32 546, label %entry.return_crit_edge11
    i32 547, label %entry.return_crit_edge12
    i32 548, label %entry.return_crit_edge13
    i32 549, label %entry.return_crit_edge14
    i32 550, label %entry.return_crit_edge15
    i32 551, label %entry.return_crit_edge16
    i32 552, label %entry.return_crit_edge17
    i32 553, label %entry.return_crit_edge18
    i32 559, label %entry.return_crit_edge19
    i32 560, label %entry.return_crit_edge20
    i32 561, label %entry.return_crit_edge21
    i32 562, label %entry.return_crit_edge22
    i32 563, label %entry.return_crit_edge23
    i32 564, label %entry.return_crit_edge24
    i32 565, label %entry.return_crit_edge25
    i32 566, label %entry.return_crit_edge26
    i32 567, label %entry.return_crit_edge27
    i32 568, label %entry.return_crit_edge28
    i32 569, label %entry.return_crit_edge29
    i32 576, label %entry.return_crit_edge30
    i32 577, label %entry.return_crit_edge31
    i32 578, label %entry.return_crit_edge32
    i32 579, label %entry.return_crit_edge33
    i32 580, label %entry.return_crit_edge34
    i32 581, label %entry.return_crit_edge35
    i32 582, label %entry.return_crit_edge36
    i32 583, label %entry.return_crit_edge37
    i32 584, label %entry.return_crit_edge38
    i32 585, label %entry.return_crit_edge39
    i32 586, label %entry.return_crit_edge40
    i32 587, label %entry.return_crit_edge41
    i32 588, label %entry.return_crit_edge42
  ]

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_long_reg_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mrf24j40_long_reg_writeable(ptr noundef %dev, i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %reg, -521
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.cast = trunc i32 %switch.tableidx to i8
  %switch.downshift = lshr i8 -61, %switch.cast
  %1 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.masked = icmp ne i8 %1, 0
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ %switch.masked, %switch.lookup ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mrf24j40_long_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %reg, label %sw.default [
    i32 521, label %entry.return_crit_edge
    i32 522, label %entry.return_crit_edge1
    i32 523, label %entry.return_crit_edge2
    i32 527, label %entry.return_crit_edge3
    i32 528, label %entry.return_crit_edge4
    i32 553, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !146, !148, !149, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_mrf24j40__349_1399_mrf24j40_driver_init6, !1, !"__initcall__kmod_mrf24j40__349_1399_mrf24j40_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1399, i32 1}
!2 = !{ptr @__exitcall_mrf24j40_driver_exit, !1, !"__exitcall_mrf24j40_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file350, !4, !"__UNIQUE_ID_file350", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1401, i32 1}
!5 = !{ptr @__UNIQUE_ID_license351, !4, !"__UNIQUE_ID_license351", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author352, !7, !"__UNIQUE_ID_author352", i1 false, i1 false}
!7 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1402, i32 1}
!8 = !{ptr @__UNIQUE_ID_description353, !9, !"__UNIQUE_ID_description353", i1 false, i1 false}
!9 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1403, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1392, i32 11}
!12 = !{ptr @mrf24j40_driver, !13, !"mrf24j40_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1389, i32 26}
!14 = !{ptr @mrf24j40_ids, !15, !"mrf24j40_ids", i1 false, i1 false}
!15 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1381, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1277, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mrf24j40_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mrf24j40_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @mrf24j40_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1302, i32 25}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1306, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mrf24j40_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mrf24j40_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mrf24j40_probe._key.11, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1311, i32 24}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1316, i32 3}
!37 = !{ptr @mrf24j40_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mrf24j40_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1322, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @mrf24j40_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @mrf24j40_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1342, i32 3}
!46 = !{ptr @mrf24j40_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mrf24j40_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1346, i32 2}
!50 = !{ptr @mrf24j40_probe.__UNIQUE_ID_ddebug347, !49, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!51 = !{ptr @mrf24j40_ops, !52, !"mrf24j40_ops", i1 false, i1 false}
!52 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1005, i32 36}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 614, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @mrf24j40_start.__UNIQUE_ID_ddebug340, !54, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 625, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mrf24j40_stop.__UNIQUE_ID_ddebug341, !58, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 596, i32 2}
!63 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mrf24j40_tx.__UNIQUE_ID_ddebug339, !62, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 573, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @write_tx_buf._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @write_tx_buf._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 587, i32 3}
!72 = !{ptr @write_tx_buf._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @write_tx_buf._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 605, i32 2}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @mrf24j40_ed._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @mrf24j40_ed._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 638, i32 2}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @mrf24j40_set_channel.__UNIQUE_ID_ddebug342, !80, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 670, i32 2}
!85 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mrf24j40_filter.__UNIQUE_ID_ddebug343, !84, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 681, i32 3}
!89 = !{ptr @mrf24j40_filter.__UNIQUE_ID_ddebug344, !88, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 711, i32 3}
!92 = !{ptr @mrf24j40_filter.__UNIQUE_ID_ddebug345, !91, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 732, i32 3}
!95 = !{ptr @mrf24j40_filter.__UNIQUE_ID_ddebug346, !94, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!96 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mrf24j40_ed_levels_map, !99, !"mrf24j40_ed_levels_map", i1 false, i1 false}
!99 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 893, i32 18}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 559, i32 3}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @write_tx_buf_complete._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @write_tx_buf_complete._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../include/net/mac802154.h", i32 244, i32 6}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 764, i32 3}
!109 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @mrf24j40_handle_rx_read_buf_complete._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @mrf24j40_handle_rx_read_buf_complete._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 749, i32 3}
!114 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @mrf24j40_handle_rx_read_buf_unlock._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @mrf24j40_handle_rx_read_buf_unlock._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 815, i32 3}
!119 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @mrf24j40_handle_rx_read_len._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @mrf24j40_handle_rx_read_len._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 795, i32 3}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @mrf24j40_handle_rx_read_buf._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @mrf24j40_handle_rx_read_buf._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 385, i32 10}
!129 = !{ptr @mrf24j40_short_regmap, !130, !"mrf24j40_short_regmap", i1 false, i1 false}
!130 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 384, i32 35}
!131 = !{ptr @mrf24j40_long_regmap_bus, !132, !"mrf24j40_long_regmap_bus", i1 false, i1 false}
!132 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 533, i32 32}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 492, i32 10}
!135 = !{ptr @mrf24j40_long_regmap, !136, !"mrf24j40_long_regmap", i1 false, i1 false}
!136 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 491, i32 35}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1158, i32 3}
!139 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @mrf24j40_hw_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @mrf24j40_hw_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @mrf24j40_ed_levels, !143, !"mrf24j40_ed_levels", i1 false, i1 false}
!143 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 883, i32 18}
!144 = !{ptr @mrf24j40ma_powers, !145, !"mrf24j40ma_powers", i1 false, i1 false}
!145 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 924, i32 18}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1363, i32 2}
!148 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @mrf24j40_remove.__UNIQUE_ID_ddebug348, !147, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!150 = !{ptr @mrf24j40_of_match, !151, !"mrf24j40_of_match", i1 false, i1 false}
!151 = !{!"../drivers/net/ieee802154/mrf24j40.c", i32 1373, i32 34}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148367806, i64 2148367811, i64 2148367824, i64 2148367868, i64 2148367902, i64 2148367923}
!162 = !{!"branch_weights", i32 2000, i32 1}
!163 = !{!"branch_weights", i32 1, i32 2000}
!164 = !{i8 0, i8 2}
!165 = !{!"auto-init"}
