; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/eeprom_93xx46.c_pt.bc'
source_filename = "../drivers/misc/eeprom/eeprom_93xx46.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.eeprom_93xx46_devtype_data = type { i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.eeprom_93xx46_platform_data = type { i8, i32, ptr, ptr, ptr }
%struct.eeprom_93xx46_dev = type { ptr, ptr, %struct.mutex, %struct.nvmem_config, ptr, i32, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_eeprom_93xx46__234_578_eeprom_93xx46_driver_init6 = internal global ptr @eeprom_93xx46_driver_init, section ".initcall6.init", align 4
@eeprom_93xx46_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @eeprom_93xx46_spi_ids, ptr @eeprom_93xx46_probe, ptr @eeprom_93xx46_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @eeprom_93xx46_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_eeprom_93xx46_driver_exit = internal global ptr @eeprom_93xx46_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file235 = internal constant [53 x i8] c"eeprom_93xx46.file=drivers/misc/eeprom/eeprom_93xx46\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [26 x i8] c"eeprom_93xx46.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [52 x i8] c"eeprom_93xx46.description=Driver for 93xx46 EEPROMs\00", section ".modinfo", align 1
@__UNIQUE_ID_author238 = internal constant [56 x i8] c"eeprom_93xx46.author=Anatolij Gustschin <agust@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [31 x i8] c"eeprom_93xx46.alias=spi:93xx46\00", section ".modinfo", align 1
@__UNIQUE_ID_alias240 = internal constant [38 x i8] c"eeprom_93xx46.alias=spi:eeprom-93xx46\00", section ".modinfo", align 1
@__UNIQUE_ID_alias241 = internal constant [32 x i8] c"eeprom_93xx46.alias=spi:93lc46b\00", section ".modinfo", align 1
@eeprom_93xx46_spi_ids = internal constant { [7 x %struct.spi_device_id], [36 x i8] } { [7 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"eeprom-93xx46\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at93c46_data to i32) }, %struct.spi_device_id { [32 x i8] c"at93c46\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at93c46_data to i32) }, %struct.spi_device_id { [32 x i8] c"at93c46d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @atmel_at93c46d_data to i32) }, %struct.spi_device_id { [32 x i8] c"at93c56\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at93c56_data to i32) }, %struct.spi_device_id { [32 x i8] c"at93c66\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @at93c66_data to i32) }, %struct.spi_device_id { [32 x i8] c"93lc46b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @microchip_93lc46b_data to i32) }, %struct.spi_device_id zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"93xx46\00", [25 x i8] zeroinitializer }, align 32
@eeprom_93xx46_of_table = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"eeprom-93xx46\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at93c46_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at93c46\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at93c46_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at93c46d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @atmel_at93c46d_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at93c56\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at93c56_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at93c66\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at93c66_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,93lc46b\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @microchip_93lc46b_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@at93c46_data = internal constant { %struct.eeprom_93xx46_devtype_data, [24 x i8] } { %struct.eeprom_93xx46_devtype_data { i32 0, i8 16 }, [24 x i8] zeroinitializer }, align 32
@atmel_at93c46d_data = internal constant { %struct.eeprom_93xx46_devtype_data, [24 x i8] } { %struct.eeprom_93xx46_devtype_data { i32 3, i8 16 }, [24 x i8] zeroinitializer }, align 32
@at93c56_data = internal constant { %struct.eeprom_93xx46_devtype_data, [24 x i8] } { %struct.eeprom_93xx46_devtype_data { i32 0, i8 32 }, [24 x i8] zeroinitializer }, align 32
@at93c66_data = internal constant { %struct.eeprom_93xx46_devtype_data, [24 x i8] } { %struct.eeprom_93xx46_devtype_data { i32 0, i8 64 }, [24 x i8] zeroinitializer }, align 32
@microchip_93lc46b_data = internal constant { %struct.eeprom_93xx46_devtype_data, [24 x i8] } { %struct.eeprom_93xx46_devtype_data { i32 4, i8 16 }, [24 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 492, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"missing platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eeprom_93xx46_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/misc/eeprom/eeprom_93xx46.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry_ptr = internal global ptr @eeprom_93xx46_probe._entry, section ".printk_index", align 4
@eeprom_93xx46_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 507, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unspecified size\0A\00", [46 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry_ptr.8 = internal global ptr @eeprom_93xx46_probe._entry.6, section ".printk_index", align 4
@eeprom_93xx46_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unspecified address type\0A\00", [38 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry_ptr.11 = internal global ptr @eeprom_93xx46_probe._entry.9, section ".printk_index", align 4
@eeprom_93xx46_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&edev->lock\00", [20 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 547, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%d-bit eeprom containing %d bytes %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry_ptr.16 = internal global ptr @eeprom_93xx46_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"(readonly)\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@dev_attr_erase = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @eeprom_93xx46_store_erase }, [36 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't create erase interface\0A\00", [34 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe._entry_ptr.21 = internal global ptr @eeprom_93xx46_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"data-size\00", [22 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 441, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"data-size property not found\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"eeprom_93xx46_probe_dt\00", [41 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe_dt._entry_ptr = internal global ptr @eeprom_93xx46_probe_dt._entry, section ".printk_index", align 4
@eeprom_93xx46_probe_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid data-size (%d)\0A\00", [40 x i8] zeroinitializer }, align 32
@eeprom_93xx46_probe_dt._entry_ptr.27 = internal global ptr @eeprom_93xx46_probe_dt._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"select\00", [25 x i8] zeroinitializer }, align 32
@eeprom_93xx46_read.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.31, ptr @.str.3, ptr @.str.32, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"eeprom_93xx46\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eeprom_93xx46_read\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read cmd 0x%x, %d Hz\0A\00", [42 x i8] zeroinitializer }, align 32
@eeprom_93xx46_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"read %zu bytes at %d: err. %d\0A\00", [33 x i8] zeroinitializer }, align 32
@eeprom_93xx46_read._entry_ptr = internal global ptr @eeprom_93xx46_read._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@eeprom_93xx46_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 296, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"write failed at %d: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"eeprom_93xx46_write\00", [44 x i8] zeroinitializer }, align 32
@eeprom_93xx46_write._entry_ptr = internal global ptr @eeprom_93xx46_write._entry, section ".printk_index", align 4
@eeprom_93xx46_ew.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eeprom_93xx46_ew\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ew%s cmd 0x%04x, %d bits\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ds\00", [29 x i8] zeroinitializer }, align 32
@eeprom_93xx46_ew._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.36, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"erase/write %sable error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@eeprom_93xx46_ew._entry_ptr = internal global ptr @eeprom_93xx46_ew._entry, section ".printk_index", align 4
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@eeprom_93xx46_write_word.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"eeprom_93xx46_write_word\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"write cmd 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"erase\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@eeprom_93xx46_eral.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eeprom_93xx46_eral\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"eral cmd 0x%04x, %d bits\0A\00", [38 x i8] zeroinitializer }, align 32
@eeprom_93xx46_eral._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"erase error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@eeprom_93xx46_eral._entry_ptr = internal global ptr @eeprom_93xx46_eral._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 16]
@___asan_gen_.49 = private unnamed_addr constant [21 x i8] c"eeprom_93xx46_driver\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 568, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant [22 x i8] c"eeprom_93xx46_spi_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 409, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 570, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"eeprom_93xx46_of_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 398, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"at93c46_data\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 35, i32 48 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"atmel_at93c46d_data\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 47, i32 48 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"at93c56_data\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 39, i32 48 }
@___asan_gen_.70 = private unnamed_addr constant [13 x i8] c"at93c66_data\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 43, i32 48 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"microchip_93lc46b_data\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 53, i32 48 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 492, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 507, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 516, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 520, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 544, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [15 x i8] c"dev_attr_erase\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 551, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 439, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 441, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 450, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 454, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 457, i32 50 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 122, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 147, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 295, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 186, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 206, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 241, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 382, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 368, i32 14 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 333, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private constant [39 x i8] c"../drivers/misc/eeprom/eeprom_93xx46.c\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.227, i32 350, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_author238, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_eeprom_93xx46_driver_exit, ptr @__initcall__kmod_eeprom_93xx46__234_578_eeprom_93xx46_driver_init6, ptr @eeprom_93xx46_driver_exit, ptr @eeprom_93xx46_eral._entry, ptr @eeprom_93xx46_eral._entry_ptr, ptr @eeprom_93xx46_ew._entry, ptr @eeprom_93xx46_ew._entry_ptr, ptr @eeprom_93xx46_probe._entry, ptr @eeprom_93xx46_probe._entry.13, ptr @eeprom_93xx46_probe._entry.19, ptr @eeprom_93xx46_probe._entry.6, ptr @eeprom_93xx46_probe._entry.9, ptr @eeprom_93xx46_probe._entry_ptr, ptr @eeprom_93xx46_probe._entry_ptr.11, ptr @eeprom_93xx46_probe._entry_ptr.16, ptr @eeprom_93xx46_probe._entry_ptr.21, ptr @eeprom_93xx46_probe._entry_ptr.8, ptr @eeprom_93xx46_probe_dt._entry, ptr @eeprom_93xx46_probe_dt._entry.25, ptr @eeprom_93xx46_probe_dt._entry_ptr, ptr @eeprom_93xx46_probe_dt._entry_ptr.27, ptr @eeprom_93xx46_read._entry, ptr @eeprom_93xx46_read._entry_ptr, ptr @eeprom_93xx46_write._entry, ptr @eeprom_93xx46_write._entry_ptr, ptr @eeprom_93xx46_driver, ptr @eeprom_93xx46_spi_ids, ptr @.str, ptr @eeprom_93xx46_of_table, ptr @at93c46_data, ptr @atmel_at93c46d_data, ptr @at93c56_data, ptr @at93c66_data, ptr @microchip_93lc46b_data, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @eeprom_93xx46_probe.__key, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @dev_attr_erase, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_spi_ids to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_of_table to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at93c46_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_at93c46d_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at93c56_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at93c66_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @microchip_93lc46b_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_erase to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_probe_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_ew._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eeprom_93xx46_eral._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @eeprom_93xx46_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eeprom_93xx46_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @eeprom_93xx46_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_probe(ptr noundef %spi) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @of_match_device(ptr noundef nonnull @eeprom_93xx46_of_table, ptr noundef %spi) #7
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp.i, align 4, !annotation !130
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 20, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.eeprom_93xx46_probe_dt.exit.thread_crit_edge, label %if.end.i

