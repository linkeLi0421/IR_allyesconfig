; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/mcr20a.c_pt.bc'
source_filename = "../drivers/net/ieee802154/mcr20a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.mcr20a_local = type { ptr, ptr, ptr, ptr, ptr, i8, %struct.spi_message, [1 x i8], %struct.spi_transfer, [1 x i8], %struct.spi_transfer, %struct.spi_transfer, ptr, %struct.spi_message, [1 x i8], [2 x i8], %struct.spi_transfer, %struct.spi_transfer, %struct.spi_message, [1 x i8], %struct.spi_transfer, [1 x i8], %struct.spi_transfer, [127 x i8], %struct.spi_transfer, %struct.spi_message, [1 x i8], [2 x i8], %struct.spi_transfer, %struct.spi_transfer }
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

@__initcall__kmod_mcr20a__376_1372_mcr20a_driver_init6 = internal global ptr @mcr20a_driver_init, section ".initcall6.init", align 4
@mcr20a_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @mcr20a_device_id, ptr @mcr20a_probe, ptr @mcr20a_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcr20a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_mcr20a_driver_exit = internal global ptr @mcr20a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description377 = internal constant [45 x i8] c"mcr20a.description=MCR20A Transceiver Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file378 = internal constant [42 x i8] c"mcr20a.file=drivers/net/ieee802154/mcr20a\00", section ".modinfo", align 1
@__UNIQUE_ID_license379 = internal constant [22 x i8] c"mcr20a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author380 = internal constant [44 x i8] c"mcr20a.author=Xue Liu <liuxuenetmail@gmail>\00", section ".modinfo", align 1
@mcr20a_device_id = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"mcr20a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcr20a\00", [25 x i8] zeroinitializer }, align 32
@mcr20a_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,mcr20a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mcr20a_probe.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcr20a_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/net/ieee802154/mcr20a.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no IRQ specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr = internal global ptr @mcr20a_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rst_b\00", [26 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 1244, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get 'rst_b' gpio: %d\00", [33 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.10 = internal global ptr @mcr20a_probe._entry.8, section ".printk_index", align 4
@mcr20a_hw_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @mcr20a_start, ptr @mcr20a_stop, ptr null, ptr @mcr20a_xmit, ptr @mcr20a_ed, ptr @mcr20a_set_channel, ptr @mcr20a_set_hw_addr_filt, ptr @mcr20a_set_txpower, ptr null, ptr @mcr20a_set_cca_mode, ptr @mcr20a_set_cca_ed_level, ptr null, ptr null, ptr @mcr20a_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1258, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ieee802154_alloc_hw failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\012\00", [29 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.14 = internal global ptr @mcr20a_probe._entry.11, section ".printk_index", align 4
@mcr20a_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcr20a_dar_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.70, i32 8, i32 0, i32 0, i32 8, ptr @mcr20a_dar_writeable, ptr @mcr20a_dar_readable, ptr @mcr20a_dar_volatile, ptr @mcr20a_dar_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 128, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mcr20a:1284:(&mcr20a_dar_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1288, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate dar map: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.18 = internal global ptr @mcr20a_probe._entry.16, section ".printk_index", align 4
@mcr20a_probe._key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mcr20a_iar_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.71, i32 16, i32 0, i32 0, i32 8, ptr @mcr20a_iar_writeable, ptr @mcr20a_iar_readable, ptr @mcr20a_iar_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 190, i32 62, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mcr20a:1292:(&mcr20a_iar_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate iar map: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.23 = internal global ptr @mcr20a_probe._entry.21, section ".printk_index", align 4
@mcr20a_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1305, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcr20a_phy_init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.26 = internal global ptr @mcr20a_probe._entry.24, section ".printk_index", align 4
@mcr20a_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 1316, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not request_irq for mcr20a\0A\00", [62 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.29 = internal global ptr @mcr20a_probe._entry.27, section ".printk_index", align 4
@mcr20a_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.1, ptr @.str.2, i32 1326, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ieee802154_register_hw failed\0A\00", [33 x i8] zeroinitializer }, align 32
@mcr20a_probe._entry_ptr.32 = internal global ptr @mcr20a_probe._entry.30, section ".printk_index", align 4
@mcr20a_start.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.3, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mcr20a_start\00", [19 x i8] zeroinitializer }, align 32
@mcr20a_start.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 -125, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"no slotted operation\0A\00", [42 x i8] zeroinitializer }, align 32
@mcr20a_start.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start the RX sequence\0A\00", [41 x i8] zeroinitializer }, align 32
@mcr20a_stop.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.2, ptr @.str.3, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcr20a_stop\00", [20 x i8] zeroinitializer }, align 32
@mcr20a_xmit.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.3, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcr20a_xmit\00", [20 x i8] zeroinitializer }, align 32
@mcr20a_xmit.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.2, ptr @.str.38, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcr20a tx: \00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@mcr20a_set_channel.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.3, i8 0, i8 124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcr20a_set_channel\00", [45 x i8] zeroinitializer }, align 32
@PLL_INT = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D", [16 x i8] zeroinitializer }, align 32
@PLL_FRAC = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(Px\A0\C8\F0\18@h\90\B8\E0\080X\80", [16 x i8] zeroinitializer }, align 32
@mcr20a_set_hw_addr_filt.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.2, ptr @.str.3, i8 0, i8 -114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcr20a_set_hw_addr_filt\00", [40 x i8] zeroinitializer }, align 32
@mcr20a_set_txpower.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mcr20a_set_txpower\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s(%d)\0A\00", [24 x i8] zeroinitializer }, align 32
@mcr20a_set_cca_mode.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.2, ptr @.str.3, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mcr20a_set_cca_mode\00", [44 x i8] zeroinitializer }, align 32
@mcr20a_set_cca_ed_level.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.2, ptr @.str.3, i8 0, i8 -81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcr20a_set_cca_ed_level\00", [40 x i8] zeroinitializer }, align 32
@mcr20a_set_promiscuous_mode.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.2, ptr @.str.43, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mcr20a_set_promiscuous_mode\00", [36 x i8] zeroinitializer }, align 32
@mcr20a_write_tx_buf_complete.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.2, ptr @.str.3, i8 0, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mcr20a_write_tx_buf_complete\00", [35 x i8] zeroinitializer }, align 32
@mcr20a_write_tx_buf_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.47, ptr @.str.2, i32 459, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to set SEQ TX\0A\00", [42 x i8] zeroinitializer }, align 32
@mcr20a_write_tx_buf_complete._entry_ptr = internal global ptr @mcr20a_write_tx_buf_complete._entry, section ".printk_index", align 4
@mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.3, i8 0, i8 -59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mcr20a_handle_rx_read_buf_complete\00", [61 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.50, i8 0, i8 -59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX is done\0A\00", [20 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.51, i8 0, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcr20a rx: \00", [20 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.2, ptr @.str.52, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcr20a rx: lqi: %02hhx\0A\00", [40 x i8] zeroinitializer }, align 32
@mcr20a_request_rx.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.3, i8 0, i8 -63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mcr20a_request_rx\00", [46 x i8] zeroinitializer }, align 32
@mcr20a_irq_status_complete.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.3, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mcr20a_irq_status_complete\00", [37 x i8] zeroinitializer }, align 32
@mcr20a_irq_status_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.54, ptr @.str.2, i32 949, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to clean irq status\0A\00", [36 x i8] zeroinitializer }, align 32
@mcr20a_irq_status_complete._entry_ptr = internal global ptr @mcr20a_irq_status_complete._entry, section ".printk_index", align 4
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug362 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.3, i8 0, i8 -34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcr20a_irq_clean_complete\00", [38 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug363 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IRQ STA1 (%02x) STA2 (%02x)\0A\00", [35 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug364 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 0, i8 -31, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TX is done. No ACK\0A\00", [44 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug365 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.59, i8 0, i8 -30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RX is starting\0A\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug366 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.60, i8 0, i8 -28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TX is done. Get ACK\0A\00", [43 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug367 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.59, i8 0, i8 -27, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug368 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.61, i8 0, i8 -26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TX is starting\0A\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug369 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.62, i8 0, i8 -25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MCR20A is stop\0A\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_handle_tx_complete.__UNIQUE_ID_ddebug360 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.2, ptr @.str.3, i8 0, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mcr20a_handle_tx_complete\00", [38 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx.__UNIQUE_ID_ddebug359 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.2, ptr @.str.3, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcr20a_handle_rx\00", [47 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.3, i8 0, i8 -51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mcr20a_handle_rx_read_len_complete\00", [61 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug358 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.2, ptr @.str.66, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"frame len : %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_len_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.2, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to read rx buffer length\0A\00", [63 x i8] zeroinitializer }, align 32
@mcr20a_handle_rx_read_len_complete._entry_ptr = internal global ptr @mcr20a_handle_rx_read_len_complete._entry, section ".printk_index", align 4
@mcr20a_handle_tx.__UNIQUE_ID_ddebug361 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.3, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mcr20a_handle_tx\00", [47 x i8] zeroinitializer }, align 32
@mcr20a_handle_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.68, ptr @.str.2, i32 875, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPI write Failed for TX buf\0A\00", [35 x i8] zeroinitializer }, align 32
@mcr20a_handle_tx._entry_ptr = internal global ptr @mcr20a_handle_tx._entry, section ".printk_index", align 4
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcr20a_dar\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcr20a_iar\00", [21 x i8] zeroinitializer }, align 32
@mcr20a_hw_setup.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.2, ptr @.str.3, i8 0, i8 -12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcr20a_hw_setup\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_ed_levels = internal global { [111 x i32], [100 x i8] } zeroinitializer, align 32
@mcr20a_powers = internal constant { [21 x i32], [44 x i8] } { [21 x i32] [i32 -3000, i32 -2800, i32 -2600, i32 -2400, i32 -2200, i32 -2000, i32 -1800, i32 -1600, i32 -1400, i32 -1200, i32 -1000, i32 -800, i32 -600, i32 -400, i32 -200, i32 0, i32 200, i32 400, i32 600, i32 800, i32 1000], [44 x i8] zeroinitializer }, align 32
@mcr20a_phy_init.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.3, i8 1, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mcr20a_phy_init\00", [16 x i8] zeroinitializer }, align 32
@mcr20a_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.73, ptr @.str.2, i32 1153, ptr @.str.75, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"MCR20A DAR overwrites version: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcr20a_phy_init._entry_ptr = internal global ptr @mcr20a_phy_init._entry, section ".printk_index", align 4
@mar20a_iar_overwrites = internal constant { [25 x %struct.reg_sequence], [84 x i8] } { [25 x %struct.reg_sequence] [%struct.reg_sequence { i32 49, i32 2, i32 0 }, %struct.reg_sequence { i32 145, i32 179, i32 0 }, %struct.reg_sequence { i32 146, i32 7, i32 0 }, %struct.reg_sequence { i32 138, i32 113, i32 0 }, %struct.reg_sequence { i32 121, i32 47, i32 0 }, %struct.reg_sequence { i32 122, i32 47, i32 0 }, %struct.reg_sequence { i32 123, i32 36, i32 0 }, %struct.reg_sequence { i32 124, i32 36, i32 0 }, %struct.reg_sequence { i32 125, i32 36, i32 0 }, %struct.reg_sequence { i32 126, i32 36, i32 0 }, %struct.reg_sequence { i32 127, i32 50, i32 0 }, %struct.reg_sequence { i32 128, i32 29, i32 0 }, %struct.reg_sequence { i32 129, i32 45, i32 0 }, %struct.reg_sequence { i32 130, i32 36, i32 0 }, %struct.reg_sequence { i32 131, i32 36, i32 0 }, %struct.reg_sequence { i32 100, i32 40, i32 0 }, %struct.reg_sequence { i32 82, i32 85, i32 0 }, %struct.reg_sequence { i32 83, i32 45, i32 0 }, %struct.reg_sequence { i32 102, i32 95, i32 0 }, %struct.reg_sequence { i32 103, i32 143, i32 0 }, %struct.reg_sequence { i32 104, i32 97, i32 0 }, %struct.reg_sequence { i32 120, i32 3, i32 0 }, %struct.reg_sequence { i32 34, i32 80, i32 0 }, %struct.reg_sequence { i32 77, i32 19, i32 0 }, %struct.reg_sequence { i32 57, i32 61, i32 0 }], [84 x i8] zeroinitializer }, align 32
@mcr20a_phy_init.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.2, ptr @.str.76, i8 1, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clear HW indirect queue\0A\00", [39 x i8] zeroinitializer }, align 32
@mcr20a_remove.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.2, ptr @.str.3, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcr20a_remove\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 59, i64 60, i64 61]
@__sancov_gen_cov_switch_values.81 = internal global [13 x i64] [i64 11, i64 32, i64 6, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.82 = internal global [73 x i64] [i64 71, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 48, i64 49, i64 50, i64 52, i64 54, i64 55, i64 56, i64 57, i64 77, i64 81, i64 82, i64 83, i64 100, i64 102, i64 103, i64 104, i64 110, i64 120, i64 121, i64 122, i64 123, i64 124, i64 125, i64 126, i64 127, i64 128, i64 129, i64 130, i64 131, i64 138, i64 145, i64 146]
@__sancov_gen_cov_switch_values.83 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 33, i64 53, i64 67, i64 68, i64 91]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 32, i64 33, i64 53, i64 67, i64 68, i64 91]
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"mcr20a_driver\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1362, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"mcr20a_device_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1356, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1366, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"mcr20a_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1350, i32 34 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1233, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1236, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1240, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1244, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"mcr20a_hw_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 755, i32 36 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1258, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"mcr20a_dar_regmap\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 248, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1284, i32 19 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1287, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"mcr20a_iar_regmap\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 384, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1292, i32 19 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1295, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1305, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1316, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1326, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 521, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 524, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 540, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 554, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 467, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 471, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 498, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [8 x i8] c"PLL_INT\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 79, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant [9 x i8] c"PLL_FRAC\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 88, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 571, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 622, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 645, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 702, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 719, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 450, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 459, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 788, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 790, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 806, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 808, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 772, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 937, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 949, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 888, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 892, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 900, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 906, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 913, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 923, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 926, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 851, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 840, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 821, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 825, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 834, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 863, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 875, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 249, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 385, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 976, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"mcr20a_ed_levels\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 634, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"mcr20a_powers\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 611, i32 18 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1091, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1152, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant [22 x i8] c"mar20a_iar_overwrites\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 97, i32 34 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1168, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.350 = private constant [35 x i8] c"../drivers/net/ieee802154/mcr20a.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1342, i32 2 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author380, ptr @__UNIQUE_ID_description377, ptr @__UNIQUE_ID_file378, ptr @__UNIQUE_ID_license379, ptr @__exitcall_mcr20a_driver_exit, ptr @__initcall__kmod_mcr20a__376_1372_mcr20a_driver_init6, ptr @mcr20a_driver_exit, ptr @mcr20a_handle_rx_read_len_complete._entry, ptr @mcr20a_handle_rx_read_len_complete._entry_ptr, ptr @mcr20a_handle_tx._entry, ptr @mcr20a_handle_tx._entry_ptr, ptr @mcr20a_irq_status_complete._entry, ptr @mcr20a_irq_status_complete._entry_ptr, ptr @mcr20a_phy_init._entry, ptr @mcr20a_phy_init._entry_ptr, ptr @mcr20a_probe._entry, ptr @mcr20a_probe._entry.11, ptr @mcr20a_probe._entry.16, ptr @mcr20a_probe._entry.21, ptr @mcr20a_probe._entry.24, ptr @mcr20a_probe._entry.27, ptr @mcr20a_probe._entry.30, ptr @mcr20a_probe._entry.8, ptr @mcr20a_probe._entry_ptr, ptr @mcr20a_probe._entry_ptr.10, ptr @mcr20a_probe._entry_ptr.14, ptr @mcr20a_probe._entry_ptr.18, ptr @mcr20a_probe._entry_ptr.23, ptr @mcr20a_probe._entry_ptr.26, ptr @mcr20a_probe._entry_ptr.29, ptr @mcr20a_probe._entry_ptr.32, ptr @mcr20a_write_tx_buf_complete._entry, ptr @mcr20a_write_tx_buf_complete._entry_ptr, ptr @mcr20a_driver, ptr @mcr20a_device_id, ptr @.str, ptr @mcr20a_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @mcr20a_hw_ops, ptr @.str.12, ptr @.str.13, ptr @mcr20a_probe._key, ptr @mcr20a_dar_regmap, ptr @.str.15, ptr @.str.17, ptr @mcr20a_probe._key.19, ptr @mcr20a_iar_regmap, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @PLL_INT, ptr @PLL_FRAC, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @mcr20a_ed_levels, ptr @mcr20a_powers, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @mar20a_iar_overwrites, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_device_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_hw_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_dar_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_iar_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PLL_INT to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PLL_FRAC to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_write_tx_buf_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_irq_status_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_handle_rx_read_len_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_handle_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_ed_levels to i32), i32 444, i32 544, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_powers to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcr20a_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mar20a_iar_overwrites to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @mcr20a_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @mcr20a_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_probe.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_probe.__UNIQUE_ID_ddebug374, ptr noundef %spi, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool3.not = icmp eq i32 %1, 0
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end9:                                          ; preds = %do.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef 7) #7
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end21

if.then13:                                        ; preds = %if.end9
  %cmp.not = icmp eq ptr %call11, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then13.cleanup_crit_edge, label %do.end18

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call11 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.9, i32 noundef %2) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end9
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef %call11, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #7
  tail call void @gpiod_set_value_cansleep(ptr noundef %call11, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 120, i32 noundef 240, i32 noundef 2) #7
  %call22 = tail call ptr @ieee802154_alloc_hw(i32 noundef 1364, ptr noundef nonnull @mcr20a_hw_ops) #7
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call22, i32 0, i32 3
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 4
  %hw30 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %hw30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call22, ptr %hw30, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %4, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call22, i32 0, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %spi, ptr %parent, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %call22, i32 0, i32 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %9, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #7
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = and i8 %11, -4
  %13 = or i8 %12, 2
  store i8 %13, ptr %arrayidx.i, align 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 3, i32 noundef 3520) #7
  %buf = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 4
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %buf, align 4
  %tobool36.not = icmp eq ptr %call.i, null
  br i1 %tobool36.not, label %if.end29.free_dev_crit_edge, label %if.end38

