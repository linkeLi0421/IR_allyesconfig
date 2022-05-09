; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/at86rf230.c_pt.bc'
source_filename = "../drivers/net/ieee802154/at86rf230.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ieee802154_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.at86rf2xx_chip_data = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.at86rf230_platform_data = type { i32, i32, i32, i8 }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.at86rf230_local = type { ptr, ptr, ptr, ptr, i32, i8, %struct.completion, %struct.at86rf230_state_change, i32, i8, i8, i8, i8, ptr, %struct.at86rf230_state_change, %struct.at86rf230_trac }
%struct.at86rf230_state_change = type { ptr, i32, %struct.hrtimer, %struct.spi_message, %struct.spi_transfer, [130 x i8], ptr, i8, i8, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.at86rf230_trac = type { i64, i64, i64, i64, i64, i64 }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.ieee802154_hw_addr_filt = type { i16, i16, i64, i8 }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.99, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.100, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.101, ptr, %struct.address_space, %struct.list_head, %union.anon.102, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.99 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.100 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.101 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.102 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_at86rf230__340_1813_at86rf230_driver_init6 = internal global ptr @at86rf230_driver_init, section ".initcall6.init", align 4
@at86rf230_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @at86rf230_device_id, ptr @at86rf230_probe, ptr @at86rf230_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at86rf230_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_at86rf230_driver_exit = internal global ptr @at86rf230_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description341 = internal constant [51 x i8] c"at86rf230.description=AT86RF230 Transceiver Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [48 x i8] c"at86rf230.file=drivers/net/ieee802154/at86rf230\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [25 x i8] c"at86rf230.license=GPL v2\00", section ".modinfo", align 1
@at86rf230_device_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"at86rf230\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at86rf231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at86rf233\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"at86rf212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at86rf230\00", [22 x i8] zeroinitializer }, align 32
@at86rf230_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at86rf230\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at86rf231\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at86rf233\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at86rf212\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@at86rf230_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no IRQ specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at86rf230_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ieee802154/at86rf230.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at86rf230_probe._entry_ptr = internal global ptr @at86rf230_probe._entry, section ".printk_index", align 4
@at86rf230_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to parse platform_data: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@at86rf230_probe._entry_ptr.8 = internal global ptr @at86rf230_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rstn\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"slp_tr\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@at86rf230_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @at86rf230_start, ptr @at86rf230_stop, ptr null, ptr @at86rf230_xmit, ptr @at86rf230_ed, ptr @at86rf230_channel, ptr @at86rf230_set_hw_addr_filt, ptr @at86rf230_set_txpower, ptr @at86rf230_set_lbt, ptr @at86rf230_set_cca_mode, ptr @at86rf230_set_cca_ed_level, ptr @at86rf230_set_csma_params, ptr @at86rf230_set_frame_retries, ptr @at86rf230_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@at86rf230_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@at86rf230_regmap_spi_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @at86rf230_reg_writeable, ptr @at86rf230_reg_readable, ptr @at86rf230_reg_volatile, ptr @at86rf230_reg_precious, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 128, i32 192, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"at86rf230:1712:(&at86rf230_regmap_spi_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@at86rf230_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@at86rf230_probe._entry_ptr.14 = internal global ptr @at86rf230_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sleep-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xtal-trim\00", [22 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@at86rf230_async_state_assert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 462, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"unexcept state change from 0x%02x to 0x%02x. Actual state: 0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"at86rf230_async_state_assert\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at86rf230_async_state_assert._entry_ptr = internal global ptr @at86rf230_async_state_assert._entry, section ".printk_index", align 4
@at86rf230_async_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 373, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spi_async error %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at86rf230_async_error\00", [42 x i8] zeroinitializer }, align 32
@at86rf230_async_error._entry_ptr = internal global ptr @at86rf230_async_error._entry, section ".printk_index", align 4
@at86rf230_detect_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 1542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Non-Atmel dev found (MAN_ID %02x %02x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"at86rf230_detect_device\00", [40 x i8] zeroinitializer }, align 32
@at86rf230_detect_device._entry_ptr = internal global ptr @at86rf230_detect_device._entry, section ".printk_index", align 4
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at86rf231\00", [22 x i8] zeroinitializer }, align 32
@at86rf231_data = internal global { %struct.at86rf2xx_chip_data, [32 x i8] } { %struct.at86rf2xx_chip_data { i16 330, i16 24, i16 37, i16 110, i16 110, i16 35, i16 1000, i16 4096, i16 545, i32 -91, ptr @at86rf23x_set_channel, ptr @at86rf23x_set_txpower }, [32 x i8] zeroinitializer }, align 32
@at86rf231_powers = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 300, i32 280, i32 230, i32 180, i32 130, i32 70, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -500, i32 -700, i32 -900, i32 -1200, i32 -1700], [32 x i8] zeroinitializer }, align 32
@at86rf231_ed_levels = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -9100, i32 -8900, i32 -8700, i32 -8500, i32 -8300, i32 -8100, i32 -7900, i32 -7700, i32 -7500, i32 -7300, i32 -7100, i32 -6900, i32 -6700, i32 -6500, i32 -6300, i32 -6100], [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at86rf212\00", [22 x i8] zeroinitializer }, align 32
@at86rf212_data = internal global { %struct.at86rf2xx_chip_data, [32 x i8] } { %struct.at86rf2xx_chip_data { i16 330, i16 11, i16 26, i16 200, i16 200, i16 35, i16 1000, i16 4096, i16 545, i32 -100, ptr @at86rf212_set_channel, ptr @at86rf212_set_txpower }, [32 x i8] zeroinitializer }, align 32
@at86rf212_powers = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 500, i32 400, i32 300, i32 200, i32 100, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -500, i32 -600, i32 -700, i32 -800, i32 -900, i32 -1000, i32 -1100, i32 -1200, i32 -1300, i32 -1400, i32 -1500, i32 -1600, i32 -1700, i32 -1800, i32 -1900, i32 -2000, i32 -2100, i32 -2200, i32 -2300, i32 -2400, i32 -2500, i32 -2600], [32 x i8] zeroinitializer }, align 32
@at86rf212_ed_levels_100 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -10000, i32 -9800, i32 -9600, i32 -9400, i32 -9200, i32 -9000, i32 -8800, i32 -8600, i32 -8400, i32 -8200, i32 -8000, i32 -7800, i32 -7600, i32 -7400, i32 -7200, i32 -7000], [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"at86rf233\00", [22 x i8] zeroinitializer }, align 32
@at86rf233_data = internal global { %struct.at86rf2xx_chip_data, [32 x i8] } { %struct.at86rf2xx_chip_data { i16 330, i16 11, i16 26, i16 80, i16 80, i16 35, i16 1000, i16 4096, i16 545, i32 -94, ptr @at86rf23x_set_channel, ptr @at86rf23x_set_txpower }, [32 x i8] zeroinitializer }, align 32
@at86rf233_powers = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 400, i32 370, i32 340, i32 300, i32 250, i32 200, i32 100, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -600, i32 -800, i32 -1200, i32 -1700], [32 x i8] zeroinitializer }, align 32
@at86rf233_ed_levels = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -9400, i32 -9200, i32 -9000, i32 -8800, i32 -8600, i32 -8400, i32 -8200, i32 -8000, i32 -7800, i32 -7600, i32 -7400, i32 -7200, i32 -7000, i32 -6800, i32 -6600, i32 -6400], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@at86rf230_detect_device._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.24, ptr @.str.3, i32 1613, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Detected %s chip version %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at86rf230_detect_device._entry_ptr.32 = internal global ptr @at86rf230_detect_device._entry.29, section ".printk_index", align 4
@at86rf212_ed_levels_98 = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 -9800, i32 -9600, i32 -9400, i32 -9200, i32 -9000, i32 -8800, i32 -8600, i32 -8400, i32 -8200, i32 -8000, i32 -7800, i32 -7600, i32 -7400, i32 -7200, i32 -7000, i32 -6800], [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@at86rf230_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVDD error\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at86rf230_hw_init\00", [46 x i8] zeroinitializer }, align 32
@at86rf230_hw_init._entry_ptr = internal global ptr @at86rf230_hw_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@at86rf230_irq_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 799, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"not supported irq %02x received\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at86rf230_irq_status\00", [43 x i8] zeroinitializer }, align 32
@at86rf230_irq_status._entry_ptr = internal global ptr @at86rf230_irq_status._entry, section ".printk_index", align 4
@at86rf230_tx_trac_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"received tx trac status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@at86rf230_rx_trac_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"received rx trac status %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.at86rf230_debugfs_init.debugfs_dir_name = private unnamed_addr constant [37 x i8] c"at86rf230-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@at86rf230_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"trac_stats\00", [21 x i8] zeroinitializer }, align 32
@at86rf230_stats_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @at86rf230_stats_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SUCCESS:\09\09%8llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SUCCESS_DATA_PENDING:\09%8llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SUCCESS_WAIT_FOR_ACK:\09%8llu\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CHANNEL_ACCESS_FAILURE:\09%8llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"NO_ACK:\09\09\09%8llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INVALID:\09\09%8llu\0A\00", [47 x i8] zeroinitializer }, align 32
@at86rf230_remove.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 1, i8 -67, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at86rf230_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unregistered at86rf230\0A\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 7, i64 11]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 8, i64 17]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 22, i64 25]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 9, i64 22]
@__sancov_gen_cov_switch_values.55 = internal global [38 x i64] [i64 36, i64 32, i64 2, i64 3, i64 4, i64 5, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 16, i64 17, i64 18, i64 21, i64 23, i64 24, i64 26, i64 27, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@__sancov_gen_cov_switch_values.56 = internal global [45 x i64] [i64 43, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 21, i64 23, i64 24, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 4294967196, i64 4294967198]
@__sancov_gen_cov_switch_values.58 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 3, i64 5, i64 7]
@__sancov_gen_cov_switch_values.59 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"at86rf230_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1803, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"at86rf230_device_id\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1794, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1807, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"at86rf230_of_match\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1785, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1668, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1674, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1680, i32 30 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1687, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"at86rf230_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1319, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [28 x i8] c"at86rf230_regmap_spi_config\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 325, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1712, i32 15 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1715, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1505, i32 46 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1506, i32 48 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1507, i32 46 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 461, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 373, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1541, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1568, i32 10 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"at86rf231_data\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1351, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"at86rf231_powers\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1164, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"at86rf231_ed_levels\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 998, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1579, i32 10 }
@___asan_gen_.174 = private unnamed_addr constant [15 x i8] c"at86rf212_data\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1366, i32 35 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"at86rf212_powers\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1170, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant [24 x i8] c"at86rf212_ed_levels_100\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1003, i32 18 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1593, i32 10 }
@___asan_gen_.186 = private unnamed_addr constant [15 x i8] c"at86rf233_data\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1336, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"at86rf233_powers\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1159, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"at86rf233_ed_levels\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 993, i32 18 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1604, i32 10 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1613, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [23 x i8] c"at86rf212_ed_levels_98\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1008, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.214, i32 87, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1477, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 798, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 696, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 754, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant [23 x i8] c"at86rf230_debugfs_root\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1619, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1646, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant [21 x i8] c"at86rf230_stats_fops\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1636, i32 1 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1625, i32 19 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1626, i32 19 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1628, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1630, i32 19 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1632, i32 19 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1633, i32 19 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [38 x i8] c"../drivers/net/ieee802154/at86rf230.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1780, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_license343, ptr @__exitcall_at86rf230_driver_exit, ptr @__initcall__kmod_at86rf230__340_1813_at86rf230_driver_init6, ptr @at86rf230_async_error._entry, ptr @at86rf230_async_error._entry_ptr, ptr @at86rf230_async_state_assert._entry, ptr @at86rf230_async_state_assert._entry_ptr, ptr @at86rf230_detect_device._entry, ptr @at86rf230_detect_device._entry.29, ptr @at86rf230_detect_device._entry_ptr, ptr @at86rf230_detect_device._entry_ptr.32, ptr @at86rf230_driver_exit, ptr @at86rf230_hw_init._entry, ptr @at86rf230_hw_init._entry_ptr, ptr @at86rf230_irq_status._entry, ptr @at86rf230_irq_status._entry_ptr, ptr @at86rf230_probe._entry, ptr @at86rf230_probe._entry.12, ptr @at86rf230_probe._entry.6, ptr @at86rf230_probe._entry_ptr, ptr @at86rf230_probe._entry_ptr.14, ptr @at86rf230_probe._entry_ptr.8, ptr @at86rf230_driver, ptr @at86rf230_device_id, ptr @.str, ptr @at86rf230_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @at86rf230_ops, ptr @at86rf230_probe._key, ptr @at86rf230_regmap_spi_config, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @at86rf231_data, ptr @at86rf231_powers, ptr @at86rf231_ed_levels, ptr @.str.26, ptr @at86rf212_data, ptr @at86rf212_powers, ptr @at86rf212_ed_levels_100, ptr @.str.27, ptr @at86rf233_data, ptr @at86rf233_powers, ptr @at86rf233_ed_levels, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @at86rf212_ed_levels_98, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @at86rf230_debugfs_root, ptr @.str.40, ptr @at86rf230_stats_fops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_device_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_regmap_spi_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_async_state_assert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_async_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_detect_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf231_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf231_powers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf231_ed_levels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_powers to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_ed_levels_100 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf233_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf233_powers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf233_ed_levels to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_detect_device._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf212_ed_levels_98 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_irq_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at86rf230_stats_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @at86rf230_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @at86rf230_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_probe(ptr noundef %spi) #2 align 64 {
entry:
  %dvdd.i = alloca i32, align 4
  %csma_seed.i = alloca [2 x i8], align 1
  %part.i = alloca i32, align 4
  %version.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %status = alloca i32, align 4
  %xtal_trim = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #10
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %xtal_trim) #10
  %1 = ptrtoint ptr %xtal_trim to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %xtal_trim, align 1
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end7.i

if.then.i:                                        ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %if.then.i.do.end4_crit_edge, label %if.end.i

if.then.i.do.end4_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %slp_tr5.i = getelementptr inbounds %struct.at86rf230_platform_data, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %slp_tr5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slp_tr5.i, align 4
  %xtal_trim6.i = getelementptr inbounds %struct.at86rf230_platform_data, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %xtal_trim6.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xtal_trim6.i, align 4
  %14 = ptrtoint ptr %xtal_trim to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %xtal_trim, align 1
  br label %if.end6

if.end7.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %7, ptr noundef nonnull @.str.15, i32 noundef 0, ptr noundef null) #10
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call.i33.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %16, ptr noundef nonnull @.str.16, i32 noundef 0, ptr noundef null) #10
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef %18, ptr noundef nonnull @.str.17, ptr noundef nonnull %xtal_trim, i32 noundef 1, i32 noundef 0) #10
  %19 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %cmp.i = icmp sgt i32 %19, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %19)
  %cmp16.not.i = icmp eq i32 %19, -22
  %or.cond.i = or i1 %cmp.i, %cmp16.not.i
  br i1 %or.cond.i, label %if.end7.i.if.end6_crit_edge, label %if.end7.i.do.end4_crit_edge

if.end7.i.do.end4_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