if.then.eeprom_93xx46_probe_dt.exit.thread_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %eeprom_93xx46_probe_dt.exit.thread

if.end.i:                                         ; preds = %if.then
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull %tmp.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.23) #10
  br label %eeprom_93xx46_probe_dt.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end21.i [
    i32 8, label %if.end7.i.if.end24.i_crit_edge
    i32 16, label %if.then13.i
  ]

if.end7.i.if.end24.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.end21.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.26, i32 noundef %6) #10
  br label %eeprom_93xx46_probe_dt.exit.thread

if.end24.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end24.i_crit_edge
  %.sink84.i = phi i8 [ 2, %if.then13.i ], [ 1, %if.end7.i.if.end24.i_crit_edge ]
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call.i.i, align 4
  %10 = or i8 %9, %.sink84.i
  store i8 %10, ptr %call.i.i, align 4
  %call.i83.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i83.i, null
  br i1 %tobool.i.not.i, label %if.end24.i.if.end31.i_crit_edge, label %if.then26.i

if.end24.i.if.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then26.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call.i.i, align 4
  %13 = or i8 %12, 8
  store i8 %13, ptr %call.i.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then26.i, %if.end24.i.if.end31.i_crit_edge
  %call33.i = call ptr @devm_gpiod_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.29, i32 noundef 3) #7
  %select.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %call.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %select.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call33.i, ptr %select.i, align 4
  %cmp.i.i = icmp ugt ptr %call33.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %eeprom_93xx46_probe_dt.exit, label %if.end39.i

