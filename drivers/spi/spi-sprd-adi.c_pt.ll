; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-sprd-adi.c_pt.bc'
source_filename = "../drivers/spi/spi-sprd-adi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sprd_adi_data = type { i32, i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sprd_adi = type { ptr, ptr, ptr, ptr, i32, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }

@__initcall__kmod_spi_sprd_adi__230_665_sprd_adi_driver_init6 = internal global ptr @sprd_adi_driver_init, section ".initcall6.init", align 4
@sprd_adi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sprd_adi_probe, ptr @sprd_adi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sprd_adi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sprd_adi_driver_exit = internal global ptr @sprd_adi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [58 x i8] c"spi_sprd_adi.description=Spreadtrum ADI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [61 x i8] c"spi_sprd_adi.author=Baolin Wang <Baolin.Wang@spreadtrum.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [43 x i8] c"spi_sprd_adi.file=drivers/spi/spi-sprd-adi\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [28 x i8] c"spi_sprd_adi.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sprd-adi\00", [23 x i8] zeroinitializer }, align 32
@sprd_adi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9860-adi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9860_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,sc9863-adi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sc9863_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sprd,ums512-adi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ums512_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can not find the adi bus node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_adi_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/spi/spi-sprd-adi.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry_ptr = internal global ptr @sprd_adi_probe._entry, section ".printk_index", align 4
@sprd_adi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 530, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no matching driver data found\0A\00", [33 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry_ptr.8 = internal global ptr @sprd_adi_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"spi\00", [28 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 568, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no hardware spinlock supplied\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry_ptr.13 = internal global ptr @sprd_adi_probe._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to find hwlock id\0A\00", [38 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 590, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register SPI controller\0A\00", [61 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry_ptr.17 = internal global ptr @sprd_adi_probe._entry.15, section ".printk_index", align 4
@sprd_adi_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 599, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"can not register restart handler\0A\00", [62 x i8] zeroinitializer }, align 32
@sprd_adi_probe._entry_ptr.20 = internal global ptr @sprd_adi_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd,hw-channels\00", [47 x i8] zeroinitializer }, align 32
@sprd_adi_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 484, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"no hw channels setting in node\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_adi_hw_init\00", [47 x i8] zeroinitializer }, align 32
@sprd_adi_hw_init._entry_ptr = internal global ptr @sprd_adi_hw_init._entry, section ".printk_index", align 4
@sprd_adi_transfer_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 354, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no buffer for transfer\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sprd_adi_transfer_one\00", [42 x i8] zeroinitializer }, align 32
@sprd_adi_transfer_one._entry_ptr = internal global ptr @sprd_adi_transfer_one._entry, section ".printk_index", align 4
@sprd_adi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 232, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get the hw lock failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sprd_adi_read\00", [18 x i8] zeroinitializer }, align 32
@sprd_adi_read._entry_ptr = internal global ptr @sprd_adi_read._entry, section ".printk_index", align 4
@sprd_adi_read._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ADI read timeout\0A\00", [46 x i8] zeroinitializer }, align 32
@sprd_adi_read._entry_ptr.30 = internal global ptr @sprd_adi_read._entry.28, section ".printk_index", align 4
@sprd_adi_check_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 163, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"slave address offset is incorrect, reg = 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_adi_check_addr\00", [44 x i8] zeroinitializer }, align 32
@sprd_adi_check_addr._entry_ptr = internal global ptr @sprd_adi_check_addr._entry, section ".printk_index", align 4
@sprd_adi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sprd_adi_write\00", [17 x i8] zeroinitializer }, align 32
@sprd_adi_write._entry_ptr = internal global ptr @sprd_adi_write._entry, section ".printk_index", align 4
@sprd_adi_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"write fifo is full\0A\00", [44 x i8] zeroinitializer }, align 32
@sprd_adi_write._entry_ptr.36 = internal global ptr @sprd_adi_write._entry.34, section ".printk_index", align 4
@sprd_adi_drain_fifo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drain write fifo timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_adi_drain_fifo\00", [44 x i8] zeroinitializer }, align 32
@sprd_adi_drain_fifo._entry_ptr = internal global ptr @sprd_adi_drain_fifo._entry, section ".printk_index", align 4
@sc9860_data = internal global { %struct.sprd_adi_data, [44 x i8] } { %struct.sprd_adi_data { i32 32768, i32 4096, ptr @sprd_adi_read_check_r2, ptr @sprd_adi_restart_sc9860, ptr @sprd_adi_set_wdt_rst_mode }, [44 x i8] zeroinitializer }, align 32
@sc9863_data = internal global { %struct.sprd_adi_data, [44 x i8] } { %struct.sprd_adi_data { i32 32768, i32 16384, ptr @sprd_adi_read_check_r3, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ums512_data = internal global { %struct.sprd_adi_data, [44 x i8] } { %struct.sprd_adi_data { i32 131072, i32 131072, ptr @sprd_adi_read_check_r3, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@sprd_adi_read_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ADI read error, addr = 0x%x, val = 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sprd_adi_read_check\00", [44 x i8] zeroinitializer }, align 32
@sprd_adi_read_check._entry_ptr = internal global ptr @sprd_adi_read_check._entry, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"alarm\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fastsleep\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bootloader\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panic\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"special\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cftreboot\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"autodloader\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iqmode\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sprdisk\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tospanic\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"factorytest\00", [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sprd_adi_restart._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 448, ptr @.str.55, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unable to restart system\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sprd_adi_restart\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@sprd_adi_restart._entry_ptr = internal global ptr @sprd_adi_restart._entry, section ".printk_index", align 4
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"sprd_adi_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 657, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 659, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"sprd_adi_of_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 640, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 524, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 530, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 534, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 568, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 571, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 590, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 599, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 482, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 484, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 354, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 232, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 262, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 161, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 298, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 326, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 184, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [12 x i8] c"sc9860_data\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 620, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"sc9863_data\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 628, i32 29 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"ums512_data\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 634, i32 29 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 203, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 383, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 385, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 387, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 389, i32 25 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 391, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 393, i32 25 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 395, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 397, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 399, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 401, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 403, i32 25 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 405, i32 25 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private constant [30 x i8] c"../drivers/spi/spi-sprd-adi.c\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.246, i32 448, i32 2 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_sprd_adi_driver_exit, ptr @__initcall__kmod_spi_sprd_adi__230_665_sprd_adi_driver_init6, ptr @sprd_adi_check_addr._entry, ptr @sprd_adi_check_addr._entry_ptr, ptr @sprd_adi_drain_fifo._entry, ptr @sprd_adi_drain_fifo._entry_ptr, ptr @sprd_adi_driver_exit, ptr @sprd_adi_hw_init._entry, ptr @sprd_adi_hw_init._entry_ptr, ptr @sprd_adi_probe._entry, ptr @sprd_adi_probe._entry.10, ptr @sprd_adi_probe._entry.15, ptr @sprd_adi_probe._entry.18, ptr @sprd_adi_probe._entry.6, ptr @sprd_adi_probe._entry_ptr, ptr @sprd_adi_probe._entry_ptr.13, ptr @sprd_adi_probe._entry_ptr.17, ptr @sprd_adi_probe._entry_ptr.20, ptr @sprd_adi_probe._entry_ptr.8, ptr @sprd_adi_read._entry, ptr @sprd_adi_read._entry.28, ptr @sprd_adi_read._entry_ptr, ptr @sprd_adi_read._entry_ptr.30, ptr @sprd_adi_read_check._entry, ptr @sprd_adi_read_check._entry_ptr, ptr @sprd_adi_restart._entry, ptr @sprd_adi_restart._entry_ptr, ptr @sprd_adi_transfer_one._entry, ptr @sprd_adi_transfer_one._entry_ptr, ptr @sprd_adi_write._entry, ptr @sprd_adi_write._entry.34, ptr @sprd_adi_write._entry_ptr, ptr @sprd_adi_write._entry_ptr.36, ptr @sprd_adi_driver, ptr @.str, ptr @sprd_adi_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @sc9860_data, ptr @sc9863_data, ptr @ums512_data, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_transfer_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_read._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_check_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_drain_fifo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9860_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc9863_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ums512_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_read_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sprd_adi_restart._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sprd_adi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sprd_adi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @sprd_adi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %size.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @of_alias_get_id(ptr noundef nonnull %1, ptr noundef nonnull @.str.9) #7
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call10, ptr %id, align 4
  %call.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end9.of_get_child_count.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.of_get_child_count.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_child_count.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end9.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end9.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit.loopexit:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = trunc i32 %inc.i to i16
  br label %of_get_child_count.exit

of_get_child_count.exit:                          ; preds = %of_get_child_count.exit.loopexit, %if.end9.of_get_child_count.exit_crit_edge
  %num.0.lcssa.i = phi i16 [ 0, %if.end9.of_get_child_count.exit_crit_edge ], [ %phi.cast, %of_get_child_count.exit.loopexit ]
  %call.i160 = tail call ptr @__spi_alloc_controller(ptr noundef %dev, i32 noundef 40, i1 noundef zeroext false) #7
  %tobool14.not = icmp eq ptr %call.i160, null
  br i1 %tobool14.not, label %of_get_child_count.exit.cleanup_crit_edge, label %if.end16

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %of_get_child_count.exit
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i160, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call.i160, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call19) #7
  %base = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call21 to i32
  br i1 %cmp.i, label %if.end16.spi_controller_put.exit_crit_edge, label %if.end27

if.end16.spi_controller_put.exit_crit_edge:       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.end27:                                         ; preds = %if.end16
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %add = add i32 %9, %7
  %slave_vbase = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %slave_vbase to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %slave_vbase, align 4
  %11 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call19, align 4
  %13 = load i32, ptr %call, align 4
  %add30 = add i32 %13, %12
  %slave_pbase = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 5
  %14 = ptrtoint ptr %slave_pbase to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add30, ptr %slave_pbase, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i160, ptr %5, align 4
  %dev33 = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %dev33, align 4
  %data34 = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 7
  %17 = ptrtoint ptr %data34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %data34, align 4
  %call35 = tail call i32 @of_hwspin_lock_get_id(ptr noundef nonnull %1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call35)
  %18 = icmp sgt i32 %call35, -1
  br i1 %18, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end27
  %call41 = tail call ptr @devm_hwspin_lock_request_specific(ptr noundef %dev, i32 noundef %call35) #7
  %hwlock = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 3
  %19 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41, ptr %hwlock, align 4
  %tobool43.not = icmp eq ptr %call41, null
  br i1 %tobool43.not, label %if.then39.spi_controller_put.exit_crit_edge, label %if.then39.if.end52_crit_edge

if.then39.if.end52_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then39.spi_controller_put.exit_crit_edge:      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_controller_put.exit

if.else:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call35)
  %cond = icmp eq i32 %call35, -2
  br i1 %cond, label %do.end48, label %sw.default

do.end48:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %if.end52

sw.default:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call35, ptr noundef nonnull @.str.14) #7
  br label %spi_controller_put.exit

if.end52:                                         ; preds = %do.end48, %if.then39.if.end52_crit_edge
  %20 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev33, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 27
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size.i) #7
  %24 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %size.i, align 4, !annotation !134
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !135
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr2.i = getelementptr i8, ptr %28, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #7, !srcloc !135
  %29 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base, align 4
  %add.ptr4.i = getelementptr i8, ptr %30, i32 32
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #7, !srcloc !136
  %32 = and i32 %31, -65
  %33 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base, align 4
  %add.ptr7.i = getelementptr i8, ptr %34, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %32) #7, !srcloc !135
  %call8.i = call ptr @of_get_property(ptr noundef %23, ptr noundef nonnull @.str.21, ptr noundef nonnull %size.i) #7
  %tobool.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool.not.i, label %if.end52.do.end.i_crit_edge, label %lor.lhs.false.i