if.end29.free_dev_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_dev

if.end38:                                         ; preds = %if.end29
  %tx_buf_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6
  %15 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 1
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %tx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %tx_buf_msg.i, ptr %tx_buf_msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %tx_buf_msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 10
  %19 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %context.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 4
  %21 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %4, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mcr20a_write_tx_buf_complete, ptr %complete.i, align 4
  %tx_xfer_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 8
  %len.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 8, i32 2
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %len.i, align 4
  %tx_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 7
  %24 = ptrtoint ptr %tx_xfer_header.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx_header.i, ptr %tx_xfer_header.i, align 4
  %tx_xfer_len.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 10
  %len4.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 10, i32 2
  %25 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %len4.i, align 4
  %tx_len.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 9
  %26 = ptrtoint ptr %tx_xfer_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tx_len.i, ptr %tx_xfer_len.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 8, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %tx_buf_msg.i, ptr noundef %tx_buf_msg.i) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end38.spi_message_add_tail.exit.i_crit_edge

if.end38.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_buf_msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 8, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tx_buf_msg.i, ptr %prev3.i.i.i.i, align 4
  %30 = ptrtoint ptr %tx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i, ptr %tx_buf_msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end38.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i28.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 10, i32 18
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i30.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i28.i, ptr noundef %32, ptr noundef %tx_buf_msg.i) #7
  br i1 %call.i.i.i30.i, label %if.end.i.i.i32.i, label %spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge

spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit33.i

if.end.i.i.i32.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i28.i, ptr %prev.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i28.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx_buf_msg.i, ptr %transfer_list.i28.i, align 4
  %prev3.i.i.i31.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 10, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i31.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i31.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i28.i, ptr %32, align 4
  br label %spi_message_add_tail.exit33.i

spi_message_add_tail.exit33.i:                    ; preds = %if.end.i.i.i32.i, %spi_message_add_tail.exit.i.spi_message_add_tail.exit33.i_crit_edge
  %transfer_list.i34.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 11, i32 18
  %37 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i36.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i34.i, ptr noundef %38, ptr noundef %tx_buf_msg.i) #7
  br i1 %call.i.i.i36.i, label %if.end.i.i.i38.i, label %spi_message_add_tail.exit33.i.mcr20a_setup_tx_spi_messages.exit_crit_edge

spi_message_add_tail.exit33.i.mcr20a_setup_tx_spi_messages.exit_crit_edge: ; preds = %spi_message_add_tail.exit33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcr20a_setup_tx_spi_messages.exit

if.end.i.i.i38.i:                                 ; preds = %spi_message_add_tail.exit33.i
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i34.i, ptr %prev.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx_buf_msg.i, ptr %transfer_list.i34.i, align 4
  %prev3.i.i.i37.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 11, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i37.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i34.i, ptr %38, align 4
  br label %mcr20a_setup_tx_spi_messages.exit

mcr20a_setup_tx_spi_messages.exit:                ; preds = %if.end.i.i.i38.i, %spi_message_add_tail.exit33.i.mcr20a_setup_tx_spi_messages.exit_crit_edge
  %reg_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13
  %43 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13, i32 1
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %reg_msg.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %reg_msg.i, ptr %reg_msg.i, align 4
  %prev.i.i.i.i159 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %reg_msg.i, ptr %prev.i.i.i.i159, align 4
  %resources.i.i.i160 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13, i32 10
  %47 = ptrtoint ptr %resources.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i160, ptr %resources.i.i.i160, align 4
  %prev.i2.i.i.i161 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i161 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i160, ptr %prev.i2.i.i.i161, align 4
  %context.i162 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 13, i32 4
  %49 = ptrtoint ptr %context.i162 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %4, ptr %context.i162, align 4
  %reg_xfer_cmd.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 16
  %len.i163 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 16, i32 2
  %50 = ptrtoint ptr %len.i163 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %len.i163, align 4
  %reg_cmd.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 14
  %51 = ptrtoint ptr %reg_xfer_cmd.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %reg_cmd.i, ptr %reg_xfer_cmd.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 16, i32 1
  %52 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %reg_cmd.i, ptr %rx_buf.i, align 4
  %reg_data.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 15
  %reg_xfer_data.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 17
  %rx_buf7.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 17, i32 1
  %53 = ptrtoint ptr %rx_buf7.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reg_data.i, ptr %rx_buf7.i, align 4
  %54 = ptrtoint ptr %reg_xfer_data.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %reg_data.i, ptr %reg_xfer_data.i, align 4
  %transfer_list.i.i164 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 16, i32 18
  %call.i.i.i.i165 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i164, ptr noundef %reg_msg.i, ptr noundef %reg_msg.i) #7
  br i1 %call.i.i.i.i165, label %if.end.i.i.i.i167, label %mcr20a_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i168_crit_edge

mcr20a_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i168_crit_edge: ; preds = %mcr20a_setup_tx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i168

if.end.i.i.i.i167:                                ; preds = %mcr20a_setup_tx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %prev.i.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %transfer_list.i.i164, ptr %prev.i.i.i.i159, align 4
  %56 = ptrtoint ptr %transfer_list.i.i164 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %reg_msg.i, ptr %transfer_list.i.i164, align 4
  %prev3.i.i.i.i166 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 16, i32 18, i32 1
  %57 = ptrtoint ptr %prev3.i.i.i.i166 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %reg_msg.i, ptr %prev3.i.i.i.i166, align 4
  %58 = ptrtoint ptr %reg_msg.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %transfer_list.i.i164, ptr %reg_msg.i, align 4
  br label %spi_message_add_tail.exit.i168

spi_message_add_tail.exit.i168:                   ; preds = %if.end.i.i.i.i167, %mcr20a_setup_tx_spi_messages.exit.spi_message_add_tail.exit.i168_crit_edge
  %transfer_list.i75.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 17, i32 18
  %59 = ptrtoint ptr %prev.i.i.i.i159 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i159, align 4
  %call.i.i.i77.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i75.i, ptr noundef %60, ptr noundef %reg_msg.i) #7
  br i1 %call.i.i.i77.i, label %if.end.i.i.i79.i, label %spi_message_add_tail.exit.i168.spi_message_add_tail.exit80.i_crit_edge

spi_message_add_tail.exit.i168.spi_message_add_tail.exit80.i_crit_edge: ; preds = %spi_message_add_tail.exit.i168
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit80.i