if.end7.i.if.end6_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end4:                                          ; preds = %if.end7.i.do.end4_crit_edge, %if.then.i.do.end4_crit_edge
  %retval.0.i.ph = phi i32 [ %19, %if.end7.i.do.end4_crit_edge ], [ -2, %if.then.i.do.end4_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.if.end6_crit_edge, %if.end.i
  %rstn.0 = phi i32 [ %9, %if.end.i ], [ %call.i.i, %if.end7.i.if.end6_crit_edge ]
  %slp_tr.0 = phi i32 [ %11, %if.end.i ], [ %call.i33.i, %if.end7.i.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %rstn.0)
  %20 = icmp ult i32 %rstn.0, 2048
  br i1 %20, label %if.then8, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then8:                                         ; preds = %if.end6
  %call10 = call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %rstn.0, i32 noundef 2, ptr noundef nonnull @.str.9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then8.if.end14_crit_edge, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8.if.end14_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end14:                                         ; preds = %if.then8.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %slp_tr.0)
  %21 = icmp ult i32 %slp_tr.0, 2048
  br i1 %21, label %if.then16, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then16:                                        ; preds = %if.end14
  %call18 = call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %slp_tr.0, i32 noundef 0, ptr noundef nonnull @.str.10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end22_crit_edge, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.end22:                                         ; preds = %if.then16.if.end22_crit_edge, %if.end14.if.end22_crit_edge
  br i1 %20, label %if.then24, label %if.end22.if.end25_crit_edge

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #10
  %call.i = call ptr @gpio_to_desc(i32 noundef %rstn.0) #10
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748) #10
  %call.i137 = call ptr @gpio_to_desc(i32 noundef %rstn.0) #10
  call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i137, i32 noundef 1) #10
  call void @usleep_range_state(i32 noundef 120, i32 noundef 240, i32 noundef 2) #10
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22.if.end25_crit_edge
  %call26 = call ptr @ieee802154_alloc_hw(i32 noundef 848, ptr noundef nonnull @at86rf230_ops) #10
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end29

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %if.end25
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call26, i32 0, i32 3
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %hw30 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %hw30 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call26, ptr %hw30, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spi, ptr %25, align 8
  %slp_tr32 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 4
  %28 = ptrtoint ptr %slp_tr32 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %slp_tr.0, ptr %slp_tr32, align 8
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call26, i32 0, i32 2
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi, ptr %parent, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %call26, i32 0, i32 4
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %31, i32 0, i32 7
  call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #10
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i, align 1
  %34 = and i8 %33, -4
  %35 = or i8 %34, 2
  store i8 %35, ptr %arrayidx.i, align 1
  %call34 = call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @at86rf230_regmap_spi_config, ptr noundef nonnull @at86rf230_probe._key, ptr noundef nonnull @.str.11) #10
  %regmap = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 3
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call34, ptr %regmap, align 4
  %cmp.i138 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i138, label %if.then37, label %if.end44

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %call34 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.13, i32 noundef %37) #13
  br label %free_dev

if.end44:                                         ; preds = %if.end29
  %state = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %25, ptr %state, align 8
  %39 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %25, align 8
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i, align 4
  %irq2.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 1
  %43 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %irq2.i, align 4
  %msg.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3
  %44 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3, i32 1
  %45 = call ptr @memset(ptr %44, i32 0, i32 40)
  %46 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3, i32 10
  %48 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3, i32 10, i32 1
  %49 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %context.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 3, i32 4
  %50 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %state, ptr %context.i, align 4
  %trx.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 4
  %len.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 4, i32 2
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %len.i, align 8
  %buf.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 5
  %52 = ptrtoint ptr %trx.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i, ptr %trx.i, align 8
  %rx_buf.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 4, i32 1
  %53 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %buf.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 4, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end44.at86rf230_setup_spi_messages.exit_crit_edge

if.end44.at86rf230_setup_spi_messages.exit_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_setup_spi_messages.exit

if.end.i.i.i.i:                                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %55 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 4, i32 18, i32 1
  %56 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %57 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %at86rf230_setup_spi_messages.exit

at86rf230_setup_spi_messages.exit:                ; preds = %if.end.i.i.i.i, %if.end44.at86rf230_setup_spi_messages.exit_crit_edge
  %timer.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 2
  call void @hrtimer_init(ptr noundef %timer.i, i32 noundef 1, i32 noundef 1) #10
  %function.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 7, i32 2, i32 2
  %58 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @at86rf230_async_state_timer, ptr %function.i, align 8
  %tx = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14
  %59 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %25, ptr %tx, align 8
  %60 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %25, align 8
  %irq.i139 = getelementptr inbounds %struct.spi_device, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %irq.i139 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq.i139, align 4
  %irq2.i140 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 1
  %64 = ptrtoint ptr %irq2.i140 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %irq2.i140, align 4
  %msg.i141 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3
  %65 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3, i32 1
  %66 = call ptr @memset(ptr %65, i32 0, i32 40)
  %67 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %msg.i141, ptr %msg.i141, align 4
  %prev.i.i.i.i142 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3, i32 0, i32 1
  %68 = ptrtoint ptr %prev.i.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i141, ptr %prev.i.i.i.i142, align 4
  %resources.i.i.i143 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3, i32 10
  %69 = ptrtoint ptr %resources.i.i.i143 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %resources.i.i.i143, ptr %resources.i.i.i143, align 4
  %prev.i2.i.i.i144 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3, i32 10, i32 1
  %70 = ptrtoint ptr %prev.i2.i.i.i144 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %resources.i.i.i143, ptr %prev.i2.i.i.i144, align 4
  %context.i145 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 3, i32 4
  %71 = ptrtoint ptr %context.i145 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %tx, ptr %context.i145, align 4
  %trx.i146 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 4
  %len.i147 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 4, i32 2
  %72 = ptrtoint ptr %len.i147 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %len.i147, align 8
  %buf.i148 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 5
  %73 = ptrtoint ptr %trx.i146 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %buf.i148, ptr %trx.i146, align 8
  %rx_buf.i149 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 4, i32 1
  %74 = ptrtoint ptr %rx_buf.i149 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %buf.i148, ptr %rx_buf.i149, align 4
  %transfer_list.i.i150 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 4, i32 18
  %call.i.i.i.i151 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i150, ptr noundef %msg.i141, ptr noundef %msg.i141) #10
  br i1 %call.i.i.i.i151, label %if.end.i.i.i.i153, label %at86rf230_setup_spi_messages.exit.at86rf230_setup_spi_messages.exit156_crit_edge

at86rf230_setup_spi_messages.exit.at86rf230_setup_spi_messages.exit156_crit_edge: ; preds = %at86rf230_setup_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_setup_spi_messages.exit156

if.end.i.i.i.i153:                                ; preds = %at86rf230_setup_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %prev.i.i.i.i142 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %transfer_list.i.i150, ptr %prev.i.i.i.i142, align 4
  %76 = ptrtoint ptr %transfer_list.i.i150 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i141, ptr %transfer_list.i.i150, align 4
  %prev3.i.i.i.i152 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 4, i32 18, i32 1
  %77 = ptrtoint ptr %prev3.i.i.i.i152 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i141, ptr %prev3.i.i.i.i152, align 4
  %78 = ptrtoint ptr %msg.i141 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %transfer_list.i.i150, ptr %msg.i141, align 4
  br label %at86rf230_setup_spi_messages.exit156

at86rf230_setup_spi_messages.exit156:             ; preds = %if.end.i.i.i.i153, %at86rf230_setup_spi_messages.exit.at86rf230_setup_spi_messages.exit156_crit_edge
  %timer.i154 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 2
  call void @hrtimer_init(ptr noundef %timer.i154, i32 noundef 1, i32 noundef 1) #10
  %function.i155 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 14, i32 2, i32 2
  %79 = ptrtoint ptr %function.i155 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @at86rf230_async_state_timer, ptr %function.i155, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %part.i) #10
  %80 = ptrtoint ptr %part.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %part.i, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version.i) #10
  %81 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %version.i, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #10
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %val.i, align 4, !annotation !148
  %call.i157 = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 30, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i158 = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i158, label %if.end.i159, label %at86rf230_setup_spi_messages.exit156.at86rf230_detect_device.exit_crit_edge

at86rf230_setup_spi_messages.exit156.at86rf230_detect_device.exit_crit_edge: ; preds = %at86rf230_setup_spi_messages.exit156
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_detect_device.exit

if.end.i159:                                      ; preds = %at86rf230_setup_spi_messages.exit156
  %83 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i, align 4
  %call2.i = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 31, ptr noundef nonnull %val.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i159.at86rf230_detect_device.exit_crit_edge

if.end.i159.at86rf230_detect_device.exit_crit_edge: ; preds = %if.end.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_detect_device.exit

if.end5.i:                                        ; preds = %if.end.i159
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %shl.i = shl i32 %86, 8
  %or7.i = or i32 %shl.i, %84
  %call9.i = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 28, ptr noundef nonnull %part.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end5.i.at86rf230_detect_device.exit_crit_edge

if.end5.i.at86rf230_detect_device.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_detect_device.exit

if.end12.i:                                       ; preds = %if.end5.i
  %call13.i = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 29, ptr noundef nonnull %version.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end12.i.at86rf230_detect_device.exit_crit_edge

if.end12.i.at86rf230_detect_device.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_detect_device.exit

if.end16.i:                                       ; preds = %if.end12.i
  %conv17.i = and i32 %or7.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv17.i)
  %cmp.not.i = icmp eq i32 %conv17.i, 31
  br i1 %cmp.not.i, label %if.end22.i, label %at86rf230_detect_device.exit.thread

at86rf230_detect_device.exit.thread:              ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  %87 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %25, align 8
  %89 = lshr i32 %conv17.i, 8
  %and.i = and i32 %84, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.23, i32 noundef %89, i32 noundef %and.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part.i) #10
  br label %free_dev

if.end22.i:                                       ; preds = %if.end16.i
  %90 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hw30, align 4
  %flags.i = getelementptr inbounds %struct.ieee802154_hw, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 61, ptr %flags.i, align 4
  %93 = load ptr, ptr %hw30, align 4
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %phy.i, align 4
  %flags24.i = getelementptr inbounds %struct.wpan_phy, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %flags24.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 14, ptr %flags24.i, align 4
  %97 = load ptr, ptr %hw30, align 4
  %phy26.i = getelementptr inbounds %struct.ieee802154_hw, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %phy26.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %phy26.i, align 4
  %cca_modes.i = getelementptr inbounds %struct.wpan_phy, ptr %99, i32 0, i32 4, i32 1
  %100 = ptrtoint ptr %cca_modes.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 14, ptr %cca_modes.i, align 4
  %101 = load ptr, ptr %hw30, align 4
  %phy28.i = getelementptr inbounds %struct.ieee802154_hw, ptr %101, i32 0, i32 4
  %102 = ptrtoint ptr %phy28.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %phy28.i, align 4
  %cca_opts.i = getelementptr inbounds %struct.wpan_phy, ptr %103, i32 0, i32 4, i32 2
  %104 = ptrtoint ptr %cca_opts.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 3, ptr %cca_opts.i, align 4
  %105 = load ptr, ptr %hw30, align 4
  %phy31.i = getelementptr inbounds %struct.ieee802154_hw, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %phy31.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %phy31.i, align 4
  %cca.i = getelementptr inbounds %struct.wpan_phy, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %cca.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 1, ptr %cca.i, align 8
  %109 = ptrtoint ptr %part.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %part.i, align 4
  %111 = zext i32 %110 to i64
  call void @__sanitizer_cov_trace_switch(i64 %111, ptr @__sancov_gen_cov_switch_values)
  switch i32 %110, label %sw.default.i [
    i32 2, label %if.end22.i.do.end137.i_crit_edge
    i32 3, label %sw.bb32.i
    i32 7, label %sw.bb52.i
    i32 11, label %sw.bb92.i
  ]

if.end22.i.do.end137.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end137.i

sw.bb32.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 2
  %112 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @at86rf231_data, ptr %data.i, align 8
  %113 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %hw30, align 4
  %phy34.i = getelementptr inbounds %struct.ieee802154_hw, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %phy34.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy34.i, align 4
  %supported35.i = getelementptr inbounds %struct.wpan_phy, ptr %116, i32 0, i32 4
  %117 = ptrtoint ptr %supported35.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 134215680, ptr %supported35.i, align 4
  %118 = load ptr, ptr %hw30, align 4
  %phy37.i = getelementptr inbounds %struct.ieee802154_hw, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %phy37.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %phy37.i, align 4
  %current_channel.i = getelementptr inbounds %struct.wpan_phy, ptr %120, i32 0, i32 2
  %121 = ptrtoint ptr %current_channel.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 11, ptr %current_channel.i, align 8
  %122 = load ptr, ptr %hw30, align 4
  %phy39.i = getelementptr inbounds %struct.ieee802154_hw, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %phy39.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %phy39.i, align 4
  %symbol_duration.i = getelementptr inbounds %struct.wpan_phy, ptr %124, i32 0, i32 9
  %125 = ptrtoint ptr %symbol_duration.i to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 16, ptr %symbol_duration.i, align 4
  br label %sw.epilog.i

sw.bb52.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %data53.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 2
  %126 = ptrtoint ptr %data53.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @at86rf212_data, ptr %data53.i, align 8
  %127 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw30, align 4
  %flags55.i = getelementptr inbounds %struct.ieee802154_hw, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %flags55.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %flags55.i, align 4
  %or56.i = or i32 %130, 2
  store i32 %or56.i, ptr %flags55.i, align 4
  %131 = load ptr, ptr %hw30, align 4
  %phy58.i = getelementptr inbounds %struct.ieee802154_hw, ptr %131, i32 0, i32 4
  %132 = ptrtoint ptr %phy58.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %phy58.i, align 4
  %supported59.i = getelementptr inbounds %struct.wpan_phy, ptr %133, i32 0, i32 4
  %134 = ptrtoint ptr %supported59.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 2047, ptr %supported59.i, align 4
  %135 = load ptr, ptr %hw30, align 4
  %phy63.i = getelementptr inbounds %struct.ieee802154_hw, ptr %135, i32 0, i32 4
  %136 = ptrtoint ptr %phy63.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phy63.i, align 4
  %arrayidx66.i = getelementptr %struct.wpan_phy, ptr %137, i32 0, i32 4, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 2047, ptr %arrayidx66.i, align 4
  %139 = load ptr, ptr %hw30, align 4
  %phy68.i = getelementptr inbounds %struct.ieee802154_hw, ptr %139, i32 0, i32 4
  %140 = ptrtoint ptr %phy68.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %phy68.i, align 4
  %current_channel69.i = getelementptr inbounds %struct.wpan_phy, ptr %141, i32 0, i32 2
  %142 = ptrtoint ptr %current_channel69.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 5, ptr %current_channel69.i, align 8
  %143 = load ptr, ptr %hw30, align 4
  %phy71.i = getelementptr inbounds %struct.ieee802154_hw, ptr %143, i32 0, i32 4
  %144 = ptrtoint ptr %phy71.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %phy71.i, align 4
  %symbol_duration72.i = getelementptr inbounds %struct.wpan_phy, ptr %145, i32 0, i32 9
  %146 = ptrtoint ptr %symbol_duration72.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 25, ptr %symbol_duration72.i, align 4
  %147 = load ptr, ptr %hw30, align 4
  %phy74.i = getelementptr inbounds %struct.ieee802154_hw, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %phy74.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %phy74.i, align 4
  %lbt.i = getelementptr inbounds %struct.wpan_phy, ptr %149, i32 0, i32 4, i32 4
  %150 = ptrtoint ptr %lbt.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 3, ptr %lbt.i, align 4
  br label %sw.epilog.i

sw.bb92.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %data93.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 2
  %151 = ptrtoint ptr %data93.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @at86rf233_data, ptr %data93.i, align 8
  %152 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw30, align 4
  %phy95.i = getelementptr inbounds %struct.ieee802154_hw, ptr %153, i32 0, i32 4
  %154 = ptrtoint ptr %phy95.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %phy95.i, align 4
  %supported96.i = getelementptr inbounds %struct.wpan_phy, ptr %155, i32 0, i32 4
  %156 = ptrtoint ptr %supported96.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 134215680, ptr %supported96.i, align 4
  %157 = load ptr, ptr %hw30, align 4
  %phy100.i = getelementptr inbounds %struct.ieee802154_hw, ptr %157, i32 0, i32 4
  %158 = ptrtoint ptr %phy100.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %phy100.i, align 4
  %current_channel101.i = getelementptr inbounds %struct.wpan_phy, ptr %159, i32 0, i32 2
  %160 = ptrtoint ptr %current_channel101.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 13, ptr %current_channel101.i, align 8
  %161 = load ptr, ptr %hw30, align 4
  %phy103.i = getelementptr inbounds %struct.ieee802154_hw, ptr %161, i32 0, i32 4
  %162 = ptrtoint ptr %phy103.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %phy103.i, align 4
  %symbol_duration104.i = getelementptr inbounds %struct.wpan_phy, ptr %163, i32 0, i32 9
  %164 = ptrtoint ptr %symbol_duration104.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 16, ptr %symbol_duration104.i, align 4
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end137.i