if.end52.do.end.i_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end52
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool9.not.i = icmp eq i32 %36, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end52.do.end.i_crit_edge
  %37 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev33, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.22) #10
  br label %sprd_adi_hw_init.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %div.i = sdiv i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %36)
  %cmp73.i = icmp sgt i32 %36, 7
  br i1 %cmp73.i, label %if.end.i.for.body.i161_crit_edge, label %if.end.i.sprd_adi_hw_init.exit_crit_edge

if.end.i.sprd_adi_hw_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_adi_hw_init.exit

if.end.i.for.body.i161_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i161

for.body.i161:                                    ; preds = %cleanup.i.for.body.i161_crit_edge, %if.end.i.for.body.i161_crit_edge
  %i.075.i = phi i32 [ %inc.i162, %cleanup.i.for.body.i161_crit_edge ], [ 0, %if.end.i.for.body.i161_crit_edge ]
  %list.074.i = phi ptr [ %incdec.ptr11.i, %cleanup.i.for.body.i161_crit_edge ], [ %call8.i, %if.end.i.for.body.i161_crit_edge ]
  %39 = ptrtoint ptr %list.074.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %list.074.i, align 4
  %incdec.ptr11.i = getelementptr i32, ptr %list.074.i, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp12.i = icmp ult i32 %40, 2
  br i1 %cmp12.i, label %for.body.i161.cleanup.i_crit_edge, label %if.end14.i