if.end39.i:                                       ; preds = %if.end31.i
  %prepare.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %prepare.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @select_assert, ptr %prepare.i, align 4
  %finish.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %call.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %finish.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @select_deassert, ptr %finish.i, align 4
  %call41.i = call i32 @gpiod_direction_output(ptr noundef %call33.i, i32 noundef 0) #7
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %tobool42.not.i = icmp eq ptr %18, null
  br i1 %tobool42.not.i, label %if.end39.i.eeprom_93xx46_probe_dt.exit.thread231_crit_edge, label %if.then43.i

if.end39.i.eeprom_93xx46_probe_dt.exit.thread231_crit_edge: ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %eeprom_93xx46_probe_dt.exit.thread231

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %quirks46.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %call.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %quirks46.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %quirks46.i, align 4
  %flags47.i = getelementptr inbounds %struct.eeprom_93xx46_devtype_data, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %flags47.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags47.i, align 4
  %24 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %call.i.i, align 4
  %or5182.i = or i8 %25, %23
  store i8 %or5182.i, ptr %call.i.i, align 4
  br label %eeprom_93xx46_probe_dt.exit.thread231

eeprom_93xx46_probe_dt.exit.thread231:            ; preds = %if.then43.i, %if.end39.i.eeprom_93xx46_probe_dt.exit.thread231_crit_edge
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %26 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i.i, ptr %platform_data.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.end2

eeprom_93xx46_probe_dt.exit.thread:               ; preds = %do.end21.i, %do.end.i, %if.then.eeprom_93xx46_probe_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.then.eeprom_93xx46_probe_dt.exit.thread_crit_edge ], [ -22, %do.end21.i ], [ %call.i.i.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %cleanup

eeprom_93xx46_probe_dt.exit:                      ; preds = %if.end31.i
  %27 = ptrtoint ptr %call33.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %cmp = icmp slt ptr %call33.i, null
  br i1 %cmp, label %eeprom_93xx46_probe_dt.exit.cleanup_crit_edge, label %eeprom_93xx46_probe_dt.exit.if.end2_crit_edge

eeprom_93xx46_probe_dt.exit.if.end2_crit_edge:    ; preds = %eeprom_93xx46_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

eeprom_93xx46_probe_dt.exit.cleanup_crit_edge:    ; preds = %eeprom_93xx46_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %eeprom_93xx46_probe_dt.exit.if.end2_crit_edge, %eeprom_93xx46_probe_dt.exit.thread231, %entry.if.end2_crit_edge
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %28 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %platform_data, align 8
  %tobool4.not = icmp eq ptr %29, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end2
  %call.i221 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 200, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i221, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 4
  %conv = zext i8 %31 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.end12.if.end35_crit_edge

if.end12.if.end35_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.else:                                          ; preds = %if.end12
  %and17 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else21, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.else21:                                        ; preds = %if.else
  %and24 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.end31, label %if.else21.if.end35_crit_edge

if.else21.if.end35_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end31:                                         ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end35:                                         ; preds = %if.else21.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.end12.if.end35_crit_edge
  %.sink = phi i32 [ 128, %if.end12.if.end35_crit_edge ], [ 256, %if.else.if.end35_crit_edge ], [ 512, %if.else21.if.end35_crit_edge ]
  %size20 = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 6
  %32 = ptrtoint ptr %size20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %.sink, ptr %size20, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %29, align 4
  %conv37 = zext i8 %34 to i32
  %and38 = and i32 %conv37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else53, label %cond.false48

cond.false48:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %size41 = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 6
  %35 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %size41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  %37 = call i32 @llvm.ctlz.i32(i32 %36, i1 true) #7, !range !131
  %sub.i.op.i = xor i32 %37, 31
  %sub.i = select i1 %tobool.not.i.i, i32 -1, i32 %sub.i.op.i
  br label %do.body86

if.else53:                                        ; preds = %if.end35
  %and56 = and i32 %conv37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.end82, label %cond.end75

cond.end75:                                       ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  %size59 = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 6
  %38 = ptrtoint ptr %size59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %size59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i.i222 = icmp eq i32 %39, 0
  %40 = call i32 @llvm.ctlz.i32(i32 %39, i1 true) #7, !range !131
  %sub.i.op.i223.op = sub nsw i32 30, %40
  %sub77 = select i1 %tobool.not.i.i222, i32 -2, i32 %sub.i.op.i223.op
  br label %do.body86

do.end82:                                         ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.10) #10
  br label %cleanup