if.end.i.i.i79.i:                                 ; preds = %spi_message_add_tail.exit.i168
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %prev.i.i.i.i159 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i75.i, ptr %prev.i.i.i.i159, align 4
  %62 = ptrtoint ptr %transfer_list.i75.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %reg_msg.i, ptr %transfer_list.i75.i, align 4
  %prev3.i.i.i78.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 17, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev3.i.i.i78.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i75.i, ptr %60, align 4
  br label %spi_message_add_tail.exit80.i

spi_message_add_tail.exit80.i:                    ; preds = %if.end.i.i.i79.i, %spi_message_add_tail.exit.i168.spi_message_add_tail.exit80.i_crit_edge
  %rx_buf_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18
  %65 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 1
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %rx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %rx_buf_msg.i, ptr %rx_buf_msg.i, align 4
  %prev.i.i.i81.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rx_buf_msg.i, ptr %prev.i.i.i81.i, align 4
  %resources.i.i82.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 10
  %69 = ptrtoint ptr %resources.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i82.i, ptr %resources.i.i82.i, align 4
  %prev.i2.i.i83.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i83.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i82.i, ptr %prev.i2.i.i83.i, align 4
  %context17.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 4
  %71 = ptrtoint ptr %context17.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %4, ptr %context17.i, align 4
  %complete.i169 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 18, i32 3
  %72 = ptrtoint ptr %complete.i169 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mcr20a_handle_rx_read_buf_complete, ptr %complete.i169, align 4
  %rx_xfer_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 20
  %len19.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 20, i32 2
  %73 = ptrtoint ptr %len19.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %len19.i, align 4
  %rx_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 19
  %74 = ptrtoint ptr %rx_xfer_header.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %rx_header.i, ptr %rx_xfer_header.i, align 4
  %rx_buf26.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 20, i32 1
  %75 = ptrtoint ptr %rx_buf26.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %rx_header.i, ptr %rx_buf26.i, align 4
  %rx_buf27.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 23
  %rx_buf29.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 24, i32 1
  %76 = ptrtoint ptr %rx_buf29.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %rx_buf27.i, ptr %rx_buf29.i, align 4
  %len30.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 22, i32 2
  %77 = ptrtoint ptr %len30.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %len30.i, align 4
  %rx_lqi.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 21
  %rx_buf33.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 22, i32 1
  %78 = ptrtoint ptr %rx_buf33.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %rx_lqi.i, ptr %rx_buf33.i, align 4
  %transfer_list.i84.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 20, i32 18
  %call.i.i.i86.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i84.i, ptr noundef %rx_buf_msg.i, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i86.i, label %if.end.i.i.i88.i, label %spi_message_add_tail.exit80.i.spi_message_add_tail.exit89.i_crit_edge

spi_message_add_tail.exit80.i.spi_message_add_tail.exit89.i_crit_edge: ; preds = %spi_message_add_tail.exit80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit89.i

if.end.i.i.i88.i:                                 ; preds = %spi_message_add_tail.exit80.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %transfer_list.i84.i, ptr %prev.i.i.i81.i, align 4
  %80 = ptrtoint ptr %transfer_list.i84.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i84.i, align 4
  %prev3.i.i.i87.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 20, i32 18, i32 1
  %81 = ptrtoint ptr %prev3.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %rx_buf_msg.i, ptr %prev3.i.i.i87.i, align 4
  %82 = ptrtoint ptr %rx_buf_msg.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %transfer_list.i84.i, ptr %rx_buf_msg.i, align 4
  br label %spi_message_add_tail.exit89.i

spi_message_add_tail.exit89.i:                    ; preds = %if.end.i.i.i88.i, %spi_message_add_tail.exit80.i.spi_message_add_tail.exit89.i_crit_edge
  %transfer_list.i90.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 24, i32 18
  %83 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i.i.i81.i, align 4
  %call.i.i.i92.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i90.i, ptr noundef %84, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i92.i, label %if.end.i.i.i94.i, label %spi_message_add_tail.exit89.i.spi_message_add_tail.exit95.i_crit_edge

spi_message_add_tail.exit89.i.spi_message_add_tail.exit95.i_crit_edge: ; preds = %spi_message_add_tail.exit89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit95.i

if.end.i.i.i94.i:                                 ; preds = %spi_message_add_tail.exit89.i
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %transfer_list.i90.i, ptr %prev.i.i.i81.i, align 4
  %86 = ptrtoint ptr %transfer_list.i90.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i90.i, align 4
  %prev3.i.i.i93.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 24, i32 18, i32 1
  %87 = ptrtoint ptr %prev3.i.i.i93.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i.i93.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %transfer_list.i90.i, ptr %84, align 4
  br label %spi_message_add_tail.exit95.i

spi_message_add_tail.exit95.i:                    ; preds = %if.end.i.i.i94.i, %spi_message_add_tail.exit89.i.spi_message_add_tail.exit95.i_crit_edge
  %transfer_list.i96.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 22, i32 18
  %89 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i81.i, align 4
  %call.i.i.i98.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i96.i, ptr noundef %90, ptr noundef %rx_buf_msg.i) #7
  br i1 %call.i.i.i98.i, label %if.end.i.i.i100.i, label %spi_message_add_tail.exit95.i.mcr20a_setup_rx_spi_messages.exit_crit_edge

spi_message_add_tail.exit95.i.mcr20a_setup_rx_spi_messages.exit_crit_edge: ; preds = %spi_message_add_tail.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcr20a_setup_rx_spi_messages.exit

if.end.i.i.i100.i:                                ; preds = %spi_message_add_tail.exit95.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %prev.i.i.i81.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %transfer_list.i96.i, ptr %prev.i.i.i81.i, align 4
  %92 = ptrtoint ptr %transfer_list.i96.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %rx_buf_msg.i, ptr %transfer_list.i96.i, align 4
  %prev3.i.i.i99.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 22, i32 18, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i99.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i99.i, align 4
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %transfer_list.i96.i, ptr %90, align 4
  br label %mcr20a_setup_rx_spi_messages.exit

mcr20a_setup_rx_spi_messages.exit:                ; preds = %if.end.i.i.i100.i, %spi_message_add_tail.exit95.i.mcr20a_setup_rx_spi_messages.exit_crit_edge
  %irq_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25
  %95 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 1
  %96 = call ptr @memset(ptr %95, i32 0, i32 40)
  %97 = ptrtoint ptr %irq_msg.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %irq_msg.i, ptr %irq_msg.i, align 4
  %prev.i.i.i.i170 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 0, i32 1
  %98 = ptrtoint ptr %prev.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %irq_msg.i, ptr %prev.i.i.i.i170, align 4
  %resources.i.i.i171 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 10
  %99 = ptrtoint ptr %resources.i.i.i171 to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %resources.i.i.i171, ptr %resources.i.i.i171, align 4
  %prev.i2.i.i.i172 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 10, i32 1
  %100 = ptrtoint ptr %prev.i2.i.i.i172 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %resources.i.i.i171, ptr %prev.i2.i.i.i172, align 4
  %context.i173 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 4
  %101 = ptrtoint ptr %context.i173 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %4, ptr %context.i173, align 4
  %complete.i174 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 25, i32 3
  %102 = ptrtoint ptr %complete.i174 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @mcr20a_irq_status_complete, ptr %complete.i174, align 4
  %irq_xfer_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 29
  %len.i175 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 29, i32 2
  %103 = ptrtoint ptr %len.i175 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %len.i175, align 4
  %irq_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 26
  %104 = ptrtoint ptr %irq_xfer_header.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %irq_header.i, ptr %irq_xfer_header.i, align 4
  %rx_buf.i176 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 29, i32 1
  %105 = ptrtoint ptr %rx_buf.i176 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %irq_header.i, ptr %rx_buf.i176, align 4
  %len7.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 28, i32 2
  %106 = ptrtoint ptr %len7.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 2, ptr %len7.i, align 4
  %irq_data.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 27
  %rx_buf10.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 28, i32 1
  %107 = ptrtoint ptr %rx_buf10.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %irq_data.i, ptr %rx_buf10.i, align 4
  %transfer_list.i.i177 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 29, i32 18
  %call.i.i.i.i178 = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i177, ptr noundef %irq_msg.i, ptr noundef %irq_msg.i) #7
  br i1 %call.i.i.i.i178, label %if.end.i.i.i.i180, label %mcr20a_setup_rx_spi_messages.exit.spi_message_add_tail.exit.i181_crit_edge

mcr20a_setup_rx_spi_messages.exit.spi_message_add_tail.exit.i181_crit_edge: ; preds = %mcr20a_setup_rx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit.i181

if.end.i.i.i.i180:                                ; preds = %mcr20a_setup_rx_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %prev.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %transfer_list.i.i177, ptr %prev.i.i.i.i170, align 4
  %109 = ptrtoint ptr %transfer_list.i.i177 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %irq_msg.i, ptr %transfer_list.i.i177, align 4
  %prev3.i.i.i.i179 = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 29, i32 18, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i179 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %irq_msg.i, ptr %prev3.i.i.i.i179, align 4
  %111 = ptrtoint ptr %irq_msg.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %transfer_list.i.i177, ptr %irq_msg.i, align 4
  br label %spi_message_add_tail.exit.i181

spi_message_add_tail.exit.i181:                   ; preds = %if.end.i.i.i.i180, %mcr20a_setup_rx_spi_messages.exit.spi_message_add_tail.exit.i181_crit_edge
  %transfer_list.i30.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 28, i32 18
  %112 = ptrtoint ptr %prev.i.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i.i170, align 4
  %call.i.i.i32.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i30.i, ptr noundef %113, ptr noundef %irq_msg.i) #7
  br i1 %call.i.i.i32.i, label %if.end.i.i.i34.i, label %spi_message_add_tail.exit.i181.mcr20a_setup_irq_spi_messages.exit_crit_edge

spi_message_add_tail.exit.i181.mcr20a_setup_irq_spi_messages.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i181
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcr20a_setup_irq_spi_messages.exit

if.end.i.i.i34.i:                                 ; preds = %spi_message_add_tail.exit.i181
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %prev.i.i.i.i170 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %transfer_list.i30.i, ptr %prev.i.i.i.i170, align 4
  %115 = ptrtoint ptr %transfer_list.i30.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %irq_msg.i, ptr %transfer_list.i30.i, align 4
  %prev3.i.i.i33.i = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 28, i32 18, i32 1
  %116 = ptrtoint ptr %prev3.i.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev3.i.i.i33.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %transfer_list.i30.i, ptr %113, align 4
  br label %mcr20a_setup_irq_spi_messages.exit

mcr20a_setup_irq_spi_messages.exit:               ; preds = %if.end.i.i.i34.i, %spi_message_add_tail.exit.i181.mcr20a_setup_irq_spi_messages.exit_crit_edge
  %call40 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @mcr20a_dar_regmap, ptr noundef nonnull @mcr20a_probe._key, ptr noundef nonnull @.str.15) #7
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 2
  %118 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call40, ptr %regmap_dar, align 4
  %cmp.i182 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then43, label %if.end50

if.then43:                                        ; preds = %mcr20a_setup_irq_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %call40 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.17, i32 noundef %119) #10
  br label %free_dev

if.end50:                                         ; preds = %mcr20a_setup_irq_spi_messages.exit
  %call52 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @mcr20a_iar_regmap, ptr noundef nonnull @mcr20a_probe._key.19, ptr noundef nonnull @.str.20) #7
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %4, i32 0, i32 3
  %120 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call52, ptr %regmap_iar, align 4
  %cmp.i183 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then55, label %if.end62

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %call52 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %121) #10
  br label %free_dev