for.body.i161.cleanup.i_crit_edge:                ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end14.i:                                       ; preds = %for.body.i161
  %incdec.ptr.i = getelementptr i32, ptr %list.074.i, i32 1
  %41 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %incdec.ptr.i, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %sub.i = shl i32 %40, 2
  %add.i = add i32 %sub.i, 60
  %add.ptr16.i = getelementptr i8, ptr %45, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %43) #7, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp17.i = icmp ult i32 %40, 32
  br i1 %cmp17.i, label %if.then18.i, label %if.else.i

if.then18.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr21.i = getelementptr i8, ptr %47, i32 64
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #7, !srcloc !136
  %49 = call i32 @llvm.bswap.i32(i32 %48) #7
  %shl.i = shl nuw i32 1, %40
  %or.i = or i32 %49, %shl.i
  %50 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %51 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base, align 4
  %add.ptr25.i = getelementptr i8, ptr %52, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %50) #7, !srcloc !135
  br label %cleanup.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %40)
  %cmp26.i = icmp ult i32 %40, 50
  br i1 %cmp26.i, label %if.then27.i, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then27.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr30.i = getelementptr i8, ptr %54, i32 524
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30.i) #7, !srcloc !136
  %56 = call i32 @llvm.bswap.i32(i32 %55) #7
  %sub33.i = add nsw i32 %40, -32
  %shl34.i = shl nuw nsw i32 1, %sub33.i
  %or35.i = or i32 %56, %shl34.i
  %57 = call i32 @llvm.bswap.i32(i32 %or35.i) #7
  %58 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base, align 4
  %add.ptr37.i = getelementptr i8, ptr %59, i32 524
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %57) #7, !srcloc !135
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then27.i, %if.else.i.cleanup.i_crit_edge, %if.then18.i, %for.body.i161.cleanup.i_crit_edge
  %inc.i162 = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i162, %div.i
  br i1 %exitcond.not.i, label %cleanup.i.sprd_adi_hw_init.exit_crit_edge, label %cleanup.i.for.body.i161_crit_edge