do.body86:                                        ; preds = %cond.end75, %cond.false48
  %cond52.sink = phi i32 [ %sub77, %cond.end75 ], [ %sub.i, %cond.false48 ]
  %addrlen = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 5
  %41 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond52.sink, ptr %addrlen, align 4
  %lock = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @eeprom_93xx46_probe.__key) #7
  %42 = ptrtoint ptr %call.i221 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spi, ptr %call.i221, align 4
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 1
  %43 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %29, ptr %pdata, align 4
  %nvmem_config = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3
  %type = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 9
  %44 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %type, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %45 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i225 = icmp eq ptr %46, null
  br i1 %tobool.not.i225, label %if.end.i226, label %do.body86.dev_name.exit_crit_edge

do.body86.dev_name.exit_crit_edge:                ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i226:                                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i226, %do.body86.dev_name.exit_crit_edge
  %retval.0.i227 = phi ptr [ %48, %if.end.i226 ], [ %46, %do.body86.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i227, ptr %name, align 4
  %50 = ptrtoint ptr %nvmem_config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spi, ptr %nvmem_config, align 4
  %51 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %29, align 4
  %read_only = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 10
  %53 = lshr i8 %52, 3
  %.lobit = and i8 %53, 1
  %54 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.lobit, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 11
  %55 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %root_only, align 1
  %owner = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 3
  %56 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %owner, align 4
  %compat = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 22
  %57 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 23
  %58 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %spi, ptr %base_dev, align 4
  %reg_read = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 15
  %59 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @eeprom_93xx46_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 16
  %60 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @eeprom_93xx46_write, ptr %reg_write, align 4
  %priv = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 21
  %61 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call.i221, ptr %priv, align 4
  %stride = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 20
  %62 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 4, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 19
  %63 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %word_size, align 4
  %size111 = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 6
  %64 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %size111, align 4
  %size113 = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 3, i32 18
  %66 = ptrtoint ptr %size113 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %size113, align 4
  %call116 = call ptr @devm_nvmem_register(ptr noundef %spi, ptr noundef %nvmem_config) #7
  %nvmem = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %call.i221, i32 0, i32 4
  %67 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call116, ptr %nvmem, align 4
  %cmp.i228 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i228, label %if.then119, label %do.end125

if.then119:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %call116 to i32
  br label %cleanup

do.end125:                                        ; preds = %dev_name.exit
  %69 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %29, align 4
  %conv128 = zext i8 %70 to i32
  %and129 = and i32 %conv128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  %cond131 = select i1 %tobool130.not, i32 16, i32 8
  %71 = ptrtoint ptr %size111 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %size111, align 4
  %and135 = and i32 %conv128, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  %cond137 = select i1 %tobool136.not, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.14, i32 noundef %cond131, i32 noundef %72, ptr noundef nonnull %cond137) #10
  %73 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %29, align 4
  %75 = and i8 %74, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool141.not = icmp eq i8 %75, 0
  br i1 %tobool141.not, label %if.then142, label %do.end125.if.end152_crit_edge

do.end125.if.end152_crit_edge:                    ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then142:                                       ; preds = %do.end125
  %call144 = call i32 @device_create_file(ptr noundef %spi, ptr noundef nonnull @dev_attr_erase) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then142.if.end152_crit_edge, label %do.end149

if.then142.if.end152_crit_edge:                   ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.end149:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20) #10
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %if.then142.if.end152_crit_edge, %do.end125.if.end152_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i221, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %if.then119, %do.end82, %do.end31, %if.end7.cleanup_crit_edge, %do.end, %eeprom_93xx46_probe_dt.exit.cleanup_crit_edge, %eeprom_93xx46_probe_dt.exit.thread
  %retval.0 = phi i32 [ %68, %if.then119 ], [ 0, %if.end152 ], [ -22, %do.end82 ], [ -22, %do.end31 ], [ -19, %do.end ], [ %27, %eeprom_93xx46_probe_dt.exit.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %retval.0.i.ph, %eeprom_93xx46_probe_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_remove_file(ptr noundef %spi, ptr noundef nonnull @dev_attr_erase) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_read(ptr noundef %priv, i32 noundef %off, ptr noundef %val, i32 noundef %count) #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  %cmd_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %off)
  %cmp.not = icmp ugt i32 %1, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup92_crit_edge, !prof !132

entry.cleanup92_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp3 = icmp ugt i32 %add, %1
  %sub = sub i32 %1, %off
  %spec.select = select i1 %cmp3, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %if.end.cleanup92_crit_edge, label %if.end17, !prof !133

if.end.cleanup92_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup92

if.end17:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %prepare = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prepare, align 4
  %tobool18.not = icmp eq ptr %5, null
  br i1 %tobool18.not, label %if.end17.while.body.lr.ph_crit_edge, label %if.then19

if.end17.while.body.lr.ph_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %priv) #7
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then19, %if.end17.while.body.lr.ph_crit_edge
  %addrlen = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 5
  %6 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addrlen, align 4
  %add23 = add i32 %7, 3
  %8 = getelementptr inbounds i8, ptr %m, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %len66 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %bits_per_word68 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 8
  %transfer_list.i147 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %prev3.i.i.i150 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %off.addr.0165 = phi i32 [ %off, %while.body.lr.ph ], [ %add80, %cleanup.while.body_crit_edge ]
  %bits.0164 = phi i32 [ %add23, %while.body.lr.ph ], [ %bits.1, %cleanup.while.body_crit_edge ]
  %buf.0163 = phi ptr [ %val, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %count.addr.1161 = phi i32 [ %spec.select, %while.body.lr.ph ], [ %sub81, %cleanup.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %9 = call ptr @memset(ptr %m, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  %10 = call ptr @memset(ptr %t, i32 0, i32 192)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_addr) #7
  %11 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addrlen, align 4
  %shl = shl i32 6, %12
  %conv = trunc i32 %shl to i16
  %13 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %cmd_addr, align 2
  %14 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 4
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool28.not = icmp eq i8 %18, 0
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  %off.addr.0165.pn = lshr i32 %off.addr.0165, %20
  %.sink = select i1 %tobool28.not, i32 2, i32 1
  %storemerge.in = or i32 %shl, %off.addr.0165.pn
  %storemerge = trunc i32 %storemerge.in to i16
  %21 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %storemerge, ptr %cmd_addr, align 2
  %quirks.i140 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %quirks.i140 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quirks.i140, align 4
  %and.i141 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.i142.not = icmp eq i32 %and.i141, 0
  %spec.select138 = select i1 %tobool.i142.not, i32 %count.addr.1161, i32 %.sink
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eeprom_93xx46_read.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eeprom_93xx46_read, %if.then49)) #7
          to label %do.end [label %if.then49], !srcloc !134