if.end62:                                         ; preds = %if.end50
  %122 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %hw30, align 4
  %phy3.i = getelementptr inbounds %struct.ieee802154_hw, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %phy3.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %phy3.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_hw_setup.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_probe, %if.then.i)) #7
          to label %do.end.i [label %if.then.i], !srcloc !225

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %126 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_hw_setup.__UNIQUE_ID_ddebug371, ptr noundef %127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.72) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end62
  %lifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 10
  %128 = ptrtoint ptr %lifs_period.i to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 640, ptr %lifs_period.i, align 2
  %sifs_period.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 11
  %129 = ptrtoint ptr %sifs_period.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 192, ptr %sifs_period.i, align 16
  %flags.i = getelementptr inbounds %struct.ieee802154_hw, ptr %123, i32 0, i32 1
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 49, ptr %flags.i, align 4
  %flags12.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 1
  %131 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 14, ptr %flags12.i, align 4
  %cca_modes.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 1
  %132 = ptrtoint ptr %cca_modes.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 14, ptr %cca_modes.i, align 4
  %cca_opts.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 2
  %133 = ptrtoint ptr %cca_opts.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 3, ptr %cca_opts.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end.i
  %indvars.iv.i = phi i32 [ 0, %do.end.i ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %mul17.i = mul nsw i32 %indvars.iv.i, -100
  %arrayidx.i184 = getelementptr [111 x i32], ptr @mcr20a_ed_levels, i32 0, i32 %indvars.iv.i
  %134 = ptrtoint ptr %arrayidx.i184 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %mul17.i, ptr %arrayidx.i184, align 4
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 111
  br i1 %exitcond.not.i, label %mcr20a_hw_setup.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mcr20a_hw_setup.exit:                             ; preds = %for.body.i
  %symbol_duration.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 9
  %supported.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 16
  %135 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @mcr20a_ed_levels, ptr %cca_ed_levels.i, align 4
  %cca_ed_levels_size.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 14
  %136 = ptrtoint ptr %cca_ed_levels_size.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 111, ptr %cca_ed_levels_size.i, align 4
  %cca.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 6
  %137 = ptrtoint ptr %cca.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 1, ptr %cca.i, align 8
  %138 = ptrtoint ptr %supported.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 134215680, ptr %supported.i, align 4
  %current_page.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 3
  %139 = ptrtoint ptr %current_page.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 0, ptr %current_page.i, align 1
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 2
  %140 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 20, ptr %current_channel.i, align 8
  %141 = ptrtoint ptr %symbol_duration.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 16, ptr %symbol_duration.i, align 4
  %tx_powers.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 15
  %142 = ptrtoint ptr %tx_powers.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @mcr20a_powers, ptr %tx_powers.i, align 4
  %tx_powers_size.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 4, i32 13
  %143 = ptrtoint ptr %tx_powers_size.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 21, ptr %tx_powers_size.i, align 4
  %144 = load i32, ptr getelementptr inbounds ([111 x i32], ptr @mcr20a_ed_levels, i32 0, i32 75), align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 8
  %145 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %cca_ed_level.i, align 8
  %transmit_power.i = getelementptr inbounds %struct.wpan_phy, ptr %125, i32 0, i32 5
  %146 = ptrtoint ptr %transmit_power.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %transmit_power.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %147 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %4, ptr %driver_data.i.i, align 4
  %call63 = tail call fastcc i32 @mcr20a_phy_init(ptr noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %if.end70

do.end68:                                         ; preds = %mcr20a_hw_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi, ptr noundef nonnull @.str.25) #10
  br label %free_dev

if.end70:                                         ; preds = %mcr20a_hw_setup.exit
  %148 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq, align 4
  %call.i185 = tail call ptr @irq_get_irq_data(i32 noundef %149) #7
  %tobool.not.i = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i, label %if.end70.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit

if.end70.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit:                        ; preds = %if.end70
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i185, i32 0, i32 3
  %150 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %common.i.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %and.i.i = and i32 %153, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool73.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool73.not, label %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, label %irq_get_trigger_type.exit._crit_edge

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %154

irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge: ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_get_trigger_type.exit.thread

irq_get_trigger_type.exit.thread:                 ; preds = %irq_get_trigger_type.exit.irq_get_trigger_type.exit.thread_crit_edge, %if.end70.irq_get_trigger_type.exit.thread_crit_edge
  br label %154

154:                                              ; preds = %irq_get_trigger_type.exit.thread, %irq_get_trigger_type.exit._crit_edge
  %155 = phi i32 [ 2, %irq_get_trigger_type.exit.thread ], [ %and.i.i, %irq_get_trigger_type.exit._crit_edge ]
  %156 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %158 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i186 = icmp eq ptr %159, null
  br i1 %tobool.not.i186, label %if.end.i, label %.dev_name.exit_crit_edge

.dev_name.exit_crit_edge:                         ; preds = %154
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %154
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %.dev_name.exit_crit_edge
  %retval.0.i187 = phi ptr [ %161, %if.end.i ], [ %159, %.dev_name.exit_crit_edge ]
  %call.i188 = tail call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %157, ptr noundef nonnull @mcr20a_irq_isr, ptr noundef null, i32 noundef %155, ptr noundef %retval.0.i187, ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool81.not = icmp eq i32 %call.i188, 0
  br i1 %tobool81.not, label %if.end87, label %do.end85

do.end85:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28) #10
  br label %free_dev

if.end87:                                         ; preds = %dev_name.exit
  %162 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %163) #7
  %call89 = tail call i32 @ieee802154_register_hw(ptr noundef nonnull %call22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end87.cleanup_crit_edge, label %do.end94

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %spi, ptr noundef nonnull @.str.31) #10
  br label %free_dev

free_dev:                                         ; preds = %do.end94, %do.end85, %do.end68, %if.then55, %if.then43, %if.end29.free_dev_crit_edge
  %ret.0 = phi i32 [ %119, %if.then43 ], [ %121, %if.then55 ], [ %call63, %do.end68 ], [ -19, %do.end85 ], [ %call89, %do.end94 ], [ -12, %if.end29.free_dev_crit_edge ]
  %164 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %hw30, align 4
  tail call void @ieee802154_free_hw(ptr noundef %165) #7
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.end87.cleanup_crit_edge, %do.end27, %do.end18, %if.then13.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ %ret.0, %free_dev ], [ -12, %do.end27 ], [ -22, %do.end7 ], [ %2, %do.end18 ], [ -517, %if.then13.cleanup_crit_edge ], [ 0, %if.end87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_remove.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_remove, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_remove.__UNIQUE_ID_ddebug375, ptr noundef %spi, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.77) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %3) #7
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcr20a_phy_init(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  %phy_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phy_reg) #7
  %0 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %phy_reg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_phy_init.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_phy_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_phy_init.__UNIQUE_ID_ddebug372, ptr noundef %2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.73) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %lp, i32 0, i32 3
  %3 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_iar, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 49, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.err_ret_crit_edge

do.end.err_ret_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end6:                                          ; preds = %do.end
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %lp, i32 0, i32 2
  %5 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_dar, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 239) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.err_ret_crit_edge

if.end6.err_ret_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end10:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_dar, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.err_ret_crit_edge

if.end10.err_ret_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end15:                                         ; preds = %if.end10
  %9 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_dar, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 2, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.err_ret_crit_edge

if.end15.err_ret_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end20:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_dar, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 3, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %13 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap_dar, align 4
  %call24 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 4, i32 noundef 255) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end20.err_ret_crit_edge

if.end20.err_ret_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end27:                                         ; preds = %if.end20
  %15 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_dar, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 5, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.err_ret_crit_edge

if.end27.err_ret_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end32:                                         ; preds = %if.end27
  %17 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_dar, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 8, i32 noundef 248) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.err_ret_crit_edge

if.end32.err_ret_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end37:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap_iar, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 15, i32 noundef 203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %do.end45, label %if.end37.err_ret_crit_edge

if.end37.err_ret_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

do.end45:                                         ; preds = %if.end37
  %21 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.74, i32 noundef 12) #10
  %23 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_dar, align 4
  %call49 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 59, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %do.end45.err_ret_crit_edge

do.end45.err_ret_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end52:                                         ; preds = %do.end45
  %25 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap_iar, align 4
  %call54 = tail call i32 @regmap_multi_reg_write(ptr noundef %26, ptr noundef nonnull @mar20a_iar_overwrites, i32 noundef 25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %do.body58, label %if.end52.err_ret_crit_edge

if.end52.err_ret_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

do.body58:                                        ; preds = %if.end52
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_phy_init.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_phy_init, %if.then70)) #7
          to label %do.end75 [label %if.then70], !srcloc !225

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_phy_init.__UNIQUE_ID_ddebug373, ptr noundef %28, ptr noundef nonnull @.str.76) #7
  br label %do.end75

do.end75:                                         ; preds = %if.then70, %do.body58
  %29 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap_dar, align 4
  %call82 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 8, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %for.cond, label %do.end75.err_ret.loopexit_crit_edge

do.end75.err_ret.loopexit_crit_edge:              ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond:                                         ; preds = %do.end75
  %31 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap_dar, align 4
  %call82.1 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 8, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.1)
  %tobool83.not.1 = icmp eq i32 %call82.1, 0
  br i1 %tobool83.not.1, label %for.cond.1, label %for.cond.err_ret.loopexit_crit_edge

for.cond.err_ret.loopexit_crit_edge:              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.1:                                       ; preds = %for.cond
  %33 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap_dar, align 4
  %call82.2 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 8, i32 noundef 37) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.2)
  %tobool83.not.2 = icmp eq i32 %call82.2, 0
  br i1 %tobool83.not.2, label %for.cond.2, label %for.cond.1.err_ret.loopexit_crit_edge

for.cond.1.err_ret.loopexit_crit_edge:            ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.2:                                       ; preds = %for.cond.1
  %35 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap_dar, align 4
  %call82.3 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 8, i32 noundef 53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.3)
  %tobool83.not.3 = icmp eq i32 %call82.3, 0
  br i1 %tobool83.not.3, label %for.cond.3, label %for.cond.2.err_ret.loopexit_crit_edge

for.cond.2.err_ret.loopexit_crit_edge:            ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.3:                                       ; preds = %for.cond.2
  %37 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap_dar, align 4
  %call82.4 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 8, i32 noundef 69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.4)
  %tobool83.not.4 = icmp eq i32 %call82.4, 0
  br i1 %tobool83.not.4, label %for.cond.4, label %for.cond.3.err_ret.loopexit_crit_edge

for.cond.3.err_ret.loopexit_crit_edge:            ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.4:                                       ; preds = %for.cond.3
  %39 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap_dar, align 4
  %call82.5 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 8, i32 noundef 85) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.5)
  %tobool83.not.5 = icmp eq i32 %call82.5, 0
  br i1 %tobool83.not.5, label %for.cond.5, label %for.cond.4.err_ret.loopexit_crit_edge

for.cond.4.err_ret.loopexit_crit_edge:            ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.5:                                       ; preds = %for.cond.4
  %41 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap_dar, align 4
  %call82.6 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 8, i32 noundef 101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.6)
  %tobool83.not.6 = icmp eq i32 %call82.6, 0
  br i1 %tobool83.not.6, label %for.cond.6, label %for.cond.5.err_ret.loopexit_crit_edge

for.cond.5.err_ret.loopexit_crit_edge:            ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.6:                                       ; preds = %for.cond.5
  %43 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap_dar, align 4
  %call82.7 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 8, i32 noundef 117) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.7)
  %tobool83.not.7 = icmp eq i32 %call82.7, 0
  br i1 %tobool83.not.7, label %for.cond.7, label %for.cond.6.err_ret.loopexit_crit_edge

for.cond.6.err_ret.loopexit_crit_edge:            ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.7:                                       ; preds = %for.cond.6
  %45 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap_dar, align 4
  %call82.8 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 8, i32 noundef 133) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.8)
  %tobool83.not.8 = icmp eq i32 %call82.8, 0
  br i1 %tobool83.not.8, label %for.cond.8, label %for.cond.7.err_ret.loopexit_crit_edge

for.cond.7.err_ret.loopexit_crit_edge:            ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.8:                                       ; preds = %for.cond.7
  %47 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap_dar, align 4
  %call82.9 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 8, i32 noundef 149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.9)
  %tobool83.not.9 = icmp eq i32 %call82.9, 0
  br i1 %tobool83.not.9, label %for.cond.9, label %for.cond.8.err_ret.loopexit_crit_edge

for.cond.8.err_ret.loopexit_crit_edge:            ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.9:                                       ; preds = %for.cond.8
  %49 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap_dar, align 4
  %call82.10 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 8, i32 noundef 165) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.10)
  %tobool83.not.10 = icmp eq i32 %call82.10, 0
  br i1 %tobool83.not.10, label %for.cond.10, label %for.cond.9.err_ret.loopexit_crit_edge

for.cond.9.err_ret.loopexit_crit_edge:            ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.10:                                      ; preds = %for.cond.9
  %51 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap_dar, align 4
  %call82.11 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 8, i32 noundef 181) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.11)
  %tobool83.not.11 = icmp eq i32 %call82.11, 0
  br i1 %tobool83.not.11, label %for.cond.11, label %for.cond.10.err_ret.loopexit_crit_edge

for.cond.10.err_ret.loopexit_crit_edge:           ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret.loopexit

