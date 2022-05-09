; ModuleID = '/llk/IR_all_yes/drivers/net/ieee802154/adf7242.c_pt.bc'
source_filename = "../drivers/net/ieee802154/adf7242.c"
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
%struct.atomic_t = type { i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
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
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.ieee802154_hw = type { i32, i32, ptr, ptr, ptr }
%struct.adf7242_local = type { ptr, %struct.completion, ptr, %struct.mutex, %struct.spi_message, %struct.spi_transfer, ptr, %struct.delayed_work, ptr, i32, i32, i8, i8, i8, i8, i8, i8, [82 x i8], [3 x i8], [3 x i8], [4 x i8], [4 x i8], i8, i8, i8, [111 x i8] }
%struct.wpan_phy = type { ptr, i32, i8, i8, %struct.wpan_phy_supported, i32, %struct.wpan_phy_cca, i64, i32, i8, i16, i16, %struct.device, %struct.possible_net_t, [4 x i8], [0 x i8] }
%struct.wpan_phy_supported = type { [32 x i32], i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, ptr, ptr }
%struct.wpan_phy_cca = type { i32, i32 }
%struct.possible_net_t = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
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
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_adf7242__358_1348_adf7242_driver_init6 = internal global ptr @adf7242_driver_init, section ".initcall6.init", align 4
@adf7242_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @adf7242_device_id, ptr @adf7242_probe, ptr @adf7242_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adf7242_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_adf7242_driver_exit = internal global ptr @adf7242_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author359 = internal constant [64 x i8] c"adf7242.author=Michael Hennerich <michael.hennerich@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [60 x i8] c"adf7242.description=ADF7242 IEEE802.15.4 Transceiver Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [44 x i8] c"adf7242.file=drivers/net/ieee802154/adf7242\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [20 x i8] c"adf7242.license=GPL\00", section ".modinfo", align 1
@adf7242_device_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"adf7242\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"adf7241\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adf7242\00", [24 x i8] zeroinitializer }, align 32
@adf7242_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf7242\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adf7241\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@adf7242_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1197, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no IRQ specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adf7242_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/net/ieee802154/adf7242.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adf7242_probe._entry_ptr = internal global ptr @adf7242_probe._entry, section ".printk_index", align 4
@adf7242_ops = internal constant { %struct.ieee802154_ops, [36 x i8] } { %struct.ieee802154_ops { ptr null, ptr @adf7242_start, ptr @adf7242_stop, ptr @adf7242_xmit, ptr null, ptr @adf7242_ed, ptr @adf7242_channel, ptr @adf7242_set_hw_addr_filt, ptr @adf7242_set_txpower, ptr null, ptr null, ptr @adf7242_set_cca_ed_level, ptr @adf7242_set_csma_params, ptr @adf7242_set_frame_retries, ptr @adf7242_set_promiscuous_mode }, [36 x i8] zeroinitializer }, align 32
@adf7242_ed_levels = internal constant { [60 x i32], [48 x i8] } { [60 x i32] [i32 -9000, i32 -8900, i32 -8800, i32 -8700, i32 -8600, i32 -8500, i32 -8400, i32 -8300, i32 -8200, i32 -8100, i32 -8000, i32 -7900, i32 -7800, i32 -7700, i32 -7600, i32 -7500, i32 -7400, i32 -7300, i32 -7200, i32 -7100, i32 -7000, i32 -6900, i32 -6800, i32 -6700, i32 -6600, i32 -6500, i32 -6400, i32 -6300, i32 -6200, i32 -6100, i32 -6000, i32 -5900, i32 -5800, i32 -5700, i32 -5600, i32 -5500, i32 -5400, i32 -5300, i32 -5200, i32 -5100, i32 -5000, i32 -4900, i32 -4800, i32 -4700, i32 -4600, i32 -4500, i32 -4400, i32 -4300, i32 -4200, i32 -4100, i32 -4000, i32 -3900, i32 -3800, i32 -3700, i32 -3600, i32 -3500, i32 -3400, i32 -3200, i32 -3100, i32 -3000], [48 x i8] zeroinitializer }, align 32
@adf7242_powers = internal constant { [32 x i32], [32 x i8] } { [32 x i32] [i32 500, i32 400, i32 300, i32 200, i32 100, i32 0, i32 -100, i32 -200, i32 -300, i32 -400, i32 -500, i32 -600, i32 -700, i32 -800, i32 -900, i32 -1000, i32 -1100, i32 -1200, i32 -1300, i32 -1400, i32 -1500, i32 -1600, i32 -1700, i32 -1800, i32 -1900, i32 -2000, i32 -2100, i32 -2200, i32 -2300, i32 -2400, i32 -2500, i32 -2600], [32 x i8] zeroinitializer }, align 32
@adf7242_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->bmux\00", [22 x i8] zeroinitializer }, align 32
@adf7242_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&lp->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@adf7242_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&lp->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@adf7242_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1294, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mac802154 IRQ-%d registered\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adf7242_probe._entry_ptr.14 = internal global ptr @adf7242_probe._entry.11, section ".printk_index", align 4
@adf7242_wait_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 340, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s:line %d Timeout status 0x%x (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adf7242_wait_status\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@adf7242_wait_status._entry_ptr = internal global ptr @adf7242_wait_status._entry, section ".printk_index", align 4
@adf7242_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 1043, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s (line %d)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adf7242_soft_reset\00", [45 x i8] zeroinitializer }, align 32
@adf7242_soft_reset._entry_ptr = internal global ptr @adf7242_soft_reset._entry, section ".printk_index", align 4
@adf7242_xmit.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adf7242_xmit\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Timeout waiting for TX interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@adf7242_xmit.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.3, ptr @.str.22, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Error xmit: Retry count exceeded Status=0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@adf7242_channel.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adf7242_channel\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s :Channel=%d\0A\00", [16 x i8] zeroinitializer }, align 32
@adf7242_set_hw_addr_filt.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 -68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adf7242_set_hw_addr_filt\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s :Changed=0x%lX\0A\00", [45 x i8] zeroinitializer }, align 32
@adf7242_set_cca_ed_level.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.3, ptr @.str.28, i8 0, i8 -50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"adf7242_set_cca_ed_level\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s : level %d\0A\00", [17 x i8] zeroinitializer }, align 32
@adf7242_set_promiscuous_mode.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 -57, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"adf7242_set_promiscuous_mode\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s : mode %d\0A\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adf7242_firmware.bin\00", [43 x i8] zeroinitializer }, align 32
@adf7242_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1081, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"request_firmware() failed with %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"adf7242_hw_init\00", [16 x i8] zeroinitializer }, align 32
@adf7242_hw_init._entry_ptr = internal global ptr @adf7242_hw_init._entry, section ".printk_index", align 4
@adf7242_hw_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"upload firmware failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@adf7242_hw_init._entry_ptr.37 = internal global ptr @adf7242_hw_init._entry.35, section ".printk_index", align 4
@adf7242_hw_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.3, i32 1096, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"verify firmware failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@adf7242_hw_init._entry_ptr.40 = internal global ptr @adf7242_hw_init._entry.38, section ".printk_index", align 4
@adf7242_isr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 984, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s :ERROR IRQ1 = 0x%X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adf7242_isr\00", [20 x i8] zeroinitializer }, align 32
@adf7242_isr._entry_ptr = internal global ptr @adf7242_isr._entry, section ".printk_index", align 4
@adf7242_isr.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 -1, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s:%d : ERROR IRQ1 = 0x%X\0A\00", [37 x i8] zeroinitializer }, align 32
@adf7242_isr.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.3, ptr @.str.44, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s:%d : ERROR IRQ1 = 0x%X, xmit %d\0A\00", [60 x i8] zeroinitializer }, align 32
@adf7242_rx.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adf7242_rx\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"corrupted frame received len %d\0A\00", [63 x i8] zeroinitializer }, align 32
@adf7242_rx.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.45, ptr @.str.3, ptr @.str.47, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ret=%d len=%d lqi=%d rssi=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@__const.adf7242_debugfs_init.debugfs_dir_name = private unnamed_addr constant [37 x i8] c"adf7242-\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IRQ1 = %X:\0A%s%s%s%s%s%s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IRQ_CCA_COMPLETE\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_SFD_RX\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_SFD_TX\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ_RX_PKT_RCVD\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ_TX_PKT_SENT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ_CSMA_CA\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"IRQ_FRAME_VALID\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ_ADDRESS_VALID\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"STATUS = %X:\0A%s\0A%s\0A%s\0A%s\0A%s%s%s%s%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SPI_READY\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SPI_BUSY\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ_PENDING\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IRQ_CLEAR\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RC_READY\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RC_BUSY\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAN_IDLE\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CHAN_BUSY\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RC_STATUS_IDLE\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RC_STATUS_MEAS\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RC_STATUS_PHY_RDY\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RC_STATUS_RX\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RC_STATUS_TX\00", [19 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RSSI = %d\0A\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"adf7242_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1337, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [18 x i8] c"adf7242_device_id\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1330, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1341, i32 14 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"adf7242_of_match\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1323, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1197, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"adf7242_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 926, i32 36 }
@___asan_gen_.107 = private unnamed_addr constant [18 x i8] c"adf7242_ed_levels\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1181, i32 18 }
@___asan_gen_.110 = private unnamed_addr constant [15 x i8] c"adf7242_powers\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1175, i32 18 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1249, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1262, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1294, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 338, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1043, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 857, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 863, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 725, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 753, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 825, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 796, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 87, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1078, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1080, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1087, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1095, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 983, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1020, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1030, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 892, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 920, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1171, i32 45 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1137, i32 19 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1138, i32 32 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1138, i32 55 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1139, i32 26 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1140, i32 26 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1141, i32 31 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1142, i32 31 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1143, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1144, i32 31 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1145, i32 33 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1147, i32 19 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1148, i32 30 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1148, i32 44 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1149, i32 31 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1149, i32 47 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1150, i32 29 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1150, i32 42 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1151, i32 31 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1151, i32 45 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1152, i32 39 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1153, i32 39 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1154, i32 42 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1155, i32 37 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1156, i32 37 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [36 x i8] c"../drivers/net/ieee802154/adf7242.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 1158, i32 19 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_license362, ptr @__exitcall_adf7242_driver_exit, ptr @__initcall__kmod_adf7242__358_1348_adf7242_driver_init6, ptr @adf7242_driver_exit, ptr @adf7242_hw_init._entry, ptr @adf7242_hw_init._entry.35, ptr @adf7242_hw_init._entry.38, ptr @adf7242_hw_init._entry_ptr, ptr @adf7242_hw_init._entry_ptr.37, ptr @adf7242_hw_init._entry_ptr.40, ptr @adf7242_isr._entry, ptr @adf7242_isr._entry_ptr, ptr @adf7242_probe._entry, ptr @adf7242_probe._entry.11, ptr @adf7242_probe._entry_ptr, ptr @adf7242_probe._entry_ptr.14, ptr @adf7242_soft_reset._entry, ptr @adf7242_soft_reset._entry_ptr, ptr @adf7242_wait_status._entry, ptr @adf7242_wait_status._entry_ptr, ptr @adf7242_driver, ptr @adf7242_device_id, ptr @.str, ptr @adf7242_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @adf7242_ops, ptr @adf7242_ed_levels, ptr @adf7242_powers, ptr @adf7242_probe.__key, ptr @.str.6, ptr @adf7242_probe.__key.7, ptr @.str.8, ptr @adf7242_probe.__key.9, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [84 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_device_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_ed_levels to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_powers to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_wait_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_hw_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_hw_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adf7242_isr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @adf7242_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adf7242_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @adf7242_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer_buf.i.i = alloca %struct.spi_transfer, align 4
  %xfer_head.i.i = alloca %struct.spi_transfer, align 4
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @ieee802154_alloc_hw(i32 noundef 640, ptr noundef nonnull @adf7242_ops) #8
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %hw4 = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %hw4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %hw4, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %3, align 128
  store ptr %3, ptr %priv, align 4
  %parent = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spi, ptr %parent, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call, align 4
  %phy = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %supported = getelementptr inbounds %struct.wpan_phy, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134215680, ptr %supported, align 4
  %flags = getelementptr inbounds %struct.ieee802154_hw, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 125, ptr %flags, align 4
  %12 = load ptr, ptr %phy, align 4
  %flags9 = getelementptr inbounds %struct.wpan_phy, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %flags9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14, ptr %flags9, align 4
  %14 = load ptr, ptr %phy, align 4
  %cca_modes = getelementptr inbounds %struct.wpan_phy, ptr %14, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %cca_modes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %cca_modes, align 4
  %16 = load ptr, ptr %phy, align 4
  %cca_ed_levels = getelementptr inbounds %struct.wpan_phy, ptr %16, i32 0, i32 4, i32 16
  %17 = ptrtoint ptr %cca_ed_levels to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @adf7242_ed_levels, ptr %cca_ed_levels, align 4
  %18 = load ptr, ptr %phy, align 4
  %cca_ed_levels_size = getelementptr inbounds %struct.wpan_phy, ptr %18, i32 0, i32 4, i32 14
  %19 = ptrtoint ptr %cca_ed_levels_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 60, ptr %cca_ed_levels_size, align 4
  %20 = load ptr, ptr %phy, align 4
  %cca = getelementptr inbounds %struct.wpan_phy, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %cca to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %cca, align 8
  %22 = load ptr, ptr %phy, align 4
  %tx_powers = getelementptr inbounds %struct.wpan_phy, ptr %22, i32 0, i32 4, i32 15
  %23 = ptrtoint ptr %tx_powers to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @adf7242_powers, ptr %tx_powers, align 4
  %24 = load ptr, ptr %phy, align 4
  %tx_powers_size = getelementptr inbounds %struct.wpan_phy, ptr %24, i32 0, i32 4, i32 13
  %25 = ptrtoint ptr %tx_powers_size to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %tx_powers_size, align 4
  %26 = load ptr, ptr %phy, align 4
  %min_minbe = getelementptr inbounds %struct.wpan_phy, ptr %26, i32 0, i32 4, i32 5
  %27 = ptrtoint ptr %min_minbe to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %min_minbe, align 4
  %28 = load ptr, ptr %phy, align 4
  %max_minbe = getelementptr inbounds %struct.wpan_phy, ptr %28, i32 0, i32 4, i32 6
  %29 = ptrtoint ptr %max_minbe to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 8, ptr %max_minbe, align 1
  %30 = load ptr, ptr %phy, align 4
  %min_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %30, i32 0, i32 4, i32 7
  %31 = ptrtoint ptr %min_maxbe to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 3, ptr %min_maxbe, align 2
  %32 = load ptr, ptr %phy, align 4
  %max_maxbe = getelementptr inbounds %struct.wpan_phy, ptr %32, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %max_maxbe to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 8, ptr %max_maxbe, align 1
  %34 = load ptr, ptr %phy, align 4
  %min_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %34, i32 0, i32 4, i32 11
  %35 = ptrtoint ptr %min_frame_retries to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %min_frame_retries, align 2
  %36 = load ptr, ptr %phy, align 4
  %max_frame_retries = getelementptr inbounds %struct.wpan_phy, ptr %36, i32 0, i32 4, i32 12
  %37 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 15, ptr %max_frame_retries, align 1
  %38 = load ptr, ptr %phy, align 4
  %min_csma_backoffs = getelementptr inbounds %struct.wpan_phy, ptr %38, i32 0, i32 4, i32 9
  %39 = ptrtoint ptr %min_csma_backoffs to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %min_csma_backoffs, align 4
  %40 = load ptr, ptr %phy, align 4
  %max_csma_backoffs = getelementptr inbounds %struct.wpan_phy, ptr %40, i32 0, i32 4, i32 10
  %41 = ptrtoint ptr %max_csma_backoffs to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 5, ptr %max_csma_backoffs, align 1
  %42 = load ptr, ptr %phy, align 4
  %perm_extended_addr = getelementptr inbounds %struct.wpan_phy, ptr %42, i32 0, i32 7
  tail call void @get_random_bytes(ptr noundef %perm_extended_addr, i32 noundef 8) #8
  %arrayidx.i = getelementptr i8, ptr %perm_extended_addr, i32 7
  %43 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.i, align 1
  %45 = and i8 %44, -4
  %46 = or i8 %45, 2
  store i8 %46, ptr %arrayidx.i, align 1
  %bmux = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %bmux, ptr noundef nonnull @.str.6, ptr noundef nonnull @adf7242_probe.__key) #8
  %tx_complete = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 1
  %47 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #8
  %stat_xfer = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 5
  %len = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %len, align 4
  %buf_stat_tx = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 23
  %49 = ptrtoint ptr %stat_xfer to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf_stat_tx, ptr %stat_xfer, align 4
  %buf_stat_rx = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 22
  %rx_buf = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 5, i32 1
  %50 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf_stat_rx, ptr %rx_buf, align 4
  %51 = ptrtoint ptr %buf_stat_tx to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %buf_stat_tx, align 1
  %stat_msg = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4
  %52 = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4, i32 1
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %stat_msg to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %stat_msg, ptr %stat_msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %stat_msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4, i32 10
  %56 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 5, i32 18
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %stat_msg, ptr noundef %stat_msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end3.spi_message_add_tail.exit_crit_edge