cleanup.i.for.body.i161_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i161

cleanup.i.sprd_adi_hw_init.exit_crit_edge:        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_adi_hw_init.exit

sprd_adi_hw_init.exit:                            ; preds = %cleanup.i.sprd_adi_hw_init.exit_crit_edge, %if.end.i.sprd_adi_hw_init.exit_crit_edge, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size.i) #7
  %60 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data34, align 4
  %wdg_rst = getelementptr inbounds %struct.sprd_adi_data, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %wdg_rst to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %wdg_rst, align 4
  %tobool54.not = icmp eq ptr %63, null
  br i1 %tobool54.not, label %sprd_adi_hw_init.exit.if.end58_crit_edge, label %if.then55

sprd_adi_hw_init.exit.if.end58_crit_edge:         ; preds = %sprd_adi_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then55:                                        ; preds = %sprd_adi_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %63(ptr noundef %5) #7
  br label %if.end58

if.end58:                                         ; preds = %if.then55, %sprd_adi_hw_init.exit.if.end58_crit_edge
  %64 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %of_node, align 8
  %of_node62 = getelementptr inbounds %struct.device, ptr %call.i160, i32 0, i32 27
  %66 = ptrtoint ptr %of_node62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %65, ptr %of_node62, align 8
  %67 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %id, align 4
  %conv64 = trunc i32 %68 to i16
  %bus_num = getelementptr inbounds %struct.spi_controller, ptr %call.i160, i32 0, i32 2
  %69 = ptrtoint ptr %bus_num to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv64, ptr %bus_num, align 8
  %num_chipselect65 = getelementptr inbounds %struct.spi_controller, ptr %call.i160, i32 0, i32 3
  %70 = ptrtoint ptr %num_chipselect65 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %num.0.lcssa.i, ptr %num_chipselect65, align 2
  %flags = getelementptr inbounds %struct.spi_controller, ptr %call.i160, i32 0, i32 10
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 1, ptr %flags, align 4
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i160, i32 0, i32 7
  %72 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %bits_per_word_mask, align 8
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i160, i32 0, i32 51
  %73 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @sprd_adi_transfer_one, ptr %transfer_one, align 4
  %call67 = call i32 @devm_spi_register_controller(ptr noundef %dev, ptr noundef nonnull %call.i160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %spi_controller_put.exit

if.end74:                                         ; preds = %if.end58
  %74 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data34, align 4
  %restart = getelementptr inbounds %struct.sprd_adi_data, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %restart to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %restart, align 4
  %tobool76.not = icmp eq ptr %77, null
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %if.then77

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then77:                                        ; preds = %if.end74
  %restart_handler = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 6
  %78 = ptrtoint ptr %restart_handler to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %restart_handler, align 4
  %priority = getelementptr inbounds %struct.sprd_adi, ptr %5, i32 0, i32 6, i32 2
  %79 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 128, ptr %priority, align 4
  %call82 = call i32 @register_restart_handler(ptr noundef %restart_handler) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then77.cleanup_crit_edge, label %do.end87

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end87:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #10
  br label %spi_controller_put.exit

spi_controller_put.exit:                          ; preds = %do.end87, %do.end72, %sw.default, %if.then39.spi_controller_put.exit_crit_edge, %if.end16.spi_controller_put.exit_crit_edge
  %ret.0 = phi i32 [ %call67, %do.end72 ], [ %call82, %do.end87 ], [ %call35, %sw.default ], [ -6, %if.then39.spi_controller_put.exit_crit_edge ], [ %7, %if.end16.spi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call.i160) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_controller_put.exit, %if.then77.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %ret.0, %spi_controller_put.exit ], [ -22, %do.end7 ], [ -19, %do.end ], [ -12, %of_get_child_count.exit.cleanup_crit_edge ], [ 0, %if.then77.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %restart_handler = getelementptr inbounds %struct.sprd_adi, ptr %3, i32 0, i32 6
  %call2 = tail call i32 @unregister_restart_handler(ptr noundef %restart_handler) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwspin_lock_request_specific(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_transfer_one(ptr nocapture noundef readonly %ctlr, ptr nocapture noundef readnone %spi_dev, ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctlr, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !134
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %3 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_buf, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  %call2 = call fastcc i32 @sprd_adi_read(ptr noundef %1, i32 noundef %6, ptr noundef nonnull %val)
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_buf, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %8, ptr %10, align 4
  br label %if.end9

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %t, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %do.end, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i32, ptr %13, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %incdec.ptr, align 4
  %call7 = tail call fastcc i32 @sprd_adi_write(ptr noundef %1, i32 noundef %15, i32 noundef %17)
  br label %if.end9

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sprd_adi, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.then5, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %call7, %if.then5 ], [ -22, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_adi_read(ptr nocapture noundef readonly %sadi, i32 noundef %reg, ptr nocapture noundef writeonly %read_val) unnamed_addr #2 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !134
  %hwlock = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 3
  %1 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = call i32 @__hwspin_lock_timeout(ptr noundef nonnull %2, i32 noundef 5000, i32 noundef 1, ptr noundef nonnull %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %data.i = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 7
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %slave_addr_size.i = getelementptr inbounds %struct.sprd_adi_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %slave_addr_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_addr_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %reg)
  %cmp.not.i = icmp ugt i32 %8, %reg
  br i1 %cmp.not.i, label %if.end8, label %sprd_adi_check_addr.exit

sprd_adi_check_addr.exit:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %reg) #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %11 = call i32 @llvm.bswap.i32(i32 %reg)
  %base = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 2
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #7, !srcloc !135
  br label %do.body9

do.body9:                                         ; preds = %do.end20.do.body9_crit_edge, %if.end8
  %read_timeout.0 = phi i32 [ 2000, %if.end8 ], [ %dec, %do.end20.do.body9_crit_edge ]
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 44
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !136
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool13.not = icmp sgt i32 %17, -1
  br i1 %tobool13.not, label %if.end33, label %do.end20

do.end20:                                         ; preds = %do.body9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !138
  %dec = add nsw i32 %read_timeout.0, -1
  %tobool26.not = icmp eq i32 %dec, 0
  br i1 %tobool26.not, label %do.end31, label %do.end20.do.body9_crit_edge

do.end20.do.body9_crit_edge:                      ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

do.end31:                                         ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #9
  %dev32 = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %18 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev32, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.29) #10
  br label %out

if.end33:                                         ; preds = %do.body9
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %read_check = getelementptr inbounds %struct.sprd_adi_data, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %read_check to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %read_check, align 4
  %tobool34.not = icmp eq ptr %23, null
  br i1 %tobool34.not, label %if.end33.if.end42_crit_edge, label %if.then35

if.end33.if.end42_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then35:                                        ; preds = %if.end33
  %call38 = call i32 %23(i32 noundef %17, i32 noundef %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then35.out_crit_edge, label %if.then35.if.end42_crit_edge

if.then35.if.end42_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then35.out_crit_edge:                          ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end42:                                         ; preds = %if.then35.if.end42_crit_edge, %if.end33.if.end42_crit_edge
  %ret.0 = phi i32 [ %call38, %if.then35.if.end42_crit_edge ], [ 0, %if.end33.if.end42_crit_edge ]
  %and43 = and i32 %17, 65535
  %24 = ptrtoint ptr %read_val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and43, ptr %read_val, align 4
  br label %out

out:                                              ; preds = %if.end42, %if.then35.out_crit_edge, %do.end31, %sprd_adi_check_addr.exit
  %ret.1 = phi i32 [ -22, %sprd_adi_check_addr.exit ], [ -16, %do.end31 ], [ %call38, %if.then35.out_crit_edge ], [ %ret.0, %if.end42 ]
  %25 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwlock, align 4
  %tobool45.not = icmp eq ptr %26, null
  br i1 %tobool45.not, label %out.cleanup_crit_edge, label %if.then46

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then46:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @__hwspin_unlock(ptr noundef nonnull %26, i32 noundef 1, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.1, %if.then46 ], [ %ret.1, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sprd_adi_write(ptr nocapture noundef readonly %sadi, i32 noundef %reg, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  %flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %flags, align 4, !annotation !134
  %hwlock = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 3
  %1 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = call i32 @__hwspin_lock_timeout(ptr noundef nonnull %2, i32 noundef 5000, i32 noundef 1, ptr noundef nonnull %flags) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %do.end

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %data.i = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 7
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 4
  %slave_addr_size.i = getelementptr inbounds %struct.sprd_adi_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %slave_addr_size.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slave_addr_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %reg)
  %cmp.not.i = icmp ugt i32 %8, %reg
  br i1 %cmp.not.i, label %if.end8, label %sprd_adi_check_addr.exit

sprd_adi_check_addr.exit:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.31, i32 noundef %reg) #10
  br label %out

if.end8:                                          ; preds = %if.end4
  %base.i = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 2
  br label %do.body.i

do.body.i:                                        ; preds = %do.end.i59.do.body.i_crit_edge, %if.end8
  %timeout.0.i = phi i32 [ 1000, %if.end8 ], [ %dec.i, %do.end.i59.do.body.i_crit_edge ]
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 48
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !136
  %14 = and i32 %13, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %do.end.i59, label %do.body.i.do.body12_crit_edge

do.body.i.do.body12_crit_edge:                    ; preds = %do.body.i
  br label %do.body12

do.end.i59:                                       ; preds = %do.body.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !139
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !140
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool9.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool9.not.i, label %sprd_adi_drain_fifo.exit.thread, label %do.end.i59.do.body.i_crit_edge

do.end.i59.do.body.i_crit_edge:                   ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

sprd_adi_drain_fifo.exit.thread:                  ; preds = %do.end.i59
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i60 = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i60 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i60, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.37) #10
  br label %out

do.body12:                                        ; preds = %do.end21.do.body12_crit_edge, %do.body.i.do.body12_crit_edge
  %timeout.0 = phi i32 [ %dec, %do.end21.do.body12_crit_edge ], [ 1000, %do.body.i.do.body12_crit_edge ]
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i63 = getelementptr i8, ptr %18, i32 48
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !136
  %20 = and i32 %19, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool14.not = icmp eq i32 %20, 0
  br i1 %tobool14.not, label %do.end28, label %do.end21

do.end21:                                         ; preds = %do.body12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !141
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !142
  %dec = add nsw i32 %timeout.0, -1
  %tobool27.not = icmp eq i32 %dec, 0
  br i1 %tobool27.not, label %do.end33, label %do.end21.do.body12_crit_edge

do.end21.do.body12_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12

do.end28:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %21 = call i32 @llvm.bswap.i32(i32 %val)
  %slave_vbase = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 4
  %22 = ptrtoint ptr %slave_vbase to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %slave_vbase, align 4
  %add = add i32 %23, %reg
  %24 = inttoptr i32 %add to ptr
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #7, !srcloc !135
  br label %out

do.end33:                                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.sprd_adi, ptr %sadi, i32 0, i32 1
  %25 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev34, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.35) #10
  br label %out