sw.epilog.i:                                      ; preds = %sw.bb92.i, %sw.bb52.i, %sw.bb32.i
  %at86rf233_powers.sink.i = phi ptr [ @at86rf233_powers, %sw.bb92.i ], [ @at86rf212_powers, %sw.bb52.i ], [ @at86rf231_powers, %sw.bb32.i ]
  %.sink.i = phi i32 [ 16, %sw.bb92.i ], [ 32, %sw.bb52.i ], [ 16, %sw.bb32.i ]
  %at86rf233_ed_levels.sink.i = phi ptr [ @at86rf233_ed_levels, %sw.bb92.i ], [ @at86rf212_ed_levels_100, %sw.bb52.i ], [ @at86rf231_ed_levels, %sw.bb32.i ]
  %chip.0.i = phi ptr [ @.str.27, %sw.bb92.i ], [ @.str.26, %sw.bb52.i ], [ @.str.25, %sw.bb32.i ]
  %165 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw30, align 4
  %phy106.i = getelementptr inbounds %struct.ieee802154_hw, ptr %166, i32 0, i32 4
  %167 = ptrtoint ptr %phy106.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %phy106.i, align 4
  %tx_powers108.i = getelementptr inbounds %struct.wpan_phy, ptr %168, i32 0, i32 4, i32 15
  %169 = ptrtoint ptr %tx_powers108.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %at86rf233_powers.sink.i, ptr %tx_powers108.i, align 4
  %170 = load ptr, ptr %hw30, align 4
  %phy110.i = getelementptr inbounds %struct.ieee802154_hw, ptr %170, i32 0, i32 4
  %171 = ptrtoint ptr %phy110.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %phy110.i, align 4
  %tx_powers_size112.i = getelementptr inbounds %struct.wpan_phy, ptr %172, i32 0, i32 4, i32 13
  %173 = ptrtoint ptr %tx_powers_size112.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %.sink.i, ptr %tx_powers_size112.i, align 4
  %174 = load ptr, ptr %hw30, align 4
  %phy114.i = getelementptr inbounds %struct.ieee802154_hw, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %phy114.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %phy114.i, align 4
  %cca_ed_levels116.i = getelementptr inbounds %struct.wpan_phy, ptr %176, i32 0, i32 4, i32 16
  %177 = ptrtoint ptr %cca_ed_levels116.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %at86rf233_ed_levels.sink.i, ptr %cca_ed_levels116.i, align 4
  %178 = load ptr, ptr %hw30, align 4
  %phy118.i = getelementptr inbounds %struct.ieee802154_hw, ptr %178, i32 0, i32 4
  %179 = ptrtoint ptr %phy118.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %phy118.i, align 4
  %cca_ed_levels_size120.i = getelementptr inbounds %struct.wpan_phy, ptr %180, i32 0, i32 4, i32 14
  %181 = ptrtoint ptr %cca_ed_levels_size120.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 16, ptr %cca_ed_levels_size120.i, align 4
  %182 = load ptr, ptr %hw30, align 4
  %phy122.i = getelementptr inbounds %struct.ieee802154_hw, ptr %182, i32 0, i32 4
  %183 = ptrtoint ptr %phy122.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %phy122.i, align 4
  %cca_ed_levels124.i = getelementptr inbounds %struct.wpan_phy, ptr %184, i32 0, i32 4, i32 16
  %185 = ptrtoint ptr %cca_ed_levels124.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %cca_ed_levels124.i, align 4
  %arrayidx125.i = getelementptr i32, ptr %186, i32 7
  %187 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %arrayidx125.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %184, i32 0, i32 8
  %189 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %cca_ed_level.i, align 8
  %190 = load ptr, ptr %hw30, align 4
  %phy129.i = getelementptr inbounds %struct.ieee802154_hw, ptr %190, i32 0, i32 4
  %191 = ptrtoint ptr %phy129.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %phy129.i, align 4
  %tx_powers131.i = getelementptr inbounds %struct.wpan_phy, ptr %192, i32 0, i32 4, i32 15
  %193 = ptrtoint ptr %tx_powers131.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %tx_powers131.i, align 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %194, align 4
  %transmit_power.i = getelementptr inbounds %struct.wpan_phy, ptr %192, i32 0, i32 5
  %197 = ptrtoint ptr %transmit_power.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %196, ptr %transmit_power.i, align 4
  br label %do.end137.i

do.end137.i:                                      ; preds = %sw.epilog.i, %sw.default.i, %if.end22.i.do.end137.i_crit_edge
  %chip.1.i = phi ptr [ @.str.28, %sw.default.i ], [ %chip.0.i, %sw.epilog.i ], [ @.str, %if.end22.i.do.end137.i_crit_edge ]
  %rc.0.i = phi i32 [ -524, %sw.default.i ], [ 0, %sw.epilog.i ], [ -524, %if.end22.i.do.end137.i_crit_edge ]
  %198 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %25, align 8
  %200 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %version.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %199, ptr noundef nonnull @.str.30, ptr noundef nonnull %chip.1.i, i32 noundef %201) #13
  br label %at86rf230_detect_device.exit

at86rf230_detect_device.exit:                     ; preds = %do.end137.i, %if.end12.i.at86rf230_detect_device.exit_crit_edge, %if.end5.i.at86rf230_detect_device.exit_crit_edge, %if.end.i159.at86rf230_detect_device.exit_crit_edge, %at86rf230_setup_spi_messages.exit156.at86rf230_detect_device.exit_crit_edge
  %retval.0.i160 = phi i32 [ %rc.0.i, %do.end137.i ], [ %call.i157, %at86rf230_setup_spi_messages.exit156.at86rf230_detect_device.exit_crit_edge ], [ %call2.i, %if.end.i159.at86rf230_detect_device.exit_crit_edge ], [ %call9.i, %if.end5.i.at86rf230_detect_device.exit_crit_edge ], [ %call13.i, %if.end12.i.at86rf230_detect_device.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %part.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i160)
  %cmp46 = icmp slt i32 %retval.0.i160, 0
  br i1 %cmp46, label %at86rf230_detect_device.exit.free_dev_crit_edge, label %if.end48

at86rf230_detect_device.exit.free_dev_crit_edge:  ; preds = %at86rf230_detect_device.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dev

if.end48:                                         ; preds = %at86rf230_detect_device.exit
  %state_complete = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 6
  %202 = ptrtoint ptr %state_complete to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %state_complete, align 4
  %wait.i = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 6, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %203 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %25, ptr %driver_data.i.i, align 4
  %204 = ptrtoint ptr %xtal_trim to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %xtal_trim, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dvdd.i) #10
  %206 = ptrtoint ptr %dvdd.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -1, ptr %dvdd.i, align 4, !annotation !148
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %csma_seed.i) #10
  %207 = ptrtoint ptr %csma_seed.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 -1, ptr %csma_seed.i, align 1, !annotation !148
  %208 = getelementptr inbounds [2 x i8], ptr %csma_seed.i, i32 0, i32 1
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 -1, ptr %208, align 1, !annotation !148
  %call.i161 = call fastcc i32 @at86rf230_sync_state_change(ptr noundef %25, i32 noundef 3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end.i165, label %if.end48.at86rf230_hw_init.exit.thread_crit_edge

if.end48.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end.i165:                                      ; preds = %if.end48
  %210 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %25, align 8
  %irq.i163 = getelementptr inbounds %struct.spi_device, ptr %211, i32 0, i32 8
  %212 = ptrtoint ptr %irq.i163 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %irq.i163, align 4
  %call.i.i164 = call ptr @irq_get_irq_data(i32 noundef %213) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i164, null
  br i1 %tobool.not.i.i, label %if.end.i165.irq_get_trigger_type.exit.i_crit_edge, label %cond.true.i.i

if.end.i165.irq_get_trigger_type.exit.i_crit_edge: ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_get_trigger_type.exit.i

cond.true.i.i:                                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #12
  %common.i.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i.i164, i32 0, i32 3
  %214 = ptrtoint ptr %common.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %common.i.i.i, align 4
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %215, align 4
  %and.i.i.i = and i32 %217, 15
  br label %irq_get_trigger_type.exit.i

irq_get_trigger_type.exit.i:                      ; preds = %cond.true.i.i, %if.end.i165.irq_get_trigger_type.exit.i_crit_edge
  %cond.i.i = phi i32 [ %and.i.i.i, %cond.true.i.i ], [ 0, %if.end.i165.irq_get_trigger_type.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i.i)
  %switch.selectcmp.case1.i = icmp eq i32 %cond.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %cond.i.i)
  %switch.selectcmp.case2.i = icmp eq i32 %cond.i.i, 8
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %218 = zext i1 %switch.selectcmp.i to i32
  %call5.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 4, i32 noundef 1, i32 noundef 0, i32 noundef %218) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %irq_get_trigger_type.exit.i.at86rf230_hw_init.exit.thread_crit_edge

irq_get_trigger_type.exit.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %irq_get_trigger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end8.i:                                        ; preds = %irq_get_trigger_type.exit.i
  %call9.i166 = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 12, i32 noundef 128, i32 noundef 7, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i166)
  %tobool10.not.i167 = icmp eq i32 %call9.i166, 0
  br i1 %tobool10.not.i167, label %if.end12.i170, label %if.end8.i.at86rf230_hw_init.exit.thread_crit_edge

if.end8.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end12.i170:                                    ; preds = %if.end8.i
  %call13.i168 = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 14, i32 noundef 255, i32 noundef 0, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i168)
  %tobool14.not.i169 = icmp eq i32 %call13.i168, 0
  br i1 %tobool14.not.i169, label %if.end16.i171, label %if.end12.i170.at86rf230_hw_init.exit.thread_crit_edge

if.end12.i170.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end12.i170
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end16.i171:                                    ; preds = %if.end12.i170
  %call17.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 4, i32 noundef 2, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end16.i171.at86rf230_hw_init.exit.thread_crit_edge

if.end16.i171.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end16.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end20.i:                                       ; preds = %if.end16.i171
  call void @get_random_bytes(ptr noundef nonnull %csma_seed.i, i32 noundef 2) #10
  %219 = ptrtoint ptr %csma_seed.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %csma_seed.i, align 1
  %conv.i = zext i8 %220 to i32
  %call21.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 45, i32 noundef 255, i32 noundef 0, i32 noundef %conv.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end20.i.at86rf230_hw_init.exit.thread_crit_edge

if.end20.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end24.i:                                       ; preds = %if.end20.i
  %221 = ptrtoint ptr %208 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %208, align 1
  %conv26.i = zext i8 %222 to i32
  %call27.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 46, i32 noundef 7, i32 noundef 0, i32 noundef %conv26.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end24.i.at86rf230_hw_init.exit.thread_crit_edge

if.end24.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end30.i:                                       ; preds = %if.end24.i
  %call31.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 3, i32 noundef 8, i32 noundef 3, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.at86rf230_hw_init.exit.thread_crit_edge

if.end30.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end34.i:                                       ; preds = %if.end30.i
  %call35.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 3, i32 noundef 7, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.at86rf230_hw_init.exit.thread_crit_edge

if.end34.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end38.i:                                       ; preds = %if.end34.i
  %data.i172 = getelementptr inbounds %struct.at86rf230_local, ptr %25, i32 0, i32 2
  %223 = ptrtoint ptr %data.i172 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data.i172, align 8
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %224, align 4
  %conv39.i = zext i16 %226 to i32
  %add.i = add nuw nsw i32 %conv39.i, 100
  call void @usleep_range_state(i32 noundef %conv39.i, i32 noundef %add.i, i32 noundef 2) #10
  %conv43.i = zext i8 %205 to i32
  %call44.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 18, i32 noundef 15, i32 noundef 0, i32 noundef %conv43.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %if.end38.i.at86rf230_hw_init.exit.thread_crit_edge

if.end38.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end47.i:                                       ; preds = %if.end38.i
  %call.i98.i = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 16, ptr noundef nonnull %dvdd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98.i)
  %tobool.not.i99.i = icmp eq i32 %call.i98.i, 0
  br i1 %tobool.not.i99.i, label %if.end51.i, label %if.end47.i.at86rf230_hw_init.exit.thread_crit_edge

if.end47.i.at86rf230_hw_init.exit.thread_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_hw_init.exit.thread

if.end51.i:                                       ; preds = %if.end47.i
  %227 = ptrtoint ptr %dvdd.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %dvdd.i, align 4
  %and.i.i = lshr i32 %228, 2
  %shr.i.i = and i32 %and.i.i, 1
  store i32 %shr.i.i, ptr %dvdd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool52.not.i = icmp eq i32 %shr.i.i, 0
  br i1 %tobool52.not.i, label %do.end.i173, label %at86rf230_hw_init.exit

do.end.i173:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #12
  %229 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %25, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %230, ptr noundef nonnull @.str.34) #13
  br label %at86rf230_hw_init.exit.thread

at86rf230_hw_init.exit.thread:                    ; preds = %do.end.i173, %if.end47.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end38.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end34.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end30.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end24.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end20.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end16.i171.at86rf230_hw_init.exit.thread_crit_edge, %if.end12.i170.at86rf230_hw_init.exit.thread_crit_edge, %if.end8.i.at86rf230_hw_init.exit.thread_crit_edge, %irq_get_trigger_type.exit.i.at86rf230_hw_init.exit.thread_crit_edge, %if.end48.at86rf230_hw_init.exit.thread_crit_edge
  %retval.0.i174.ph = phi i32 [ %call.i98.i, %if.end47.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call44.i, %if.end38.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call35.i, %if.end34.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call31.i, %if.end30.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call27.i, %if.end24.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call21.i, %if.end20.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call17.i, %if.end16.i171.at86rf230_hw_init.exit.thread_crit_edge ], [ %call13.i168, %if.end12.i170.at86rf230_hw_init.exit.thread_crit_edge ], [ %call9.i166, %if.end8.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call5.i, %irq_get_trigger_type.exit.i.at86rf230_hw_init.exit.thread_crit_edge ], [ %call.i161, %if.end48.at86rf230_hw_init.exit.thread_crit_edge ], [ -22, %do.end.i173 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %csma_seed.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dvdd.i) #10
  br label %free_dev

at86rf230_hw_init.exit:                           ; preds = %if.end51.i
  %call56.i = call fastcc i32 @at86rf230_write_subreg(ptr noundef %25, i32 noundef 44, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %csma_seed.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dvdd.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56.i)
  %tobool50.not = icmp eq i32 %call56.i, 0
  br i1 %tobool50.not, label %if.end52, label %at86rf230_hw_init.exit.free_dev_crit_edge

at86rf230_hw_init.exit.free_dev_crit_edge:        ; preds = %at86rf230_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dev

if.end52:                                         ; preds = %at86rf230_hw_init.exit
  %call.i175 = call fastcc i32 @__at86rf230_read(ptr noundef %25, i32 noundef 15, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i175)
  %tobool.not.i176 = icmp eq i32 %call.i175, 0
  br i1 %tobool.not.i176, label %if.end56, label %if.end52.free_dev_crit_edge

if.end52.free_dev_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dev

if.end56:                                         ; preds = %if.end52
  %231 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %status, align 4
  %and.i177 = and i32 %232, 255
  store i32 %and.i177, ptr %status, align 4
  %233 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %irq, align 4
  %call.i180 = call ptr @irq_get_irq_data(i32 noundef %234) #10
  %tobool.not.i181 = icmp eq ptr %call.i180, null
  br i1 %tobool.not.i181, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %235 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %irq, align 4
  br label %243

irq_get_trigger_type.exit:                        ; preds = %if.end56
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i180, i32 0, i32 3
  %237 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %common.i.i, align 4
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %238, align 4
  %and.i.i182 = and i32 %240, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i182)
  %tobool59.not = icmp eq i32 %and.i.i182, 0
  %241 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %irq, align 4
  %call58.op = or i32 %and.i.i182, 128
  br i1 %tobool59.not, label %irq_get_trigger_type.exit._crit_edge, label %irq_get_trigger_type.exit._crit_edge207

irq_get_trigger_type.exit._crit_edge207:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %245

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %243

243:                                              ; preds = %irq_get_trigger_type.exit._crit_edge, %irq_get_trigger_type.exit.thread
  %244 = phi i32 [ %236, %irq_get_trigger_type.exit.thread ], [ %242, %irq_get_trigger_type.exit._crit_edge ]
  br label %245