if.end3.spi_message_add_tail.exit_crit_edge:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %stat_msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 5, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %stat_msg, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %stat_msg to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i, ptr %stat_msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end3.spi_message_add_tail.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %3, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %63 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @adf7242_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry55 = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7, i32 0, i32 1
  %64 = ptrtoint ptr %entry55 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %entry55, ptr %entry55, align 4
  %prev.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7, i32 0, i32 1, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %entry55, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7, i32 0, i32 2
  %66 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @adf7242_rx_cal_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @adf7242_probe.__key.9) #8
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %67 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %68, null
  br i1 %tobool.not.i, label %if.end.i, label %spi_message_add_tail.exit.dev_name.exit_crit_edge

spi_message_add_tail.exit.dev_name.exit_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %spi_message_add_tail.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %70, %if.end.i ], [ %68, %spi_message_add_tail.exit.dev_name.exit_crit_edge ]
  %call68 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef %retval.0.i, i32 noundef 655370, i32 noundef 1) #8
  %wqueue = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 8
  %71 = ptrtoint ptr %wqueue to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call68, ptr %wqueue, align 4
  %tobool70.not = icmp eq ptr %call68, null
  br i1 %tobool70.not, label %dev_name.exit.err_alloc_wq_crit_edge, label %if.end75, !prof !176

dev_name.exit.err_alloc_wq_crit_edge:             ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_alloc_wq

if.end75:                                         ; preds = %dev_name.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #8
  %72 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !177
  %call.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %3, i32 noundef 200) #8
  %call1.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %3, i32 noundef 178) #8
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 128
  %call2.i = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.32, ptr noundef %74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i182 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i182, label %if.end.i183, label %do.end.i

do.end.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.33, i32 noundef %call2.i) #11
  br label %adf7242_hw_init.exit.thread

if.end.i183:                                      ; preds = %if.end75
  %77 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %78, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf.i.i) #8
  %83 = call ptr @memset(ptr %xfer_buf.i.i, i32 0, i32 96)
  %buf1.i.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head.i.i) #8
  %84 = getelementptr inbounds i8, ptr %xfer_head.i.i, i32 4
  %85 = call ptr @memset(ptr %84, i32 0, i32 92)
  %86 = ptrtoint ptr %xfer_head.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %buf1.i.i, ptr %xfer_head.i.i, align 4
  %len2.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i.i, i32 0, i32 2
  %87 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 2, ptr %len2.i.i, align 4
  %88 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 30, ptr %buf1.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.adf7242_local, ptr %3, i32 0, i32 18, i32 1
  %89 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %arrayidx3.i.i, align 1
  %90 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %91 = call ptr @memset(ptr %90, i32 0, i32 40)
  %92 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %94 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %95 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i183.spi_message_add_tail.exit.i.i_crit_edge

if.end.i183.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i.i, i32 0, i32 18, i32 1
  %98 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %99 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end.i183.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i24.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i.i, i32 0, i32 18
  %100 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i26.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i24.i.i, ptr noundef %101, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i26.i.i, label %if.end.i.i.i28.i.i, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit29.i.i_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit29.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit29.i.i

if.end.i.i.i28.i.i:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %transfer_list.i24.i.i, ptr %prev.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %transfer_list.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i.i, ptr %transfer_list.i24.i.i, align 4
  %prev3.i.i.i27.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i.i, i32 0, i32 18, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i27.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i27.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %transfer_list.i24.i.i, ptr %101, align 4
  br label %spi_message_add_tail.exit29.i.i

spi_message_add_tail.exit29.i.i:                  ; preds = %if.end.i.i.i28.i.i, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit29.i.i_crit_edge
  %conv.i.i = and i32 %82, 65535
  %len8.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i.i, i32 0, i32 2
  %106 = lshr i32 %conv.i.i, 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %spi_message_add_tail.exit29.i.i
  %page.031.i.i = phi i32 [ 0, %spi_message_add_tail.exit29.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.030.i.i = phi i32 [ %conv.i.i, %spi_message_add_tail.exit29.i.i ], [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %conv5.i.i = trunc i32 %page.031.i.i to i8
  %call.i.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 787, i8 noundef zeroext %conv5.i.i) #8
  %107 = call i32 @llvm.umin.i32(i32 %i.030.i.i, i32 256) #8
  %108 = ptrtoint ptr %len8.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %len8.i.i, align 4
  %mul.i.i = shl i32 %page.031.i.i, 8
  %arrayidx9.i.i = getelementptr i8, ptr %80, i32 %mul.i.i
  %109 = ptrtoint ptr %xfer_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %arrayidx9.i.i, ptr %xfer_buf.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %bmux, i32 noundef 0) #8
  %110 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %3, align 128
  %call11.i.i = call i32 @spi_sync(ptr noundef %111, ptr noundef nonnull %msg.i.i) #8
  call void @mutex_unlock(ptr noundef %bmux) #8
  %inc.i.i = add nuw nsw i32 %page.031.i.i, 1
  %sub.i.i = add nsw i32 %i.030.i.i, -256
  %exitcond.not.i.i = icmp eq i32 %page.031.i.i, %106
  br i1 %exitcond.not.i.i, label %adf7242_upload_firmware.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