for.cond.11:                                      ; preds = %for.cond.10
  %53 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %phy_reg, align 4
  %54 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap_iar, align 4
  %call87 = call i32 @regmap_read(ptr noundef %55, i32 noundef 31, ptr noundef nonnull %phy_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %for.cond.11.err_ret_crit_edge

for.cond.11.err_ret_crit_edge:                    ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end90:                                         ; preds = %for.cond.11
  %56 = ptrtoint ptr %phy_reg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %phy_reg, align 4
  %and91 = and i32 %57, -241
  %or92 = or i32 %and91, 192
  store i32 %or92, ptr %phy_reg, align 4
  %58 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap_iar, align 4
  %call94 = call i32 @regmap_write(ptr noundef %59, i32 noundef 31, i32 noundef %or92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end90.err_ret_crit_edge

if.end90.err_ret_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end97:                                         ; preds = %if.end90
  %60 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap_iar, align 4
  %call99 = call i32 @regmap_write(ptr noundef %61, i32 noundef 34, i32 noundef 75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end97.err_ret_crit_edge

if.end97.err_ret_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end102:                                        ; preds = %if.end97
  %62 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap_iar, align 4
  %call104 = call i32 @regmap_write(ptr noundef %63, i32 noundef 40, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.end107, label %if.end102.err_ret_crit_edge

if.end102.err_ret_crit_edge:                      ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end107:                                        ; preds = %if.end102
  %64 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap_dar, align 4
  %call.i162 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 61, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool110.not = icmp eq i32 %call.i162, 0
  br i1 %tobool110.not, label %if.end112, label %if.end107.err_ret_crit_edge

if.end107.err_ret_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end112:                                        ; preds = %if.end107
  %66 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap_dar, align 4
  %call.i163 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 60, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool115.not = icmp eq i32 %call.i163, 0
  br i1 %tobool115.not, label %if.end112.cleanup_crit_edge, label %if.end112.err_ret_crit_edge

if.end112.err_ret_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ret

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_ret.loopexit:                                 ; preds = %for.cond.10.err_ret.loopexit_crit_edge, %for.cond.9.err_ret.loopexit_crit_edge, %for.cond.8.err_ret.loopexit_crit_edge, %for.cond.7.err_ret.loopexit_crit_edge, %for.cond.6.err_ret.loopexit_crit_edge, %for.cond.5.err_ret.loopexit_crit_edge, %for.cond.4.err_ret.loopexit_crit_edge, %for.cond.3.err_ret.loopexit_crit_edge, %for.cond.2.err_ret.loopexit_crit_edge, %for.cond.1.err_ret.loopexit_crit_edge, %for.cond.err_ret.loopexit_crit_edge, %do.end75.err_ret.loopexit_crit_edge
  %conv80.lcssa = phi i32 [ 5, %do.end75.err_ret.loopexit_crit_edge ], [ 21, %for.cond.err_ret.loopexit_crit_edge ], [ 37, %for.cond.1.err_ret.loopexit_crit_edge ], [ 53, %for.cond.2.err_ret.loopexit_crit_edge ], [ 69, %for.cond.3.err_ret.loopexit_crit_edge ], [ 85, %for.cond.4.err_ret.loopexit_crit_edge ], [ 101, %for.cond.5.err_ret.loopexit_crit_edge ], [ 117, %for.cond.6.err_ret.loopexit_crit_edge ], [ 133, %for.cond.7.err_ret.loopexit_crit_edge ], [ 149, %for.cond.8.err_ret.loopexit_crit_edge ], [ 165, %for.cond.9.err_ret.loopexit_crit_edge ], [ 181, %for.cond.10.err_ret.loopexit_crit_edge ]
  %call82.lcssa = phi i32 [ %call82, %do.end75.err_ret.loopexit_crit_edge ], [ %call82.1, %for.cond.err_ret.loopexit_crit_edge ], [ %call82.2, %for.cond.1.err_ret.loopexit_crit_edge ], [ %call82.3, %for.cond.2.err_ret.loopexit_crit_edge ], [ %call82.4, %for.cond.3.err_ret.loopexit_crit_edge ], [ %call82.5, %for.cond.4.err_ret.loopexit_crit_edge ], [ %call82.6, %for.cond.5.err_ret.loopexit_crit_edge ], [ %call82.7, %for.cond.6.err_ret.loopexit_crit_edge ], [ %call82.8, %for.cond.7.err_ret.loopexit_crit_edge ], [ %call82.9, %for.cond.8.err_ret.loopexit_crit_edge ], [ %call82.10, %for.cond.9.err_ret.loopexit_crit_edge ], [ %call82.11, %for.cond.10.err_ret.loopexit_crit_edge ]
  %68 = ptrtoint ptr %phy_reg to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv80.lcssa, ptr %phy_reg, align 4
  br label %err_ret

err_ret:                                          ; preds = %err_ret.loopexit, %if.end112.err_ret_crit_edge, %if.end107.err_ret_crit_edge, %if.end102.err_ret_crit_edge, %if.end97.err_ret_crit_edge, %if.end90.err_ret_crit_edge, %for.cond.11.err_ret_crit_edge, %if.end52.err_ret_crit_edge, %do.end45.err_ret_crit_edge, %if.end37.err_ret_crit_edge, %if.end32.err_ret_crit_edge, %if.end27.err_ret_crit_edge, %if.end20.err_ret_crit_edge, %if.end15.err_ret_crit_edge, %if.end10.err_ret_crit_edge, %if.end6.err_ret_crit_edge, %do.end.err_ret_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end.err_ret_crit_edge ], [ %call7, %if.end6.err_ret_crit_edge ], [ %call12, %if.end10.err_ret_crit_edge ], [ %call17, %if.end15.err_ret_crit_edge ], [ %call24, %if.end20.err_ret_crit_edge ], [ %call29, %if.end27.err_ret_crit_edge ], [ %call34, %if.end32.err_ret_crit_edge ], [ %call39, %if.end37.err_ret_crit_edge ], [ %call49, %do.end45.err_ret_crit_edge ], [ %call54, %if.end52.err_ret_crit_edge ], [ %call87, %for.cond.11.err_ret_crit_edge ], [ %call94, %if.end90.err_ret_crit_edge ], [ %call99, %if.end97.err_ret_crit_edge ], [ %call104, %if.end102.err_ret_crit_edge ], [ %call.i162, %if.end107.err_ret_crit_edge ], [ %call.i163, %if.end112.err_ret_crit_edge ], [ %call82.lcssa, %err_ret.loopexit ]
  br label %cleanup

cleanup:                                          ; preds = %err_ret, %if.end112.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_ret ], [ 0, %if.end112.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phy_reg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_irq_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #7
  %irq_header = getelementptr inbounds %struct.mcr20a_local, ptr %data, i32 0, i32 26
  %0 = ptrtoint ptr %irq_header to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -128, ptr %irq_header, align 4
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %irq_msg = getelementptr inbounds %struct.mcr20a_local, ptr %data, i32 0, i32 25
  %call = tail call i32 @spi_async(ptr noundef %2, ptr noundef %irq_msg) #7
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_start.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_start, %if.then)) #7
          to label %do.body3 [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_start.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.33) #7
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_start.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_start, %if.then15)) #7
          to label %do.end20 [label %if.then15], !srcloc !225

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_start.__UNIQUE_ID_ddebug344, ptr noundef %5, ptr noundef nonnull @.str.34) #7
  br label %do.end20

do.end20:                                         ; preds = %if.then15, %do.body3
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_dar, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 3, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end20.cleanup_crit_edge, label %if.end23

do.end20.cleanup_crit_edge:                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %do.end20
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  %12 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_dar, align 4
  %call.i71 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 4, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp27 = icmp slt i32 %call.i71, 0
  br i1 %cmp27, label %if.end23.cleanup_crit_edge, label %do.body30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body30:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_start.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_start, %if.then42)) #7
          to label %do.end47 [label %if.then42], !srcloc !225

if.then42:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_start.__UNIQUE_ID_ddebug345, ptr noundef %15, ptr noundef nonnull @.str.35) #7
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.body30
  %16 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_dar, align 4
  %call.i72 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 3, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %18 = tail call i32 @llvm.smin.i32(i32 %call.i72, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %if.end23.cleanup_crit_edge, %do.end20.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end20.cleanup_crit_edge ], [ %call.i71, %if.end23.cleanup_crit_edge ], [ %18, %do.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_stop.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_stop, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_stop.__UNIQUE_ID_ddebug346, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_dar, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 3, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_xmit(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_xmit.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_xmit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_xmit.__UNIQUE_ID_ddebug340, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.37) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tx_skb = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %skb, ptr %tx_skb, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_xmit.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_xmit, %if.then15)) #7
          to label %do.end18 [label %if.then15], !srcloc !225

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %6, i32 noundef %8, i1 noundef zeroext false) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.end
  %is_tx = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_tx, align 4
  %reg_msg = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 13
  %complete = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 13, i32 3
  %10 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %complete, align 4
  %reg_cmd = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 14
  %11 = ptrtoint ptr %reg_cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %reg_cmd, align 4
  %reg_data = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %reg_data, align 1
  %len20 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 17, i32 2
  %13 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %len20, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call23 = tail call i32 @spi_async(ptr noundef %15, ptr noundef %reg_msg) #7
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_ed(ptr nocapture noundef readnone %hw, ptr noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %level, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !226

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 487, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -66, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_channel.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_channel, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_channel.__UNIQUE_ID_ddebug342, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.40) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_dar, align 4
  %conv = zext i8 %channel to i32
  %sub = add nsw i32 %conv, -11
  %arrayidx = getelementptr [16 x i8], ptr @PLL_INT, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv3 = zext i8 %7 to i32
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 32, i32 noundef %conv3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %8 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_dar, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 33, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_dar, align 4
  %arrayidx16 = getelementptr [16 x i8], ptr @PLL_FRAC, i32 0, i32 %sub
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %call18 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 34, i32 noundef %conv17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end.cleanup_crit_edge ], [ %call9, %if.end7.cleanup_crit_edge ], [ %call18, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_hw_addr_filt(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_hw_addr_filt.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_hw_addr_filt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_hw_addr_filt.__UNIQUE_ID_ddebug347, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end.if.end9_crit_edge, label %if.then4

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %4 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %short_addr, align 2
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_iar, align 4
  %conv = zext i16 %6 to i32
  %call5 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 5, i32 noundef %conv) #7
  %9 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap_iar, align 4
  %11 = lshr i32 %conv, 8
  %call8 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 6, i32 noundef %11) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %do.end.if.end9_crit_edge
  %and10 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end20_crit_edge, label %if.then12

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %filt, align 8
  %14 = tail call i16 @llvm.bswap.i16(i16 %13)
  %regmap_iar13 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %regmap_iar13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap_iar13, align 4
  %conv14 = zext i16 %14 to i32
  %call15 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 3, i32 noundef %conv14) #7
  %17 = ptrtoint ptr %regmap_iar13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap_iar13, align 4
  %19 = lshr i32 %conv14, 8
  %call19 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 4, i32 noundef %19) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then12, %if.end9.if.end20_crit_edge
  %and21 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end31_crit_edge, label %if.then23

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %20 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %ieee_addr, align 8
  %addr24.sroa.0.0.extract.shift = lshr i64 %21, 56
  %addr24.sroa.0.0.extract.trunc = trunc i64 %addr24.sroa.0.0.extract.shift to i32
  %addr24.sroa.5.0.extract.shift = lshr i64 %21, 48
  %addr24.sroa.5.0.extract.trunc = trunc i64 %addr24.sroa.5.0.extract.shift to i32
  %addr24.sroa.7.0.extract.shift = lshr i64 %21, 40
  %addr24.sroa.7.0.extract.trunc = trunc i64 %addr24.sroa.7.0.extract.shift to i32
  %addr24.sroa.9.0.extract.shift = lshr i64 %21, 32
  %addr24.sroa.9.0.extract.trunc = trunc i64 %addr24.sroa.9.0.extract.shift to i32
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %22, 24
  %24 = trunc i64 %21 to i32
  %25 = lshr i32 %24, 16
  %26 = trunc i64 %21 to i32
  %27 = lshr i32 %26, 8
  %addr24.sroa.17.0.extract.trunc = trunc i64 %21 to i32
  %regmap_iar27 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap_iar27, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 7, i32 noundef %addr24.sroa.0.0.extract.trunc) #7
  %30 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_iar27, align 4
  %conv29.1 = and i32 %addr24.sroa.5.0.extract.trunc, 255
  %call30.1 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 8, i32 noundef %conv29.1) #7
  %32 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap_iar27, align 4
  %conv29.2 = and i32 %addr24.sroa.7.0.extract.trunc, 255
  %call30.2 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 9, i32 noundef %conv29.2) #7
  %34 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap_iar27, align 4
  %conv29.3 = and i32 %addr24.sroa.9.0.extract.trunc, 255
  %call30.3 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 10, i32 noundef %conv29.3) #7
  %36 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_iar27, align 4
  %call30.4 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 11, i32 noundef %23) #7
  %38 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap_iar27, align 4
  %conv29.5 = and i32 %25, 255
  %call30.5 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 12, i32 noundef %conv29.5) #7
  %40 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_iar27, align 4
  %conv29.6 = and i32 %27, 255
  %call30.6 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 13, i32 noundef %conv29.6) #7
  %42 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap_iar27, align 4
  %conv29.7 = and i32 %addr24.sroa.17.0.extract.trunc, 255
  %call30.7 = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 14, i32 noundef %conv29.7) #7
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.end20.if.end31_crit_edge
  %and32 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end31.if.end41_crit_edge, label %if.then34

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %44 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pan_coord, align 8, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool35.not = icmp eq i8 %45, 0
  %regmap_dar38 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %regmap_dar38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap_dar38, align 4
  %. = select i1 %tobool35.not, i32 0, i32 16
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 7, i32 noundef 32, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end41