245:                                              ; preds = %243, %irq_get_trigger_type.exit._crit_edge207
  %246 = phi i32 [ %244, %243 ], [ %242, %irq_get_trigger_type.exit._crit_edge207 ]
  %247 = phi i32 [ 132, %243 ], [ %call58.op, %irq_get_trigger_type.exit._crit_edge207 ]
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %248 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i183 = icmp eq ptr %249, null
  br i1 %tobool.not.i183, label %if.end.i184, label %.dev_name.exit_crit_edge

.dev_name.exit_crit_edge:                         ; preds = %245
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i184:                                      ; preds = %245
  call void @__sanitizer_cov_trace_pc() #12
  %250 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i184, %.dev_name.exit_crit_edge
  %retval.0.i185 = phi ptr [ %251, %if.end.i184 ], [ %249, %.dev_name.exit_crit_edge ]
  %call.i186 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %246, ptr noundef nonnull @at86rf230_isr, ptr noundef null, i32 noundef %247, ptr noundef %retval.0.i185, ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool67.not = icmp eq i32 %call.i186, 0
  br i1 %tobool67.not, label %if.end69, label %dev_name.exit.free_dev_crit_edge

dev_name.exit.free_dev_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_dev

if.end69:                                         ; preds = %dev_name.exit
  %252 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %253) #10
  call fastcc void @at86rf230_sleep(ptr noundef %25)
  call fastcc void @at86rf230_debugfs_init(ptr noundef %25)
  %254 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %hw30, align 4
  %call72 = call i32 @ieee802154_register_hw(ptr noundef %255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end69.cleanup_crit_edge, label %free_debugfs

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

free_debugfs:                                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %256 = load ptr, ptr @at86rf230_debugfs_root, align 4
  call void @debugfs_remove(ptr noundef %256) #10
  br label %free_dev

free_dev:                                         ; preds = %free_debugfs, %dev_name.exit.free_dev_crit_edge, %if.end52.free_dev_crit_edge, %at86rf230_hw_init.exit.free_dev_crit_edge, %at86rf230_hw_init.exit.thread, %at86rf230_detect_device.exit.free_dev_crit_edge, %at86rf230_detect_device.exit.thread, %if.then37
  %rc.0 = phi i32 [ %37, %if.then37 ], [ %retval.0.i160, %at86rf230_detect_device.exit.free_dev_crit_edge ], [ %call56.i, %at86rf230_hw_init.exit.free_dev_crit_edge ], [ %call.i186, %dev_name.exit.free_dev_crit_edge ], [ %call72, %free_debugfs ], [ -22, %at86rf230_detect_device.exit.thread ], [ %retval.0.i174.ph, %at86rf230_hw_init.exit.thread ], [ %call.i175, %if.end52.free_dev_crit_edge ]
  %257 = ptrtoint ptr %hw30 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hw30, align 4
  call void @ieee802154_free_hw(ptr noundef %258) #10
  br label %cleanup

cleanup:                                          ; preds = %free_dev, %if.end69.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then16.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %do.end4, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end4 ], [ %rc.0, %free_dev ], [ -22, %do.end ], [ %call10, %if.then8.cleanup_crit_edge ], [ %call18, %if.then16.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %xtal_trim) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 14, i32 noundef 255, i32 noundef 0, i32 noundef 0)
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %3) #10
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %5) #10
  %6 = load ptr, ptr @at86rf230_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %6) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at86rf230_remove.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at86rf230_remove, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !149

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at86rf230_remove.__UNIQUE_ID_ddebug339, ptr noundef %spi, ptr noundef nonnull @.str.48) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @disable_irq_nosync(i32 noundef %irq) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 352) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data, ptr %call7.i.i, align 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  %irq2.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %irq2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq2.i, align 4
  %msg.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 1
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i, ptr %msg.i, align 8
  %prev.i.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 10
  %11 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 8
  %prev.i2.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %context.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %context.i, align 4
  %trx.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 4
  %len.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len.i, align 8
  %buf.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %trx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %trx.i, align 8
  %rx_buf.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 4, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef %msg.i, ptr noundef %msg.i) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.at86rf230_setup_spi_messages.exit_crit_edge

if.end.at86rf230_setup_spi_messages.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_setup_spi_messages.exit

if.end.i.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 4, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 8
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 8
  br label %at86rf230_setup_spi_messages.exit

at86rf230_setup_spi_messages.exit:                ; preds = %if.end.i.i.i.i, %if.end.at86rf230_setup_spi_messages.exit_crit_edge
  %timer.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 2
  tail call void @hrtimer_init(ptr noundef %timer.i, i32 noundef 1, i32 noundef 1) #10
  %function.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at86rf230_async_state_timer, ptr %function.i, align 8
  %free = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %free to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %free, align 2
  %23 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -113, ptr %buf.i, align 8
  %complete = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @at86rf230_irq_status, ptr %complete, align 8
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 8
  %call2 = tail call i32 @spi_async(ptr noundef %26, ptr noundef %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %at86rf230_setup_spi_messages.exit.cleanup_crit_edge, label %if.then4

at86rf230_setup_spi_messages.exit.cleanup_crit_edge: ; preds = %at86rf230_setup_spi_messages.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then4:                                         ; preds = %at86rf230_setup_spi_messages.exit
  %to_state.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 8
  %complete1.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %call7.i.i, i32 0, i32 6
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %if.then4
  %rc.tr.i = phi i32 [ %call2, %if.then4 ], [ %call.i.i.i, %tailrecurse.i.tailrecurse.i_crit_edge ]
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i) #13
  %29 = ptrtoint ptr %to_state.i.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 3, ptr %to_state.i.i, align 1
  %30 = ptrtoint ptr %complete1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i, align 4
  %31 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -127, ptr %buf.i, align 8
  %32 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @at86rf230_async_state_change_start, ptr %complete, align 8
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 8
  %call.i.i.i = tail call i32 @spi_async(ptr noundef %34, ptr noundef %msg.i) #10
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %tailrecurse.i.cleanup.sink.split_crit_edge, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tailrecurse.i.cleanup.sink.split_crit_edge:       ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %tailrecurse.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  tail call void @enable_irq(i32 noundef %irq) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %at86rf230_setup_spi_messages.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %at86rf230_setup_spi_messages.exit.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at86rf230_sleep(ptr nocapture noundef %lp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %slp_tr = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 4
  %0 = ptrtoint ptr %slp_tr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slp_tr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %1)
  %2 = icmp ult i32 %1, 2048
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %1) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 1) #10
  %data = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 8
  %t_off_to_sleep = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %t_off_to_sleep to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %t_off_to_sleep, align 2
  %conv = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv, 10
  tail call void @usleep_range_state(i32 noundef %conv, i32 noundef %add, i32 noundef 2) #10
  %sleep = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 5
  %7 = ptrtoint ptr %sleep to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %sleep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at86rf230_debugfs_init(ptr noundef %lp) unnamed_addr #2 align 64 {
entry:
  %debugfs_dir_name = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %debugfs_dir_name) #10
  %0 = call ptr @memcpy(ptr %debugfs_dir_name, ptr @__const.at86rf230_debugfs_init.debugfs_dir_name, i32 37)
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call1 = call ptr @strncat(ptr noundef nonnull %debugfs_dir_name, ptr noundef %retval.0.i, i32 noundef 36)
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %debugfs_dir_name, ptr noundef null) #10
  store ptr %call3, ptr @at86rf230_debugfs_root, align 4
  %call4 = call ptr @debugfs_create_file(ptr noundef nonnull @.str.40, i16 noundef zeroext 292, ptr noundef %call3, ptr noundef %lp, ptr noundef nonnull @at86rf230_stats_fops) #10
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %debugfs_dir_name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %trac = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15
  %2 = call ptr @memset(ptr %trac, i32 0, i32 48)
  %slp_tr.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %5 = icmp ult i32 %4, 2048
  br i1 %5, label %if.then.i, label %entry.at86rf230_awake.exit_crit_edge

entry.at86rf230_awake.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_awake.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %4) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #10
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 8
  %t_sleep_to_off.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %t_sleep_to_off.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %t_sleep_to_off.i, align 4
  %conv.i = zext i16 %9 to i32
  %add.i = add nuw nsw i32 %conv.i, 100
  tail call void @usleep_range_state(i32 noundef %conv.i, i32 noundef %add.i, i32 noundef 2) #10
  %sleep.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %sleep.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %sleep.i, align 4
  br label %at86rf230_awake.exit

at86rf230_awake.exit:                             ; preds = %if.then.i, %entry.at86rf230_awake.exit_crit_edge
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %12, i32 0, i32 8
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %14) #10
  %call = tail call fastcc i32 @at86rf230_sync_state_change(ptr noundef %1, i32 noundef 22)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  %csma_seed = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %csma_seed) #10
  %2 = ptrtoint ptr %csma_seed to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %csma_seed, align 1, !annotation !148
  %3 = getelementptr inbounds [2 x i8], ptr %csma_seed, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !148
  %call = tail call fastcc i32 @at86rf230_sync_state_change(ptr noundef %1, i32 noundef 3)
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %irq = getelementptr inbounds %struct.spi_device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #10
  call void @get_random_bytes(ptr noundef nonnull %csma_seed, i32 noundef 2) #10
  %9 = ptrtoint ptr %csma_seed to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %csma_seed, align 1
  %conv = zext i8 %10 to i32
  %call1 = call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 45, i32 noundef 255, i32 noundef 0, i32 noundef %conv)
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %3, align 1
  %conv3 = zext i8 %12 to i32
  %call4 = call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 46, i32 noundef 7, i32 noundef 0, i32 noundef %conv3)
  %slp_tr.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %14)
  %15 = icmp ult i32 %14, 2048
  br i1 %15, label %if.then.i, label %entry.at86rf230_sleep.exit_crit_edge

entry.at86rf230_sleep.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_sleep.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = call ptr @gpio_to_desc(i32 noundef %14) #10
  call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #10
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 8
  %t_off_to_sleep.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %t_off_to_sleep.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %t_off_to_sleep.i, align 2
  %conv.i = zext i16 %19 to i32
  %add.i = add nuw nsw i32 %conv.i, 10
  call void @usleep_range_state(i32 noundef %conv.i, i32 noundef %add.i, i32 noundef 2) #10
  %sleep.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %sleep.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %sleep.i, align 4
  br label %at86rf230_sleep.exit

at86rf230_sleep.exit:                             ; preds = %if.then.i, %entry.at86rf230_sleep.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %csma_seed) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_xmit(ptr nocapture noundef readonly %hw, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %tx_skb = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %skb, ptr %tx_skb, align 8
  %tx_retry = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %tx_retry to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %tx_retry, align 1
  %cal_timeout = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cal_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cal_timeout, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %is_tx_from_off = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %is_tx_from_off to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_tx_from_off, align 1
  %to_state.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14, i32 8
  %8 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14, i32 6
  %9 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @at86rf230_xmit_start, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14, i32 5
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14, i32 3, i32 3
  %11 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %13, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.then.tailrecurse.i.i_crit_edge

if.then.tailrecurse.i.i_crit_edge:                ; preds = %if.then
  br label %tailrecurse.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %if.then.tailrecurse.i.i_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %16 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %to_state.i, align 1
  %17 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i.i, align 1
  %19 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %21, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.if.end_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.if.end_crit_edge:                 ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tx = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 14
  %is_tx_from_off1 = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 10
  %22 = ptrtoint ptr %is_tx_from_off1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %is_tx_from_off1, align 1
  tail call void @at86rf230_xmit_start(ptr noundef %tx)
  br label %if.end

if.end:                                           ; preds = %if.else, %tailrecurse.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_ed(ptr nocapture noundef readnone %hw, ptr noundef writeonly %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %level, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !150

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 944, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -66, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %set_channel = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %set_channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_channel, align 4
  %call = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %page, i8 noundef zeroext %channel) #10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %t_channel_switch = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %t_channel_switch to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %t_channel_switch, align 2
  %conv = zext i16 %9 to i32
  %add = add nuw nsw i32 %conv, 10
  tail call void @usleep_range_state(i32 noundef %conv, i32 noundef %add, i32 noundef 2) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add5 = add i32 %10, 30000
  %cal_timeout = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %cal_timeout to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add5, ptr %cal_timeout, align 8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_hw_addr_filt(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %and = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %2 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %short_addr, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %conv = zext i16 %4 to i32
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 32, i32 noundef %conv)
  %5 = lshr i32 %conv, 8
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 33, i32 noundef %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %filt, align 8
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv6 = zext i16 %8 to i32
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 34, i32 noundef %conv6)
  %9 = lshr i32 %conv6, 8
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 35, i32 noundef %9)
  br label %if.end11

if.end11:                                         ; preds = %if.then5, %if.end.if.end11_crit_edge
  %and12 = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end21_crit_edge, label %if.then14

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %10 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %ieee_addr, align 8
  %addr15.sroa.0.0.extract.shift = lshr i64 %11, 56
  %addr15.sroa.0.0.extract.trunc = trunc i64 %addr15.sroa.0.0.extract.shift to i32
  %addr15.sroa.5.0.extract.shift = lshr i64 %11, 48
  %addr15.sroa.5.0.extract.trunc = trunc i64 %addr15.sroa.5.0.extract.shift to i32
  %addr15.sroa.7.0.extract.shift = lshr i64 %11, 40
  %addr15.sroa.7.0.extract.trunc = trunc i64 %addr15.sroa.7.0.extract.shift to i32
  %addr15.sroa.9.0.extract.shift = lshr i64 %11, 32
  %addr15.sroa.9.0.extract.trunc = trunc i64 %addr15.sroa.9.0.extract.shift to i32
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 24
  %14 = trunc i64 %11 to i32
  %15 = lshr i32 %14, 16
  %16 = trunc i64 %11 to i32
  %17 = lshr i32 %16, 8
  %addr15.sroa.17.0.extract.trunc = trunc i64 %11 to i32
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 36, i32 noundef %addr15.sroa.0.0.extract.trunc)
  %conv19.1 = and i32 %addr15.sroa.5.0.extract.trunc, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 37, i32 noundef %conv19.1)
  %conv19.2 = and i32 %addr15.sroa.7.0.extract.trunc, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 38, i32 noundef %conv19.2)
  %conv19.3 = and i32 %addr15.sroa.9.0.extract.trunc, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 39, i32 noundef %conv19.3)
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 40, i32 noundef %13)
  %conv19.5 = and i32 %15, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 41, i32 noundef %conv19.5)
  %conv19.6 = and i32 %17, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 42, i32 noundef %conv19.6)
  %conv19.7 = and i32 %addr15.sroa.17.0.extract.trunc, 255
  tail call fastcc void @__at86rf230_write(ptr noundef %1, i32 noundef 43, i32 noundef %conv19.7)
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end11.if.end21_crit_edge
  %and22 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end30_crit_edge, label %if.then24

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %18 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pan_coord, align 8, !range !151
  %20 = zext i8 %19 to i32
  %call27 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 46, i32 noundef 8, i32 noundef 3, i32 noundef %20)
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %if.end21.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %data = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %set_txpower = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %set_txpower to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_txpower, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %mbm) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_lbt(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = zext i1 %on to i32
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 23, i32 noundef 64, i32 noundef 6, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_cca_mode(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %cca) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %cca to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cca, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog6_crit_edge
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
  ]

entry.sw.epilog6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog6

sw.bb2:                                           ; preds = %entry
  %opt = getelementptr inbounds %struct.wpan_phy_cca, ptr %cca, i32 0, i32 1
  %5 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %opt, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %6, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb2.sw.epilog6_crit_edge
    i32 1, label %sw.bb4
  ]