adf7242_upload_firmware.exit.i:                   ; preds = %for.body.i.i
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool6.not.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool6.not.i, label %if.end79, label %do.end10.i

do.end10.i:                                       ; preds = %adf7242_upload_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %112 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %3, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.36, i32 noundef %call11.i.i) #11
  %114 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %115) #8
  br label %adf7242_hw_init.exit.thread

adf7242_hw_init.exit.thread:                      ; preds = %do.end10.i, %do.end.i
  %retval.0.i184.ph = phi i32 [ %call11.i.i, %do.end10.i ], [ %call2.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  br label %err_hw_init

if.end79:                                         ; preds = %adf7242_upload_firmware.exit.i
  %call25.i = call fastcc i32 @adf7242_cmd(ptr noundef %3, i32 noundef 199) #8
  %116 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %117) #8
  %call26.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 286, i8 noundef zeroext 27) #8
  %call27.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 287, i8 noundef zeroext 8) #8
  %call28.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 264, i8 noundef zeroext 20) #8
  %call29.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 938, i8 noundef zeroext -15) #8
  %call30.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 923, i8 noundef zeroext 29) #8
  %call31.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 967, i8 noundef zeroext 0) #8
  %call32.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 968, i8 noundef zeroext -120) #8
  %call.i62.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %call33.i = call fastcc i32 @adf7242_write_reg(ptr noundef %3, i16 noundef zeroext 971, i8 noundef zeroext -1) #8
  %call34.i = call fastcc i32 @adf7242_cmd(ptr noundef %3, i32 noundef 178) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #8
  %118 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %irq, align 4
  %call.i185 = call ptr @irq_get_irq_data(i32 noundef %119) #8
  %tobool.not.i186 = icmp eq ptr %call.i185, null
  br i1 %tobool.not.i186, label %irq_get_trigger_type.exit.thread, label %irq_get_trigger_type.exit

irq_get_trigger_type.exit.thread:                 ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %irq, align 4
  br label %128

irq_get_trigger_type.exit:                        ; preds = %if.end79
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i185, i32 0, i32 3
  %122 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %common.i.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %123, align 4
  %and.i.i = and i32 %125, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool82.not = icmp eq i32 %and.i.i, 0
  %126 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %irq, align 4
  %call81.op = or i32 %and.i.i, 8192
  br i1 %tobool82.not, label %irq_get_trigger_type.exit._crit_edge, label %irq_get_trigger_type.exit._crit_edge197

irq_get_trigger_type.exit._crit_edge197:          ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %130

irq_get_trigger_type.exit._crit_edge:             ; preds = %irq_get_trigger_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %128

128:                                              ; preds = %irq_get_trigger_type.exit._crit_edge, %irq_get_trigger_type.exit.thread
  %129 = phi i32 [ %121, %irq_get_trigger_type.exit.thread ], [ %127, %irq_get_trigger_type.exit._crit_edge ]
  br label %130

130:                                              ; preds = %128, %irq_get_trigger_type.exit._crit_edge197
  %131 = phi i32 [ %129, %128 ], [ %127, %irq_get_trigger_type.exit._crit_edge197 ]
  %132 = phi i32 [ 8196, %128 ], [ %call81.op, %irq_get_trigger_type.exit._crit_edge197 ]
  %133 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i188 = icmp eq ptr %134, null
  br i1 %tobool.not.i188, label %if.end.i189, label %.dev_name.exit191_crit_edge

.dev_name.exit191_crit_edge:                      ; preds = %130
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit191

if.end.i189:                                      ; preds = %130
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %spi, align 4
  br label %dev_name.exit191

dev_name.exit191:                                 ; preds = %if.end.i189, %.dev_name.exit191_crit_edge
  %retval.0.i190 = phi ptr [ %136, %if.end.i189 ], [ %134, %.dev_name.exit191_crit_edge ]
  %call89 = call i32 @devm_request_threaded_irq(ptr noundef %spi, i32 noundef %131, ptr noundef null, ptr noundef nonnull @adf7242_isr, i32 noundef %132, ptr noundef %retval.0.i190, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %dev_name.exit191.err_hw_init_crit_edge

dev_name.exit191.err_hw_init_crit_edge:           ; preds = %dev_name.exit191
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hw_init

if.end92:                                         ; preds = %dev_name.exit191
  %137 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %138) #8
  %139 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw4, align 4
  %call95 = call i32 @ieee802154_register_hw(ptr noundef %140) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %if.end92.err_hw_init_crit_edge

if.end92.err_hw_init_crit_edge:                   ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_hw_init

if.end98:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %141 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %3, ptr %driver_data.i.i, align 4
  call fastcc void @adf7242_debugfs_init(ptr noundef %3)
  %142 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %143) #11
  br label %cleanup

err_hw_init:                                      ; preds = %if.end92.err_hw_init_crit_edge, %dev_name.exit191.err_hw_init_crit_edge, %adf7242_hw_init.exit.thread
  %ret.0 = phi i32 [ %call89, %dev_name.exit191.err_hw_init_crit_edge ], [ %call95, %if.end92.err_hw_init_crit_edge ], [ %retval.0.i184.ph, %adf7242_hw_init.exit.thread ]
  %144 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %wqueue, align 4
  call void @destroy_workqueue(ptr noundef %145) #8
  br label %err_alloc_wq

err_alloc_wq:                                     ; preds = %err_hw_init, %dev_name.exit.err_alloc_wq_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_hw_init ], [ -12, %dev_name.exit.err_alloc_wq_crit_edge ]
  call void @mutex_destroy(ptr noundef %bmux) #8
  %146 = ptrtoint ptr %hw4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %hw4, align 4
  call void @ieee802154_free_hw(ptr noundef %147) #8
  br label %cleanup

cleanup:                                          ; preds = %err_alloc_wq, %if.end98, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.1, %err_alloc_wq ], [ 0, %if.end98 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_root = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %work = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %wqueue = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #8
  %hw = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_unregister_hw(ptr noundef %7) #8
  %bmux = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 3
  tail call void @mutex_destroy(ptr noundef %bmux) #8
  %8 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw, align 4
  tail call void @ieee802154_free_hw(ptr noundef %9) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ieee802154_alloc_hw(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adf7242_rx_cal_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %work, i32 -312
  %call1 = tail call fastcc i32 @adf7242_cmd(ptr noundef %add.ptr, i32 noundef 179)
  tail call fastcc void @adf7242_wait_status(ptr noundef %add.ptr, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %add.ptr, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i = getelementptr i8, ptr %work, i32 100
  %2 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wqueue.i, align 4
  %call.i8.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %work, i32 noundef 40) #8
  %call3.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %add.ptr, i32 noundef 180) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %irq1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq1) #8
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %irq1, align 1, !annotation !177
  %wqueue = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 8
  %1 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %wqueue, align 4
  %work = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 7
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %work, i32 noundef 40) #8
  %call2 = call fastcc i32 @adf7242_read_reg(ptr noundef %data, i16 noundef zeroext 972, ptr noundef nonnull %irq1)
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %irq1, align 1
  %conv = zext i8 %4 to i32
  %and = and i32 %conv, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.42, i32 noundef %conv) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 9
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %land.lhs.true12.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %4)
  %tobool8.not = icmp sgt i8 %4, -1
  br i1 %tobool8.not, label %land.lhs.true.do.body44_crit_edge, label %if.then9

land.lhs.true.do.body44_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adf7242_wait_status(ptr noundef %data, i32 noundef 3, i32 noundef 15, i32 noundef 992)
  %tx_stat = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 10
  %9 = ptrtoint ptr %tx_stat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tx_stat, align 4
  %tx_complete = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 1
  tail call void @complete(ptr noundef %tx_complete) #8
  %call.i93 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %data, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  br label %if.end67

land.lhs.true12.critedge:                         ; preds = %if.end
  %10 = and i32 %conv, 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %10)
  %.not = icmp eq i32 %10, 40
  br i1 %.not, label %if.then20, label %land.lhs.true24.critedge

if.then20:                                        ; preds = %land.lhs.true12.critedge
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adf7242_rx(ptr noundef %data)
  br label %if.end67

land.lhs.true24.critedge:                         ; preds = %land.lhs.true12.critedge
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags, align 4
  %13 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool27.not = icmp eq i32 %13, 0
  br i1 %tobool27.not, label %land.lhs.true24.critedge.do.body44_crit_edge, label %do.body29

land.lhs.true24.critedge.do.body44_crit_edge:     ; preds = %land.lhs.true24.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body44

do.body29:                                        ; preds = %land.lhs.true24.critedge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_isr.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_isr, %if.then34)) #8
          to label %do.end40 [label %if.then34], !srcloc !178

if.then34:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_isr.__UNIQUE_ID_ddebug356, ptr noundef %15, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i32 noundef 1021, i32 noundef %conv) #8
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %do.body29
  %call41 = tail call fastcc i32 @adf7242_cmd(ptr noundef %data, i32 noundef 179)
  tail call fastcc void @adf7242_wait_status(ptr noundef %data, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %data, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %16 = ptrtoint ptr %wqueue to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wqueue, align 4
  %call.i8.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %17, ptr noundef %work, i32 noundef 40) #8
  %call3.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %data, i32 noundef 180) #8
  br label %if.end67

do.body44:                                        ; preds = %land.lhs.true24.critedge.do.body44_crit_edge, %land.lhs.true.do.body44_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_isr.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_isr, %if.then56)) #8
          to label %do.end62 [label %if.then56], !srcloc !178

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_isr.__UNIQUE_ID_ddebug357, ptr noundef %19, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i32 noundef 1031, i32 noundef %conv, i32 noundef %and1.i) #8
  br label %do.end62

do.end62:                                         ; preds = %if.then56, %do.body44
  tail call fastcc void @adf7242_wait_status(ptr noundef %data, i32 noundef 3, i32 noundef 15, i32 noundef 1033)
  %tx_complete64 = getelementptr inbounds %struct.adf7242_local, ptr %data, i32 0, i32 1
  tail call void @complete(ptr noundef %tx_complete64) #8
  %call.i94 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %data, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end62, %do.end40, %if.then20, %if.then9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq1) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ieee802154_register_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adf7242_debugfs_init(ptr nocapture noundef %lp) unnamed_addr #2 align 64 {