if.then49:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 4
  %26 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmd_addr, align 2
  %conv50 = zext i16 %27 to i32
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %25, i32 0, i32 3
  %28 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_speed_hz, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eeprom_93xx46_read.__UNIQUE_ID_ddebug230, ptr noundef %25, ptr noundef nonnull @.str.32, i32 noundef %conv50, i32 noundef %29) #7
  br label %do.end

do.end:                                           ; preds = %if.then49, %while.body
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 4
  %quirks.i144 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %quirks.i144 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %quirks.i144, align 4
  %and.i145 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.i146.not = icmp eq i32 %and.i145, 0
  br i1 %tobool.i146.not, label %do.end.if.end59_crit_edge, label %if.then54

do.end.if.end59_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then54:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cmd_addr, align 2
  %shl56 = shl i16 %35, 1
  store i16 %shl56, ptr %cmd_addr, align 2
  %add58 = add i32 %bits.0164, 1
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %do.end.if.end59_crit_edge
  %bits.1 = phi i32 [ %add58, %if.then54 ], [ %bits.0164, %do.end.if.end59_crit_edge ]
  %36 = call ptr @memset(ptr %8, i32 0, i32 40)
  %37 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %m, ptr %m, align 4
  %38 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %m, ptr %prev.i.i.i, align 4
  %39 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %40 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %41 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %cmd_addr, ptr %t, align 4
  %42 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len, align 4
  %conv61 = trunc i32 %bits.1 to i8
  %43 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv61, ptr %bits_per_word, align 1
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end59.spi_message_add_tail.exit_crit_edge

if.end59.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %m, ptr %transfer_list.i, align 4
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end59.spi_message_add_tail.exit_crit_edge
  %48 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %buf.0163, ptr %rx_buf, align 4
  %49 = ptrtoint ptr %len66 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %count.addr.1161, ptr %len66, align 4
  %50 = ptrtoint ptr %bits_per_word68 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 8, ptr %bits_per_word68, align 1
  %51 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i149 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i147, ptr noundef %52, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i149, label %if.end.i.i.i151, label %spi_message_add_tail.exit.spi_message_add_tail.exit152_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit152_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit152

if.end.i.i.i151:                                  ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i147, ptr %prev.i.i.i, align 4
  %54 = ptrtoint ptr %transfer_list.i147 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %m, ptr %transfer_list.i147, align 4
  %55 = ptrtoint ptr %prev3.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i150, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i147, ptr %52, align 4
  br label %spi_message_add_tail.exit152

spi_message_add_tail.exit152:                     ; preds = %if.end.i.i.i151, %spi_message_add_tail.exit.spi_message_add_tail.exit152_crit_edge
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %priv, align 4
  %call71 = call i32 @spi_sync(ptr noundef %58, ptr noundef nonnull %m) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %59(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %spi_message_add_tail.exit152
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %priv, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.33, i32 noundef %spec.select138, i32 noundef %off.addr.0165, i32 noundef %call71) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_addr) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  br label %while.end

cleanup:                                          ; preds = %spi_message_add_tail.exit152
  %add.ptr = getelementptr i8, ptr %buf.0163, i32 %spec.select138
  %add80 = add i32 %spec.select138, %off.addr.0165
  %sub81 = sub i32 %count.addr.1161, %spec.select138
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_addr) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  %tobool24.not = icmp eq i32 %sub81, 0
  br i1 %tobool24.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %cleanup.thread
  %62 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdata, align 4
  %finish = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %finish, align 4
  %tobool86.not = icmp eq ptr %65, null
  br i1 %tobool86.not, label %while.end.if.end90_crit_edge, label %if.then87

while.end.if.end90_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end90

if.then87:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void %65(ptr noundef %priv) #7
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %while.end.if.end90_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup92