out:                                              ; preds = %do.end33, %do.end28, %sprd_adi_drain_fifo.exit.thread, %sprd_adi_check_addr.exit
  %ret.0 = phi i32 [ -22, %sprd_adi_check_addr.exit ], [ -16, %do.end33 ], [ 0, %do.end28 ], [ -16, %sprd_adi_drain_fifo.exit.thread ]
  %27 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hwlock, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %out.cleanup_crit_edge, label %if.then38

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then38:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  call void @__hwspin_unlock(ptr noundef nonnull %28, i32 noundef 1, ptr noundef nonnull %flags) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %out.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %ret.0, %if.then38 ], [ %ret.0, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_read_check_r2(i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %reg, 32767
  %and.i = lshr i32 %val, 16
  %shr.i = and i32 %and.i, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %and)
  %cmp.not.i = icmp eq i32 %shr.i, %and
  br i1 %cmp.not.i, label %entry.sprd_adi_read_check.exit_crit_edge, label %do.end.i

entry.sprd_adi_read_check.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_adi_read_check.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %and, i32 noundef %val) #10
  br label %sprd_adi_read_check.exit

sprd_adi_read_check.exit:                         ; preds = %do.end.i, %entry.sprd_adi_read_check.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.sprd_adi_read_check.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_restart_sc9860(ptr nocapture noundef readonly %this, i32 noundef %mode, ptr noundef readonly %cmd) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %this, i32 -24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !134
  %tobool.not.i = icmp eq ptr %cmd, null
  br i1 %tobool.not.i, label %entry.if.end59.i_crit_edge, label %if.else.i