entry:
  %debugfs_dir_name = alloca [37 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 37, ptr nonnull %debugfs_dir_name) #8
  %0 = call ptr @memcpy(ptr %debugfs_dir_name, ptr @__const.adf7242_debugfs_init.debugfs_dir_name, i32 37)
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp, align 128
  %init_name.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %6, %if.end.i ], [ %4, %entry.dev_name.exit_crit_edge ]
  %call1 = call ptr @strncat(ptr noundef nonnull %debugfs_dir_name, ptr noundef %retval.0.i, i32 noundef 36)
  %call3 = call ptr @debugfs_create_dir(ptr noundef nonnull %debugfs_dir_name, ptr noundef null) #8
  %debugfs_root = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 6
  %7 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %debugfs_root, align 4
  %8 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lp, align 128
  call void @debugfs_create_devm_seqfile(ptr noundef %9, ptr noundef nonnull @.str.48, ptr noundef %call3, ptr noundef nonnull @adf7242_stats_show) #8
  call void @llvm.lifetime.end.p0(i64 37, ptr nonnull %debugfs_dir_name) #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_free_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_start(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %call = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 179)
  %call.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  %flags = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #8
  tail call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wqueue.i, align 4
  %work.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 7
  %call.i8.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work.i, i32 noundef 40) #8
  %call3.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 180) #8
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adf7242_stop(ptr nocapture noundef readonly %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %work = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %call1 = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 178)
  %flags = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %flags) #8
  %call.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_xmit(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %skb) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer_head.i = alloca %struct.spi_transfer, align 4
  %xfer_buf.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %irq = getelementptr inbounds %struct.spi_device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #8
  %flags = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #8
  %work = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 7
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %tx_complete = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tx_complete, align 4
  %call1 = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 179)
  %call.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len, align 4
  %conv = trunc i32 %10 to i8
  %buf1.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head.i) #8
  %11 = getelementptr inbounds i8, ptr %xfer_head.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 92)
  %13 = ptrtoint ptr %xfer_head.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf1.i, ptr %xfer_head.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 2
  %14 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %len2.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf.i) #8
  %15 = getelementptr inbounds i8, ptr %xfer_buf.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 0, i32 92)
  %17 = ptrtoint ptr %xfer_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %8, ptr %xfer_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 2
  %conv.i = and i32 %10, 255
  %18 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %len4.i, align 4
  %19 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %20 = call ptr @memset(ptr %19, i32 0, i32 40)
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %23 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %24 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %28 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i21.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i23.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i21.i, ptr noundef %30, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i23.i, label %if.end.i.i.i25.i, label %spi_message_add_tail.exit.i.adf7242_write_fbuf.exit_crit_edge

spi_message_add_tail.exit.i.adf7242_write_fbuf.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_write_fbuf.exit

if.end.i.i.i25.i:                                 ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i21.i, ptr %prev.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i21.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i, ptr %transfer_list.i21.i, align 4
  %prev3.i.i.i24.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i24.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i21.i, ptr %30, align 4
  br label %adf7242_write_fbuf.exit

adf7242_write_fbuf.exit:                          ; preds = %if.end.i.i.i25.i, %spi_message_add_tail.exit.i.adf7242_write_fbuf.exit_crit_edge
  call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 128, i32 noundef 128, i32 noundef 379) #8
  %bmux.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %35 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 16, ptr %buf1.i, align 1
  %add.i = add i8 %conv, 2
  %arrayidx11.i = getelementptr %struct.adf7242_local, ptr %1, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %add.i, ptr %arrayidx11.i, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 128
  %call12.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i) #8
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool.not = icmp eq i32 %call12.i, 0
  br i1 %tobool.not, label %if.end, label %adf7242_write_fbuf.exit.err_crit_edge

adf7242_write_fbuf.exit.err_crit_edge:            ; preds = %adf7242_write_fbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end:                                           ; preds = %adf7242_write_fbuf.exit
  %call3 = call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 193)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end6:                                          ; preds = %if.end
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 128
  %irq8 = getelementptr inbounds %struct.spi_device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq8, align 4
  call void @enable_irq(i32 noundef %42) #8
  %call10 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %tx_complete, i32 noundef 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end6.err_crit_edge, label %if.end13

if.end6.err_crit_edge:                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

if.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp14 = icmp eq i32 %call10, 0
  br i1 %cmp14, label %do.body, label %if.end24

do.body:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_xmit.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_xmit, %if.then21)) #8
          to label %err [label %if.then21], !srcloc !178

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 128
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_xmit.__UNIQUE_ID_ddebug351, ptr noundef %44, ptr noundef nonnull @.str.21) #8
  br label %err

if.end24:                                         ; preds = %if.end13
  %tx_stat = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_stat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp25.not = icmp eq i32 %46, 0
  br i1 %cmp25.not, label %if.end24.err_crit_edge, label %do.body28

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %err

do.body28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_xmit.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_xmit, %if.then40)) #8
          to label %err [label %if.then40], !srcloc !178

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 128
  %49 = ptrtoint ptr %tx_stat to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tx_stat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_xmit.__UNIQUE_ID_ddebug352, ptr noundef %48, ptr noundef nonnull @.str.22, i32 noundef %50) #8
  br label %err

err:                                              ; preds = %if.then40, %do.body28, %if.end24.err_crit_edge, %if.then21, %do.body, %if.end6.err_crit_edge, %if.end.err_crit_edge, %adf7242_write_fbuf.exit.err_crit_edge
  %ret.0 = phi i32 [ %call12.i, %adf7242_write_fbuf.exit.err_crit_edge ], [ %call3, %if.end.err_crit_edge ], [ %call10, %if.end6.err_crit_edge ], [ -110, %if.then21 ], [ -70, %if.then40 ], [ 0, %if.end24.err_crit_edge ], [ -110, %do.body ], [ -70, %do.body28 ]
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags) #8
  call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i = call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %wqueue.i, align 4
  %call.i8.i = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %work, i32 noundef 40) #8
  %call3.i = call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 180) #8
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adf7242_ed(ptr nocapture noundef readonly %hw, ptr nocapture noundef writeonly %level) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %rssi = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rssi, align 1
  %4 = ptrtoint ptr %level to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %level, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_channel(ptr nocapture noundef readonly %hw, i8 noundef zeroext %page, i8 noundef zeroext %channel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_channel.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_channel, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %conv = zext i8 %channel to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_channel.__UNIQUE_ID_ddebug343, ptr noundef %3, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.23, i32 noundef %conv) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 727) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %page)
  %cmp.not = icmp eq i8 %page, 0
  br i1 %cmp.not, label %do.body3.if.end32_crit_edge, label %do.end26, !prof !179

do.body3.if.end32_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end26:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 729, i32 noundef 9, ptr noundef null) #8
  br label %if.end32

if.end32:                                         ; preds = %do.end26, %do.body3.if.end32_crit_edge
  %conv41 = zext i8 %channel to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %channel)
  %cmp42 = icmp ult i8 %channel, 11
  br i1 %cmp42, label %if.end32.if.end98.sink.split_crit_edge, label %if.end65, !prof !176

if.end32.if.end98.sink.split_crit_edge:           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.sink.split

if.end65:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp1(i8 26, i8 %channel)
  %cmp75 = icmp ugt i8 %channel, 26
  br i1 %cmp75, label %if.end65.if.end98.sink.split_crit_edge, label %if.end65.if.end98_crit_edge, !prof !176

if.end65.if.end98_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98

if.end65.if.end98.sink.split_crit_edge:           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.sink.split

if.end98.sink.split:                              ; preds = %if.end65.if.end98.sink.split_crit_edge, %if.end32.if.end98.sink.split_crit_edge
  %.sink = phi i32 [ 730, %if.end32.if.end98.sink.split_crit_edge ], [ 731, %if.end65.if.end98.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #8
  br label %if.end98

if.end98:                                         ; preds = %if.end98.sink.split, %if.end65.if.end98_crit_edge
  %4 = mul nuw nsw i32 %conv41, 500
  %mul107 = add nuw nsw i32 %4, 235000
  %call108 = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 179)
  %conv109 = trunc i32 %mul107 to i8
  %call110 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 768, i8 noundef zeroext %conv109)
  %shr = lshr i32 %mul107, 8
  %conv111 = trunc i32 %shr to i8
  %call112 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 769, i8 noundef zeroext %conv111)
  %shr113 = lshr i32 %mul107, 16
  %conv114 = trunc i32 %shr113 to i8
  %call115 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 770, i8 noundef zeroext %conv114)
  %flags = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %flags, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool117.not = icmp eq i32 %7, 0
  br i1 %tobool117.not, label %if.else, label %if.then118

if.then118:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wqueue.i, align 4
  %work.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 7
  %call.i8.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %work.i, i32 noundef 40) #8
  %call3.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 180) #8
  br label %cleanup

if.else:                                          ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #10
  %call120 = tail call fastcc i32 @adf7242_cmd(ptr noundef %1, i32 noundef 179)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then118
  %retval.0 = phi i32 [ %call3.i, %if.then118 ], [ %call120, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_hw_addr_filt(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %filt, i32 noundef %changed) #2 align 64 {
entry:
  %reg = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %reg) #8
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %reg, align 1, !annotation !177
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_set_hw_addr_filt.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_set_hw_addr_filt, %if.then)) #8
          to label %do.body3 [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_set_hw_addr_filt.__UNIQUE_ID_ddebug344, ptr noundef %4, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %changed) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 755) #8
  %and = and i32 %changed, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.body3.if.end15_crit_edge, label %if.then10

do.body3.if.end15_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then10:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %ieee_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 2
  %5 = ptrtoint ptr %ieee_addr to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ieee_addr, align 8
  %addr.sroa.0.0.extract.shift = lshr i64 %6, 56
  %addr.sroa.0.0.extract.trunc = trunc i64 %addr.sroa.0.0.extract.shift to i8
  %addr.sroa.5.0.extract.shift = lshr i64 %6, 48
  %addr.sroa.5.0.extract.trunc = trunc i64 %addr.sroa.5.0.extract.shift to i8
  %addr.sroa.7.0.extract.shift = lshr i64 %6, 40
  %addr.sroa.7.0.extract.trunc = trunc i64 %addr.sroa.7.0.extract.shift to i8
  %addr.sroa.9.0.extract.shift = lshr i64 %6, 32
  %addr.sroa.9.0.extract.trunc = trunc i64 %addr.sroa.9.0.extract.shift to i8
  %addr.sroa.11.0.extract.shift = lshr i64 %6, 24
  %addr.sroa.11.0.extract.trunc = trunc i64 %addr.sroa.11.0.extract.shift to i8
  %addr.sroa.13.0.extract.shift = lshr i64 %6, 16
  %addr.sroa.13.0.extract.trunc = trunc i64 %addr.sroa.13.0.extract.shift to i8
  %addr.sroa.15.0.extract.shift = lshr i64 %6, 8
  %addr.sroa.15.0.extract.trunc = trunc i64 %addr.sroa.15.0.extract.shift to i8
  %addr.sroa.17.0.extract.trunc = trunc i64 %6 to i8
  %call14 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 278, i8 noundef zeroext %addr.sroa.0.0.extract.trunc)
  %call14.1 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 279, i8 noundef zeroext %addr.sroa.5.0.extract.trunc)
  %call14.2 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 280, i8 noundef zeroext %addr.sroa.7.0.extract.trunc)
  %call14.3 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 281, i8 noundef zeroext %addr.sroa.9.0.extract.trunc)
  %call14.4 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 282, i8 noundef zeroext %addr.sroa.11.0.extract.trunc)
  %call14.5 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 283, i8 noundef zeroext %addr.sroa.13.0.extract.trunc)
  %call14.6 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 284, i8 noundef zeroext %addr.sroa.15.0.extract.trunc)
  %call14.7 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 285, i8 noundef zeroext %addr.sroa.17.0.extract.trunc)
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %do.body3.if.end15_crit_edge
  %and16 = and i32 %changed, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end15.if.end24_crit_edge, label %if.then18

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %short_addr = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 1
  %7 = ptrtoint ptr %short_addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %short_addr, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv19 = trunc i16 %9 to i8
  %call20 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 276, i8 noundef zeroext %conv19)
  %10 = lshr i16 %9, 8
  %conv22 = trunc i16 %10 to i8
  %call23 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 277, i8 noundef zeroext %conv22)
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end15.if.end24_crit_edge
  %and25 = and i32 %changed, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end35_crit_edge, label %if.then27