cleanup92:                                        ; preds = %if.end90, %if.end.cleanup92_crit_edge, %entry.cleanup92_crit_edge
  %retval.0 = phi i32 [ %call71, %if.end90 ], [ 0, %entry.cleanup92_crit_edge ], [ 0, %if.end.cleanup92_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_write(ptr noundef %priv, i32 noundef %off, ptr noundef %val, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %off)
  %cmp.not = icmp ugt i32 %1, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !132

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp3 = icmp ugt i32 %add, %1
  %sub = sub i32 %1, %off
  %spec.select = select i1 %cmp3, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool7.not = icmp eq i32 %spec.select, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end17, !prof !133

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool18.not = icmp eq i8 %6, 0
  %and20 = and i32 %spec.select, -2
  %spec.select85 = select i1 %tobool18.not, i32 %spec.select, i32 %and20
  %spec.select86 = select i1 %tobool18.not, i32 1, i32 2
  %call = tail call fastcc i32 @eeprom_93xx46_ew(ptr noundef %priv, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool22.not = icmp eq i32 %call, 0
  br i1 %tobool22.not, label %if.end24, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %lock = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdata, align 4
  %prepare = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prepare, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %if.end24.if.end30_crit_edge, label %if.then27

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %10(ptr noundef %priv) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select85)
  %cmp3187.not = icmp eq i32 %spec.select85, 0
  br i1 %cmp3187.not, label %if.end30.for.end_crit_edge, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  br label %for.body

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond:                                         ; preds = %for.body
  %add39 = add i32 %i.088, %spec.select86
  %cmp31 = icmp ult i32 %add39, %spec.select85
  br i1 %cmp31, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end30.for.body_crit_edge
  %i.088 = phi i32 [ %add39, %for.cond.for.body_crit_edge ], [ 0, %if.end30.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %val, i32 %i.088
  %add33 = add i32 %i.088, %off
  %call34 = tail call fastcc i32 @eeprom_93xx46_write_word(ptr noundef %priv, ptr noundef %arrayidx, i32 noundef %add33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.34, i32 noundef %add33, i32 noundef %call34) #10
  br label %for.end

for.end:                                          ; preds = %do.end, %for.cond.for.end_crit_edge, %if.end30.for.end_crit_edge
  %ret.1 = phi i32 [ %call34, %do.end ], [ 0, %if.end30.for.end_crit_edge ], [ 0, %for.cond.for.end_crit_edge ]
  %13 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata, align 4
  %finish = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %finish, align 4
  %tobool41.not = icmp eq ptr %16, null
  br i1 %tobool41.not, label %for.end.if.end45_crit_edge, label %if.then42

for.end.if.end45_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %16(ptr noundef %priv) #7
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %for.end.if.end45_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call47 = tail call fastcc i32 @eeprom_93xx46_ew(ptr noundef %priv, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end17.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end45 ], [ -27, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @select_assert(ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %select = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %select, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @select_deassert(ptr nocapture noundef readonly %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %select = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %select to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %select, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeprom_93xx46_ew(ptr noundef %edev, i32 noundef %is_on) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  %cmd_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_addr) #7
  %addrlen = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 5
  %0 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addrlen, align 4
  %add = add i32 %1, 3
  %shl = shl i32 4, %1
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 1
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool7.not = icmp eq i32 %is_on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond = select i1 %tobool7.not, i32 0, i32 96
  %conv5 = and i32 %shl, 65532
  %or = or i32 %conv5, %cond
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cond8 = select i1 %tobool7.not, i32 0, i32 48
  %or10 = or i32 %shl, %cond8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi i32 [ %or10, %if.else ], [ %or, %if.then ]
  %storemerge = trunc i32 %storemerge.in to i16
  %7 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %storemerge, ptr %cmd_addr, align 2
  %quirks.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end.do.body_crit_edge, label %if.then12

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl14 = shl i16 %storemerge, 2
  %10 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %shl14, ptr %cmd_addr, align 2
  %add16 = add i32 %1, 5
  br label %do.body

do.body:                                          ; preds = %if.then12, %if.end.do.body_crit_edge
  %bits.0 = phi i32 [ %add16, %if.then12 ], [ %add, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eeprom_93xx46_ew.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eeprom_93xx46_ew, %if.then22)) #7
          to label %do.end [label %if.then22], !srcloc !134

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool23.not = icmp eq i32 %is_on, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.39, ptr @.str.38
  %13 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cmd_addr, align 2
  %conv25 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eeprom_93xx46_ew.__UNIQUE_ID_ddebug231, ptr noundef %12, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond24, i32 noundef %conv25, i32 noundef %bits.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  %15 = getelementptr inbounds i8, ptr %m, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %21 = getelementptr inbounds i8, ptr %t, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd_addr, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len, align 4
  %conv27 = trunc i32 %bits.0 to i8
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %25 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv27, ptr %bits_per_word, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 4
  %prepare = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prepare, align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %spi_message_add_tail.exit.if.end33_crit_edge, label %if.then30

spi_message_add_tail.exit.if.end33_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then30:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %33(ptr noundef %edev) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %spi_message_add_tail.exit.if.end33_crit_edge
  %34 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edev, align 4
  %call35 = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %m) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end33.if.end45_crit_edge, label %do.end40

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_on)
  %tobool43.not = icmp eq i32 %is_on, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.41, ptr @.str.38
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond44, i32 noundef %call35) #10
  br label %if.end45