sw.bb2.sw.epilog6_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog6

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb4, %sw.bb2.sw.epilog6_crit_edge, %sw.bb1, %entry.sw.epilog6_crit_edge
  %val.0 = phi i32 [ 0, %sw.bb4 ], [ 2, %sw.bb1 ], [ %3, %entry.sw.epilog6_crit_edge ], [ 3, %sw.bb2.sw.epilog6_crit_edge ]
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 8, i32 noundef 96, i32 noundef 5, i32 noundef %val.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog6, %sw.bb2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog6 ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %cca_ed_levels_size = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 14
  %4 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cca_ed_levels_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %cca_ed_levels = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 16
  %6 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cca_ed_levels, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbm)
  %cmp3 = icmp eq i32 %9, %mbm
  br i1 %cmp3, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 9, i32 noundef 15, i32 noundef 0, i32 noundef %i.012)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_csma_params(ptr nocapture noundef readonly %hw, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = zext i8 %min_be to i32
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 47, i32 noundef 15, i32 noundef 0, i32 noundef %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %max_be to i32
  %call2 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 47, i32 noundef 240, i32 noundef 4, i32 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = zext i8 %retries to i32
  %call7 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 44, i32 noundef 14, i32 noundef 1, i32 noundef %conv6)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_frame_retries(ptr nocapture noundef readonly %hw, i8 noundef signext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = sext i8 %retries to i32
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 44, i32 noundef 240, i32 noundef 4, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  br i1 %on, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 46, i32 noundef 16, i32 noundef 4, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call2 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 23, i32 noundef 2, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %call6 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 23, i32 noundef 2, i32 noundef 1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %call10 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %1, i32 noundef 46, i32 noundef 16, i32 noundef 4, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end9.if.end14_crit_edge, %if.end.if.end14_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %if.then.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.else.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at86rf230_sync_state_change(ptr noundef %lp, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %state to i8
  %to_state.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 7, i32 6
  %1 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @at86rf230_sync_state_change_complete, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 7, i32 5
  %2 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 7, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 7, i32 3, i32 3
  %3 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %4 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %5, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.at86rf230_async_state_change.exit_crit_edge, label %entry.tailrecurse.i.i_crit_edge

entry.tailrecurse.i.i_crit_edge:                  ; preds = %entry
  br label %tailrecurse.i.i

entry.at86rf230_async_state_change.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %entry.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %entry.tailrecurse.i.i_crit_edge ]
  %6 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lp, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %8 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %to_state.i, align 1
  %9 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %buf.i.i, align 1
  %11 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %12 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lp, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %13, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

at86rf230_async_state_change.exit:                ; preds = %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, %entry.at86rf230_async_state_change.exit_crit_edge
  %state_complete = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 6
  %call2 = tail call i32 @wait_for_completion_timeout(ptr noundef %state_complete, i32 noundef 10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %at86rf230_async_state_change.exit.tailrecurse.i_crit_edge, label %at86rf230_async_state_change.exit.cleanup_crit_edge

at86rf230_async_state_change.exit.cleanup_crit_edge: ; preds = %at86rf230_async_state_change.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

at86rf230_async_state_change.exit.tailrecurse.i_crit_edge: ; preds = %at86rf230_async_state_change.exit
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %at86rf230_async_state_change.exit.tailrecurse.i_crit_edge
  %rc.tr.i = phi i32 [ %call.i.i.i, %tailrecurse.i.tailrecurse.i_crit_edge ], [ -110, %at86rf230_async_state_change.exit.tailrecurse.i_crit_edge ]
  %14 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lp, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i) #13
  %16 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %to_state.i, align 1
  %17 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i.i, align 1
  %19 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %20 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lp, align 8
  %call.i.i.i = tail call i32 @spi_async(ptr noundef %21, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %tailrecurse.i.cleanup_crit_edge, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tailrecurse.i.cleanup_crit_edge:                  ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %tailrecurse.i.cleanup_crit_edge, %at86rf230_async_state_change.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %at86rf230_async_state_change.exit.cleanup_crit_edge ], [ -110, %tailrecurse.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_sync_state_change_complete(ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %state_complete = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 6
  tail call void @complete(ptr noundef %state_complete) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_async_state_change_start(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %4)
  %cmp = icmp eq i8 %4, 31
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #10
  %buf.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -127, ptr %buf.i, align 1
  %msg.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %complete2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @spi_async(ptr noundef %9, ptr noundef %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  %to_state.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then.i
  %rc.tr.i.i = phi i32 [ %call.i, %if.then.i ], [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %12 = ptrtoint ptr %to_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %to_state.i.i.i, align 1
  %13 = ptrtoint ptr %complete1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i, align 4
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -127, ptr %buf.i, align 1
  %15 = ptrtoint ptr %complete2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %17, ptr noundef %msg.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.cleanup_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.cleanup_crit_edge:                ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %to_state = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %18 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %to_state, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %19)
  %cmp8 = icmp eq i8 %4, %19
  br i1 %cmp8, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  %complete = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %complete, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.then10.cleanup_crit_edge, label %if.then11

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then11:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %21(ptr noundef %context) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %from_state = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 7
  %22 = ptrtoint ptr %from_state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %4, ptr %from_state, align 8
  %buf.i31 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %23 = ptrtoint ptr %buf.i31 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -62, ptr %buf.i31, align 8
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %19, ptr %arrayidx, align 1
  %msg.i32 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete5.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @at86rf230_async_state_delay, ptr %complete5.i, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call.i33 = tail call i32 @spi_async(ptr noundef %27, ptr noundef %msg.i32) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool.not.i34 = icmp eq i32 %call.i33, 0
  br i1 %tobool.not.i34, label %if.end14.cleanup_crit_edge, label %if.then.i37

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i37:                                      ; preds = %if.end14
  %complete1.i.i.i36 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i41

tailrecurse.i.i41:                                ; preds = %tailrecurse.i.i41.tailrecurse.i.i41_crit_edge, %if.then.i37
  %rc.tr.i.i38 = phi i32 [ %call.i33, %if.then.i37 ], [ %call.i.i.i.i39, %tailrecurse.i.i41.tailrecurse.i.i41_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i38) #13
  %30 = ptrtoint ptr %to_state to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %to_state, align 1
  %31 = ptrtoint ptr %complete1.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i36, align 4
  %32 = ptrtoint ptr %buf.i31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -127, ptr %buf.i31, align 1
  %33 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @at86rf230_async_state_change_start, ptr %complete5.i, align 8
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %call.i.i.i.i39 = tail call i32 @spi_async(ptr noundef %35, ptr noundef %msg.i32) #10
  %tobool.not.i.i.i.i40 = icmp eq i32 %call.i.i.i.i39, 0
  br i1 %tobool.not.i.i.i.i40, label %tailrecurse.i.i41.cleanup_crit_edge, label %tailrecurse.i.i41.tailrecurse.i.i41_crit_edge

tailrecurse.i.i41.tailrecurse.i.i41_crit_edge:    ; preds = %tailrecurse.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i41

tailrecurse.i.i41.cleanup_crit_edge:              ; preds = %tailrecurse.i.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %tailrecurse.i.i41.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.then11, %if.then10.cleanup_crit_edge, %tailrecurse.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_async_state_delay(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %data = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %to_state = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %4 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_state, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 4, label %entry.sw.epilog.sink.split_crit_edge
    i8 3, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 8, %sw.bb3 ], [ 9, %entry.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %to_state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %.sink, ptr %to_state, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %force.0.off0 = phi i1 [ false, %entry.sw.epilog_crit_edge ], [ true, %sw.epilog.sink.split ]
  %from_state = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 7
  %8 = ptrtoint ptr %from_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %from_state, align 8
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %9, label %sw.epilog.sw.epilog41_crit_edge [
    i8 8, label %sw.bb6
    i8 17, label %sw.bb20
    i8 0, label %sw.bb31
  ]

sw.epilog.sw.epilog41_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

sw.bb6:                                           ; preds = %sw.epilog
  %11 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %to_state, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %12, label %sw.bb6.sw.epilog41_crit_edge [
    i8 22, label %sw.bb9
    i8 25, label %sw.bb6.sw.bb12_crit_edge
    i8 9, label %sw.bb6.sw.bb12_crit_edge62
  ]

sw.bb6.sw.bb12_crit_edge62:                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb6.sw.bb12_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb12

sw.bb6.sw.epilog41_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

sw.bb9:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #12
  %t_off_to_aack = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %t_off_to_aack to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %t_off_to_aack, align 2
  %conv10 = zext i16 %15 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %16, 30000
  %cal_timeout = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 8
  %17 = ptrtoint ptr %cal_timeout to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %cal_timeout, align 8
  br label %change

sw.bb12:                                          ; preds = %sw.bb6.sw.bb12_crit_edge, %sw.bb6.sw.bb12_crit_edge62
  %t_off_to_tx_on = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %t_off_to_tx_on to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %t_off_to_tx_on, align 4
  %conv13 = zext i16 %19 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add16 = add i32 %20, 30000
  %cal_timeout17 = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %cal_timeout17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add16, ptr %cal_timeout17, align 8
  br label %change

sw.bb20:                                          ; preds = %sw.epilog
  %22 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %to_state, align 1
  %24 = and i8 %23, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %24)
  %switch = icmp ne i8 %24, 8
  %brmerge = or i1 %force.0.off0, %switch
  br i1 %brmerge, label %sw.bb20.sw.epilog41_crit_edge, label %if.then

sw.bb20.sw.epilog41_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

if.then:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #12
  %t_frame = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 7
  %25 = ptrtoint ptr %t_frame to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %t_frame, align 2
  %conv24 = zext i16 %26 to i32
  %t_p_ack = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 8
  %27 = ptrtoint ptr %t_p_ack to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %t_p_ack, align 4
  %conv25 = zext i16 %28 to i32
  %add26 = add nuw nsw i32 %conv25, %conv24
  br label %change

sw.bb31:                                          ; preds = %sw.epilog
  %29 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %to_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %cond = icmp eq i8 %30, 8
  br i1 %cond, label %sw.bb34, label %sw.bb31.sw.epilog41_crit_edge

sw.bb31.sw.epilog41_crit_edge:                    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog41

sw.bb34:                                          ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %t_reset_to_off = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %3, i32 0, i32 2
  %31 = ptrtoint ptr %t_reset_to_off to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %t_reset_to_off, align 4
  %conv35 = zext i16 %32 to i32
  br label %change

sw.epilog41:                                      ; preds = %sw.bb31.sw.epilog41_crit_edge, %sw.bb20.sw.epilog41_crit_edge, %sw.bb6.sw.epilog41_crit_edge, %sw.epilog.sw.epilog41_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #10
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 8
  %buf.i.i = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %36 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @at86rf230_async_state_assert, ptr %complete2.i.i, align 8
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %39, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog41.cleanup_crit_edge, label %if.then.i.i

sw.epilog41.cleanup_crit_edge:                    ; preds = %sw.epilog41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %sw.epilog41
  %complete1.i.i.i.i = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge, %if.then.i.i
  %rc.tr.i.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call.i.i.i.i.i, %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %35, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i.i) #13
  %42 = ptrtoint ptr %to_state to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 3, ptr %to_state, align 1
  %43 = ptrtoint ptr %complete1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i.i, align 4
  %44 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 -127, ptr %buf.i.i, align 1
  %45 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %35, align 8
  %call.i.i.i.i.i = tail call i32 @spi_async(ptr noundef %47, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %tailrecurse.i.i.i.cleanup_crit_edge, label %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge

tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge:    ; preds = %tailrecurse.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i.cleanup_crit_edge:              ; preds = %tailrecurse.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

change:                                           ; preds = %sw.bb34, %if.then, %sw.bb12, %sw.bb9
  %tim.0.in.in = phi i32 [ %conv35, %sw.bb34 ], [ %add26, %if.then ], [ %conv13, %sw.bb12 ], [ %conv10, %sw.bb9 ]
  %tim.0.in = mul nuw nsw i32 %tim.0.in.in, 1000
  %tim.0 = zext i32 %tim.0.in to i64
  %timer42 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 2
  tail call void @hrtimer_start_range_ns(ptr noundef %timer42, i64 noundef %tim.0, i64 noundef 0, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %change, %tailrecurse.i.i.i.cleanup_crit_edge, %sw.epilog41.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_async_state_timer(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %buf.i = getelementptr i8, ptr %timer, i32 200
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -127, ptr %buf.i, align 1
  %msg.i = getelementptr i8, ptr %timer, i32 48
  %complete2.i = getelementptr i8, ptr %timer, i32 64
  %3 = ptrtoint ptr %complete2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @at86rf230_async_state_assert, ptr %complete2.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @spi_async(ptr noundef %5, ptr noundef %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.at86rf230_async_read_reg.exit_crit_edge, label %if.then.i

entry.at86rf230_async_read_reg.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_read_reg.exit

if.then.i:                                        ; preds = %entry
  %to_state.i.i.i = getelementptr i8, ptr %timer, i32 337
  %complete1.i.i.i = getelementptr i8, ptr %timer, i32 332
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then.i
  %rc.tr.i.i = phi i32 [ %call.i, %if.then.i ], [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %8 = ptrtoint ptr %to_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %to_state.i.i.i, align 1
  %9 = ptrtoint ptr %complete1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i, align 4
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -127, ptr %buf.i, align 1
  %11 = ptrtoint ptr %complete2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %13, ptr noundef %msg.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_read_reg.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_read_reg.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_read_reg.exit

at86rf230_async_read_reg.exit:                    ; preds = %tailrecurse.i.i.at86rf230_async_read_reg.exit_crit_edge, %entry.at86rf230_async_read_reg.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_async_state_assert(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 31
  %conv4 = zext i8 %4 to i32
  %to_state = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %5 = ptrtoint ptr %to_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %to_state, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp.not = icmp eq i8 %4, %6
  br i1 %cmp.not, label %entry.done_crit_edge, label %if.then

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %4)
  %cmp8 = icmp eq i8 %4, 17
  br i1 %cmp8, label %if.then10, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then10:                                        ; preds = %if.then
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %6, label %if.then10.do.end_crit_edge [
    i8 22, label %if.then10.done_crit_edge
    i8 9, label %if.then10.if.then24_crit_edge
    i8 8, label %if.then10.if.then24_crit_edge64
  ]

if.then10.if.then24_crit_edge64:                  ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then10.if.then24_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then10.done_crit_edge:                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then10.do.end_crit_edge:                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then24:                                        ; preds = %if.then10.if.then24_crit_edge, %if.then10.if.then24_crit_edge64
  %tx_retry = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %tx_retry to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tx_retry, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp27 = icmp ugt i8 %9, 6
  %spec.store.select = select i1 %cmp27, i8 3, i8 %6
  %inc = add i8 %9, 1
  %10 = ptrtoint ptr %tx_retry to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %inc, ptr %tx_retry, align 1
  %complete = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %11 = ptrtoint ptr %to_state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.store.select, ptr %to_state, align 1
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %15, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then24.cleanup_crit_edge, label %if.then24.tailrecurse.i.i_crit_edge

if.then24.tailrecurse.i.i_crit_edge:              ; preds = %if.then24
  br label %tailrecurse.i.i

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then24.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %if.then24.tailrecurse.i.i_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %18 = ptrtoint ptr %to_state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %to_state, align 1
  %19 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_async_error_recover, ptr %complete, align 4
  %20 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -127, ptr %buf.i.i, align 1
  %21 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %23, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.cleanup_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.cleanup_crit_edge:                ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %if.then10.do.end_crit_edge, %if.then.do.end_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %from_state = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 7
  %26 = ptrtoint ptr %from_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %from_state, align 8
  %conv34 = zext i8 %27 to i32
  %conv36 = zext i8 %6 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.18, i32 noundef %conv34, i32 noundef %conv36, i32 noundef %conv4) #13
  br label %done

done:                                             ; preds = %do.end, %if.then10.done_crit_edge, %entry.done_crit_edge
  %complete39 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %28 = ptrtoint ptr %complete39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %complete39, align 4
  %tobool.not = icmp eq ptr %29, null
  br i1 %tobool.not, label %done.cleanup_crit_edge, label %if.then40

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then40:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %29(ptr noundef %context) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %done.cleanup_crit_edge, %tailrecurse.i.i.cleanup_crit_edge, %if.then24.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_async_error_recover(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %is_tx = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %is_tx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_tx, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %was_tx = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %was_tx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %was_tx, align 2
  %5 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %is_tx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %to_state.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %6 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 22, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %7 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @at86rf230_async_error_recover_complete, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %11, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.at86rf230_async_state_change.exit_crit_edge, label %if.end.tailrecurse.i.i_crit_edge

if.end.tailrecurse.i.i_crit_edge:                 ; preds = %if.end
  br label %tailrecurse.i.i

if.end.at86rf230_async_state_change.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.end.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %if.end.tailrecurse.i.i_crit_edge ]
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %14 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %to_state.i, align 1
  %15 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %16 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -127, ptr %buf.i.i, align 1
  %17 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %19, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

at86rf230_async_state_change.exit:                ; preds = %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, %if.end.at86rf230_async_state_change.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_async_error_recover_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %free = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 9
  %2 = ptrtoint ptr %free to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %free, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %context) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %was_tx = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %was_tx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %was_tx, align 2, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %was_tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %was_tx, align 2
  %tx_skb = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_skb, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %8, i32 noundef 1) #10
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_wake_queue(ptr noundef %10) #10
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at86rf230_write_subreg(ptr nocapture noundef %lp, i32 noundef %addr, i32 noundef %mask, i32 noundef %shift, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sleep1 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 5
  %0 = ptrtoint ptr %sleep1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep1, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %slp_tr.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 4
  %2 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then.i, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #10
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 8
  %t_sleep_to_off.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %t_sleep_to_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %t_sleep_to_off.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 100
  tail call void @usleep_range_state(i32 noundef %conv.i, i32 noundef %add.i, i32 noundef 2) #10
  %9 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sleep1, align 4
  br label %if.then4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %shl = shl i32 %data, %shift
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %addr, i32 noundef %mask, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  br label %if.end5

if.then4:                                         ; preds = %if.then.i, %if.then.if.then4_crit_edge
  %regmap17 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %12 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap17, align 4
  %shl18 = shl i32 %data, %shift
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef %addr, i32 noundef %mask, i32 noundef %shl18, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  %14 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %if.then.i16, label %if.then4.if.end5_crit_edge

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i16:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i11 = tail call ptr @gpio_to_desc(i32 noundef %15) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i11, i32 noundef 1) #10
  %data.i12 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %17 = ptrtoint ptr %data.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i12, align 8
  %t_off_to_sleep.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %t_off_to_sleep.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %t_off_to_sleep.i, align 2
  %conv.i13 = zext i16 %20 to i32
  %add.i14 = add nuw nsw i32 %conv.i13, 10
  tail call void @usleep_range_state(i32 noundef %conv.i13, i32 noundef %add.i14, i32 noundef 2) #10
  %21 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sleep1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i16, %if.then4.if.end5_crit_edge, %if.end
  %call.i21 = phi i32 [ %call.i, %if.end ], [ %call.i19, %if.then4.if.end5_crit_edge ], [ %call.i19, %if.then.i16 ]
  ret i32 %call.i21
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_xmit_start(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %is_tx_from_off = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %is_tx_from_off to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_tx_from_off, align 1, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %to_state.i6 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %to_state.i6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 25, ptr %to_state.i6, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %5 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at86rf230_write_frame, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %7 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %9, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.if.end_crit_edge, label %if.then.tailrecurse.i.i_crit_edge

if.then.tailrecurse.i.i_crit_edge:                ; preds = %if.then
  br label %tailrecurse.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %if.then.tailrecurse.i.i_crit_edge ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %12 = ptrtoint ptr %to_state.i6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %to_state.i6, align 1
  %13 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %14 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -127, ptr %buf.i.i, align 1
  %15 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %17, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.if.end_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.if.end_crit_edge:                 ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %to_state.i6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 9, ptr %to_state.i6, align 1
  %complete1.i7 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %19 = ptrtoint ptr %complete1.i7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_xmit_tx_on, ptr %complete1.i7, align 4
  %buf.i.i8 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %20 = ptrtoint ptr %buf.i.i8 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -127, ptr %buf.i.i8, align 1
  %msg.i.i9 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i10 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %complete2.i.i10 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i10, align 8
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %call.i.i11 = tail call i32 @spi_async(ptr noundef %23, ptr noundef %msg.i.i9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %tobool.not.i.i12 = icmp eq i32 %call.i.i11, 0
  br i1 %tobool.not.i.i12, label %if.else.if.end_crit_edge, label %if.else.tailrecurse.i.i16_crit_edge

if.else.tailrecurse.i.i16_crit_edge:              ; preds = %if.else
  br label %tailrecurse.i.i16

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

tailrecurse.i.i16:                                ; preds = %tailrecurse.i.i16.tailrecurse.i.i16_crit_edge, %if.else.tailrecurse.i.i16_crit_edge
  %rc.tr.i.i13 = phi i32 [ %call.i.i.i.i14, %tailrecurse.i.i16.tailrecurse.i.i16_crit_edge ], [ %call.i.i11, %if.else.tailrecurse.i.i16_crit_edge ]
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i13) #13
  %26 = ptrtoint ptr %to_state.i6 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %to_state.i6, align 1
  %27 = ptrtoint ptr %complete1.i7 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i7, align 4
  %28 = ptrtoint ptr %buf.i.i8 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -127, ptr %buf.i.i8, align 1
  %29 = ptrtoint ptr %complete2.i.i10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i10, align 8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %call.i.i.i.i14 = tail call i32 @spi_async(ptr noundef %31, ptr noundef %msg.i.i9) #10
  %tobool.not.i.i.i.i15 = icmp eq i32 %call.i.i.i.i14, 0
  br i1 %tobool.not.i.i.i.i15, label %tailrecurse.i.i16.if.end_crit_edge, label %tailrecurse.i.i16.tailrecurse.i.i16_crit_edge

tailrecurse.i.i16.tailrecurse.i.i16_crit_edge:    ; preds = %tailrecurse.i.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i16

tailrecurse.i.i16.if.end_crit_edge:               ; preds = %tailrecurse.i.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %tailrecurse.i.i16.if.end_crit_edge, %if.else.if.end_crit_edge, %tailrecurse.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_write_frame(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %tx_skb = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_skb, align 8
  %buf2 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %is_tx = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %is_tx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_tx, align 4
  %5 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 96, ptr %buf2, align 1
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %8 = trunc i32 %7 to i8
  %conv = add i8 %8, 2
  %arrayidx3 = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx3, align 1
  %add.ptr = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 2
  %data = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = load i32, ptr %len, align 4
  %13 = call ptr @memcpy(ptr %add.ptr, ptr %11, i32 %12)
  %14 = load i32, ptr %len, align 4
  %add6 = add i32 %14, 2
  %len7 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 4, i32 2
  %15 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add6, ptr %len7, align 8
  %msg = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @at86rf230_write_frame_complete, ptr %complete, align 8
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call = tail call i32 @spi_async(ptr noundef %18, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %19 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %len7, align 8
  %to_state.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %if.then
  %rc.tr.i = phi i32 [ %call, %if.then ], [ %call.i.i.i, %tailrecurse.i.tailrecurse.i_crit_edge ]
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i) #13
  %22 = ptrtoint ptr %to_state.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %to_state.i.i, align 1
  %23 = ptrtoint ptr %complete1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i, align 4
  %24 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %buf2, align 1
  %25 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @at86rf230_async_state_change_start, ptr %complete, align 8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %call.i.i.i = tail call i32 @spi_async(ptr noundef %27, ptr noundef %msg) #10
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %tailrecurse.i.if.end_crit_edge, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tailrecurse.i.if.end_crit_edge:                   ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %tailrecurse.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_xmit_tx_on(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %to_state.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %2 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 25, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %3 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @at86rf230_write_frame, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %7, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.at86rf230_async_state_change.exit_crit_edge, label %entry.tailrecurse.i.i_crit_edge

entry.tailrecurse.i.i_crit_edge:                  ; preds = %entry
  br label %tailrecurse.i.i

entry.at86rf230_async_state_change.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %entry.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %entry.tailrecurse.i.i_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %10 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %to_state.i, align 1
  %11 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -127, ptr %buf.i.i, align 1
  %13 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %15, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

at86rf230_async_state_change.exit:                ; preds = %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, %entry.at86rf230_async_state_change.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_write_frame_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %len = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %len, align 8
  %slp_tr = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %slp_tr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slp_tr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %4)
  %5 = icmp ult i32 %4, 2048
  br i1 %5, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %4) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 1) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748) #10
  %7 = ptrtoint ptr %slp_tr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slp_tr, align 8
  %call.i3.i = tail call ptr @gpio_to_desc(i32 noundef %8) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i3.i, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %buf.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -62, ptr %buf.i, align 8
  %arrayidx4.i = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 2, ptr %arrayidx4.i, align 1
  %msg.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete5.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %complete5.i, align 8
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @spi_async(ptr noundef %13, ptr noundef %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.if.end_crit_edge, label %if.then.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %if.else
  %to_state.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %if.then.i
  %rc.tr.i.i = phi i32 [ %call.i, %if.then.i ], [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %16 = ptrtoint ptr %to_state.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 3, ptr %to_state.i.i.i, align 1
  %17 = ptrtoint ptr %complete1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i, align 4
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i, align 1
  %19 = ptrtoint ptr %complete5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_async_state_change_start, ptr %complete5.i, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %21, ptr noundef %msg.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.if.end_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.if.end_crit_edge:                 ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %tailrecurse.i.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__at86rf230_write(ptr nocapture noundef %lp, i32 noundef %addr, i32 noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sleep1 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 5
  %0 = ptrtoint ptr %sleep1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep1, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end5.critedge, label %if.then

if.then:                                          ; preds = %entry
  %slp_tr.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 4
  %2 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then.i, label %if.then.at86rf230_awake.exit_crit_edge

if.then.at86rf230_awake.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_awake.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #10
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 8
  %t_sleep_to_off.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %t_sleep_to_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %t_sleep_to_off.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 100
  tail call void @usleep_range_state(i32 noundef %conv.i, i32 noundef %add.i, i32 noundef 2) #10
  %9 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sleep1, align 4
  br label %at86rf230_awake.exit

at86rf230_awake.exit:                             ; preds = %if.then.i, %if.then.at86rf230_awake.exit_crit_edge
  %regmap.c = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %10 = ptrtoint ptr %regmap.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.c, align 4
  %call.c = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %addr, i32 noundef %data) #10
  %12 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %13)
  %14 = icmp ult i32 %13, 2048
  br i1 %14, label %if.then.i9, label %at86rf230_awake.exit.if.end5_crit_edge

at86rf230_awake.exit.if.end5_crit_edge:           ; preds = %at86rf230_awake.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i9:                                       ; preds = %at86rf230_awake.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i4 = tail call ptr @gpio_to_desc(i32 noundef %13) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i4, i32 noundef 1) #10
  %data.i5 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %15 = ptrtoint ptr %data.i5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i5, align 8
  %t_off_to_sleep.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %t_off_to_sleep.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %t_off_to_sleep.i, align 2
  %conv.i6 = zext i16 %18 to i32
  %add.i7 = add nuw nsw i32 %conv.i6, 10
  tail call void @usleep_range_state(i32 noundef %conv.i6, i32 noundef %add.i7, i32 noundef 2) #10
  %19 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %sleep1, align 4
  br label %if.end5

if.end5.critedge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap.c1 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %20 = ptrtoint ptr %regmap.c1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.c1, align 4
  %call.c2 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef %addr, i32 noundef %data) #10
  br label %if.end5

if.end5:                                          ; preds = %if.end5.critedge, %if.then.i9, %at86rf230_awake.exit.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at86rf230_reg_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %reg, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 3, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 5, label %entry.return_crit_edge3
    i32 7, label %entry.return_crit_edge4
    i32 8, label %entry.return_crit_edge5
    i32 9, label %entry.return_crit_edge6
    i32 10, label %entry.return_crit_edge7
    i32 11, label %entry.return_crit_edge8
    i32 12, label %entry.return_crit_edge9
    i32 13, label %entry.return_crit_edge10
    i32 14, label %entry.return_crit_edge11
    i32 16, label %entry.return_crit_edge12
    i32 17, label %entry.return_crit_edge13
    i32 18, label %entry.return_crit_edge14
    i32 21, label %entry.return_crit_edge15
    i32 23, label %entry.return_crit_edge16
    i32 24, label %entry.return_crit_edge17
    i32 26, label %entry.return_crit_edge18
    i32 27, label %entry.return_crit_edge19
    i32 32, label %entry.return_crit_edge20
    i32 33, label %entry.return_crit_edge21
    i32 34, label %entry.return_crit_edge22
    i32 35, label %entry.return_crit_edge23
    i32 36, label %entry.return_crit_edge24
    i32 37, label %entry.return_crit_edge25
    i32 38, label %entry.return_crit_edge26
    i32 39, label %entry.return_crit_edge27
    i32 40, label %entry.return_crit_edge28
    i32 41, label %entry.return_crit_edge29
    i32 42, label %entry.return_crit_edge30
    i32 43, label %entry.return_crit_edge31
    i32 44, label %entry.return_crit_edge32
    i32 45, label %entry.return_crit_edge33
    i32 46, label %entry.return_crit_edge34
    i32 47, label %entry.return_crit_edge35
  ]

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at86rf230_reg_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %reg, label %sw.default [
    i32 2, label %entry.cleanup_crit_edge
    i32 3, label %entry.cleanup_crit_edge5
    i32 4, label %entry.cleanup_crit_edge6
    i32 5, label %entry.cleanup_crit_edge7
    i32 7, label %entry.cleanup_crit_edge8
    i32 8, label %entry.cleanup_crit_edge9
    i32 9, label %entry.cleanup_crit_edge10
    i32 10, label %entry.cleanup_crit_edge11
    i32 11, label %entry.cleanup_crit_edge12
    i32 12, label %entry.cleanup_crit_edge13
    i32 13, label %entry.cleanup_crit_edge14
    i32 14, label %entry.cleanup_crit_edge15
    i32 16, label %entry.cleanup_crit_edge16
    i32 17, label %entry.cleanup_crit_edge17
    i32 18, label %entry.cleanup_crit_edge18
    i32 21, label %entry.cleanup_crit_edge19
    i32 23, label %entry.cleanup_crit_edge20
    i32 24, label %entry.cleanup_crit_edge21
    i32 26, label %entry.cleanup_crit_edge22
    i32 27, label %entry.cleanup_crit_edge23
    i32 32, label %entry.cleanup_crit_edge24
    i32 33, label %entry.cleanup_crit_edge25
    i32 34, label %entry.cleanup_crit_edge26
    i32 35, label %entry.cleanup_crit_edge27
    i32 36, label %entry.cleanup_crit_edge28
    i32 37, label %entry.cleanup_crit_edge29
    i32 38, label %entry.cleanup_crit_edge30
    i32 39, label %entry.cleanup_crit_edge31
    i32 40, label %entry.cleanup_crit_edge32
    i32 41, label %entry.cleanup_crit_edge33
    i32 42, label %entry.cleanup_crit_edge34
    i32 43, label %entry.cleanup_crit_edge35
    i32 44, label %entry.cleanup_crit_edge36
    i32 45, label %entry.cleanup_crit_edge37
    i32 46, label %entry.cleanup_crit_edge38
    i32 47, label %entry.cleanup_crit_edge39
    i32 1, label %entry.cleanup_crit_edge40
    i32 6, label %entry.cleanup_crit_edge41
    i32 15, label %entry.cleanup_crit_edge42
    i32 28, label %entry.cleanup_crit_edge43
    i32 29, label %entry.cleanup_crit_edge44
    i32 31, label %entry.cleanup_crit_edge45
    i32 30, label %entry.cleanup_crit_edge46
  ]

entry.cleanup_crit_edge46:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge45:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge44:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge43:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge38:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge37:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge36:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge35:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge32:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge29:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge28:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge27:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge26:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge25:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge24:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge23:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge22:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge21:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge19:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge16:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge13:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge12:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge11:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge10:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge9:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge8:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge6:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge5:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge5, %entry.cleanup_crit_edge6, %entry.cleanup_crit_edge7, %entry.cleanup_crit_edge8, %entry.cleanup_crit_edge9, %entry.cleanup_crit_edge10, %entry.cleanup_crit_edge11, %entry.cleanup_crit_edge12, %entry.cleanup_crit_edge13, %entry.cleanup_crit_edge14, %entry.cleanup_crit_edge15, %entry.cleanup_crit_edge16, %entry.cleanup_crit_edge17, %entry.cleanup_crit_edge18, %entry.cleanup_crit_edge19, %entry.cleanup_crit_edge20, %entry.cleanup_crit_edge21, %entry.cleanup_crit_edge22, %entry.cleanup_crit_edge23, %entry.cleanup_crit_edge24, %entry.cleanup_crit_edge25, %entry.cleanup_crit_edge26, %entry.cleanup_crit_edge27, %entry.cleanup_crit_edge28, %entry.cleanup_crit_edge29, %entry.cleanup_crit_edge30, %entry.cleanup_crit_edge31, %entry.cleanup_crit_edge32, %entry.cleanup_crit_edge33, %entry.cleanup_crit_edge34, %entry.cleanup_crit_edge35, %entry.cleanup_crit_edge36, %entry.cleanup_crit_edge37, %entry.cleanup_crit_edge38, %entry.cleanup_crit_edge39, %entry.cleanup_crit_edge40, %entry.cleanup_crit_edge41, %entry.cleanup_crit_edge42, %entry.cleanup_crit_edge43, %entry.cleanup_crit_edge44, %entry.cleanup_crit_edge45, %entry.cleanup_crit_edge46
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge5 ], [ true, %entry.cleanup_crit_edge6 ], [ true, %entry.cleanup_crit_edge7 ], [ true, %entry.cleanup_crit_edge8 ], [ true, %entry.cleanup_crit_edge9 ], [ true, %entry.cleanup_crit_edge10 ], [ true, %entry.cleanup_crit_edge11 ], [ true, %entry.cleanup_crit_edge12 ], [ true, %entry.cleanup_crit_edge13 ], [ true, %entry.cleanup_crit_edge14 ], [ true, %entry.cleanup_crit_edge15 ], [ true, %entry.cleanup_crit_edge16 ], [ true, %entry.cleanup_crit_edge17 ], [ true, %entry.cleanup_crit_edge18 ], [ true, %entry.cleanup_crit_edge19 ], [ true, %entry.cleanup_crit_edge20 ], [ true, %entry.cleanup_crit_edge21 ], [ true, %entry.cleanup_crit_edge22 ], [ true, %entry.cleanup_crit_edge23 ], [ true, %entry.cleanup_crit_edge24 ], [ true, %entry.cleanup_crit_edge25 ], [ true, %entry.cleanup_crit_edge26 ], [ true, %entry.cleanup_crit_edge27 ], [ true, %entry.cleanup_crit_edge28 ], [ true, %entry.cleanup_crit_edge29 ], [ true, %entry.cleanup_crit_edge30 ], [ true, %entry.cleanup_crit_edge31 ], [ true, %entry.cleanup_crit_edge32 ], [ true, %entry.cleanup_crit_edge33 ], [ true, %entry.cleanup_crit_edge34 ], [ true, %entry.cleanup_crit_edge35 ], [ true, %entry.cleanup_crit_edge36 ], [ true, %entry.cleanup_crit_edge37 ], [ true, %entry.cleanup_crit_edge38 ], [ true, %entry.cleanup_crit_edge39 ], [ true, %entry.cleanup_crit_edge40 ], [ true, %entry.cleanup_crit_edge41 ], [ true, %entry.cleanup_crit_edge42 ], [ true, %entry.cleanup_crit_edge43 ], [ true, %entry.cleanup_crit_edge44 ], [ true, %entry.cleanup_crit_edge45 ], [ true, %entry.cleanup_crit_edge46 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at86rf230_reg_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 27
  %switch.cast = trunc i32 %switch.tableidx to i27
  %switch.downshift = lshr i27 -33505181, %switch.cast
  %1 = and i27 %switch.downshift, 1
  %2 = sext i27 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i27 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at86rf230_reg_precious(ptr nocapture noundef readnone %dev, i32 noundef %reg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %reg)
  %cond = icmp eq i32 %reg, 15
  ret i1 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__at86rf230_read(ptr nocapture noundef %lp, i32 noundef %addr, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %sleep1 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 5
  %0 = ptrtoint ptr %sleep1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sleep1, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %slp_tr.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 4
  %2 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then.i, label %if.then.if.then4_crit_edge

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then4

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i, i32 noundef 0) #10
  %data.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 8
  %t_sleep_to_off.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %6, i32 0, i32 6
  %7 = ptrtoint ptr %t_sleep_to_off.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %t_sleep_to_off.i, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv.i, 100
  tail call void @usleep_range_state(i32 noundef %conv.i, i32 noundef %add.i, i32 noundef 2) #10
  %9 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %sleep1, align 4
  br label %if.then4

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_read(ptr noundef %11, i32 noundef %addr, ptr noundef %data) #10
  br label %if.end5

if.then4:                                         ; preds = %if.then.i, %if.then.if.then4_crit_edge
  %regmap17 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 3
  %12 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap17, align 4
  %call18 = tail call i32 @regmap_read(ptr noundef %13, i32 noundef %addr, ptr noundef %data) #10
  %14 = ptrtoint ptr %slp_tr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %slp_tr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %15)
  %16 = icmp ult i32 %15, 2048
  br i1 %16, label %if.then.i16, label %if.then4.if.end5_crit_edge

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.i16:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i11 = tail call ptr @gpio_to_desc(i32 noundef %15) #10
  tail call void @gpiod_set_raw_value(ptr noundef %call.i.i11, i32 noundef 1) #10
  %data.i12 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %17 = ptrtoint ptr %data.i12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i12, align 8
  %t_off_to_sleep.i = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %t_off_to_sleep.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %t_off_to_sleep.i, align 2
  %conv.i13 = zext i16 %20 to i32
  %add.i14 = add nuw nsw i32 %conv.i13, 10
  tail call void @usleep_range_state(i32 noundef %conv.i13, i32 noundef %add.i14, i32 noundef 2) #10
  %21 = ptrtoint ptr %sleep1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %sleep1, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then.i16, %if.then4.if.end5_crit_edge, %if.end
  %call20 = phi i32 [ %call, %if.end ], [ %call18, %if.then4.if.end5_crit_edge ], [ %call18, %if.then.i16 ]
  ret i32 %call20
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf23x_set_channel(ptr nocapture noundef %lp, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 8, i32 noundef 31, i32 noundef 0, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf23x_set_txpower(ptr nocapture noundef %lp, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 15
  %6 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbm)
  %cmp4 = icmp eq i32 %9, %mbm
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 5, i32 noundef 15, i32 noundef 0, i32 noundef %i.012)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf212_set_channel(ptr nocapture noundef %lp, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  %cca_ed_thres.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %channel to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %channel)
  %cmp = icmp eq i8 %channel, 0
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  %call2 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 12, i32 noundef 4, i32 noundef 2, i32 noundef %.)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp8 = icmp eq i8 %page, 0
  %not.cmp8 = xor i1 %cmp8, true
  %.102 = zext i1 %not.cmp8 to i32
  %.103 = select i1 %cmp8, i32 -100, i32 -98
  %call13 = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 12, i32 noundef 8, i32 noundef 3, i32 noundef %.102)
  %data14 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %0 = ptrtoint ptr %data14 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data14, align 8
  %rssi_base_val15 = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %rssi_base_val15 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.103, ptr %rssi_base_val15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp17 = icmp slt i32 %call13, 0
  br i1 %cmp17, label %if.end6.cleanup_crit_edge, label %if.end20

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end6
  %data21 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 2
  %3 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data21, align 8
  %rssi_base_val22 = getelementptr inbounds %struct.at86rf2xx_chip_data, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %rssi_base_val22 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rssi_base_val22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cca_ed_thres.i) #10
  %7 = ptrtoint ptr %cca_ed_thres.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %cca_ed_thres.i, align 4, !annotation !148
  %call.i.i = call fastcc i32 @__at86rf230_read(ptr noundef %lp, i32 noundef 9, ptr noundef nonnull %cca_ed_thres.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %at86rf230_read_subreg.exit.thread.i, label %at86rf230_read_subreg.exit.i

at86rf230_read_subreg.exit.thread.i:              ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %cca_ed_thres.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cca_ed_thres.i, align 4
  %and.i.i = and i32 %9, 15
  store i32 %and.i.i, ptr %cca_ed_thres.i, align 4
  br label %if.end.i

at86rf230_read_subreg.exit.i:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %at86rf212_update_cca_ed_level.exit, label %at86rf230_read_subreg.exit.i.if.end.i_crit_edge

at86rf230_read_subreg.exit.i.if.end.i_crit_edge:  ; preds = %at86rf230_read_subreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %at86rf230_read_subreg.exit.i.if.end.i_crit_edge, %at86rf230_read_subreg.exit.thread.i
  %10 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %6, label %do.end.i [
    i32 -98, label %sw.bb.i
    i32 -100, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %11 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw.i, align 4
  %phy.i = getelementptr inbounds %struct.ieee802154_hw, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy.i, align 4
  %cca_ed_levels.i = getelementptr inbounds %struct.wpan_phy, ptr %14, i32 0, i32 4, i32 16
  %15 = ptrtoint ptr %cca_ed_levels.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @at86rf212_ed_levels_98, ptr %cca_ed_levels.i, align 4
  %16 = load ptr, ptr %hw.i, align 4
  %phy2.i = getelementptr inbounds %struct.ieee802154_hw, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy2.i, align 4
  %cca_ed_levels_size.i = getelementptr inbounds %struct.wpan_phy, ptr %18, i32 0, i32 4, i32 14
  %19 = ptrtoint ptr %cca_ed_levels_size.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %cca_ed_levels_size.i, align 4
  %20 = ptrtoint ptr %cca_ed_thres.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cca_ed_thres.i, align 4
  %arrayidx.i = getelementptr [16 x i32], ptr @at86rf212_ed_levels_98, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %24 = load ptr, ptr %hw.i, align 4
  %phy5.i = getelementptr inbounds %struct.ieee802154_hw, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %phy5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy5.i, align 4
  %cca_ed_level.i = getelementptr inbounds %struct.wpan_phy, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %cca_ed_level.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %23, ptr %cca_ed_level.i, align 8
  br label %if.end27

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %hw7.i = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %28 = ptrtoint ptr %hw7.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hw7.i, align 4
  %phy8.i = getelementptr inbounds %struct.ieee802154_hw, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %phy8.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy8.i, align 4
  %cca_ed_levels10.i = getelementptr inbounds %struct.wpan_phy, ptr %31, i32 0, i32 4, i32 16
  %32 = ptrtoint ptr %cca_ed_levels10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @at86rf212_ed_levels_100, ptr %cca_ed_levels10.i, align 4
  %33 = load ptr, ptr %hw7.i, align 4
  %phy12.i = getelementptr inbounds %struct.ieee802154_hw, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %phy12.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy12.i, align 4
  %cca_ed_levels_size14.i = getelementptr inbounds %struct.wpan_phy, ptr %35, i32 0, i32 4, i32 14
  %36 = ptrtoint ptr %cca_ed_levels_size14.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16, ptr %cca_ed_levels_size14.i, align 4
  %37 = ptrtoint ptr %cca_ed_thres.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cca_ed_thres.i, align 4
  %arrayidx15.i = getelementptr [16 x i32], ptr @at86rf212_ed_levels_100, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx15.i, align 4
  %41 = load ptr, ptr %hw7.i, align 4
  %phy17.i = getelementptr inbounds %struct.ieee802154_hw, ptr %41, i32 0, i32 4
  %42 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy17.i, align 4
  %cca_ed_level18.i = getelementptr inbounds %struct.wpan_phy, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %cca_ed_level18.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %40, ptr %cca_ed_level18.i, align 8
  br label %if.end27

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1035, i32 noundef 9, ptr noundef null) #10
  br label %if.end27

at86rf212_update_cca_ed_level.exit:               ; preds = %at86rf230_read_subreg.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cca_ed_thres.i) #10
  br label %cleanup