if.end24.if.end35_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %filt to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %filt, align 8
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  %conv29 = trunc i16 %13 to i8
  %call30 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 274, i8 noundef zeroext %conv29)
  %14 = lshr i16 %13, 8
  %conv33 = trunc i16 %14 to i8
  %call34 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 275, i8 noundef zeroext %conv33)
  br label %if.end35

if.end35:                                         ; preds = %if.then27, %if.end24.if.end35_crit_edge
  %and36 = and i32 %changed, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end49_crit_edge, label %if.then38

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call39 = call fastcc i32 @adf7242_read_reg(ptr noundef %1, i16 noundef zeroext 287, ptr noundef nonnull %reg)
  %pan_coord = getelementptr inbounds %struct.ieee802154_hw_addr_filt, ptr %filt, i32 0, i32 3
  %15 = ptrtoint ptr %pan_coord to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pan_coord, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool40.not = icmp eq i8 %16, 0
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg, align 1
  %19 = and i8 %18, -3
  %masksel = select i1 %tobool40.not, i8 0, i8 2
  %storemerge = or i8 %19, %masksel
  %call48 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 287, i8 noundef zeroext %storemerge)
  br label %if.end49

if.end49:                                         ; preds = %if.then38, %if.end35.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %reg) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_txpower(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #8
  %2 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %tmp, align 1, !annotation !177
  %3 = add i32 %mbm, -600
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3299, i32 %3)
  %4 = icmp ult i32 %3, -3299
  br i1 %4, label %entry.cleanup_crit_edge, label %cond.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %div.lhs.trunc = trunc i32 %mbm to i16
  %div96 = sdiv i16 %div.lhs.trunc, 100
  %5 = zext i16 %div96 to i32
  %div1097.lhs.trunc = add nuw nsw i32 %5, 30
  %div10979899 = lshr i32 %div1097.lhs.trunc, 1
  %div1097.zext = and i32 %div10979899, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %mbm)
  %cmp13 = icmp sgt i32 %mbm, 199
  %bias_ctrl.0 = select i1 %cmp13, i8 62, i8 46
  %dbias.0 = select i1 %cmp13, i8 21, i8 13
  %6 = and i32 %div1097.lhs.trunc, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp21.not = icmp eq i32 %6, 0
  %7 = tail call i32 @llvm.umin.i32(i32 %div1097.zext, i32 15)
  %call = call fastcc i32 @adf7242_read_reg(ptr noundef %1, i16 noundef zeroext 936, ptr noundef nonnull %tmp)
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp, align 1
  %10 = and i8 %9, -32
  %or = or i8 %10, %dbias.0
  store i8 %or, ptr %tmp, align 1
  %call48 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 936, i8 noundef zeroext %or)
  %call49 = call fastcc i32 @adf7242_read_reg(ptr noundef %1, i16 noundef zeroext 878, ptr noundef nonnull %tmp)
  %11 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tmp, align 1
  %13 = and i8 %12, -63
  %or57 = or i8 %13, %bias_ctrl.0
  store i8 %or57, ptr %tmp, align 1
  %call59 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 878, i8 noundef zeroext %or57)
  %call60 = call fastcc i32 @adf7242_read_reg(ptr noundef %1, i16 noundef zeroext 938, ptr noundef nonnull %tmp)
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tmp, align 1
  %16 = and i8 %15, 15
  %17 = trunc i32 %7 to i8
  %.op = shl nuw i8 %17, 4
  %18 = select i1 %cmp21.not, i8 48, i8 %.op
  %conv69 = or i8 %16, %18
  %call70 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 938, i8 noundef zeroext %conv69)
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call70, %cond.true ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_cca_ed_level(ptr nocapture noundef readonly %hw, i32 noundef %mbm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %div = sdiv i32 %mbm, 100
  %sext.mask = and i32 %div, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %sext.mask)
  %cmp.not = icmp eq i32 %sext.mask, 128
  %sext31 = shl i32 %div, 24
  %phi.cast30 = ashr exact i32 %sext31, 24
  %cond = select i1 %cmp.not, i32 -128, i32 %phi.cast30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_set_cca_ed_level.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_set_cca_ed_level, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_set_cca_ed_level.__UNIQUE_ID_ddebug350, ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.27, i32 noundef %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %conv18 = trunc i32 %cond to i8
  %call23 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 261, i8 noundef zeroext %conv18)
  ret i32 %call23
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_csma_params(ptr nocapture noundef readonly %hw, i8 noundef zeroext %min_be, i8 noundef zeroext %max_be, i8 noundef zeroext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %min_be, i8 %max_be)
  %cmp = icmp ugt i8 %min_be, %max_be
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %max_be)
  %cmp4 = icmp ugt i8 %max_be, 8
  %or.cond = or i1 %cmp, %cmp4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %retries)
  %cmp8 = icmp ugt i8 %retries, 5
  %or.cond42 = or i1 %or.cond, %cmp8
  br i1 %or.cond42, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %max_frame_retries = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_frame_retries, align 2
  %4 = and i8 %3, 15
  %5 = shl nuw nsw i8 %retries, 4
  %6 = and i8 %5, 112
  %or40 = or i8 %4, %6
  %call = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 288, i8 noundef zeroext %or40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %max_cca_retries = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %max_cca_retries to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %retries, ptr %max_cca_retries, align 1
  %max_be16 = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %max_be16 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %max_be, ptr %max_be16, align 4
  %min_be17 = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 16
  %9 = ptrtoint ptr %min_be17 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %min_be, ptr %min_be17, align 1
  %10 = shl i8 %min_be, 4
  %or2341 = or i8 %10, %max_be
  %call25 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 289, i8 noundef zeroext %or2341)
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end15 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_frame_retries(ptr nocapture noundef readonly %hw, i8 noundef signext %retries) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = add i8 %retries, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 -17, i8 %2)
  %3 = icmp ult i8 %2, -17
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %retries)
  %cmp6 = icmp sgt i8 %retries, -1
  br i1 %cmp6, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %max_cca_retries = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 14
  %4 = ptrtoint ptr %max_cca_retries to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %max_cca_retries, align 1
  %6 = shl i8 %5, 4
  %7 = and i8 %6, 112
  %or22 = or i8 %7, %retries
  %call = tail call fastcc i32 @adf7242_write_reg(ptr noundef %1, i16 noundef zeroext 288, i8 noundef zeroext %or22)
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %ret.0 = phi i32 [ %call, %if.then8 ], [ 0, %if.end.if.end13_crit_edge ]
  %max_frame_retries = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %max_frame_retries to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %retries, ptr %max_frame_retries, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_set_promiscuous_mode(ptr nocapture noundef readonly %hw, i1 noundef zeroext %on) #2 align 64 {
entry:
  %msg.i.i59 = alloca %struct.spi_message, align 4
  %t.i60 = alloca %struct.spi_transfer, align 4
  %msg.i.i47 = alloca %struct.spi_message, align 4
  %t.i48 = alloca %struct.spi_transfer, align 4
  %msg.i.i35 = alloca %struct.spi_message, align 4
  %t.i36 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %on to i8
  %priv = getelementptr inbounds %struct.ieee802154_hw, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_set_promiscuous_mode.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_set_promiscuous_mode, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !178

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_set_promiscuous_mode.__UNIQUE_ID_ddebug345, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.29, i32 noundef %conv) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %promiscuous = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %promiscuous to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %promiscuous, align 8
  tail call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 128, i32 noundef 128, i32 noundef 472) #8
  %bmux.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %buf_reg_tx.i = getelementptr inbounds %struct.adf7242_local, ptr %1, i32 0, i32 19
  %5 = ptrtoint ptr %buf_reg_tx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 25, ptr %buf_reg_tx.i, align 1
  %arrayidx4.i = getelementptr %struct.adf7242_local, ptr %1, i32 0, i32 19, i32 1
  br i1 %on, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  %6 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 31, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr %struct.adf7242_local, ptr %1, i32 0, i32 19, i32 2
  %7 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx6.i, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %10 = getelementptr inbounds i8, ptr %t.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf_reg_tx.i, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.then8.spi_write.exit_crit_edge

if.then8.spi_write.exit_crit_edge:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.then8.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 128, i32 noundef 128, i32 noundef 472) #8
  call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %24 = ptrtoint ptr %buf_reg_tx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 25, ptr %buf_reg_tx.i, align 1
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 30, ptr %arrayidx4.i, align 1
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 63, ptr %arrayidx6.i, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i36) #8
  %29 = getelementptr inbounds i8, ptr %t.i36, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 92)
  %31 = ptrtoint ptr %t.i36 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %buf_reg_tx.i, ptr %t.i36, align 4
  %len1.i37 = getelementptr inbounds %struct.spi_transfer, ptr %t.i36, i32 0, i32 2
  %32 = ptrtoint ptr %len1.i37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 3, ptr %len1.i37, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i35) #8
  %33 = getelementptr inbounds i8, ptr %msg.i.i35, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i.i35 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i.i35, ptr %msg.i.i35, align 4
  %prev.i.i.i.i.i.i38 = getelementptr inbounds %struct.list_head, ptr %msg.i.i35, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i35, ptr %prev.i.i.i.i.i.i38, align 4
  %resources.i.i.i.i.i39 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i35, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i.i39, ptr %resources.i.i.i.i.i39, align 4
  %prev.i2.i.i.i.i.i40 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i35, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i.i39, ptr %prev.i2.i.i.i.i.i40, align 4
  %transfer_list.i.i.i.i41 = getelementptr inbounds %struct.spi_transfer, ptr %t.i36, i32 0, i32 18
  %call.i.i.i.i.i.i42 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i41, ptr noundef nonnull %msg.i.i35, ptr noundef nonnull %msg.i.i35) #8
  br i1 %call.i.i.i.i.i.i42, label %if.end.i.i.i.i.i.i44, label %spi_write.exit.spi_write.exit46_crit_edge

spi_write.exit.spi_write.exit46_crit_edge:        ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit46