entry.if.end59.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else.i:                                        ; preds = %entry
  %call.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(9) @.str.41, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.else.i.if.end59.i_crit_edge, label %if.else3.i

if.else.i.if.end59.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else3.i:                                       ; preds = %if.else.i
  %call4.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(6) @.str.42, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.else3.i.if.end59.i_crit_edge, label %if.else7.i

if.else3.i.if.end59.i_crit_edge:                  ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else7.i:                                       ; preds = %if.else3.i
  %call8.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(10) @.str.43, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.else7.i.if.end59.i_crit_edge, label %if.else11.i

if.else7.i.if.end59.i_crit_edge:                  ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else11.i:                                      ; preds = %if.else7.i
  %call12.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(11) @.str.44, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.else11.i.if.end59.i_crit_edge, label %if.else15.i

if.else11.i.if.end59.i_crit_edge:                 ; preds = %if.else11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else15.i:                                      ; preds = %if.else11.i
  %call16.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(6) @.str.45, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.else15.i.if.end59.i_crit_edge, label %if.else19.i

if.else15.i.if.end59.i_crit_edge:                 ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else19.i:                                      ; preds = %if.else15.i
  %call20.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(8) @.str.46, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.else19.i.if.end59.i_crit_edge, label %if.else23.i

if.else19.i.if.end59.i_crit_edge:                 ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else23.i:                                      ; preds = %if.else19.i
  %call24.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(10) @.str.47, i32 noundef 9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.else23.i.if.end59.i_crit_edge, label %if.else27.i

if.else23.i.if.end59.i_crit_edge:                 ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else27.i:                                      ; preds = %if.else23.i
  %call28.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(12) @.str.48, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.else27.i.if.end59.i_crit_edge, label %if.else31.i

if.else27.i.if.end59.i_crit_edge:                 ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else31.i:                                      ; preds = %if.else27.i
  %call32.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(7) @.str.49, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.else31.i.if.end59.i_crit_edge, label %if.else35.i

if.else31.i.if.end59.i_crit_edge:                 ; preds = %if.else31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else35.i:                                      ; preds = %if.else31.i
  %call36.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(8) @.str.50, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.else35.i.if.end59.i_crit_edge, label %if.else39.i