if.end45:                                         ; preds = %do.end40, %if.end33.if.end45_crit_edge
  %39 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdata, align 4
  %finish = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %finish, align 4
  %tobool47.not = icmp eq ptr %42, null
  br i1 %tobool47.not, label %if.end45.if.end51_crit_edge, label %if.then48

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void %42(ptr noundef %edev) #7
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45.if.end51_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_addr) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  ret i32 %call35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeprom_93xx46_write_word(ptr nocapture noundef readonly %edev, ptr noundef %buf, i32 noundef %off) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  %cmd_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_addr) #7
  %size = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 6
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %off)
  %cmp.not = icmp ugt i32 %1, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !132

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %addrlen = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 5
  %2 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addrlen, align 4
  %shl = shl i32 5, %3
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  %9 = xor i8 %8, 1
  %10 = zext i8 %9 to i32
  %storemerge.in.v = lshr i32 %off, %10
  %storemerge.in = or i32 %storemerge.in.v, %shl
  %data_len.0 = select i1 %tobool4.not, i32 2, i32 1
  %storemerge = trunc i32 %storemerge.in to i16
  %11 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %storemerge, ptr %cmd_addr, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eeprom_93xx46_write_word.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eeprom_93xx46_write_word, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !134

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edev, align 4
  %14 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cmd_addr, align 2
  %conv20 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eeprom_93xx46_write_word.__UNIQUE_ID_ddebug232, ptr noundef %13, ptr noundef nonnull @.str.43, i32 noundef %conv20) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %if.end
  %16 = getelementptr inbounds i8, ptr %m, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %22 = getelementptr inbounds i8, ptr %t, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 188)
  %24 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cmd_addr, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len, align 4
  %26 = trunc i32 %3 to i8
  %conv23 = add i8 %26, 3
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %27 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv23, ptr %bits_per_word, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %arrayidx26 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf, ptr %arrayidx26, align 4
  %len29 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %len29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %data_len.0, ptr %len29, align 4
  %bits_per_word31 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %bits_per_word31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %bits_per_word31, align 1
  %transfer_list.i48 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i50 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i48, ptr noundef %36, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i50, label %if.end.i.i.i52, label %spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit53

if.end.i.i.i52:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i48, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %transfer_list.i48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %m, ptr %transfer_list.i48, align 4
  %prev3.i.i.i51 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i51, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i48, ptr %36, align 4
  br label %spi_message_add_tail.exit53

spi_message_add_tail.exit53:                      ; preds = %if.end.i.i.i52, %spi_message_add_tail.exit.spi_message_add_tail.exit53_crit_edge
  %41 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edev, align 4
  %call34 = call i32 @spi_sync(ptr noundef %42, ptr noundef nonnull %m) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #7
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit53, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call34, %spi_message_add_tail.exit53 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_addr) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_93xx46_store_erase(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  %erase = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %erase) #7
  %2 = ptrtoint ptr %erase to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %erase, align 4
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.45, ptr noundef nonnull %erase)
  %3 = ptrtoint ptr %erase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %erase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %call2 = call fastcc i32 @eeprom_93xx46_ew(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call5 = call fastcc i32 @eeprom_93xx46_eral(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc i32 @eeprom_93xx46_ew(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.end8.if.end13_crit_edge, %entry.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end13 ], [ %call2, %if.then.cleanup_crit_edge ], [ %call5, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %erase) #7
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eeprom_93xx46_eral(ptr noundef %edev) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  %cmd_addr = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 1
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd_addr) #7
  %addrlen = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 5
  %2 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addrlen, align 4
  %add = add i32 %3, 3
  %shl = shl i32 4, %3
  %conv = trunc i32 %shl to i16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %storemerge.v = select i1 %tobool.not, i16 32, i16 64
  %storemerge = or i16 %storemerge.v, %conv
  %7 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %storemerge, ptr %cmd_addr, align 2
  %quirks.i = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.body_crit_edge, label %if.then9

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shl11 = shl i16 %storemerge, 2
  %10 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %shl11, ptr %cmd_addr, align 2
  %add13 = add i32 %3, 5
  br label %do.body

do.body:                                          ; preds = %if.then9, %entry.do.body_crit_edge
  %bits.0 = phi i32 [ %add13, %if.then9 ], [ %add, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @eeprom_93xx46_eral.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@eeprom_93xx46_eral, %if.then19)) #7
          to label %do.end [label %if.then19], !srcloc !134

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edev, align 4
  %13 = ptrtoint ptr %cmd_addr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %cmd_addr, align 2
  %conv20 = zext i16 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @eeprom_93xx46_eral.__UNIQUE_ID_ddebug233, ptr noundef %12, ptr noundef nonnull @.str.47, i32 noundef %conv20, i32 noundef %bits.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %15 = getelementptr inbounds i8, ptr %m, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %17 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %19 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %21 = getelementptr inbounds i8, ptr %t, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cmd_addr, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %len, align 4
  %conv22 = trunc i32 %bits.0 to i8
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %25 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv22, ptr %bits_per_word, align 1
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %29 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %lock = getelementptr inbounds %struct.eeprom_93xx46_dev, ptr %edev, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %30 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdata, align 4
  %prepare = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %prepare to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prepare, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %spi_message_add_tail.exit.if.end28_crit_edge, label %if.then25

spi_message_add_tail.exit.if.end28_crit_edge:     ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then25:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %33(ptr noundef %edev) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then25, %spi_message_add_tail.exit.if.end28_crit_edge
  %34 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edev, align 4
  %call30 = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %m) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end28.if.end38_crit_edge, label %do.end35

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.48, i32 noundef %call30) #10
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.end28.if.end38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 214748000) #7
  %finish = getelementptr inbounds %struct.eeprom_93xx46_platform_data, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %finish to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %finish, align 4
  %tobool40.not = icmp eq ptr %45, null
  br i1 %tobool40.not, label %if.end38.if.end43_crit_edge, label %if.then41