if.end.i.i.i.i.i.i44:                             ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.i41, ptr %prev.i.i.i.i.i.i38, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i35, ptr %transfer_list.i.i.i.i41, align 4
  %prev3.i.i.i.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %t.i36, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i35, ptr %prev3.i.i.i.i.i.i43, align 4
  %42 = ptrtoint ptr %msg.i.i35 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.i41, ptr %msg.i.i35, align 4
  br label %spi_write.exit46

spi_write.exit46:                                 ; preds = %if.end.i.i.i.i.i.i44, %spi_write.exit.spi_write.exit46_crit_edge
  %call.i.i45 = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i35) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i35) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i36) #8
  br label %cleanup

if.else:                                          ; preds = %do.end
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 30, ptr %arrayidx4.i, align 1
  %arrayidx6.i28 = getelementptr %struct.adf7242_local, ptr %1, i32 0, i32 19, i32 2
  %44 = ptrtoint ptr %arrayidx6.i28 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 27, ptr %arrayidx6.i28, align 1
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i48) #8
  %47 = getelementptr inbounds i8, ptr %t.i48, i32 4
  %48 = call ptr @memset(ptr %47, i32 0, i32 92)
  %49 = ptrtoint ptr %t.i48 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf_reg_tx.i, ptr %t.i48, align 4
  %len1.i49 = getelementptr inbounds %struct.spi_transfer, ptr %t.i48, i32 0, i32 2
  %50 = ptrtoint ptr %len1.i49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %len1.i49, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i47) #8
  %51 = getelementptr inbounds i8, ptr %msg.i.i47, i32 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 40)
  %53 = ptrtoint ptr %msg.i.i47 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %msg.i.i47, ptr %msg.i.i47, align 4
  %prev.i.i.i.i.i.i50 = getelementptr inbounds %struct.list_head, ptr %msg.i.i47, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i47, ptr %prev.i.i.i.i.i.i50, align 4
  %resources.i.i.i.i.i51 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i47, i32 0, i32 10
  %55 = ptrtoint ptr %resources.i.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %resources.i.i.i.i.i51, ptr %resources.i.i.i.i.i51, align 4
  %prev.i2.i.i.i.i.i52 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i47, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i2.i.i.i.i.i52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %resources.i.i.i.i.i51, ptr %prev.i2.i.i.i.i.i52, align 4
  %transfer_list.i.i.i.i53 = getelementptr inbounds %struct.spi_transfer, ptr %t.i48, i32 0, i32 18
  %call.i.i.i.i.i.i54 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i53, ptr noundef nonnull %msg.i.i47, ptr noundef nonnull %msg.i.i47) #8
  br i1 %call.i.i.i.i.i.i54, label %if.end.i.i.i.i.i.i56, label %if.else.spi_write.exit58_crit_edge

if.else.spi_write.exit58_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit58

if.end.i.i.i.i.i.i56:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %prev.i.i.i.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %transfer_list.i.i.i.i53, ptr %prev.i.i.i.i.i.i50, align 4
  %58 = ptrtoint ptr %transfer_list.i.i.i.i53 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %msg.i.i47, ptr %transfer_list.i.i.i.i53, align 4
  %prev3.i.i.i.i.i.i55 = getelementptr inbounds %struct.spi_transfer, ptr %t.i48, i32 0, i32 18, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i.i.i.i55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i47, ptr %prev3.i.i.i.i.i.i55, align 4
  %60 = ptrtoint ptr %msg.i.i47 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %transfer_list.i.i.i.i53, ptr %msg.i.i47, align 4
  br label %spi_write.exit58

spi_write.exit58:                                 ; preds = %if.end.i.i.i.i.i.i56, %if.else.spi_write.exit58_crit_edge
  %call.i.i57 = call i32 @spi_sync(ptr noundef %46, ptr noundef nonnull %msg.i.i47) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i47) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i48) #8
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  call fastcc void @adf7242_wait_status(ptr noundef %1, i32 noundef 128, i32 noundef 128, i32 noundef 472) #8
  call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %61 = ptrtoint ptr %buf_reg_tx.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 25, ptr %buf_reg_tx.i, align 1
  %62 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 31, ptr %arrayidx4.i, align 1
  %63 = ptrtoint ptr %arrayidx6.i28 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 8, ptr %arrayidx6.i28, align 1
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i60) #8
  %66 = getelementptr inbounds i8, ptr %t.i60, i32 4
  %67 = call ptr @memset(ptr %66, i32 0, i32 92)
  %68 = ptrtoint ptr %t.i60 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf_reg_tx.i, ptr %t.i60, align 4
  %len1.i61 = getelementptr inbounds %struct.spi_transfer, ptr %t.i60, i32 0, i32 2
  %69 = ptrtoint ptr %len1.i61 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 3, ptr %len1.i61, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i59) #8
  %70 = getelementptr inbounds i8, ptr %msg.i.i59, i32 8
  %71 = call ptr @memset(ptr %70, i32 0, i32 40)
  %72 = ptrtoint ptr %msg.i.i59 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %msg.i.i59, ptr %msg.i.i59, align 4
  %prev.i.i.i.i.i.i62 = getelementptr inbounds %struct.list_head, ptr %msg.i.i59, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i.i59, ptr %prev.i.i.i.i.i.i62, align 4
  %resources.i.i.i.i.i63 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i59, i32 0, i32 10
  %74 = ptrtoint ptr %resources.i.i.i.i.i63 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %resources.i.i.i.i.i63, ptr %resources.i.i.i.i.i63, align 4
  %prev.i2.i.i.i.i.i64 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i59, i32 0, i32 10, i32 1
  %75 = ptrtoint ptr %prev.i2.i.i.i.i.i64 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %resources.i.i.i.i.i63, ptr %prev.i2.i.i.i.i.i64, align 4
  %transfer_list.i.i.i.i65 = getelementptr inbounds %struct.spi_transfer, ptr %t.i60, i32 0, i32 18
  %call.i.i.i.i.i.i66 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i65, ptr noundef nonnull %msg.i.i59, ptr noundef nonnull %msg.i.i59) #8
  br i1 %call.i.i.i.i.i.i66, label %if.end.i.i.i.i.i.i68, label %spi_write.exit58.spi_write.exit70_crit_edge

spi_write.exit58.spi_write.exit70_crit_edge:      ; preds = %spi_write.exit58
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit70

if.end.i.i.i.i.i.i68:                             ; preds = %spi_write.exit58
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %prev.i.i.i.i.i.i62 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %transfer_list.i.i.i.i65, ptr %prev.i.i.i.i.i.i62, align 4
  %77 = ptrtoint ptr %transfer_list.i.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %msg.i.i59, ptr %transfer_list.i.i.i.i65, align 4
  %prev3.i.i.i.i.i.i67 = getelementptr inbounds %struct.spi_transfer, ptr %t.i60, i32 0, i32 18, i32 1
  %78 = ptrtoint ptr %prev3.i.i.i.i.i.i67 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %msg.i.i59, ptr %prev3.i.i.i.i.i.i67, align 4
  %79 = ptrtoint ptr %msg.i.i59 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %transfer_list.i.i.i.i65, ptr %msg.i.i59, align 4
  br label %spi_write.exit70

spi_write.exit70:                                 ; preds = %if.end.i.i.i.i.i.i68, %spi_write.exit58.spi_write.exit70_crit_edge
  %call.i.i69 = call i32 @spi_sync(ptr noundef %65, ptr noundef nonnull %msg.i.i59) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i59) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i60) #8
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit70, %spi_write.exit46
  %retval.0 = phi i32 [ %call.i.i45, %spi_write.exit46 ], [ %call.i.i69, %spi_write.exit70 ]
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef %cmd) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483449, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, -2147483449
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 160, i32 noundef 160, i32 noundef 494) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bmux = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bmux, i32 noundef 0) #8
  %conv = trunc i32 %cmd to i8
  %buf_cmd = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 24
  %0 = ptrtoint ptr %buf_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %buf_cmd, align 16
  %1 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lp, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %3 = getelementptr inbounds i8, ptr %t.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 92)
  %5 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf_cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %6 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %7 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %2, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @mutex_unlock(ptr noundef %bmux) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef %status, i32 noundef %mask, i32 noundef %line) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bmux.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 3
  %stat_msg.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 4
  %buf_stat_rx.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 22
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %cnt.0 = phi i32 [ 0, %entry ], [ %inc, %do.body.do.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %0 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lp, align 128
  %call.i = tail call i32 @spi_sync(ptr noundef %1, ptr noundef %stat_msg.i) #8
  %2 = ptrtoint ptr %buf_stat_rx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf_stat_rx.i, align 2
  tail call void @mutex_unlock(ptr noundef %bmux.i) #8
  %inc = add nuw nsw i32 %cnt.0, 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %status)
  %cmp.not = icmp ne i32 %and, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 199, i32 %cnt.0)
  %cmp2 = icmp ult i32 %cnt.0, 199
  %or.cond = select i1 %cmp.not, i1 %cmp2, i1 false
  br i1 %or.cond, label %do.body.do.body_crit_edge, label %do.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 198, i32 %cnt.0)
  %cmp4 = icmp ugt i32 %cnt.0, 198
  br i1 %cmp4, label %if.then, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then:                                          ; preds = %do.end
  %conv.le = zext i8 %3 to i32
  %4 = and i8 %3, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then8, label %if.then.do.end22_crit_edge

if.then.do.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.then8:                                         ; preds = %if.then
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 128
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %line) #11
  %flags.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 9
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags.i, align 4
  %9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %if.then8.if.end.i_crit_edge, label %if.then.i

if.then8.if.end.i_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lp, align 128
  %irq.i = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then8.if.end.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %buf_cmd.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 24
  %14 = ptrtoint ptr %buf_cmd.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -57, ptr %buf_cmd.i, align 16
  %15 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lp, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %17 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 0, i32 92)
  %19 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf_cmd.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %21 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %22 = call ptr @memset(ptr %21, i32 0, i32 40)
  %23 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.i.adf7242_cmd.exit_crit_edge

if.end.i.adf7242_cmd.exit_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_cmd.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %adf7242_cmd.exit

adf7242_cmd.exit:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end.i.adf7242_cmd.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %16, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  call void @usleep_range_state(i32 noundef 200, i32 noundef 250, i32 noundef 2) #8
  %call3.i = call fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext 264, i8 noundef zeroext 20) #8
  %call4.i = call fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef 179) #8
  %hw.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 2
  %31 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hw.i, align 4
  %promiscuous.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 11
  %33 = ptrtoint ptr %promiscuous.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %promiscuous.i, align 8, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool5.i = icmp ne i8 %34, 0
  %call6.i = call i32 @adf7242_set_promiscuous_mode(ptr noundef %32, i1 noundef zeroext %tobool5.i) #8
  %35 = ptrtoint ptr %hw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw.i, align 4
  %min_be.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 16
  %37 = ptrtoint ptr %min_be.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %min_be.i, align 1
  %max_be.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 15
  %39 = ptrtoint ptr %max_be.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_be.i, align 4
  %max_cca_retries.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 14
  %41 = ptrtoint ptr %max_cca_retries.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_cca_retries.i, align 1
  %priv.i = getelementptr inbounds %struct.ieee802154_hw, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %priv.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %38, i8 %40)
  %cmp.i = icmp ugt i8 %38, %40
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %40)
  %cmp4.i = icmp ugt i8 %40, 8
  %or.cond.i = or i1 %cmp.i, %cmp4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %42)
  %cmp8.i = icmp ugt i8 %42, 5
  %or.cond42.i = or i1 %or.cond.i, %cmp8.i
  br i1 %or.cond42.i, label %adf7242_cmd.exit.adf7242_set_csma_params.exit_crit_edge, label %if.end.i8