if.else35.i.if.end59.i_crit_edge:                 ; preds = %if.else35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else39.i:                                      ; preds = %if.else35.i
  %call40.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(9) @.str.51, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.else39.i.if.end59.i_crit_edge, label %if.else43.i

if.else39.i.if.end59.i_crit_edge:                 ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59.i

if.else43.i:                                      ; preds = %if.else39.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = tail call i32 @strncmp(ptr noundef nonnull %cmd, ptr noundef nonnull dereferenceable(12) @.str.52, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  %..i = select i1 %tobool45.not.i, i32 224, i32 64
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.else43.i, %if.else39.i.if.end59.i_crit_edge, %if.else35.i.if.end59.i_crit_edge, %if.else31.i.if.end59.i_crit_edge, %if.else27.i.if.end59.i_crit_edge, %if.else23.i.if.end59.i_crit_edge, %if.else19.i.if.end59.i_crit_edge, %if.else15.i.if.end59.i_crit_edge, %if.else11.i.if.end59.i_crit_edge, %if.else7.i.if.end59.i_crit_edge, %if.else3.i.if.end59.i_crit_edge, %if.else.i.if.end59.i_crit_edge, %entry.if.end59.i_crit_edge
  %reboot_mode.0.i = phi i32 [ 64, %entry.if.end59.i_crit_edge ], [ 32, %if.else.i.if.end59.i_crit_edge ], [ 80, %if.else3.i.if.end59.i_crit_edge ], [ 96, %if.else7.i.if.end59.i_crit_edge ], [ 48, %if.else11.i.if.end59.i_crit_edge ], [ 128, %if.else15.i.if.end59.i_crit_edge ], [ 112, %if.else19.i.if.end59.i_crit_edge ], [ 144, %if.else23.i.if.end59.i_crit_edge ], [ 160, %if.else27.i.if.end59.i_crit_edge ], [ 176, %if.else31.i.if.end59.i_crit_edge ], [ 192, %if.else35.i.if.end59.i_crit_edge ], [ 2, %if.else39.i.if.end59.i_crit_edge ], [ %..i, %if.else43.i ]
  %call60.i = call fastcc i32 @sprd_adi_read(ptr noundef %add.ptr.i, i32 noundef 3816, ptr noundef nonnull %val.i) #7
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i, align 4
  %and.i = and i32 %2, -241
  %or.i = or i32 %and.i, %reboot_mode.0.i
  store i32 %or.i, ptr %val.i, align 4
  %call62.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 3816, i32 noundef %or.i) #7
  %call63.i = call fastcc i32 @sprd_adi_read(ptr noundef %add.ptr.i, i32 noundef 3080, ptr noundef nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %or64.i = or i32 %4, 4
  store i32 %or64.i, ptr %val.i, align 4
  %call66.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 3080, i32 noundef %or64.i) #7
  %call67.i = call fastcc i32 @sprd_adi_read(ptr noundef %add.ptr.i, i32 noundef 3096, ptr noundef nonnull %val.i) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %or68.i = or i32 %6, 4
  store i32 %or68.i, ptr %val.i, align 4
  %call70.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 3096, i32 noundef %or68.i) #7
  %call71.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 160, i32 noundef 58705) #7
  %call74.i = call fastcc i32 @sprd_adi_read(ptr noundef %add.ptr.i, i32 noundef 136, ptr noundef nonnull %val.i) #7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %or75.i = or i32 %8, 4
  store i32 %or75.i, ptr %val.i, align 4
  %call78.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %or75.i) #7
  %call81.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 132, i32 noundef 0) #7
  %call84.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 128, i32 noundef 1638) #7
  %call87.i = call fastcc i32 @sprd_adi_read(ptr noundef %add.ptr.i, i32 noundef 136, ptr noundef nonnull %val.i) #7
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %or88.i = or i32 %10, 10
  %call91.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 136, i32 noundef %or88.i) #7
  %call94.i = tail call fastcc i32 @sprd_adi_write(ptr noundef %add.ptr.i, i32 noundef 160, i32 noundef -58706) #7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end59.i
  %__ms.01.i = phi i32 [ 1000, %if.end59.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.01.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #7
  %tobool95.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool95.not.i, label %sprd_adi_restart.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

sprd_adi_restart.exit:                            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %this, i32 -20
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %13, ptr noundef nonnull @.str.53) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sprd_adi_set_wdt_rst_mode(ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !134
  %call = call fastcc i32 @sprd_adi_read(ptr noundef %p, i32 noundef 3816, ptr noundef nonnull %val)
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %or = or i32 %2, 240
  %call1 = tail call fastcc i32 @sprd_adi_write(ptr noundef %p, i32 noundef 3816, i32 noundef %or)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sprd_adi_read_check_r3(i32 noundef %val, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = lshr i32 %reg, 2
  %shr = and i32 %and, 32767
  %and.i = lshr i32 %val, 16
  %shr.i = and i32 %and.i, 32767
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %shr)
  %cmp.not.i = icmp eq i32 %shr.i, %shr
  br i1 %cmp.not.i, label %entry.sprd_adi_read_check.exit_crit_edge, label %do.end.i

entry.sprd_adi_read_check.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sprd_adi_read_check.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %shr, i32 noundef %val) #10
  br label %sprd_adi_read_check.exit