if.end27:                                         ; preds = %do.end.i, %sw.bb6.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cca_ed_thres.i) #10
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %45 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy, align 4
  %symbol_duration = getelementptr inbounds %struct.wpan_phy, ptr %48, i32 0, i32 9
  %.104 = select i1 %cmp8, i8 50, i8 25
  %.105 = select i1 %cmp8, i8 40, i8 16
  %.sink = select i1 %cmp, i8 %.104, i8 %.105
  %49 = ptrtoint ptr %symbol_duration to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink, ptr %symbol_duration, align 4
  %hw55 = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %50 = ptrtoint ptr %hw55 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw55, align 4
  %phy56 = getelementptr inbounds %struct.ieee802154_hw, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %phy56 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %phy56, align 4
  %symbol_duration57 = getelementptr inbounds %struct.wpan_phy, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %symbol_duration57 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %symbol_duration57, align 4
  %conv58 = zext i8 %55 to i16
  %mul = mul nuw nsw i16 %conv58, 40
  %lifs_period = getelementptr inbounds %struct.wpan_phy, ptr %53, i32 0, i32 10
  %56 = ptrtoint ptr %lifs_period to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %mul, ptr %lifs_period, align 2
  %57 = load ptr, ptr %hw55, align 4
  %phy63 = getelementptr inbounds %struct.ieee802154_hw, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %phy63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy63, align 4
  %symbol_duration64 = getelementptr inbounds %struct.wpan_phy, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %symbol_duration64 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %symbol_duration64, align 4
  %conv65 = zext i8 %61 to i16
  %mul66 = mul nuw nsw i16 %conv65, 12
  %sifs_period = getelementptr inbounds %struct.wpan_phy, ptr %59, i32 0, i32 11
  %62 = ptrtoint ptr %sifs_period to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %mul66, ptr %sifs_period, align 16
  %call71 = call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 8, i32 noundef 31, i32 noundef 0, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %at86rf212_update_cca_ed_level.exit, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end27 ], [ %call2, %entry.cleanup_crit_edge ], [ %call13, %if.end6.cleanup_crit_edge ], [ %call.i.i, %at86rf212_update_cca_ed_level.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf212_set_txpower(ptr nocapture noundef %lp, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %lp, i32 0, i32 1
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 13
  %4 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_powers_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %3, i32 0, i32 4, i32 15
  %6 = ptrtoint ptr %tx_powers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_powers, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %7, i32 %i.012
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mbm)
  %cmp4 = icmp eq i32 %9, %mbm
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call fastcc i32 @at86rf230_write_subreg(ptr noundef %lp, i32 noundef 5, i32 noundef 31, i32 noundef 0, i32 noundef %i.012)
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_irq_status(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %irq3 = getelementptr inbounds %struct.spi_device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %irq3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq3, align 4
  tail call void @enable_irq(i32 noundef %7) #10
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 8
  %is_tx.i = getelementptr inbounds %struct.at86rf230_local, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_tx.i, align 4, !range !151
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %12 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %is_tx.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %13 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -126, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @at86rf230_tx_trac_check, ptr %complete2.i.i, align 8
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %9, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %16, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end_crit_edge, label %if.then.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %to_state.i.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i:                                ; preds = %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge, %if.then.i.i
  %rc.tr.i.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %call.i.i.i.i.i, %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge ]
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i.i) #13
  %19 = ptrtoint ptr %to_state.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %to_state.i.i.i.i, align 1
  %20 = ptrtoint ptr %complete1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i.i, align 4
  %21 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -127, ptr %buf.i.i, align 1
  %22 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %23 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %9, align 8
  %call.i.i.i.i.i = tail call i32 @spi_async(ptr noundef %24, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i.i = icmp eq i32 %call.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %tailrecurse.i.i.i.if.end_crit_edge, label %tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge

tailrecurse.i.i.i.tailrecurse.i.i.i_crit_edge:    ; preds = %tailrecurse.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i.i

tailrecurse.i.i.i.if.end_crit_edge:               ; preds = %tailrecurse.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %buf.i8.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %25 = ptrtoint ptr %buf.i8.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 -126, ptr %buf.i8.i, align 1
  %msg.i9.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i10.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %complete2.i10.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @at86rf230_rx_trac_check, ptr %complete2.i10.i, align 8
  %27 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %9, align 8
  %call.i11.i = tail call i32 @spi_async(ptr noundef %28, ptr noundef %msg.i9.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call.i11.i, 0
  br i1 %tobool.not.i12.i, label %if.else.i.if.end_crit_edge, label %if.then.i15.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i15.i:                                    ; preds = %if.else.i
  %to_state.i.i.i13.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i.i14.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i.i19.i

tailrecurse.i.i19.i:                              ; preds = %tailrecurse.i.i19.i.tailrecurse.i.i19.i_crit_edge, %if.then.i15.i
  %rc.tr.i.i16.i = phi i32 [ %call.i11.i, %if.then.i15.i ], [ %call.i.i.i.i17.i, %tailrecurse.i.i19.i.tailrecurse.i.i19.i_crit_edge ]
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i16.i) #13
  %31 = ptrtoint ptr %to_state.i.i.i13.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %to_state.i.i.i13.i, align 1
  %32 = ptrtoint ptr %complete1.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i.i14.i, align 4
  %33 = ptrtoint ptr %buf.i8.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -127, ptr %buf.i8.i, align 1
  %34 = ptrtoint ptr %complete2.i10.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i10.i, align 8
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %9, align 8
  %call.i.i.i.i17.i = tail call i32 @spi_async(ptr noundef %36, ptr noundef %msg.i9.i) #10
  %tobool.not.i.i.i.i18.i = icmp eq i32 %call.i.i.i.i17.i, 0
  br i1 %tobool.not.i.i.i.i18.i, label %tailrecurse.i.i19.i.if.end_crit_edge, label %tailrecurse.i.i19.i.tailrecurse.i.i19.i_crit_edge

tailrecurse.i.i19.i.tailrecurse.i.i19.i_crit_edge: ; preds = %tailrecurse.i.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i19.i

tailrecurse.i.i19.i.if.end_crit_edge:             ; preds = %tailrecurse.i.i19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.36, i32 noundef %conv) #13
  tail call void @kfree(ptr noundef %context) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %tailrecurse.i.i19.i.if.end_crit_edge, %if.else.i.if.end_crit_edge, %tailrecurse.i.i.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_tx_trac_check(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %conv3 = zext i8 %4 to i32
  %5 = zext i32 %conv3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %conv3, label %land.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 3, label %sw.bb8
    i32 5, label %sw.bb11
    i32 7, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %trac4 = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %trac4 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %trac4, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %trac4, align 8
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %success_data_pending = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 1
  %8 = ptrtoint ptr %success_data_pending to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %success_data_pending, align 8
  %inc7 = add i64 %9, 1
  store i64 %inc7, ptr %success_data_pending, align 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %channel_access_failure = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 3
  %10 = ptrtoint ptr %channel_access_failure to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %channel_access_failure, align 8
  %inc10 = add i64 %11, 1
  store i64 %inc10, ptr %channel_access_failure, align 8
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %no_ack = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 4
  %12 = ptrtoint ptr %no_ack to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %no_ack, align 8
  %inc13 = add i64 %13, 1
  store i64 %inc13, ptr %no_ack, align 8
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %invalid = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 5
  %14 = ptrtoint ptr %invalid to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %invalid, align 8
  %inc16 = add i64 %15, 1
  store i64 %inc16, ptr %invalid, align 8
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b61 = load i1, ptr @at86rf230_tx_trac_check.__already_done, align 1
  br i1 %.b61, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !152

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @at86rf230_tx_trac_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 696, i32 noundef 9, ptr noundef nonnull @.str.38, i32 noundef %conv3) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %sw.bb14, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb
  %to_state.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %16 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %17 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @at86rf230_tx_on, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %18 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %21, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %sw.epilog.at86rf230_async_state_change.exit_crit_edge, label %sw.epilog.tailrecurse.i.i_crit_edge