if.end38.if.end43_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  call void %45(ptr noundef %edev) #7
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38.if.end43_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd_addr) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  ret i32 %call30
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !54, !55, !56, !57, !58, !60, !61, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !111, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_eeprom_93xx46__234_578_eeprom_93xx46_driver_init6, !1, !"__initcall__kmod_eeprom_93xx46__234_578_eeprom_93xx46_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 578, i32 1}
!2 = !{ptr @__exitcall_eeprom_93xx46_driver_exit, !1, !"__exitcall_eeprom_93xx46_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file235, !4, !"__UNIQUE_ID_file235", i1 false, i1 false}
!4 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 580, i32 1}
!5 = !{ptr @__UNIQUE_ID_license236, !4, !"__UNIQUE_ID_license236", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description237, !7, !"__UNIQUE_ID_description237", i1 false, i1 false}
!7 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 581, i32 1}
!8 = !{ptr @__UNIQUE_ID_author238, !9, !"__UNIQUE_ID_author238", i1 false, i1 false}
!9 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 582, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias239, !11, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 583, i32 1}
!12 = !{ptr @__UNIQUE_ID_alias240, !13, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!13 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 584, i32 1}
!14 = !{ptr @__UNIQUE_ID_alias241, !15, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!15 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 585, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 570, i32 11}
!18 = !{ptr @eeprom_93xx46_driver, !19, !"eeprom_93xx46_driver", i1 false, i1 false}
!19 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 568, i32 26}
!20 = !{ptr @eeprom_93xx46_spi_ids, !21, !"eeprom_93xx46_spi_ids", i1 false, i1 false}
!21 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 409, i32 35}
!22 = !{ptr @at93c46_data, !23, !"at93c46_data", i1 false, i1 false}
!23 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 35, i32 48}
!24 = !{ptr @atmel_at93c46d_data, !25, !"atmel_at93c46d_data", i1 false, i1 false}
!25 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 47, i32 48}
!26 = !{ptr @at93c56_data, !27, !"at93c56_data", i1 false, i1 false}
!27 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 39, i32 48}
!28 = !{ptr @at93c66_data, !29, !"at93c66_data", i1 false, i1 false}
!29 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 43, i32 48}
!30 = !{ptr @microchip_93lc46b_data, !31, !"microchip_93lc46b_data", i1 false, i1 false}
!31 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 53, i32 48}
!32 = !{ptr @.str.1, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 492, i32 3}
!34 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @eeprom_93xx46_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @eeprom_93xx46_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 507, i32 3}
!42 = !{ptr @eeprom_93xx46_probe._entry.6, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @eeprom_93xx46_probe._entry_ptr.8, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 516, i32 3}
!46 = !{ptr @eeprom_93xx46_probe._entry.9, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @eeprom_93xx46_probe._entry_ptr.11, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @eeprom_93xx46_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 520, i32 2}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 544, i32 2}
!53 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @eeprom_93xx46_probe._entry.13, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @eeprom_93xx46_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 551, i32 4}
!60 = !{ptr @eeprom_93xx46_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @eeprom_93xx46_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 439, i32 33}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 441, i32 3}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @eeprom_93xx46_probe_dt._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @eeprom_93xx46_probe_dt._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 450, i32 3}
!71 = !{ptr @eeprom_93xx46_probe_dt._entry.25, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @eeprom_93xx46_probe_dt._entry_ptr.27, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 454, i32 32}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 457, i32 50}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 122, i32 3}
!79 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @eeprom_93xx46_read.__UNIQUE_ID_ddebug230, !78, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 147, i32 4}
!84 = !{ptr @eeprom_93xx46_read._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @eeprom_93xx46_read._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 295, i32 4}
!88 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @eeprom_93xx46_write._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @eeprom_93xx46_write._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 186, i32 2}
!93 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @eeprom_93xx46_ew.__UNIQUE_ID_ddebug231, !92, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!95 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 206, i32 3}
!99 = !{ptr @eeprom_93xx46_ew._entry, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @eeprom_93xx46_ew._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 241, i32 2}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @eeprom_93xx46_write_word.__UNIQUE_ID_ddebug232, !103, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 382, i32 8}
!108 = !{ptr @dev_attr_erase, !107, !"dev_attr_erase", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 368, i32 14}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 333, i32 2}
!113 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @eeprom_93xx46_eral.__UNIQUE_ID_ddebug233, !112, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 350, i32 3}
!117 = !{ptr @eeprom_93xx46_eral._entry, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @eeprom_93xx46_eral._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @eeprom_93xx46_of_table, !120, !"eeprom_93xx46_of_table", i1 false, i1 false}
!120 = !{!"../drivers/misc/eeprom/eeprom_93xx46.c", i32 398, i32 34}
!121 = !{i32 1, !"wchar_size", i32 2}
!122 = !{i32 1, !"min_enum_size", i32 4}
!123 = !{i32 8, !"branch-target-enforcement", i32 0}
!124 = !{i32 8, !"sign-return-address", i32 0}
!125 = !{i32 8, !"sign-return-address-all", i32 0}
!126 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!127 = !{i32 7, !"uwtable", i32 1}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!130 = !{!"auto-init"}
!131 = !{i32 0, i32 33}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{i64 2148768337, i64 2148768342, i64 2148768355, i64 2148768399, i64 2148768433, i64 2148768454}