if.end41:                                         ; preds = %if.then34, %if.end31.if.end41_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_txpower.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_txpower, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_txpower.__UNIQUE_ID_ddebug348, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef %mbm) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw3 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hw3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw3, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %7, i32 0, i32 4, i32 13
  %8 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %7, i32 0, i32 4, i32 15
  %10 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %11, i32 %i.022
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mbm)
  %cmp7 = icmp eq i32 %13, %mbm
  br i1 %cmp7, label %if.then8, label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap_dar, align 4
  %add = add i32 %i.022, 8
  %and = and i32 %add, 31
  %call9 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 35, i32 noundef %and) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %9
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then8 ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_cca_mode(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cca) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_cca_mode.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_cca_mode, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_cca_mode.__UNIQUE_ID_ddebug349, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.44) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cca, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.sw.epilog8_crit_edge
    i32 2, label %do.end.sw.epilog8_crit_edge39
    i32 3, label %sw.bb4
  ]

do.end.sw.epilog8_crit_edge39:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog8

do.end.sw.epilog8_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %do.end
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %7 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %opt, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %8, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %sw.bb4.sw.epilog8_crit_edge
    i32 1, label %sw.bb6
  ]

sw.bb4.sw.epilog8_crit_edge:                      ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog8

sw.epilog8:                                       ; preds = %sw.bb6, %sw.bb4.sw.epilog8_crit_edge, %do.end.sw.epilog8_crit_edge, %do.end.sw.epilog8_crit_edge39
  %cca_mode_and.0.off0 = phi i32 [ 0, %sw.bb6 ], [ 0, %do.end.sw.epilog8_crit_edge ], [ 0, %do.end.sw.epilog8_crit_edge39 ], [ 8, %sw.bb4.sw.epilog8_crit_edge ]
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap_dar, align 4
  %shl = shl nuw nsw i32 %5, 3
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 7, i32 noundef 24, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp12 = icmp eq i32 %5, 3
  %or.cond = select i1 %cmp, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then13, label %sw.epilog8.cleanup_crit_edge

sw.epilog8.cleanup_crit_edge:                     ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %sw.epilog8
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_iar, align 4
  %call.i36 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 37, i32 noundef 8, i32 noundef %cca_mode_and.0.off0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %sw.epilog8.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ %call.i, %sw.epilog8.cleanup_crit_edge ], [ %call.i36, %if.then13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_cca_ed_level.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_cca_ed_level, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_cca_ed_level.__UNIQUE_ID_ddebug350, ptr noundef %3, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.45) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 4
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %cca_ed_levels_size = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 4, i32 14
  %6 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cca_ed_levels_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp18.not = icmp eq i32 %7, 0
  br i1 %cmp18.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %cca_ed_levels = getelementptr inbounds %struct.wpan_phy, ptr %5, i32 0, i32 4, i32 16
  %8 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cca_ed_levels, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %9, i32 %i.019
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mbm)
  %cmp5 = icmp eq i32 %11, %mbm
  br i1 %cmp5, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_iar, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 34, i32 noundef %i.019) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcr20a_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_set_promiscuous_mode.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_set_promiscuous_mode, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_set_promiscuous_mode.__UNIQUE_ID_ddebug351, ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46, i32 noundef %conv) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_dar, align 4
  br i1 %on, label %if.then6, label %if.else

if.then6:                                         ; preds = %do.end
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 7, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6.cleanup_crit_edge, label %if.end14

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.then6
  %regmap_iar = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regmap_iar to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap_iar, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 15, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end14.if.end33_crit_edge

if.end14.if.end33_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %do.end
  %call.i50 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 7, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp23 = icmp slt i32 %call.i50, 0
  br i1 %cmp23, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.else
  %regmap_iar27 = getelementptr inbounds %struct.mcr20a_local, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regmap_iar27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_iar27, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 15, i32 noundef 203) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end26.cleanup_crit_edge, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end26.if.end33_crit_edge, %if.end14.if.end33_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then6.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %call.i, %if.then6.cleanup_crit_edge ], [ %call16, %if.end14.cleanup_crit_edge ], [ %call.i50, %if.else.cleanup_crit_edge ], [ %call28, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_write_tx_buf_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_write_tx_buf_complete.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_write_tx_buf_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_write_tx_buf_complete.__UNIQUE_ID_ddebug339, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.47) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_msg = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13
  %complete = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13, i32 3
  %2 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %complete, align 4
  %reg_cmd = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 14
  %3 = ptrtoint ptr %reg_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 3, ptr %reg_cmd, align 4
  %reg_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 15
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %reg_data, align 1
  %len = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 17, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len, align 4
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %call6 = tail call i32 @spi_async(ptr noundef %7, ptr noundef %reg_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %do.end.if.end14_crit_edge, label %do.end11

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.48) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %do.end.if.end14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_handle_rx_read_buf_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 15
  %0 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %reg_data, align 1
  %2 = and i8 %1, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_buf_complete, %if.then)) #7
          to label %do.body4 [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug353, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #7
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_buf_complete, %if.then16)) #7
          to label %do.end21 [label %if.then16], !srcloc !225

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug354, ptr noundef %6, ptr noundef nonnull @.str.50) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then16, %do.body4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp.i = icmp eq i8 %2, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %cmp3.i = icmp ugt i8 %2, 8
  %spec.select.i = or i1 %cmp.i, %cmp3.i
  %.op = add nsw i8 %2, -2
  %7 = zext i8 %.op to i32
  %conv27 = select i1 %spec.select.i, i32 %7, i32 125
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %conv27, i32 noundef 2592) #7
  %tobool29.not = icmp eq ptr %call.i.i, null
  br i1 %tobool29.not, label %do.end21.cleanup_crit_edge, label %if.end31

do.end21.cleanup_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %do.end21
  %rx_buf = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 23
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.i.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.i.not.i.i, label %__skb_put_data.exit, label %do.body3.i.i, !prof !228

do.body3.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #7, !srcloc !229
  unreachable

__skb_put_data.exit:                              ; preds = %if.end31
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %conv27
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %12 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %13, %conv27
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %14 = call ptr @memcpy(ptr %11, ptr %rx_buf, i32 %conv27)
  %hw = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 1
  %15 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hw, align 4
  %rx_lqi = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 21
  %17 = ptrtoint ptr %rx_lqi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %rx_lqi, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %16, ptr noundef nonnull %call.i.i, i8 noundef zeroext %18) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_buf_complete, %if.then47)) #7
          to label %do.body54 [label %if.then47], !srcloc !225

if.then47:                                        ; preds = %__skb_put_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %rx_buf, i32 noundef %conv27, i1 noundef zeroext false) #7
  br label %do.body54

do.body54:                                        ; preds = %if.then47, %__skb_put_data.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_buf_complete, %if.then66)) #7
          to label %do.end72 [label %if.then66], !srcloc !225

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %rx_lqi to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_lqi, align 4
  %conv69 = zext i8 %20 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug356, ptr noundef nonnull @.str.52, i32 noundef %conv69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_request_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_buf_complete, %if.then.i)) #7
          to label %mcr20a_request_rx.exit [label %if.then.i], !srcloc !225

if.then.i:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_request_rx.__UNIQUE_ID_ddebug352, ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #7
  br label %mcr20a_request_rx.exit

mcr20a_request_rx.exit:                           ; preds = %if.then.i, %do.end72
  %regmap_dar.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 2
  %23 = ptrtoint ptr %regmap_dar.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap_dar.i, align 4
  %call.i.i99 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 3, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %mcr20a_request_rx.exit, %do.end21.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_irq_status_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_status_complete.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_status_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_status_complete.__UNIQUE_ID_ddebug370, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.54) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap_dar = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 2
  %2 = ptrtoint ptr %regmap_dar to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap_dar, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 3, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %reg_msg = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13
  %complete = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13, i32 3
  %4 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mcr20a_irq_clean_complete, ptr %complete, align 4
  %reg_cmd = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 14
  %5 = ptrtoint ptr %reg_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %reg_cmd, align 4
  %reg_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 15
  %irq_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 27
  %6 = ptrtoint ptr %irq_data to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %irq_data, align 1
  %8 = ptrtoint ptr %reg_data to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %reg_data, align 1
  %len = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 17, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len, align 4
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call7 = tail call i32 @spi_async(ptr noundef %11, ptr noundef %reg_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %do.end.if.end15_crit_edge, label %do.end12

do.end.if.end15_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.55) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %do.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_irq_clean_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 27
  %0 = ptrtoint ptr %irq_data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_data, align 1
  %2 = and i8 %1, 7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug362, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug362, ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.56) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %8) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug363, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then17)) #7
          to label %do.end28 [label %if.then17], !srcloc !225

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %context, align 4
  %11 = ptrtoint ptr %irq_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_data, align 1
  %conv22 = zext i8 %12 to i32
  %arrayidx24 = getelementptr %struct.mcr20a_local, ptr %context, i32 0, i32 27, i32 1
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug363, ptr noundef %10, ptr noundef nonnull @.str.57, i32 noundef %conv22, i32 noundef %conv25) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then17, %do.end
  %conv29 = zext i8 %2 to i32
  %15 = zext i32 %conv29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %conv29, label %do.end28.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %do.body54
    i32 7, label %sw.bb73
    i32 1, label %sw.bb117
  ]

do.end28.sw.epilog_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end28
  %is_tx = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 5
  %16 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_tx, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  br i1 %tobool30.not, label %sw.bb.sw.epilog_crit_edge, label %if.then31

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %sw.bb
  %18 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %is_tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug364, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then45)) #7
          to label %do.end50 [label %if.then45], !srcloc !225

if.then45:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug364, ptr noundef %20, ptr noundef nonnull @.str.58) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then45, %if.then31
  tail call fastcc void @mcr20a_handle_tx_complete(ptr noundef %context)
  br label %sw.epilog

do.body54:                                        ; preds = %do.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug365, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then66)) #7
          to label %do.end71 [label %if.then66], !srcloc !225

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug365, ptr noundef %22, ptr noundef nonnull @.str.59) #7
  br label %do.end71

do.end71:                                         ; preds = %if.then66, %do.body54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then.i)) #7
          to label %mcr20a_handle_rx.exit [label %if.then.i], !srcloc !225

if.then.i:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx.__UNIQUE_ID_ddebug359, ptr noundef %24, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.64) #7
  br label %mcr20a_handle_rx.exit

mcr20a_handle_rx.exit:                            ; preds = %if.then.i, %do.end71
  %reg_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13
  %complete.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13, i32 3
  %25 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mcr20a_handle_rx_read_len_complete, ptr %complete.i, align 4
  %reg_cmd.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 14
  %26 = ptrtoint ptr %reg_cmd.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -122, ptr %reg_cmd.i, align 4
  %len.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 17, i32 2
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %len.i, align 4
  %28 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %context, align 4
  %call5.i = tail call i32 @spi_async(ptr noundef %29, ptr noundef %reg_msg.i) #7
  br label %sw.epilog