sw.epilog.tailrecurse.i.i_crit_edge:              ; preds = %sw.epilog
  br label %tailrecurse.i.i

sw.epilog.at86rf230_async_state_change.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %sw.epilog.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %sw.epilog.tailrecurse.i.i_crit_edge ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %24 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %to_state.i, align 1
  %25 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %26 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -127, ptr %buf.i.i, align 1
  %27 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %29, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

at86rf230_async_state_change.exit:                ; preds = %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, %sw.epilog.at86rf230_async_state_change.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_rx_trac_check(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %buf2 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %conv4 = zext i8 %4 to i32
  %5 = zext i32 %conv4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %conv4, label %land.end [
    i32 0, label %sw.bb
    i32 2, label %sw.bb6
    i32 7, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %trac5 = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %trac5 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %trac5, align 8
  %inc = add i64 %7, 1
  store i64 %inc, ptr %trac5, align 8
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %success_wait_for_ack = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 2
  %8 = ptrtoint ptr %success_wait_for_ack to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %success_wait_for_ack, align 8
  %inc8 = add i64 %9, 1
  store i64 %inc8, ptr %success_wait_for_ack, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %invalid = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 5
  %10 = ptrtoint ptr %invalid to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %invalid, align 8
  %inc11 = add i64 %11, 1
  store i64 %inc11, ptr %invalid, align 8
  br label %sw.epilog

land.end:                                         ; preds = %entry
  %.b68 = load i1, ptr @at86rf230_rx_trac_check.__already_done, align 1
  br i1 %.b68, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !152

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @at86rf230_rx_trac_check.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 754, i32 noundef 9, ptr noundef nonnull @.str.39, i32 noundef %conv4) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %land.end.sw.epilog_crit_edge, %sw.bb9, %sw.bb6, %sw.bb
  %12 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 32, ptr %buf2, align 1
  %len = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 130, ptr %len, align 8
  %msg = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @at86rf230_rx_read_frame_complete, ptr %complete, align 8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call = tail call i32 @spi_async(ptr noundef %16, ptr noundef %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool48.not = icmp eq i32 %call, 0
  br i1 %tobool48.not, label %sw.epilog.if.end52_crit_edge, label %if.then49

sw.epilog.if.end52_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.then49:                                        ; preds = %sw.epilog
  %17 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %len, align 8
  %to_state.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %complete1.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.i.tailrecurse.i_crit_edge, %if.then49
  %rc.tr.i = phi i32 [ %call, %if.then49 ], [ %call.i.i.i, %tailrecurse.i.tailrecurse.i_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i) #13
  %20 = ptrtoint ptr %to_state.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %to_state.i.i, align 1
  %21 = ptrtoint ptr %complete1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i.i, align 4
  %22 = ptrtoint ptr %buf2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -127, ptr %buf2, align 1
  %23 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at86rf230_async_state_change_start, ptr %complete, align 8
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %call.i.i.i = tail call i32 @spi_async(ptr noundef %25, ptr noundef %msg) #10
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %tailrecurse.i.if.end52_crit_edge, label %tailrecurse.i.tailrecurse.i_crit_edge

tailrecurse.i.tailrecurse.i_crit_edge:            ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i

tailrecurse.i.if.end52_crit_edge:                 ; preds = %tailrecurse.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

if.end52:                                         ; preds = %tailrecurse.i.if.end52_crit_edge, %sw.epilog.if.end52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_tx_on(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %to_state.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 8
  %2 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 22, ptr %to_state.i, align 1
  %complete1.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 6
  %3 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @at86rf230_tx_complete, ptr %complete1.i, align 4
  %buf.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %4 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -127, ptr %buf.i.i, align 1
  %msg.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3
  %complete2.i.i = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i.i = tail call i32 @spi_async(ptr noundef %7, ptr noundef %msg.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %entry.at86rf230_async_state_change.exit_crit_edge, label %entry.tailrecurse.i.i_crit_edge

entry.tailrecurse.i.i_crit_edge:                  ; preds = %entry
  br label %tailrecurse.i.i

entry.at86rf230_async_state_change.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i.tailrecurse.i.i_crit_edge, %entry.tailrecurse.i.i_crit_edge
  %rc.tr.i.i = phi i32 [ %call.i.i.i.i, %tailrecurse.i.i.tailrecurse.i.i_crit_edge ], [ %call.i.i, %entry.tailrecurse.i.i_crit_edge ]
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %rc.tr.i.i) #13
  %10 = ptrtoint ptr %to_state.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %to_state.i, align 1
  %11 = ptrtoint ptr %complete1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @at86rf230_async_error_recover, ptr %complete1.i, align 4
  %12 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -127, ptr %buf.i.i, align 1
  %13 = ptrtoint ptr %complete2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @at86rf230_async_state_change_start, ptr %complete2.i.i, align 8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i.i.i.i = tail call i32 @spi_async(ptr noundef %15, ptr noundef %msg.i.i) #10
  %tobool.not.i.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, label %tailrecurse.i.i.tailrecurse.i.i_crit_edge

tailrecurse.i.i.tailrecurse.i.i_crit_edge:        ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tailrecurse.i.i

tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge: ; preds = %tailrecurse.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %at86rf230_async_state_change.exit

at86rf230_async_state_change.exit:                ; preds = %tailrecurse.i.i.at86rf230_async_state_change.exit_crit_edge, %entry.at86rf230_async_state_change.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_tx_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw, align 4
  %tx_skb = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_skb, align 8
  tail call void @ieee802154_xmit_complete(ptr noundef %3, ptr noundef %5, i1 noundef zeroext false) #10
  tail call void @kfree(ptr noundef %context) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_xmit_complete(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at86rf230_rx_read_frame_complete(ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 8
  %buf2 = getelementptr inbounds %struct.at86rf230_state_change, ptr %context, i32 0, i32 5
  %arrayidx = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.i = icmp eq i8 %3, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %4 = icmp sgt i8 %3, 8
  %spec.select.i = or i1 %cmp.i, %4
  %5 = zext i8 %3 to i32
  %conv = select i1 %spec.select.i, i32 %5, i32 127
  %add = add nuw nsw i32 %conv, 2
  %arrayidx3 = getelementptr i8, ptr %buf2, i32 %add
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef 127, i32 noundef 2592) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end6

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr %struct.at86rf230_state_change, ptr %context, i32 0, i32 5, i32 2
  %call.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv) #10
  %8 = call ptr @memcpy(ptr %call.i, ptr %add.ptr, i32 %conv)
  %hw = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_rx_irqsafe(ptr noundef %10, ptr noundef nonnull %call.i.i, i8 noundef zeroext %7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  tail call void @kfree(ptr noundef %context) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_stats_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @at86rf230_stats_show, ptr noundef %1) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at86rf230_stats_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %trac = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %trac to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %trac, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.41, i64 noundef %3) #10
  %success_data_pending = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %success_data_pending to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %success_data_pending, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.42, i64 noundef %5) #10
  %success_wait_for_ack = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 2
  %6 = ptrtoint ptr %success_wait_for_ack to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %success_wait_for_ack, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.43, i64 noundef %7) #10
  %channel_access_failure = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %channel_access_failure to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %channel_access_failure, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.44, i64 noundef %9) #10
  %no_ack = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 4
  %10 = ptrtoint ptr %no_ack to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %no_ack, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.45, i64 noundef %11) #10
  %invalid = getelementptr inbounds %struct.at86rf230_local, ptr %1, i32 0, i32 15, i32 5
  %12 = ptrtoint ptr %invalid to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %invalid, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.46, i64 noundef %13) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !48, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !99, !101, !102, !103, !104, !106, !107, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !136, !137}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !{ptr @__initcall__kmod_at86rf230__340_1813_at86rf230_driver_init6, !1, !"__initcall__kmod_at86rf230__340_1813_at86rf230_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1813, i32 1}
!2 = !{ptr @__exitcall_at86rf230_driver_exit, !1, !"__exitcall_at86rf230_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description341, !4, !"__UNIQUE_ID_description341", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1815, i32 1}
!5 = !{ptr @__UNIQUE_ID_file342, !6, !"__UNIQUE_ID_file342", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1816, i32 1}
!7 = !{ptr @__UNIQUE_ID_license343, !6, !"__UNIQUE_ID_license343", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1807, i32 11}
!10 = !{ptr @at86rf230_driver, !11, !"at86rf230_driver", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1803, i32 26}
!12 = !{ptr @at86rf230_device_id, !13, !"at86rf230_device_id", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1794, i32 35}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1668, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @at86rf230_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @at86rf230_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1674, i32 3}
!24 = !{ptr @at86rf230_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @at86rf230_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1680, i32 30}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1687, i32 29}
!30 = !{ptr @at86rf230_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1712, i32 15}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1715, i32 3}
!35 = !{ptr @at86rf230_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @at86rf230_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1505, i32 46}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1506, i32 48}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1507, i32 46}
!43 = !{ptr @at86rf230_ops, !44, !"at86rf230_ops", i1 false, i1 false}
!44 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1319, i32 36}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 461, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @at86rf230_async_state_assert._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @at86rf230_async_state_assert._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 373, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @at86rf230_async_error._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @at86rf230_async_error._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @at86rf230_regmap_spi_config, !57, !"at86rf230_regmap_spi_config", i1 false, i1 false}
!57 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 325, i32 35}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1541, i32 3}
!60 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @at86rf230_detect_device._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @at86rf230_detect_device._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1568, i32 10}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1579, i32 10}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1593, i32 10}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1604, i32 10}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1613, i32 2}
!73 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @at86rf230_detect_device._entry.29, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @at86rf230_detect_device._entry_ptr.32, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @at86rf231_data, !77, !"at86rf231_data", i1 false, i1 false}
!77 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1351, i32 35}
!78 = !{ptr @at86rf231_powers, !79, !"at86rf231_powers", i1 false, i1 false}
!79 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1164, i32 18}
!80 = !{ptr @at86rf231_ed_levels, !81, !"at86rf231_ed_levels", i1 false, i1 false}
!81 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 998, i32 18}
!82 = !{ptr @at86rf212_data, !83, !"at86rf212_data", i1 false, i1 false}
!83 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1366, i32 35}
!84 = !{ptr @at86rf212_ed_levels_98, !85, !"at86rf212_ed_levels_98", i1 false, i1 false}
!85 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1008, i32 18}
!86 = !{ptr @at86rf212_powers, !87, !"at86rf212_powers", i1 false, i1 false}
!87 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1170, i32 18}
!88 = !{ptr @at86rf212_ed_levels_100, !89, !"at86rf212_ed_levels_100", i1 false, i1 false}
!89 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1003, i32 18}
!90 = !{ptr @at86rf233_data, !91, !"at86rf233_data", i1 false, i1 false}
!91 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1336, i32 35}
!92 = !{ptr @at86rf233_powers, !93, !"at86rf233_powers", i1 false, i1 false}
!93 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1159, i32 18}
!94 = !{ptr @at86rf233_ed_levels, !95, !"at86rf233_ed_levels", i1 false, i1 false}
!95 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 993, i32 18}
!96 = !{ptr @init_completion.__key, !97, !"__key", i1 false, i1 false}
!97 = !{!"../include/linux/completion.h", i32 87, i32 2}
!98 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.34, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1477, i32 3}
!101 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @at86rf230_hw_init._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @at86rf230_hw_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 798, i32 3}
!106 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @at86rf230_irq_status._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @at86rf230_irq_status._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 696, i32 4}
!111 = !{ptr @.str.38, !110, !"<string literal>", i1 false, i1 false}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 754, i32 4}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1646, i32 22}
!117 = !{ptr @at86rf230_debugfs_root, !118, !"at86rf230_debugfs_root", i1 false, i1 false}
!118 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1619, i32 23}
!119 = !{ptr @at86rf230_stats_fops, !120, !"at86rf230_stats_fops", i1 false, i1 false}
!120 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1636, i32 1}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1625, i32 19}
!123 = !{ptr @.str.42, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1626, i32 19}
!125 = !{ptr @.str.43, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1628, i32 19}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1630, i32 19}
!129 = !{ptr @.str.45, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1632, i32 19}
!131 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1633, i32 19}
!133 = !{ptr @.str.47, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1780, i32 2}
!135 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @at86rf230_remove.__UNIQUE_ID_ddebug339, !134, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!137 = !{ptr @at86rf230_of_match, !138, !"at86rf230_of_match", i1 false, i1 false}
!138 = !{!"../drivers/net/ieee802154/at86rf230.c", i32 1785, i32 34}
!139 = !{i32 1, !"wchar_size", i32 2}
!140 = !{i32 1, !"min_enum_size", i32 4}
!141 = !{i32 8, !"branch-target-enforcement", i32 0}
!142 = !{i32 8, !"sign-return-address", i32 0}
!143 = !{i32 8, !"sign-return-address-all", i32 0}
!144 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!145 = !{i32 7, !"uwtable", i32 1}
!146 = !{i32 7, !"frame-pointer", i32 2}
!147 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!148 = !{!"auto-init"}
!149 = !{i64 2148733647, i64 2148733652, i64 2148733665, i64 2148733709, i64 2148733743, i64 2148733764}
!150 = !{!"branch_weights", i32 1, i32 2000}
!151 = !{i8 0, i8 2}
!152 = !{!"branch_weights", i32 2000, i32 1}