sprd_adi_read_check.exit:                         ; preds = %do.end.i, %entry.sprd_adi_read_check.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end.i ], [ 0, %entry.sprd_adi_read_check.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !120, !121, !123}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__initcall__kmod_spi_sprd_adi__230_665_sprd_adi_driver_init6, !1, !"__initcall__kmod_spi_sprd_adi__230_665_sprd_adi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-sprd-adi.c", i32 665, i32 1}
!2 = !{ptr @__exitcall_sprd_adi_driver_exit, !1, !"__exitcall_sprd_adi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-sprd-adi.c", i32 667, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-sprd-adi.c", i32 668, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/spi/spi-sprd-adi.c", i32 669, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-sprd-adi.c", i32 659, i32 11}
!12 = !{ptr @sprd_adi_driver, !13, !"sprd_adi_driver", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-sprd-adi.c", i32 657, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spi/spi-sprd-adi.c", i32 524, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sprd_adi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sprd_adi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-sprd-adi.c", i32 530, i32 3}
!24 = !{ptr @sprd_adi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sprd_adi_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spi/spi-sprd-adi.c", i32 534, i32 33}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spi/spi-sprd-adi.c", i32 568, i32 4}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sprd_adi_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sprd_adi_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/spi/spi-sprd-adi.c", i32 571, i32 35}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/spi/spi-sprd-adi.c", i32 590, i32 3}
!37 = !{ptr @sprd_adi_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sprd_adi_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spi/spi-sprd-adi.c", i32 599, i32 4}
!41 = !{ptr @sprd_adi_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sprd_adi_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spi/spi-sprd-adi.c", i32 482, i32 29}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spi/spi-sprd-adi.c", i32 484, i32 3}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sprd_adi_hw_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @sprd_adi_hw_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/spi/spi-sprd-adi.c", i32 354, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sprd_adi_transfer_one._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sprd_adi_transfer_one._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/spi/spi-sprd-adi.c", i32 232, i32 4}
!57 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @sprd_adi_read._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @sprd_adi_read._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-sprd-adi.c", i32 262, i32 3}
!62 = !{ptr @sprd_adi_read._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sprd_adi_read._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/spi/spi-sprd-adi.c", i32 161, i32 3}
!66 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @sprd_adi_check_addr._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @sprd_adi_check_addr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-sprd-adi.c", i32 298, i32 4}
!71 = !{ptr @sprd_adi_write._entry, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sprd_adi_write._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-sprd-adi.c", i32 326, i32 3}
!75 = !{ptr @sprd_adi_write._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sprd_adi_write._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/spi/spi-sprd-adi.c", i32 184, i32 3}
!79 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @sprd_adi_drain_fifo._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @sprd_adi_drain_fifo._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @sprd_adi_of_match, !83, !"sprd_adi_of_match", i1 false, i1 false}
!83 = !{!"../drivers/spi/spi-sprd-adi.c", i32 640, i32 34}
!84 = !{ptr @sc9860_data, !85, !"sc9860_data", i1 false, i1 false}
!85 = !{!"../drivers/spi/spi-sprd-adi.c", i32 620, i32 29}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/spi/spi-sprd-adi.c", i32 203, i32 3}
!88 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @sprd_adi_read_check._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @sprd_adi_read_check._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/spi/spi-sprd-adi.c", i32 383, i32 25}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/spi/spi-sprd-adi.c", i32 385, i32 25}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/spi/spi-sprd-adi.c", i32 387, i32 25}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/spi/spi-sprd-adi.c", i32 389, i32 25}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/spi/spi-sprd-adi.c", i32 391, i32 25}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/spi/spi-sprd-adi.c", i32 393, i32 25}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/spi/spi-sprd-adi.c", i32 395, i32 25}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/spi/spi-sprd-adi.c", i32 397, i32 25}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/spi/spi-sprd-adi.c", i32 399, i32 25}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spi/spi-sprd-adi.c", i32 401, i32 25}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/spi/spi-sprd-adi.c", i32 403, i32 25}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spi/spi-sprd-adi.c", i32 405, i32 25}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/spi/spi-sprd-adi.c", i32 448, i32 2}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sprd_adi_restart._entry, !116, !"_entry", i1 false, i1 false}
!120 = !{ptr @sprd_adi_restart._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @sc9863_data, !122, !"sc9863_data", i1 false, i1 false}
!122 = !{!"../drivers/spi/spi-sprd-adi.c", i32 628, i32 29}
!123 = !{ptr @ums512_data, !124, !"ums512_data", i1 false, i1 false}
!124 = !{!"../drivers/spi/spi-sprd-adi.c", i32 634, i32 29}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
!135 = !{i64 3009961}
!136 = !{i64 3010379}
!137 = !{i64 2154138631}
!138 = !{i64 2154138473}
!139 = !{i64 2154130397}
!140 = !{i64 2154130239}
!141 = !{i64 2154142931}
!142 = !{i64 2154142773}