sw.bb73:                                          ; preds = %do.end28
  %is_tx74 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 5
  %30 = ptrtoint ptr %is_tx74 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %is_tx74, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool75.not = icmp eq i8 %31, 0
  br i1 %tobool75.not, label %do.body97, label %if.then76

if.then76:                                        ; preds = %sw.bb73
  %32 = ptrtoint ptr %is_tx74 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_tx74, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug366, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then90)) #7
          to label %do.end95 [label %if.then90], !srcloc !225

if.then90:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug366, ptr noundef %34, ptr noundef nonnull @.str.60) #7
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %if.then76
  tail call fastcc void @mcr20a_handle_tx_complete(ptr noundef %context)
  br label %sw.epilog

do.body97:                                        ; preds = %sw.bb73
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug367, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then109)) #7
          to label %do.end114 [label %if.then109], !srcloc !225

if.then109:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug367, ptr noundef %36, ptr noundef nonnull @.str.59) #7
  br label %do.end114

do.end114:                                        ; preds = %if.then109, %do.body97
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx.__UNIQUE_ID_ddebug359, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then.i202)) #7
          to label %mcr20a_handle_rx.exit208 [label %if.then.i202], !srcloc !225

if.then.i202:                                     ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx.__UNIQUE_ID_ddebug359, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.64) #7
  br label %mcr20a_handle_rx.exit208

mcr20a_handle_rx.exit208:                         ; preds = %if.then.i202, %do.end114
  %reg_msg.i203 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13
  %complete.i204 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 13, i32 3
  %39 = ptrtoint ptr %complete.i204 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @mcr20a_handle_rx_read_len_complete, ptr %complete.i204, align 4
  %reg_cmd.i205 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 14
  %40 = ptrtoint ptr %reg_cmd.i205 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -122, ptr %reg_cmd.i205, align 4
  %len.i206 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 17, i32 2
  %41 = ptrtoint ptr %len.i206 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %len.i206, align 4
  %42 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %context, align 4
  %call5.i207 = tail call i32 @spi_async(ptr noundef %43, ptr noundef %reg_msg.i203) #7
  br label %sw.epilog

sw.bb117:                                         ; preds = %do.end28
  %is_tx118 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 5
  %44 = ptrtoint ptr %is_tx118 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %is_tx118, align 4, !range !227
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool119.not = icmp eq i8 %45, 0
  br i1 %tobool119.not, label %do.body141, label %do.body121

do.body121:                                       ; preds = %sw.bb117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug368, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then133)) #7
          to label %do.end138 [label %if.then133], !srcloc !225

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug368, ptr noundef %47, ptr noundef nonnull @.str.61) #7
  br label %do.end138

do.end138:                                        ; preds = %if.then133, %do.body121
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_tx.__UNIQUE_ID_ddebug361, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then.i209)) #7
          to label %do.end.i [label %if.then.i209], !srcloc !225

if.then.i209:                                     ; preds = %do.end138
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_tx.__UNIQUE_ID_ddebug361, ptr noundef %49, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.68) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i209, %do.end138
  %tx_header.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 7
  %50 = ptrtoint ptr %tx_header.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 64, ptr %tx_header.i, align 4
  %tx_skb.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 12
  %51 = ptrtoint ptr %tx_skb.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_skb.i, align 4
  %len.i210 = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %len.i210 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i210, align 4
  %55 = trunc i32 %54 to i8
  %conv.i = add i8 %55, 2
  %tx_len.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 9
  %56 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv.i, ptr %tx_len.i, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 19
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %tx_xfer_buf.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 11
  %59 = ptrtoint ptr %tx_xfer_buf.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %tx_xfer_buf.i, align 4
  %60 = load i32, ptr %len.i210, align 4
  %add7.i = add i32 %60, 1
  %len9.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 11, i32 2
  %61 = ptrtoint ptr %len9.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add7.i, ptr %len9.i, align 4
  %62 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %context, align 4
  %tx_buf_msg.i = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 6
  %call11.i = tail call i32 @spi_async(ptr noundef %63, ptr noundef %tx_buf_msg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %do.end.i.sw.epilog_crit_edge, label %do.end16.i

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end16.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.69) #10
  br label %sw.epilog

do.body141:                                       ; preds = %sw.bb117
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug369, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_irq_clean_complete, %if.then153)) #7
          to label %sw.epilog [label %if.then153], !srcloc !225

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug369, ptr noundef %67, ptr noundef nonnull @.str.62) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then153, %do.body141, %do.end16.i, %do.end.i.sw.epilog_crit_edge, %mcr20a_handle_rx.exit208, %do.end95, %mcr20a_handle_rx.exit, %do.end50, %sw.bb.sw.epilog_crit_edge, %do.end28.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mcr20a_handle_tx_complete(ptr nocapture noundef readonly %lp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_tx_complete.__UNIQUE_ID_ddebug360, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_tx_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_tx_complete.__UNIQUE_ID_ddebug360, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.63) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw = getelementptr inbounds %struct.mcr20a_local, ptr %lp, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %tx_skb = getelementptr inbounds %struct.mcr20a_local, ptr %lp, i32 0, i32 12
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 4
  tail call void @ieee802154_xmit_complete(ptr noundef %3, ptr noundef %5, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_request_rx.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_tx_complete, %if.then.i)) #7
          to label %mcr20a_request_rx.exit [label %if.then.i], !srcloc !225

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_request_rx.__UNIQUE_ID_ddebug352, ptr noundef %7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #7
  br label %mcr20a_request_rx.exit