adf7242_cmd.exit.adf7242_set_csma_params.exit_crit_edge: ; preds = %adf7242_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_set_csma_params.exit

if.end.i8:                                        ; preds = %adf7242_cmd.exit
  %max_frame_retries.i = getelementptr inbounds %struct.adf7242_local, ptr %44, i32 0, i32 13
  %45 = ptrtoint ptr %max_frame_retries.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %max_frame_retries.i, align 2
  %47 = and i8 %46, 15
  %48 = shl nuw nsw i8 %42, 4
  %49 = and i8 %48, 112
  %or40.i = or i8 %47, %49
  %call.i6 = call fastcc i32 @adf7242_write_reg(ptr noundef %44, i16 noundef zeroext 288, i8 noundef zeroext %or40.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6)
  %tobool.not.i7 = icmp eq i32 %call.i6, 0
  br i1 %tobool.not.i7, label %if.end15.i, label %if.end.i8.adf7242_set_csma_params.exit_crit_edge

if.end.i8.adf7242_set_csma_params.exit_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_set_csma_params.exit

if.end15.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #10
  %max_cca_retries.i9 = getelementptr inbounds %struct.adf7242_local, ptr %44, i32 0, i32 14
  %50 = ptrtoint ptr %max_cca_retries.i9 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %42, ptr %max_cca_retries.i9, align 1
  %max_be16.i = getelementptr inbounds %struct.adf7242_local, ptr %44, i32 0, i32 15
  %51 = ptrtoint ptr %max_be16.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %40, ptr %max_be16.i, align 4
  %min_be17.i = getelementptr inbounds %struct.adf7242_local, ptr %44, i32 0, i32 16
  %52 = ptrtoint ptr %min_be17.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %38, ptr %min_be17.i, align 1
  %53 = shl i8 %38, 4
  %or2341.i = or i8 %40, %53
  %call25.i = call fastcc i32 @adf7242_write_reg(ptr noundef %44, i16 noundef zeroext 289, i8 noundef zeroext %or2341.i) #8
  br label %adf7242_set_csma_params.exit

adf7242_set_csma_params.exit:                     ; preds = %if.end15.i, %if.end.i8.adf7242_set_csma_params.exit_crit_edge, %adf7242_cmd.exit.adf7242_set_csma_params.exit_crit_edge
  %call.i5 = call fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %54 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load volatile i32, ptr %flags.i, align 4
  %56 = and i32 %55, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool11.not.i = icmp eq i32 %56, 0
  br i1 %tobool11.not.i, label %adf7242_set_csma_params.exit.adf7242_soft_reset.exit_crit_edge, label %if.then12.i

adf7242_set_csma_params.exit.adf7242_soft_reset.exit_crit_edge: ; preds = %adf7242_set_csma_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_soft_reset.exit

if.then12.i:                                      ; preds = %adf7242_set_csma_params.exit
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lp, align 128
  %irq14.i = getelementptr inbounds %struct.spi_device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %irq14.i, align 4
  call void @enable_irq(i32 noundef %60) #8
  %call15.i = call fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef 180) #8
  br label %adf7242_soft_reset.exit

adf7242_soft_reset.exit:                          ; preds = %if.then12.i, %adf7242_set_csma_params.exit.adf7242_soft_reset.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %61 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lp, align 128
  %call.i3 = call i32 @spi_sync(ptr noundef %62, ptr noundef %stat_msg.i) #8
  %63 = ptrtoint ptr %buf_stat_rx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %buf_stat_rx.i, align 2
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  %conv11 = zext i8 %64 to i32
  %and12 = and i32 %conv11, %mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and12, i32 %status)
  %cmp13.not = icmp eq i32 %and12, %status
  br i1 %cmp13.not, label %adf7242_soft_reset.exit.if.end25_crit_edge, label %adf7242_soft_reset.exit.do.end22_crit_edge

adf7242_soft_reset.exit.do.end22_crit_edge:       ; preds = %adf7242_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

adf7242_soft_reset.exit.if.end25_crit_edge:       ; preds = %adf7242_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

do.end22:                                         ; preds = %adf7242_soft_reset.exit.do.end22_crit_edge, %if.then.do.end22_crit_edge
  %conv23.pre-phi = phi i32 [ %conv.le, %if.then.do.end22_crit_edge ], [ %conv11, %adf7242_soft_reset.exit.do.end22_crit_edge ]
  %65 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lp, align 128
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, i32 noundef %line, i32 noundef %conv23.pre-phi, i32 noundef %inc) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %adf7242_soft_reset.exit.if.end25_crit_edge, %do.end.if.end25_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext %addr, i8 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 128, i32 noundef 128, i32 noundef 472) #8
  %bmux = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bmux, i32 noundef 0) #8
  %0 = lshr i16 %addr, 8
  %1 = trunc i16 %0 to i8
  %conv1 = add i8 %1, 24
  %buf_reg_tx = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 19
  %2 = ptrtoint ptr %buf_reg_tx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %buf_reg_tx, align 1
  %conv2 = trunc i16 %addr to i8
  %arrayidx4 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %arrayidx4, align 1
  %arrayidx6 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 19, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %data, ptr %arrayidx6, align 1
  %5 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lp, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf_reg_tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  call void @mutex_unlock(ptr noundef %bmux) #8
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adf7242_read_reg(ptr noundef %lp, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer) #8
  %0 = getelementptr inbounds i8, ptr %xfer, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %buf_read_tx = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 20
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf_read_tx, ptr %xfer, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 1
  %buf_read_rx = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 21
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf_read_rx, ptr %rx_buf, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %len, align 4
  tail call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 128, i32 noundef 128, i32 noundef 442) #8
  %bmux = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bmux, i32 noundef 0) #8
  %5 = lshr i16 %addr, 8
  %6 = trunc i16 %5 to i8
  %conv2 = add i8 %6, 56
  %7 = ptrtoint ptr %buf_read_tx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2, ptr %buf_read_tx, align 2
  %conv4 = trunc i16 %addr to i8
  %arrayidx6 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 20, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv4, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 20, i32 2
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx8, align 2
  %arrayidx10 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 20, i32 3
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %arrayidx10, align 1
  %11 = getelementptr inbounds i8, ptr %msg, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %21 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lp, align 128
  %call11 = call i32 @spi_sync(ptr noundef %22, ptr noundef nonnull %msg) #8
  %status12 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 7
  %23 = ptrtoint ptr %status12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %status12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  %spec.select = select i1 %tobool.not, i32 %call11, i32 %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool14.not = icmp eq i32 %spec.select, 0
  br i1 %tobool14.not, label %if.then15, label %spi_message_add_tail.exit.if.end18_crit_edge

spi_message_add_tail.exit.if.end18_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then15:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx17 = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 21, i32 3
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17, align 1
  %27 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %data, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %spi_message_add_tail.exit.if.end18_crit_edge
  call void @mutex_unlock(ptr noundef %bmux) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #8
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adf7242_rx(ptr noundef %lp) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer_head.i = alloca %struct.spi_transfer, align 4
  %xfer_buf.i = alloca %struct.spi_transfer, align 4
  %len_u8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len_u8) #8
  %0 = ptrtoint ptr %len_u8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len_u8, align 1, !annotation !177
  %call = call fastcc i32 @adf7242_read_reg(ptr noundef %lp, i16 noundef zeroext 0, ptr noundef nonnull %len_u8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %len_u8 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %len_u8, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %2)
  %cmp.i = icmp eq i8 %2, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %2)
  %3 = icmp sgt i8 %2, 8
  %spec.select.i = or i1 %cmp.i, %3
  br i1 %spec.select.i, label %if.end.if.end10_crit_edge, label %do.body

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_rx.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_rx, %if.then8)) #8
          to label %if.end10 [label %if.then8], !srcloc !178

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lp, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_rx.__UNIQUE_ID_ddebug353, ptr noundef %5, ptr noundef nonnull @.str.46, i32 noundef %conv) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %if.end.if.end10_crit_edge
  %len.0 = phi i32 [ %conv, %if.end.if.end10_crit_edge ], [ 127, %if.then8 ], [ 127, %do.body ]
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef null, i32 noundef %len.0, i32 noundef 2592) #8
  %tobool12.not = icmp eq ptr %call.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i4 = tail call fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 8
  %6 = ptrtoint ptr %wqueue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wqueue.i, align 4
  %work.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 7
  %call.i8.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work.i, i32 noundef 40) #8
  %call3.i = tail call fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef 180) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %call16 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len.0) #8
  %buf1.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 18
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_head.i) #8
  %8 = getelementptr inbounds i8, ptr %xfer_head.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = ptrtoint ptr %xfer_head.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf1.i, ptr %xfer_head.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 1
  %11 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf1.i, ptr %rx_buf.i, align 4
  %len2.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 2
  %12 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3, ptr %len2.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer_buf.i) #8
  %13 = call ptr @memset(ptr %xfer_buf.i, i32 0, i32 96)
  %rx_buf4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %rx_buf4.i, align 4
  %len5.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 2
  %15 = ptrtoint ptr %len5.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len.0, ptr %len5.i, align 4
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end15.spi_message_add_tail.exit.i_crit_edge

if.end15.spi_message_add_tail.exit.i_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_head.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %if.end15.spi_message_add_tail.exit.i_crit_edge
  %transfer_list.i1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18
  %26 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i, align 4
  %call.i.i.i3.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1.i, ptr noundef %27, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i3.i, label %if.end.i.i.i5.i, label %spi_message_add_tail.exit.i.adf7242_read_fbuf.exit_crit_edge

spi_message_add_tail.exit.i.adf7242_read_fbuf.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adf7242_read_fbuf.exit

if.end.i.i.i5.i:                                  ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i1.i, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i1.i, align 4
  %prev3.i.i.i4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer_buf.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i4.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i1.i, ptr %27, align 4
  br label %adf7242_read_fbuf.exit

adf7242_read_fbuf.exit:                           ; preds = %if.end.i.i.i5.i, %spi_message_add_tail.exit.i.adf7242_read_fbuf.exit_crit_edge
  call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 128, i32 noundef 128, i32 noundef 411) #8
  %bmux.i = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %32 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 48, ptr %buf1.i, align 1
  %arrayidx10.i = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %arrayidx10.i, align 1
  %arrayidx11.i = getelementptr %struct.adf7242_local, ptr %lp, i32 0, i32 18, i32 2
  %34 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %arrayidx11.i, align 1
  %35 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lp, align 128
  %call15.i = call i32 @spi_sync(ptr noundef %36, ptr noundef nonnull %msg.i) #8
  call void @mutex_unlock(ptr noundef %bmux.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_buf.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer_head.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp = icmp slt i32 %call15.i, 0
  br i1 %cmp, label %if.then19, label %if.end21

if.then19:                                        ; preds = %adf7242_read_fbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #8
  call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i5 = call fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i6 = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 8
  %37 = ptrtoint ptr %wqueue.i6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %wqueue.i6, align 4
  %work.i7 = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 7
  %call.i8.i8 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work.i7, i32 noundef 40) #8
  %call3.i9 = call fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef 180) #8
  br label %cleanup