mcr20a_request_rx.exit:                           ; preds = %if.then.i, %do.end
  %regmap_dar.i = getelementptr inbounds %struct.mcr20a_local, ptr %lp, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_dar.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_dar.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 3, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext true, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mcr20a_handle_rx_read_len_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_len_complete, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !225

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug357, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.65) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %reg_data = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 15
  %2 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_data, align 1
  %4 = and i8 %3, 127
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug358, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mcr20a_handle_rx_read_len_complete, %if.then16)) #7
          to label %do.end22 [label %if.then16], !srcloc !225

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %context, align 4
  %conv19 = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug358, ptr noundef %6, ptr noundef nonnull @.str.66, i32 noundef %conv19) #7
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %do.end
  %rx_buf_msg = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 18
  %complete = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 18, i32 3
  %7 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mcr20a_handle_rx_read_buf_complete, ptr %complete, align 4
  %rx_header = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 19
  %8 = ptrtoint ptr %rx_header to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -64, ptr %rx_header, align 4
  %conv24 = zext i8 %4 to i32
  %len25 = getelementptr inbounds %struct.mcr20a_local, ptr %context, i32 0, i32 24, i32 2
  %9 = ptrtoint ptr %len25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv24, ptr %len25, align 4
  %10 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %context, align 4
  %call28 = tail call i32 @spi_async(ptr noundef %11, ptr noundef %rx_buf_msg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %do.end22.if.end36_crit_edge, label %do.end33

do.end22.if.end36_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end33:                                         ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.67) #10
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %do.end22.if.end36_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_dar_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 9, label %entry.return_crit_edge8
    i32 10, label %entry.return_crit_edge9
    i32 18, label %entry.return_crit_edge10
    i32 19, label %entry.return_crit_edge11
    i32 20, label %entry.return_crit_edge12
    i32 21, label %entry.return_crit_edge13
    i32 22, label %entry.return_crit_edge14
    i32 23, label %entry.return_crit_edge15
    i32 24, label %entry.return_crit_edge16
    i32 25, label %entry.return_crit_edge17
    i32 26, label %entry.return_crit_edge18
    i32 27, label %entry.return_crit_edge19
    i32 28, label %entry.return_crit_edge20
    i32 29, label %entry.return_crit_edge21
    i32 30, label %entry.return_crit_edge22
    i32 31, label %entry.return_crit_edge23
    i32 32, label %entry.return_crit_edge24
    i32 33, label %entry.return_crit_edge25
    i32 34, label %entry.return_crit_edge26
    i32 35, label %entry.return_crit_edge27
    i32 59, label %entry.return_crit_edge28
    i32 60, label %entry.return_crit_edge29
    i32 61, label %entry.return_crit_edge30
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_dar_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mcr20a_dar_writeable(ptr noundef %dev, i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %reg, label %sw.default [
    i32 6, label %if.end.cleanup_crit_edge
    i32 11, label %if.end.cleanup_crit_edge4
    i32 12, label %if.end.cleanup_crit_edge5
    i32 13, label %if.end.cleanup_crit_edge6
    i32 14, label %if.end.cleanup_crit_edge7
    i32 15, label %if.end.cleanup_crit_edge8
    i32 16, label %if.end.cleanup_crit_edge9
    i32 17, label %if.end.cleanup_crit_edge10
    i32 36, label %if.end.cleanup_crit_edge11
    i32 37, label %if.end.cleanup_crit_edge12
    i32 38, label %if.end.cleanup_crit_edge13
  ]

if.end.cleanup_crit_edge13:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge12:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge11:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge10:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge9:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge7:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge6:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge5:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge4:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge4, %if.end.cleanup_crit_edge5, %if.end.cleanup_crit_edge6, %if.end.cleanup_crit_edge7, %if.end.cleanup_crit_edge8, %if.end.cleanup_crit_edge9, %if.end.cleanup_crit_edge10, %if.end.cleanup_crit_edge11, %if.end.cleanup_crit_edge12, %if.end.cleanup_crit_edge13, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge4 ], [ true, %if.end.cleanup_crit_edge5 ], [ true, %if.end.cleanup_crit_edge6 ], [ true, %if.end.cleanup_crit_edge7 ], [ true, %if.end.cleanup_crit_edge8 ], [ true, %if.end.cleanup_crit_edge9 ], [ true, %if.end.cleanup_crit_edge10 ], [ true, %if.end.cleanup_crit_edge11 ], [ true, %if.end.cleanup_crit_edge12 ], [ true, %if.end.cleanup_crit_edge13 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_dar_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg)
  %switch = icmp ult i32 %reg, 3
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_dar_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %reg)
  %switch = icmp ult i32 %reg, 3
  ret i1 %switch
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_iar_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %reg, label %sw.default [
    i32 1, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 3, label %entry.return_crit_edge2
    i32 4, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 9, label %entry.return_crit_edge8
    i32 10, label %entry.return_crit_edge9
    i32 11, label %entry.return_crit_edge10
    i32 12, label %entry.return_crit_edge11
    i32 13, label %entry.return_crit_edge12
    i32 14, label %entry.return_crit_edge13
    i32 15, label %entry.return_crit_edge14
    i32 16, label %entry.return_crit_edge15
    i32 17, label %entry.return_crit_edge16
    i32 18, label %entry.return_crit_edge17
    i32 19, label %entry.return_crit_edge18
    i32 20, label %entry.return_crit_edge19
    i32 21, label %entry.return_crit_edge20
    i32 22, label %entry.return_crit_edge21
    i32 23, label %entry.return_crit_edge22
    i32 24, label %entry.return_crit_edge23
    i32 25, label %entry.return_crit_edge24
    i32 26, label %entry.return_crit_edge25
    i32 27, label %entry.return_crit_edge26
    i32 28, label %entry.return_crit_edge27
    i32 29, label %entry.return_crit_edge28
    i32 30, label %entry.return_crit_edge29
    i32 31, label %entry.return_crit_edge30
    i32 32, label %entry.return_crit_edge31
    i32 34, label %entry.return_crit_edge32
    i32 35, label %entry.return_crit_edge33
    i32 36, label %entry.return_crit_edge34
    i32 37, label %entry.return_crit_edge35
    i32 38, label %entry.return_crit_edge36
    i32 39, label %entry.return_crit_edge37
    i32 40, label %entry.return_crit_edge38
    i32 48, label %entry.return_crit_edge39
    i32 49, label %entry.return_crit_edge40
    i32 50, label %entry.return_crit_edge41
    i32 52, label %entry.return_crit_edge42
    i32 54, label %entry.return_crit_edge43
    i32 55, label %entry.return_crit_edge44
    i32 56, label %entry.return_crit_edge45
    i32 57, label %entry.return_crit_edge46
    i32 77, label %entry.return_crit_edge47
    i32 81, label %entry.return_crit_edge48
    i32 82, label %entry.return_crit_edge49
    i32 83, label %entry.return_crit_edge50
    i32 100, label %entry.return_crit_edge51
    i32 102, label %entry.return_crit_edge52
    i32 103, label %entry.return_crit_edge53
    i32 104, label %entry.return_crit_edge54
    i32 110, label %entry.return_crit_edge55
    i32 120, label %entry.return_crit_edge56
    i32 121, label %entry.return_crit_edge57
    i32 122, label %entry.return_crit_edge58
    i32 123, label %entry.return_crit_edge59
    i32 124, label %entry.return_crit_edge60
    i32 125, label %entry.return_crit_edge61
    i32 126, label %entry.return_crit_edge62
    i32 127, label %entry.return_crit_edge63
    i32 128, label %entry.return_crit_edge64
    i32 129, label %entry.return_crit_edge65
    i32 130, label %entry.return_crit_edge66
    i32 131, label %entry.return_crit_edge67
    i32 138, label %entry.return_crit_edge68
    i32 145, label %entry.return_crit_edge69
    i32 146, label %entry.return_crit_edge70
  ]

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_iar_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @mcr20a_iar_writeable(ptr noundef %dev, i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %reg, label %sw.default [
    i32 0, label %if.end.cleanup_crit_edge
    i32 33, label %if.end.cleanup_crit_edge4
    i32 53, label %if.end.cleanup_crit_edge5
    i32 67, label %if.end.cleanup_crit_edge6
    i32 68, label %if.end.cleanup_crit_edge7
    i32 91, label %if.end.cleanup_crit_edge8
  ]

if.end.cleanup_crit_edge8:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge7:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge6:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge5:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge4:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge4, %if.end.cleanup_crit_edge5, %if.end.cleanup_crit_edge6, %if.end.cleanup_crit_edge7, %if.end.cleanup_crit_edge8, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge4 ], [ true, %if.end.cleanup_crit_edge5 ], [ true, %if.end.cleanup_crit_edge6 ], [ true, %if.end.cleanup_crit_edge7 ], [ true, %if.end.cleanup_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mcr20a_iar_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %reg, label %sw.default [
    i32 33, label %entry.return_crit_edge
    i32 53, label %entry.return_crit_edge1
    i32 67, label %entry.return_crit_edge2
    i32 68, label %entry.return_crit_edge3
    i32 91, label %entry.return_crit_edge4
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_multi_reg_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !187, !189, !191, !193, !194, !196, !198, !200, !201, !203, !204, !205, !206, !208, !209, !211, !213, !214}
!llvm.module.flags = !{!216, !217, !218, !219, !220, !221, !222, !223}
!llvm.ident = !{!224}

!0 = !{ptr @__initcall__kmod_mcr20a__376_1372_mcr20a_driver_init6, !1, !"__initcall__kmod_mcr20a__376_1372_mcr20a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1372, i32 1}
!2 = !{ptr @__exitcall_mcr20a_driver_exit, !1, !"__exitcall_mcr20a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description377, !4, !"__UNIQUE_ID_description377", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1374, i32 1}
!5 = !{ptr @__UNIQUE_ID_file378, !6, !"__UNIQUE_ID_file378", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1375, i32 1}
!7 = !{ptr @__UNIQUE_ID_license379, !6, !"__UNIQUE_ID_license379", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author380, !9, !"__UNIQUE_ID_author380", i1 false, i1 false}
!9 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1376, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1366, i32 11}
!12 = !{ptr @mcr20a_driver, !13, !"mcr20a_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1362, i32 26}
!14 = !{ptr @mcr20a_device_id, !15, !"mcr20a_device_id", i1 false, i1 false}
!15 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1356, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1233, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mcr20a_probe.__UNIQUE_ID_ddebug374, !17, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1236, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mcr20a_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @mcr20a_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1240, i32 36}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1244, i32 4}
!31 = !{ptr @mcr20a_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mcr20a_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1258, i32 3}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mcr20a_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mcr20a_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @mcr20a_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1284, i32 19}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1287, i32 3}
!43 = !{ptr @mcr20a_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mcr20a_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mcr20a_probe._key.19, !46, !"_key", i1 false, i1 false}
!46 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1292, i32 19}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1295, i32 3}
!50 = !{ptr @mcr20a_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mcr20a_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1305, i32 3}
!54 = !{ptr @mcr20a_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mcr20a_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1316, i32 3}
!58 = !{ptr @mcr20a_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mcr20a_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1326, i32 3}
!62 = !{ptr @mcr20a_probe._entry.30, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mcr20a_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mcr20a_hw_ops, !65, !"mcr20a_hw_ops", i1 false, i1 false}
!65 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 755, i32 36}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 521, i32 2}
!68 = !{ptr @mcr20a_start.__UNIQUE_ID_ddebug343, !67, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 524, i32 2}
!71 = !{ptr @mcr20a_start.__UNIQUE_ID_ddebug344, !70, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 540, i32 2}
!74 = !{ptr @mcr20a_start.__UNIQUE_ID_ddebug345, !73, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 554, i32 2}
!77 = !{ptr @mcr20a_stop.__UNIQUE_ID_ddebug346, !76, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 467, i32 2}
!80 = !{ptr @mcr20a_xmit.__UNIQUE_ID_ddebug340, !79, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 471, i32 2}
!83 = !{ptr @mcr20a_xmit.__UNIQUE_ID_ddebug341, !82, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!84 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 498, i32 2}
!87 = !{ptr @mcr20a_set_channel.__UNIQUE_ID_ddebug342, !86, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!88 = !{ptr @PLL_INT, !89, !"PLL_INT", i1 false, i1 false}
!89 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 79, i32 18}
!90 = !{ptr @PLL_FRAC, !91, !"PLL_FRAC", i1 false, i1 false}
!91 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 88, i32 17}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 571, i32 2}
!94 = !{ptr @mcr20a_set_hw_addr_filt.__UNIQUE_ID_ddebug347, !93, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 622, i32 2}
!97 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @mcr20a_set_txpower.__UNIQUE_ID_ddebug348, !96, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 645, i32 2}
!101 = !{ptr @mcr20a_set_cca_mode.__UNIQUE_ID_ddebug349, !100, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 702, i32 2}
!104 = !{ptr @mcr20a_set_cca_ed_level.__UNIQUE_ID_ddebug350, !103, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 719, i32 2}
!107 = !{ptr @mcr20a_set_promiscuous_mode.__UNIQUE_ID_ddebug351, !106, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 450, i32 2}
!110 = !{ptr @mcr20a_write_tx_buf_complete.__UNIQUE_ID_ddebug339, !109, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 459, i32 3}
!113 = !{ptr @mcr20a_write_tx_buf_complete._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @mcr20a_write_tx_buf_complete._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 788, i32 2}
!117 = !{ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug353, !116, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 790, i32 2}
!120 = !{ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug354, !119, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 806, i32 2}
!123 = !{ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug355, !122, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 808, i32 2}
!126 = !{ptr @mcr20a_handle_rx_read_buf_complete.__UNIQUE_ID_ddebug356, !125, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 772, i32 2}
!129 = !{ptr @mcr20a_request_rx.__UNIQUE_ID_ddebug352, !128, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 937, i32 2}
!132 = !{ptr @mcr20a_irq_status_complete.__UNIQUE_ID_ddebug370, !131, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 949, i32 3}
!135 = !{ptr @mcr20a_irq_status_complete._entry, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @mcr20a_irq_status_complete._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 888, i32 2}
!139 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug362, !138, !"__UNIQUE_ID_ddebug362", i1 false, i1 false}
!140 = !{ptr @.str.57, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 892, i32 2}
!142 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug363, !141, !"__UNIQUE_ID_ddebug363", i1 false, i1 false}
!143 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 900, i32 4}
!145 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug364, !144, !"__UNIQUE_ID_ddebug364", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 906, i32 3}
!148 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug365, !147, !"__UNIQUE_ID_ddebug365", i1 false, i1 false}
!149 = !{ptr @.str.60, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 913, i32 4}
!151 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug366, !150, !"__UNIQUE_ID_ddebug366", i1 false, i1 false}
!152 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug367, !153, !"__UNIQUE_ID_ddebug367", i1 false, i1 false}
!153 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 917, i32 4}
!154 = !{ptr @.str.61, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 923, i32 4}
!156 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug368, !155, !"__UNIQUE_ID_ddebug368", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 926, i32 4}
!159 = !{ptr @mcr20a_irq_clean_complete.__UNIQUE_ID_ddebug369, !158, !"__UNIQUE_ID_ddebug369", i1 false, i1 false}
!160 = !{ptr @.str.63, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 851, i32 2}
!162 = !{ptr @mcr20a_handle_tx_complete.__UNIQUE_ID_ddebug360, !161, !"__UNIQUE_ID_ddebug360", i1 false, i1 false}
!163 = !{ptr @.str.64, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 840, i32 2}
!165 = !{ptr @mcr20a_handle_rx.__UNIQUE_ID_ddebug359, !164, !"__UNIQUE_ID_ddebug359", i1 false, i1 false}
!166 = !{ptr @.str.65, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 821, i32 2}
!168 = !{ptr @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug357, !167, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!169 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 825, i32 2}
!171 = !{ptr @mcr20a_handle_rx_read_len_complete.__UNIQUE_ID_ddebug358, !170, !"__UNIQUE_ID_ddebug358", i1 false, i1 false}
!172 = !{ptr @.str.67, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 834, i32 3}
!174 = !{ptr @mcr20a_handle_rx_read_len_complete._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @mcr20a_handle_rx_read_len_complete._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.68, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 863, i32 2}
!178 = !{ptr @mcr20a_handle_tx.__UNIQUE_ID_ddebug361, !177, !"__UNIQUE_ID_ddebug361", i1 false, i1 false}
!179 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 875, i32 3}
!181 = !{ptr @mcr20a_handle_tx._entry, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @mcr20a_handle_tx._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.70, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 249, i32 12}
!185 = !{ptr @mcr20a_dar_regmap, !186, !"mcr20a_dar_regmap", i1 false, i1 false}
!186 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 248, i32 35}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 385, i32 12}
!189 = !{ptr @mcr20a_iar_regmap, !190, !"mcr20a_iar_regmap", i1 false, i1 false}
!190 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 384, i32 35}
!191 = !{ptr @.str.72, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 976, i32 2}
!193 = !{ptr @mcr20a_hw_setup.__UNIQUE_ID_ddebug371, !192, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!194 = !{ptr @mcr20a_ed_levels, !195, !"mcr20a_ed_levels", i1 false, i1 false}
!195 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 634, i32 12}
!196 = !{ptr @mcr20a_powers, !197, !"mcr20a_powers", i1 false, i1 false}
!197 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 611, i32 18}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1091, i32 2}
!200 = !{ptr @mcr20a_phy_init.__UNIQUE_ID_ddebug372, !199, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1152, i32 2}
!203 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @mcr20a_phy_init._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @mcr20a_phy_init._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.76, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1168, i32 2}
!208 = !{ptr @mcr20a_phy_init.__UNIQUE_ID_ddebug373, !207, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!209 = !{ptr @mar20a_iar_overwrites, !210, !"mar20a_iar_overwrites", i1 false, i1 false}
!210 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 97, i32 34}
!211 = !{ptr @.str.77, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1342, i32 2}
!213 = !{ptr @mcr20a_remove.__UNIQUE_ID_ddebug375, !212, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!214 = !{ptr @mcr20a_of_match, !215, !"mcr20a_of_match", i1 false, i1 false}
!215 = !{!"../drivers/net/ieee802154/mcr20a.c", i32 1350, i32 34}
!216 = !{i32 1, !"wchar_size", i32 2}
!217 = !{i32 1, !"min_enum_size", i32 4}
!218 = !{i32 8, !"branch-target-enforcement", i32 0}
!219 = !{i32 8, !"sign-return-address", i32 0}
!220 = !{i32 8, !"sign-return-address-all", i32 0}
!221 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!222 = !{i32 7, !"uwtable", i32 1}
!223 = !{i32 7, !"frame-pointer", i32 2}
!224 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!225 = !{i64 2148723148, i64 2148723153, i64 2148723166, i64 2148723210, i64 2148723244, i64 2148723265}
!226 = !{!"branch_weights", i32 1, i32 2000}
!227 = !{i8 0, i8 2}
!228 = !{!"branch_weights", i32 2000, i32 1}
!229 = !{i64 2154843669, i64 2154844157, i64 2154843706, i64 2154843762, i64 2154843796, i64 2154843820, i64 2154843861, i64 2154843882, i64 2154843910, i64 2154843944}