if.end21:                                         ; preds = %adf7242_read_fbuf.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add nsw i32 %len.0, -2
  %arrayidx = getelementptr i8, ptr %call16, i32 %sub
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx, align 1
  %sub22 = add nsw i32 %len.0, -1
  %arrayidx23 = getelementptr i8, ptr %call16, i32 %sub22
  %41 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx23, align 1
  %rssi = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 12
  %43 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %rssi, align 1
  call fastcc void @adf7242_wait_status(ptr noundef %lp, i32 noundef 3, i32 noundef 15, i32 noundef 577) #8
  %call.i.i10 = call fastcc i32 @adf7242_write_reg(ptr noundef %lp, i16 noundef zeroext 972, i8 noundef zeroext -1) #8
  %wqueue.i11 = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 8
  %44 = ptrtoint ptr %wqueue.i11 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wqueue.i11, align 4
  %work.i12 = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 7
  %call.i8.i13 = call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %45, ptr noundef %work.i12, i32 noundef 40) #8
  %call3.i14 = call fastcc i32 @adf7242_cmd(ptr noundef %lp, i32 noundef 180) #8
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub) #8
  %hw = getelementptr inbounds %struct.adf7242_local, ptr %lp, i32 0, i32 2
  %46 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw, align 4
  call void @ieee802154_rx_irqsafe(ptr noundef %47, ptr noundef nonnull %call.i.i, i8 noundef zeroext %40) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adf7242_rx.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adf7242_rx, %if.then38)) #8
          to label %cleanup [label %if.then38], !srcloc !178

if.then38:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %lp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lp, align 128
  %conv41 = zext i8 %40 to i32
  %50 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %rssi, align 1
  %conv43 = sext i8 %51 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adf7242_rx.__UNIQUE_ID_ddebug354, ptr noundef %49, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.45, i32 noundef %call3.i14, i32 noundef %len.0, i32 noundef %conv41, i32 noundef %conv43) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end21, %if.then19, %if.then13, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len_u8) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_rx_irqsafe(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_devm_seqfile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adf7242_stats_show(ptr noundef %file, ptr nocapture noundef readnone %offset) #2 align 64 {
entry:
  %irq1 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %file, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq1) #8
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %irq1, align 1, !annotation !177
  %bmux.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %bmux.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 128
  %stat_msg.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @spi_sync(ptr noundef %6, ptr noundef %stat_msg.i) #8
  %buf_stat_rx.i = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 22
  %7 = ptrtoint ptr %buf_stat_rx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf_stat_rx.i, align 2
  tail call void @mutex_unlock(ptr noundef %bmux.i) #8
  %call2 = call fastcc i32 @adf7242_read_reg(ptr noundef %3, i16 noundef zeroext 972, ptr noundef nonnull %irq1)
  %9 = ptrtoint ptr %irq1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %irq1, align 1
  %conv = zext i8 %10 to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, ptr @.str.51, ptr @.str.50
  %and5 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %cond7 = select i1 %tobool6.not, ptr @.str.51, ptr @.str.52
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %cond11 = select i1 %tobool10.not, ptr @.str.51, ptr @.str.53
  %and13 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.51, ptr @.str.54
  %and17 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.51, ptr @.str.55
  %and21 = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %cond23 = select i1 %tobool22.not, ptr @.str.51, ptr @.str.56
  %and25 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.51, ptr @.str.57
  %and29 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %cond31 = select i1 %tobool30.not, ptr @.str.51, ptr @.str.58
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.49, i32 noundef %conv, ptr noundef nonnull %cond, ptr noundef nonnull %cond7, ptr noundef nonnull %cond11, ptr noundef nonnull %cond15, ptr noundef nonnull %cond19, ptr noundef nonnull %cond23, ptr noundef nonnull %cond27, ptr noundef nonnull %cond31) #8
  %conv32 = zext i8 %8 to i32
  %and34 = and i32 %conv32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.61, ptr @.str.60
  %and38 = and i32 %conv32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.63, ptr @.str.62
  %and42 = and i32 %conv32, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.65, ptr @.str.64
  %and46 = and i32 %conv32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.67, ptr @.str.66
  %and50 = and i32 %conv32, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and50)
  %cmp = icmp eq i32 %and50, 1
  %cond52 = select i1 %cmp, ptr @.str.68, ptr @.str.51
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and50)
  %cmp55 = icmp eq i32 %and50, 2
  %cond57 = select i1 %cmp55, ptr @.str.69, ptr @.str.51
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and50)
  %cmp60 = icmp eq i32 %and50, 3
  %cond62 = select i1 %cmp60, ptr @.str.70, ptr @.str.51
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and50)
  %cmp65 = icmp eq i32 %and50, 4
  %cond67 = select i1 %cmp65, ptr @.str.71, ptr @.str.51
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and50)
  %cmp70 = icmp eq i32 %and50, 5
  %cond72 = select i1 %cmp70, ptr @.str.72, ptr @.str.51
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.59, i32 noundef %conv32, ptr noundef nonnull %cond36, ptr noundef nonnull %cond40, ptr noundef nonnull %cond44, ptr noundef nonnull %cond48, ptr noundef nonnull %cond52, ptr noundef nonnull %cond57, ptr noundef nonnull %cond62, ptr noundef nonnull %cond67, ptr noundef nonnull %cond72) #8
  %rssi = getelementptr inbounds %struct.adf7242_local, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %rssi, align 1
  %conv73 = sext i8 %12 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %file, ptr noundef nonnull @.str.73, i32 noundef %conv73) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ieee802154_unregister_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 84)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @__initcall__kmod_adf7242__358_1348_adf7242_driver_init6, !1, !"__initcall__kmod_adf7242__358_1348_adf7242_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1348, i32 1}
!2 = !{ptr @__exitcall_adf7242_driver_exit, !1, !"__exitcall_adf7242_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author359, !4, !"__UNIQUE_ID_author359", i1 false, i1 false}
!4 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1350, i32 1}
!5 = !{ptr @__UNIQUE_ID_description360, !6, !"__UNIQUE_ID_description360", i1 false, i1 false}
!6 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1351, i32 1}
!7 = !{ptr @__UNIQUE_ID_file361, !8, !"__UNIQUE_ID_file361", i1 false, i1 false}
!8 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1352, i32 1}
!9 = !{ptr @__UNIQUE_ID_license362, !8, !"__UNIQUE_ID_license362", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1341, i32 14}
!12 = !{ptr @adf7242_driver, !13, !"adf7242_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1337, i32 26}
!14 = !{ptr @adf7242_device_id, !15, !"adf7242_device_id", i1 false, i1 false}
!15 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1330, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1197, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @adf7242_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @adf7242_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @adf7242_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1249, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @adf7242_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1262, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @adf7242_probe.__key.9, !28, !"__key", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1294, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @adf7242_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @adf7242_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @adf7242_ops, !38, !"adf7242_ops", i1 false, i1 false}
!38 = !{!"../drivers/net/ieee802154/adf7242.c", i32 926, i32 36}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/ieee802154/adf7242.c", i32 338, i32 4}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @adf7242_wait_status._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @adf7242_wait_status._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1043, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @adf7242_soft_reset._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @adf7242_soft_reset._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ieee802154/adf7242.c", i32 857, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @adf7242_xmit.__UNIQUE_ID_ddebug351, !51, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ieee802154/adf7242.c", i32 863, i32 3}
!56 = !{ptr @adf7242_xmit.__UNIQUE_ID_ddebug352, !55, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ieee802154/adf7242.c", i32 725, i32 2}
!59 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @adf7242_channel.__UNIQUE_ID_ddebug343, !58, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ieee802154/adf7242.c", i32 753, i32 2}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @adf7242_set_hw_addr_filt.__UNIQUE_ID_ddebug344, !62, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ieee802154/adf7242.c", i32 825, i32 2}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @adf7242_set_cca_ed_level.__UNIQUE_ID_ddebug350, !66, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ieee802154/adf7242.c", i32 796, i32 2}
!71 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @adf7242_set_promiscuous_mode.__UNIQUE_ID_ddebug345, !70, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!73 = !{ptr @adf7242_ed_levels, !74, !"adf7242_ed_levels", i1 false, i1 false}
!74 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1181, i32 18}
!75 = !{ptr @adf7242_powers, !76, !"adf7242_powers", i1 false, i1 false}
!76 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1175, i32 18}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1078, i32 30}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1080, i32 3}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @adf7242_hw_init._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @adf7242_hw_init._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1087, i32 3}
!89 = !{ptr @adf7242_hw_init._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @adf7242_hw_init._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1095, i32 3}
!93 = !{ptr @adf7242_hw_init._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @adf7242_hw_init._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ieee802154/adf7242.c", i32 983, i32 3}
!97 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @adf7242_isr._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @adf7242_isr._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1020, i32 3}
!102 = !{ptr @adf7242_isr.__UNIQUE_ID_ddebug356, !101, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1030, i32 3}
!105 = !{ptr @adf7242_isr.__UNIQUE_ID_ddebug357, !104, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/ieee802154/adf7242.c", i32 892, i32 3}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @adf7242_rx.__UNIQUE_ID_ddebug353, !107, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!110 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/net/ieee802154/adf7242.c", i32 920, i32 2}
!112 = !{ptr @adf7242_rx.__UNIQUE_ID_ddebug354, !111, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1171, i32 45}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1137, i32 19}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1138, i32 32}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1138, i32 55}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1139, i32 26}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1140, i32 26}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1141, i32 31}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1142, i32 31}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1143, i32 27}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1144, i32 31}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1145, i32 33}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1147, i32 19}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1148, i32 30}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1148, i32 44}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1149, i32 31}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1149, i32 47}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1150, i32 29}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1150, i32 42}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1151, i32 31}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1151, i32 45}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1152, i32 39}
!155 = !{ptr @.str.69, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1153, i32 39}
!157 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1154, i32 42}
!159 = !{ptr @.str.71, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1155, i32 37}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1156, i32 37}
!163 = !{ptr @.str.73, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1158, i32 19}
!165 = !{ptr @adf7242_of_match, !166, !"adf7242_of_match", i1 false, i1 false}
!166 = !{!"../drivers/net/ieee802154/adf7242.c", i32 1323, i32 34}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{!"branch_weights", i32 1, i32 2000}
!177 = !{!"auto-init"}
!178 = !{i64 2148726327, i64 2148726332, i64 2148726345, i64 2148726389, i64 2148726423, i64 2148726444}
!179 = !{!"branch_weights", i32 2000, i32 1}
!180 = !{i8 0, i8 2}
