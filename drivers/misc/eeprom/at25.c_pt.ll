; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/at25.c_pt.bc'
source_filename = "../drivers/misc/eeprom/at25.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.at25_data = type { %struct.spi_eeprom, ptr, %struct.mutex, i32, %struct.nvmem_config, ptr, [8 x i8] }
%struct.spi_eeprom = type { i32, [10 x i8], i32, i16, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_at25__237_517_at25_driver_init6 = internal global ptr @at25_driver_init, section ".initcall6.init", align 4
@at25_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @at25_spi_ids, ptr @at25_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @at25_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sernum_groups, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_at25_driver_exit = internal global ptr @at25_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description238 = internal constant [45 x i8] c"at25.description=Driver for most SPI EEPROMs\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [27 x i8] c"at25.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_file240 = internal constant [35 x i8] c"at25.file=drivers/misc/eeprom/at25\00", section ".modinfo", align 1
@__UNIQUE_ID_license241 = internal constant [17 x i8] c"at25.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias242 = internal constant [20 x i8] c"at25.alias=spi:at25\00", section ".modinfo", align 1
@at25_spi_ids = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"at25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"fm25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"at25\00", [27 x i8] zeroinitializer }, align 32
@at25_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cypress,fm25\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sernum_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sernum_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compatible\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cypress,fm25\00", [19 x i8] zeroinitializer }, align 32
@at25_probe.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at25_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/misc/eeprom/at25.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rdsr --> %d (%02x)\0A\00", [44 x i8] zeroinitializer }, align 32
@at25_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&at25->lock\00", [20 x i8] zeroinitializer }, align 32
@at25_probe.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.7, i8 0, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported address type\0A\00", [38 x i8] zeroinitializer }, align 32
@at25_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 501, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%d %s %s %s%s, pagesize %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at25_probe._entry_ptr = internal global ptr @at25_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Byte\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"KByte\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fram\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" (readonly)\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@at25_fram_to_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 378, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error: no Cypress FRAM (id %02x)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"at25_fram_to_chip\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@at25_fram_to_chip._entry_ptr = internal global ptr @at25_fram_to_chip._entry, section ".printk_index", align 4
@at25_fram_to_chip._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.4, i32 383, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Error: unsupported size (id %02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@at25_fram_to_chip._entry_ptr.23 = internal global ptr @at25_fram_to_chip._entry.21, section ".printk_index", align 4
@fm25_aux_read.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fm25_aux_read\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read %d aux bytes --> %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at25,byte-len\00", [18 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.4, i32 318, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error: missing \22size\22 property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"at25_fw_to_chip\00", [16 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry_ptr = internal global ptr @at25_fw_to_chip._entry, section ".printk_index", align 4
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pagesize\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at25,page-size\00", [17 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.4, i32 327, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error: missing \22pagesize\22 property\0A\00", [60 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry_ptr.34 = internal global ptr @at25_fw_to_chip._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"address-width\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at25,addr-mode\00", [17 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.29, ptr @.str.4, i32 336, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: missing \22address-width\22 property\0A\00", [55 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry_ptr.39 = internal global ptr @at25_fw_to_chip._entry.37, section ".printk_index", align 4
@at25_fw_to_chip._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.29, ptr @.str.4, i32 357, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error: bad \22address-width\22 property: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@at25_fw_to_chip._entry_ptr.42 = internal global ptr @at25_fw_to_chip._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"read-only\00", [22 x i8] zeroinitializer }, align 32
@at25_ee_read.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.4, ptr @.str.45, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"at25_ee_read\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read %zu bytes at %d --> %zd\0A\00", [34 x i8] zeroinitializer }, align 32
@at25_ee_write.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.47, i8 0, i8 56, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"at25_ee_write\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WREN --> %d\0A\00", [19 x i8] zeroinitializer }, align 32
@at25_ee_write.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.48, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"write %u bytes at %u --> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@at25_ee_write.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.4, ptr @.str.5, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@at25_ee_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.4, i32 288, ptr @.str.20, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"write %u bytes offset %u, timeout after %u msecs\0A\00", [46 x i8] zeroinitializer }, align 32
@at25_ee_write._entry_ptr = internal global ptr @at25_ee_write._entry, section ".printk_index", align 4
@sernum_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sernum_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sernum_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sernum, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sernum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sernum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sernum\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*ph\0A\00", [26 x i8] zeroinitializer }, align 32
@str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fm25\00\00\00\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"at25\00\00\00\00\00\00\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 16, i64 24]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"at25_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 507, i32 26 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"at25_spi_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 411, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 509, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"at25_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 404, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"sernum_groups\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 426, i32 48 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 426, i32 62 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 439, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 447, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 472, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 495, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 378, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 383, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 166, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 314, i32 38 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 316, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 318, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 323, i32 38 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 325, i32 39 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 327, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 332, i32 38 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 334, i32 39 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 336, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 355, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 360, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 137, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 226, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 256, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 284, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"sernum_group\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 185, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"sernum_attrs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 181, i32 26 }
@___asan_gen_.223 = private unnamed_addr constant [16 x i8] c"dev_attr_sernum\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 179, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.230 = private constant [30 x i8] c"../drivers/misc/eeprom/at25.c\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.230, i32 177, i32 25 }
@___asan_gen_.232 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"str.52\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias242, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file240, ptr @__UNIQUE_ID_license241, ptr @__exitcall_at25_driver_exit, ptr @__initcall__kmod_at25__237_517_at25_driver_init6, ptr @at25_driver_exit, ptr @at25_ee_write._entry, ptr @at25_ee_write._entry_ptr, ptr @at25_fram_to_chip._entry, ptr @at25_fram_to_chip._entry.21, ptr @at25_fram_to_chip._entry_ptr, ptr @at25_fram_to_chip._entry_ptr.23, ptr @at25_fw_to_chip._entry, ptr @at25_fw_to_chip._entry.32, ptr @at25_fw_to_chip._entry.37, ptr @at25_fw_to_chip._entry.40, ptr @at25_fw_to_chip._entry_ptr, ptr @at25_fw_to_chip._entry_ptr.34, ptr @at25_fw_to_chip._entry_ptr.39, ptr @at25_fw_to_chip._entry_ptr.42, ptr @at25_probe._entry, ptr @at25_probe._entry_ptr, ptr @at25_driver, ptr @at25_spi_ids, ptr @.str, ptr @at25_of_match, ptr @sernum_groups, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @at25_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @sernum_group, ptr @sernum_attrs, ptr @dev_attr_sernum, ptr @.str.50, ptr @.str.51, ptr @str, ptr @str.52], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_spi_ids to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sernum_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fram_to_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fram_to_chip._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fw_to_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fw_to_chip._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fw_to_chip._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_fw_to_chip._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at25_ee_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sernum_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sernum_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sernum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at25_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @at25_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at25_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @at25_driver, i32 0, i32 4)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at25_probe(ptr noundef %spi) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %sernum.i = alloca [8 x i8], align 8
  %id.i = alloca [9 x i8], align 1
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_property_match_string(ptr noundef %spi, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp = icmp sgt i32 %call, -1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %0 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #7
  %1 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i, align 1, !annotation !130
  %call.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %do.body

spi_w8r8.exit:                                    ; preds = %entry
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %and = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end11, label %spi_w8r8.exit.do.body_crit_edge

spi_w8r8.exit.do.body_crit_edge:                  ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %spi_w8r8.exit.do.body_crit_edge, %spi_w8r8.exit.thread
  %cond.i237 = phi i32 [ %call.i, %spi_w8r8.exit.thread ], [ %conv.i, %spi_w8r8.exit.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_probe.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_probe, %if.then8)) #7
          to label %cleanup [label %if.then8], !srcloc !131

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_probe.__UNIQUE_ID_ddebug235, ptr noundef %spi, ptr noundef nonnull @.str.5, i32 noundef %cond.i237, i32 noundef %cond.i237) #7
  br label %cleanup

if.end11:                                         ; preds = %spi_w8r8.exit
  %call.i217 = call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 228, i32 noundef 3520) #7
  %tobool14.not = icmp eq ptr %call.i217, null
  br i1 %tobool14.not, label %if.end11.cleanup_crit_edge, label %do.body17

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body17:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @at25_probe.__key) #7
  %spi20 = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 1
  %4 = ptrtoint ptr %spi20 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %spi20, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i217, ptr %driver_data.i.i, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %tobool23.not = icmp eq ptr %7, null
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %call.i217, ptr %7, i32 28)
  br label %if.end39

if.else25:                                        ; preds = %do.body17
  br i1 %cmp, label %if.then27, label %if.else31

if.then27:                                        ; preds = %if.else25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sernum.i) #7
  %9 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 1
  %10 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 2
  %11 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 3
  %12 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 4
  %13 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 5
  %14 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 6
  %15 = getelementptr inbounds [8 x i8], ptr %sernum.i, i32 0, i32 7
  %16 = ptrtoint ptr %sernum.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 -1, ptr %sernum.i, align 8
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %id.i) #7
  %17 = getelementptr inbounds [9 x i8], ptr %id.i, i32 0, i32 6
  %18 = getelementptr inbounds [9 x i8], ptr %id.i, i32 0, i32 8
  %name.i = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 1
  %19 = call ptr @memset(ptr %id.i, i32 255, i32 9)
  %20 = call ptr @memcpy(ptr %name.i, ptr @str, i32 10)
  call fastcc void @fm25_aux_read(ptr noundef nonnull %call.i217, ptr noundef nonnull %id.i, i8 noundef zeroext -97, i32 noundef 9) #7
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -62, i8 %22)
  %cmp.not.i = icmp eq i8 %22, -62
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i218 = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18, i32 noundef %conv.i218) #10
  br label %at25_fram_to_chip.exit

if.end.i:                                         ; preds = %if.then27
  %23 = getelementptr inbounds [9 x i8], ptr %id.i, i32 0, i32 7
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv7.i = zext i8 %25 to i32
  %26 = add i8 %25, -39
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %26)
  %27 = icmp ult i8 %26, -6
  br i1 %27, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.22, i32 noundef %conv7.i) #10
  br label %at25_fram_to_chip.exit

if.end20.i:                                       ; preds = %if.end.i
  %add.i = add nsw i32 %conv7.i, -29
  %mul.i = shl i32 1024, %add.i
  %28 = ptrtoint ptr %call.i217 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %call.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %mul.i)
  %cmp24.i = icmp ugt i32 %mul.i, 65536
  %flags.i = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 3
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags.i, align 4
  %..i = select i1 %cmp24.i, i16 4, i16 2
  %31 = or i16 %30, %..i
  store i16 %31, ptr %flags.i, align 4
  %32 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i, label %if.end20.i.if.end44.i_crit_edge, label %if.then35.i

if.end20.i.if.end44.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44.i

if.then35.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @fm25_aux_read(ptr noundef nonnull %call.i217, ptr noundef nonnull %sernum.i, i8 noundef zeroext -61, i32 noundef 8) #7
  %34 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %15, align 1
  %arrayidx43.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 0
  %36 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx43.i, align 1
  %37 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %14, align 2
  %arrayidx43.1.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 1
  %39 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx43.1.i, align 1
  %40 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %13, align 1
  %arrayidx43.2.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 2
  %42 = ptrtoint ptr %arrayidx43.2.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx43.2.i, align 1
  %43 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %12, align 4
  %arrayidx43.3.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 3
  %45 = ptrtoint ptr %arrayidx43.3.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %arrayidx43.3.i, align 1
  %46 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %11, align 1
  %arrayidx43.4.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %arrayidx43.4.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %arrayidx43.4.i, align 1
  %49 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %10, align 2
  %arrayidx43.5.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 5
  %51 = ptrtoint ptr %arrayidx43.5.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx43.5.i, align 1
  %52 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %9, align 1
  %arrayidx43.6.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 6
  %54 = ptrtoint ptr %arrayidx43.6.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx43.6.i, align 1
  %55 = ptrtoint ptr %sernum.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %sernum.i, align 8
  %arrayidx43.7.i = getelementptr %struct.at25_data, ptr %call.i217, i32 0, i32 6, i32 7
  %57 = ptrtoint ptr %arrayidx43.7.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx43.7.i, align 1
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then35.i, %if.end20.i.if.end44.i_crit_edge
  %page_size.i = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 2
  %58 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4096, ptr %page_size.i, align 4
  br label %at25_fram_to_chip.exit

at25_fram_to_chip.exit:                           ; preds = %if.end44.i, %do.end17.i, %do.end.i
  %retval.0.i219 = phi i32 [ -19, %do.end.i ], [ -19, %do.end17.i ], [ 0, %if.end44.i ]
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %id.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sernum.i) #7
  br label %if.end35

if.else31:                                        ; preds = %if.else25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %59 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %val.i, align 4, !annotation !130
  %name.i220 = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 1
  %60 = call ptr @memcpy(ptr %name.i220, ptr @str.52, i32 10)
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.26, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i221 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i221, label %if.else31.if.end5.i_crit_edge, label %if.end.i222

if.else31.if.end5.i_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.end.i222:                                      ; preds = %if.else31
  %call.i83.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.27, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool3.not.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool3.not.i, label %if.end.i222.if.end5.i_crit_edge, label %do.end.i223

if.end.i222.if.end5.i_crit_edge:                  ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

do.end.i223:                                      ; preds = %if.end.i222
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.28) #10
  br label %at25_fw_to_chip.exit

if.end5.i:                                        ; preds = %if.end.i222.if.end5.i_crit_edge, %if.else31.if.end5.i_crit_edge
  %61 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val.i, align 4
  %63 = ptrtoint ptr %call.i217 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %call.i217, align 4
  %call.i84.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.30, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool7.not.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end16.i_crit_edge, label %if.end10.i

if.end5.i.if.end16.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.end10.i:                                       ; preds = %if.end5.i
  %call.i85.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool11.not.i = icmp eq i32 %call.i85.i, 0
  br i1 %tobool11.not.i, label %if.end10.i.if.end16.i_crit_edge, label %do.end15.i

if.end10.i.if.end16.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.33) #10
  br label %at25_fw_to_chip.exit

if.end16.i:                                       ; preds = %if.end10.i.if.end16.i_crit_edge, %if.end5.i.if.end16.i_crit_edge
  %64 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val.i, align 4
  %page_size.i224 = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 2
  %66 = ptrtoint ptr %page_size.i224 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %page_size.i224, align 4
  %call.i86.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86.i)
  %tobool18.not.i = icmp eq i32 %call.i86.i, 0
  br i1 %tobool18.not.i, label %if.else.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end16.i
  %call.i87.i = call i32 @device_property_read_u32_array(ptr noundef %spi, ptr noundef nonnull @.str.36, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87.i)
  %tobool21.not.i = icmp eq i32 %call.i87.i, 0
  br i1 %tobool21.not.i, label %if.end26.i, label %do.end25.i

do.end25.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.38) #10
  br label %at25_fw_to_chip.exit

if.end26.i:                                       ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  %conv.i225 = trunc i32 %68 to i16
  %flags.i226 = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 3
  %69 = ptrtoint ptr %flags.i226 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %conv.i225, ptr %flags.i226, align 4
  br label %at25_fw_to_chip.exit

if.else.i:                                        ; preds = %if.end16.i
  %70 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val.i, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values)
  switch i32 %71, label %do.end47.i [
    i32 9, label %sw.bb.i
    i32 8, label %if.else.i.sw.epilog.i_crit_edge
    i32 16, label %sw.bb35.i
    i32 24, label %sw.bb40.i
  ]

if.else.i.sw.epilog.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %flags27.i = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 3
  %73 = ptrtoint ptr %flags27.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %flags27.i, align 4
  %75 = or i16 %74, 16
  store i16 %75, ptr %flags27.i, align 4
  br label %sw.epilog.i

sw.bb35.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb40.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

do.end47.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.41, i32 noundef %71) #10
  br label %at25_fw_to_chip.exit

sw.epilog.i:                                      ; preds = %sw.bb40.i, %sw.bb35.i, %sw.bb.i, %if.else.i.sw.epilog.i_crit_edge
  %.sink93.i = phi i16 [ 4, %sw.bb40.i ], [ 2, %sw.bb35.i ], [ 1, %if.else.i.sw.epilog.i_crit_edge ], [ 1, %sw.bb.i ]
  %flags41.i = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 3
  %76 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %flags41.i, align 4
  %78 = or i16 %77, %.sink93.i
  store i16 %78, ptr %flags41.i, align 4
  %call48.i = call zeroext i1 @device_property_present(ptr noundef %spi, ptr noundef nonnull @.str.43) #7
  br i1 %call48.i, label %if.then49.i, label %sw.epilog.i.at25_fw_to_chip.exit_crit_edge

sw.epilog.i.at25_fw_to_chip.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at25_fw_to_chip.exit

if.then49.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %flags41.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %flags41.i, align 4
  %81 = or i16 %80, 8
  store i16 %81, ptr %flags41.i, align 4
  br label %at25_fw_to_chip.exit

at25_fw_to_chip.exit:                             ; preds = %if.then49.i, %sw.epilog.i.at25_fw_to_chip.exit_crit_edge, %do.end47.i, %if.end26.i, %do.end25.i, %do.end15.i, %do.end.i223
  %retval.0.i227 = phi i32 [ %call.i83.i, %do.end.i223 ], [ %call.i85.i, %do.end15.i ], [ %call.i87.i, %do.end25.i ], [ -19, %do.end47.i ], [ 0, %sw.epilog.i.at25_fw_to_chip.exit_crit_edge ], [ 0, %if.then49.i ], [ 0, %if.end26.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end35

if.end35:                                         ; preds = %at25_fw_to_chip.exit, %at25_fram_to_chip.exit
  %err.0 = phi i32 [ %retval.0.i219, %at25_fram_to_chip.exit ], [ %retval.0.i227, %at25_fw_to_chip.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool36.not = icmp eq i32 %err.0, 0
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %if.end35.if.end39_crit_edge, %if.then24
  %flags = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 3
  %82 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %flags, align 4
  %conv = zext i16 %83 to i32
  %and41 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else44, label %if.end39.if.end80_crit_edge

if.end39.if.end80_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else44:                                        ; preds = %if.end39
  %and48 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.else52, label %if.else44.if.end80_crit_edge

if.else44.if.end80_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.else52:                                        ; preds = %if.else44
  %and56 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %do.body61, label %if.else52.if.end80_crit_edge

if.else52.if.end80_crit_edge:                     ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.body61:                                        ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_probe.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_probe, %if.then73)) #7
          to label %cleanup [label %if.then73], !srcloc !131

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_probe.__UNIQUE_ID_ddebug236, ptr noundef %spi, ptr noundef nonnull @.str.7) #7
  br label %cleanup

if.end80:                                         ; preds = %if.else52.if.end80_crit_edge, %if.else44.if.end80_crit_edge, %if.end39.if.end80_crit_edge
  %.sink = phi i32 [ 1, %if.end39.if.end80_crit_edge ], [ 2, %if.else44.if.end80_crit_edge ], [ 3, %if.else52.if.end80_crit_edge ]
  %addrlen51 = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 3
  %84 = ptrtoint ptr %addrlen51 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink, ptr %addrlen51, align 4
  %cond = select i1 %cmp, i32 4, i32 1
  %nvmem_config = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4
  %type = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 9
  %85 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond, ptr %type, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i228 = icmp eq ptr %87, null
  br i1 %tobool.not.i228, label %if.end.i229, label %if.end80.dev_name.exit_crit_edge

if.end80.dev_name.exit_crit_edge:                 ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i229:                                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i229, %if.end80.dev_name.exit_crit_edge
  %retval.0.i230 = phi ptr [ %89, %if.end.i229 ], [ %87, %if.end80.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %retval.0.i230, ptr %name, align 4
  %91 = ptrtoint ptr %nvmem_config to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %spi, ptr %nvmem_config, align 4
  %92 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %flags, align 4
  %read_only = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 10
  %94 = trunc i16 %93 to i8
  %95 = lshr i8 %94, 3
  %96 = and i8 %95, 1
  %97 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 11
  %98 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %root_only, align 1
  %owner = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 3
  %99 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %owner, align 4
  %compat = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 22
  %100 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 23
  %101 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %spi, ptr %base_dev, align 4
  %reg_read = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 15
  %102 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @at25_ee_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 16
  %103 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @at25_ee_write, ptr %reg_write, align 4
  %priv = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 21
  %104 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call.i217, ptr %priv, align 4
  %stride = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 20
  %105 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1, ptr %stride, align 4
  %word_size = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 19
  %106 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 1, ptr %word_size, align 4
  %107 = ptrtoint ptr %call.i217 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %call.i217, align 4
  %size = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 4, i32 18
  %109 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %size, align 4
  %call110 = call ptr @devm_nvmem_register(ptr noundef %spi, ptr noundef %nvmem_config) #7
  %nvmem = getelementptr inbounds %struct.at25_data, ptr %call.i217, i32 0, i32 5
  %110 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %call110, ptr %nvmem, align 4
  %cmp.i231 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i231, label %if.then113, label %do.end119

if.then113:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %call110 to i32
  br label %cleanup

do.end119:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %112 = ptrtoint ptr %call.i217 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %call.i217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %113)
  %cmp123 = icmp ult i32 %113, 1024
  %div213 = lshr i32 %113, 10
  %cond129 = select i1 %cmp123, i32 %113, i32 %div213
  %cond134 = select i1 %cmp123, ptr @.str.11, ptr @.str.12
  %name136 = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 1
  %cond139 = select i1 %cmp, ptr @.str.13, ptr @.str.14
  %114 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %flags, align 4
  %116 = and i16 %115, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %116)
  %tobool144.not = icmp eq i16 %116, 0
  %cond145 = select i1 %tobool144.not, ptr @.str.16, ptr @.str.15
  %page_size = getelementptr inbounds %struct.spi_eeprom, ptr %call.i217, i32 0, i32 2
  %117 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %page_size, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %cond129, ptr noundef nonnull %cond134, ptr noundef %name136, ptr noundef nonnull %cond139, ptr noundef nonnull %cond145, i32 noundef %118) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end119, %if.then113, %if.then73, %do.body61, %if.end35.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then8, %do.body
  %retval.0 = phi i32 [ %111, %if.then113 ], [ 0, %do.end119 ], [ -6, %if.then8 ], [ -12, %if.end11.cleanup_crit_edge ], [ %err.0, %if.end35.cleanup_crit_edge ], [ -22, %if.then73 ], [ -6, %do.body ], [ -22, %do.body61 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at25_ee_read(ptr noundef %priv, i32 noundef %offset, ptr noundef %val, i32 noundef %count) #2 align 64 {
entry:
  %command = alloca [4 x i8], align 1
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %command) #7
  %0 = getelementptr inbounds [4 x i8], ptr %command, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %command, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %command, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset)
  %cmp.not = icmp ugt i32 %5, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !132

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %count, %offset
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp4 = icmp ugt i32 %add, %5
  %sub = sub i32 %5, %offset
  %spec.select = select i1 %cmp4, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool9.not = icmp eq i32 %spec.select, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end19, !prof !133

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.spi_eeprom, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 4
  %8 = and i16 %7, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool21.not = icmp eq i16 %8, 0
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %addrlen = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 3
  %9 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addrlen, align 4
  %mul = shl i32 %10, 3
  %offset.highbits = lshr i32 %offset, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.highbits)
  %cmp23.not = icmp eq i32 %offset.highbits, 0
  %spec.select94 = select i1 %cmp23.not, i8 3, i8 11
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %if.end19.if.end29_crit_edge
  %instr.0 = phi i8 [ 3, %if.end19.if.end29_crit_edge ], [ %spec.select94, %if.then22 ]
  %11 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %instr.0, ptr %command, align 1
  %addrlen30 = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %addrlen30 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %addrlen30, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %13, label %sw.default [
    i32 2, label %if.end29.sw.bb_crit_edge
    i32 1, label %if.end29.sw.bb36_crit_edge
    i32 0, label %if.end29.sw.bb36_crit_edge102
  ]

if.end29.sw.bb36_crit_edge102:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end29.sw.bb36_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb36

if.end29.sw.bb_crit_edge:                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %offset, 16
  %conv31 = trunc i32 %shr to i8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv31, ptr %0, align 1
  br label %sw.bb

sw.bb:                                            ; preds = %sw.default, %if.end29.sw.bb_crit_edge
  %cp.0 = phi ptr [ %1, %sw.default ], [ %0, %if.end29.sw.bb_crit_edge ]
  %shr33 = lshr i32 %offset, 8
  %conv34 = trunc i32 %shr33 to i8
  %incdec.ptr35 = getelementptr i8, ptr %cp.0, i32 1
  %16 = ptrtoint ptr %cp.0 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv34, ptr %cp.0, align 1
  br label %sw.bb36

sw.bb36:                                          ; preds = %sw.bb, %if.end29.sw.bb36_crit_edge, %if.end29.sw.bb36_crit_edge102
  %cp.1 = phi ptr [ %incdec.ptr35, %sw.bb ], [ %0, %if.end29.sw.bb36_crit_edge ], [ %0, %if.end29.sw.bb36_crit_edge102 ]
  %conv38 = trunc i32 %offset to i8
  %17 = ptrtoint ptr %cp.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv38, ptr %cp.1, align 1
  %18 = getelementptr inbounds i8, ptr %m, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %24 = getelementptr inbounds i8, ptr %t, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 188)
  %26 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %command, ptr %t, align 4
  %add43 = add i32 %13, 1
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add43, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sw.bb36.spi_message_add_tail.exit_crit_edge

sw.bb36.spi_message_add_tail.exit_crit_edge:      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %sw.bb36
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

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %sw.bb36.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %val, ptr %rx_buf, align 4
  %len48 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %len48 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select, ptr %len48, align 4
  %transfer_list.i95 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i97 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i95, ptr noundef %35, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i97, label %if.end.i.i.i99, label %spi_message_add_tail.exit.spi_message_add_tail.exit100_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit100_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit100

if.end.i.i.i99:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i95, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i95 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %m, ptr %transfer_list.i95, align 4
  %prev3.i.i.i98 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i98, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i95, ptr %35, align 4
  br label %spi_message_add_tail.exit100

spi_message_add_tail.exit100:                     ; preds = %if.end.i.i.i99, %spi_message_add_tail.exit.spi_message_add_tail.exit100_crit_edge
  %lock = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %spi = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 1
  %40 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %41, ptr noundef nonnull %m) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_ee_read.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_ee_read, %if.then58)) #7
          to label %do.end [label %if.then58], !srcloc !131

if.then58:                                        ; preds = %spi_message_add_tail.exit100
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_ee_read.__UNIQUE_ID_ddebug230, ptr noundef %43, ptr noundef nonnull @.str.45, i32 noundef %spec.select, i32 noundef %offset, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then58, %spi_message_add_tail.exit100
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %command) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at25_ee_write(ptr noundef %priv, i32 noundef %off, ptr nocapture noundef readonly %val, i32 noundef %count) #2 align 64 {
entry:
  %cmd.addr.i = alloca i8, align 1
  %result.i = alloca i8, align 1
  %msg.i.i246 = alloca %struct.spi_message, align 4
  %t.i247 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %off)
  %cmp.not = icmp ugt i32 %1, %off
  br i1 %cmp.not, label %if.end, label %entry.cleanup166_crit_edge, !prof !132

entry.cleanup166_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %1)
  %cmp4 = icmp ugt i32 %add, %1
  %sub = sub i32 %1, %off
  %spec.select = select i1 %cmp4, i32 %sub, i32 %count
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool9.not = icmp eq i32 %spec.select, 0
  br i1 %tobool9.not, label %if.end.cleanup166_crit_edge, label %if.end19, !prof !133

if.end.cleanup166_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.end19:                                         ; preds = %if.end
  %page_size = getelementptr inbounds %struct.spi_eeprom, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %page_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %page_size, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 4096)
  %addrlen = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addrlen, align 4
  %add24 = add i32 %4, %6
  %add25 = add i32 %add24, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add25, i32 noundef 3264) #11
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end19.cleanup166_crit_edge, label %if.end28

if.end19.cleanup166_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup166

if.end28:                                         ; preds = %if.end19
  %lock = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %spi = getelementptr inbounds %struct.at25_data, ptr %priv, i32 0, i32 1
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %flags = getelementptr inbounds %struct.spi_eeprom, ptr %priv, i32 0, i32 3
  %incdec.ptr = getelementptr i8, ptr %call9.i, i32 1
  %incdec.ptr58 = getelementptr i8, ptr %call9.i, i32 2
  %9 = getelementptr inbounds i8, ptr %t.i247, i32 4
  %len1.i248 = getelementptr inbounds %struct.spi_transfer, ptr %t.i247, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %msg.i.i246, i32 8
  %prev.i.i.i.i.i.i249 = getelementptr inbounds %struct.list_head, ptr %msg.i.i246, i32 0, i32 1
  %resources.i.i.i.i.i250 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i246, i32 0, i32 10
  %prev.i2.i.i.i.i.i251 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i246, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i252 = getelementptr inbounds %struct.spi_transfer, ptr %t.i247, i32 0, i32 18
  %prev3.i.i.i.i.i.i254 = getelementptr inbounds %struct.spi_transfer, ptr %t.i247, i32 0, i32 18, i32 1
  br label %do.body

do.body:                                          ; preds = %cleanup.do.body_crit_edge, %if.end28
  %buf.0 = phi ptr [ %val, %if.end28 ], [ %buf.1, %cleanup.do.body_crit_edge ]
  %count.addr.1 = phi i32 [ %spec.select, %if.end28 ], [ %count.addr.2, %cleanup.do.body_crit_edge ]
  %off.addr.0 = phi i32 [ %off, %if.end28 ], [ %off.addr.1, %cleanup.do.body_crit_edge ]
  %11 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 6, ptr %call9.i, align 128
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #7
  %14 = call ptr @memset(ptr %7, i32 0, i32 92)
  %15 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %t.i, align 4
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #7
  %17 = call ptr @memset(ptr %8, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #7
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.body.spi_write.exit_crit_edge

do.body.spi_write.exit_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.body.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp30 = icmp slt i32 %call.i.i, 0
  br i1 %cmp30, label %do.body32, label %if.end44

do.body32:                                        ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_ee_write.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_ee_write, %if.then41)) #7
          to label %cleanup [label %if.then41], !srcloc !131

if.then41:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_ee_write.__UNIQUE_ID_ddebug232, ptr noundef %27, ptr noundef nonnull @.str.47, i32 noundef %call.i.i) #7
  br label %do.end164

if.end44:                                         ; preds = %spi_write.exit
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags, align 4
  %30 = and i16 %29, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool46.not = icmp eq i16 %30, 0
  br i1 %tobool46.not, label %if.end44.if.end55_crit_edge, label %if.then47

if.end44.if.end55_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %addrlen, align 4
  %mul = shl i32 %32, 3
  %off.addr.0.highbits = lshr i32 %off.addr.0, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %off.addr.0.highbits)
  %cmp49.not = icmp eq i32 %off.addr.0.highbits, 0
  %spec.select235 = select i1 %cmp49.not, i8 2, i8 10
  br label %if.end55

if.end55:                                         ; preds = %if.then47, %if.end44.if.end55_crit_edge
  %instr.0 = phi i8 [ 2, %if.end44.if.end55_crit_edge ], [ %spec.select235, %if.then47 ]
  %33 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %instr.0, ptr %call9.i, align 128
  %34 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %addrlen, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %35, label %sw.default [
    i32 2, label %if.end55.sw.bb_crit_edge
    i32 1, label %if.end55.sw.bb62_crit_edge
    i32 0, label %if.end55.sw.bb62_crit_edge317
  ]

if.end55.sw.bb62_crit_edge317:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

if.end55.sw.bb62_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb62

if.end55.sw.bb_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.default:                                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %off.addr.0, 16
  %conv57 = trunc i32 %shr to i8
  %37 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv57, ptr %incdec.ptr, align 1
  br label %sw.bb

sw.bb:                                            ; preds = %sw.default, %if.end55.sw.bb_crit_edge
  %cp.0 = phi ptr [ %incdec.ptr58, %sw.default ], [ %incdec.ptr, %if.end55.sw.bb_crit_edge ]
  %shr59 = lshr i32 %off.addr.0, 8
  %conv60 = trunc i32 %shr59 to i8
  %incdec.ptr61 = getelementptr i8, ptr %cp.0, i32 1
  %38 = ptrtoint ptr %cp.0 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv60, ptr %cp.0, align 1
  br label %sw.bb62

sw.bb62:                                          ; preds = %sw.bb, %if.end55.sw.bb62_crit_edge, %if.end55.sw.bb62_crit_edge317
  %cp.1 = phi ptr [ %incdec.ptr61, %sw.bb ], [ %incdec.ptr, %if.end55.sw.bb62_crit_edge ], [ %incdec.ptr, %if.end55.sw.bb62_crit_edge317 ]
  %conv64 = trunc i32 %off.addr.0 to i8
  %incdec.ptr65 = getelementptr i8, ptr %cp.1, i32 1
  %39 = ptrtoint ptr %cp.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv64, ptr %cp.1, align 1
  %rem = urem i32 %off.addr.0, %4
  %sub66 = sub nsw i32 %4, %rem
  %40 = call i32 @llvm.umin.i32(i32 %sub66, i32 %count.addr.1)
  %41 = call ptr @memcpy(ptr %incdec.ptr65, ptr %buf.0, i32 %40)
  %42 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spi, align 4
  %44 = ptrtoint ptr %addrlen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %addrlen, align 4
  %add73 = add i32 %40, 1
  %add74 = add i32 %add73, %45
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i247) #7
  %46 = call ptr @memset(ptr %9, i32 0, i32 92)
  %47 = ptrtoint ptr %t.i247 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call9.i, ptr %t.i247, align 4
  %48 = ptrtoint ptr %len1.i248 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add74, ptr %len1.i248, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i246) #7
  %49 = call ptr @memset(ptr %10, i32 0, i32 40)
  %50 = ptrtoint ptr %msg.i.i246 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %msg.i.i246, ptr %msg.i.i246, align 4
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i249 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i246, ptr %prev.i.i.i.i.i.i249, align 4
  %52 = ptrtoint ptr %resources.i.i.i.i.i250 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %resources.i.i.i.i.i250, ptr %resources.i.i.i.i.i250, align 4
  %53 = ptrtoint ptr %prev.i2.i.i.i.i.i251 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %resources.i.i.i.i.i250, ptr %prev.i2.i.i.i.i.i251, align 4
  %call.i.i.i.i.i.i253 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i252, ptr noundef nonnull %msg.i.i246, ptr noundef nonnull %msg.i.i246) #7
  br i1 %call.i.i.i.i.i.i253, label %if.end.i.i.i.i.i.i255, label %sw.bb62.spi_write.exit257_crit_edge

sw.bb62.spi_write.exit257_crit_edge:              ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_write.exit257

if.end.i.i.i.i.i.i255:                            ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %prev.i.i.i.i.i.i249 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %transfer_list.i.i.i.i252, ptr %prev.i.i.i.i.i.i249, align 4
  %55 = ptrtoint ptr %transfer_list.i.i.i.i252 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i246, ptr %transfer_list.i.i.i.i252, align 4
  %56 = ptrtoint ptr %prev3.i.i.i.i.i.i254 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %msg.i.i246, ptr %prev3.i.i.i.i.i.i254, align 4
  %57 = ptrtoint ptr %msg.i.i246 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %transfer_list.i.i.i.i252, ptr %msg.i.i246, align 4
  br label %spi_write.exit257

spi_write.exit257:                                ; preds = %if.end.i.i.i.i.i.i255, %sw.bb62.spi_write.exit257_crit_edge
  %call.i.i256 = call i32 @spi_sync(ptr noundef %43, ptr noundef nonnull %msg.i.i246) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i246) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i247) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_ee_write.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_ee_write, %if.then88)) #7
          to label %do.end93 [label %if.then88], !srcloc !131

if.then88:                                        ; preds = %spi_write.exit257
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_ee_write.__UNIQUE_ID_ddebug233, ptr noundef %59, ptr noundef nonnull @.str.48, i32 noundef %40, i32 noundef %off.addr.0, i32 noundef %call.i.i256) #7
  br label %do.end93

do.end93:                                         ; preds = %if.then88, %spi_write.exit257
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %cmp94 = icmp slt i32 %call.i.i256, 0
  br i1 %cmp94, label %do.end93.do.end164_crit_edge, label %if.end97

do.end93.do.end164_crit_edge:                     ; preds = %do.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164

if.end97:                                         ; preds = %do.end93
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %add99 = add i32 %60, 3
  br label %do.body100

do.body100:                                       ; preds = %do.body100.backedge, %if.end97
  %retries.0 = phi i32 [ 0, %if.end97 ], [ %inc, %do.body100.backedge ]
  %61 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %63 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 5, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i) #7
  %64 = ptrtoint ptr %result.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 -1, ptr %result.i, align 1, !annotation !130
  %call.i = call i32 @spi_write_then_read(ptr noundef %62, ptr noundef nonnull %cmd.addr.i, i32 noundef 1, ptr noundef nonnull %result.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i258 = icmp slt i32 %call.i, 0
  br i1 %cmp.i258, label %spi_w8r8.exit.thread, label %spi_w8r8.exit

spi_w8r8.exit.thread:                             ; preds = %do.body100
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %do.body108

spi_w8r8.exit:                                    ; preds = %do.body100
  %65 = ptrtoint ptr %result.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %result.i, align 1
  %conv.i = zext i8 %66 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  %and105 = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end152, label %spi_w8r8.exit.do.body108_crit_edge

spi_w8r8.exit.do.body108_crit_edge:               ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body108

do.body108:                                       ; preds = %spi_w8r8.exit.do.body108_crit_edge, %spi_w8r8.exit.thread
  %cond.i270 = phi i32 [ %call.i, %spi_w8r8.exit.thread ], [ %conv.i, %spi_w8r8.exit.do.body108_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at25_ee_write.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@at25_ee_write, %if.then120)) #7
          to label %do.end125 [label %if.then120], !srcloc !131

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at25_ee_write.__UNIQUE_ID_ddebug234, ptr noundef %68, ptr noundef nonnull @.str.5, i32 noundef %cond.i270, i32 noundef %cond.i270) #7
  br label %do.end125

do.end125:                                        ; preds = %if.then120, %do.body108
  call void @msleep(i32 noundef 1) #7
  %inc = add i32 %retries.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retries.0)
  %cmp132 = icmp ult i32 %retries.0, 3
  br i1 %cmp132, label %do.end125.do.body100.backedge_crit_edge, label %lor.rhs

do.end125.do.body100.backedge_crit_edge:          ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100.backedge

lor.rhs:                                          ; preds = %do.end125
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub134 = sub i32 %add99, %69
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub134)
  %cmp135 = icmp sgt i32 %sub134, -1
  br i1 %cmp135, label %lor.rhs.do.body100.backedge_crit_edge, label %do.end146

lor.rhs.do.body100.backedge_crit_edge:            ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body100.backedge

do.body100.backedge:                              ; preds = %lor.rhs.do.body100.backedge_crit_edge, %do.end125.do.body100.backedge_crit_edge
  br label %do.body100

do.end146:                                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %70 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %sub149.neg = sub i32 22, %60
  %sub150 = add i32 %sub149.neg, %72
  %call151 = call i32 @jiffies_to_msecs(i32 noundef %sub150) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.49, i32 noundef %40, i32 noundef %off.addr.0, i32 noundef %call151) #10
  br label %do.end164

if.end152:                                        ; preds = %spi_w8r8.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add153 = add i32 %40, %off.addr.0
  %add.ptr = getelementptr i8, ptr %buf.0, i32 %40
  %sub154 = sub i32 %count.addr.1, %40
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %do.body32
  %status.0 = phi i32 [ %call.i.i256, %if.end152 ], [ %call.i.i, %do.body32 ]
  %buf.1 = phi ptr [ %add.ptr, %if.end152 ], [ %buf.0, %do.body32 ]
  %count.addr.2 = phi i32 [ %sub154, %if.end152 ], [ %count.addr.1, %do.body32 ]
  %off.addr.1 = phi i32 [ %add153, %if.end152 ], [ %off.addr.0, %do.body32 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.2)
  %cmp162.not = icmp eq i32 %count.addr.2, 0
  %or.cond239 = select i1 %cmp30, i1 true, i1 %cmp162.not
  br i1 %or.cond239, label %cleanup.do.end164_crit_edge, label %cleanup.do.body_crit_edge

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

cleanup.do.end164_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end164

do.end164:                                        ; preds = %cleanup.do.end164_crit_edge, %do.end146, %do.end93.do.end164_crit_edge, %if.then41
  %status.0283 = phi i32 [ %call.i.i, %if.then41 ], [ -110, %do.end146 ], [ %call.i.i256, %do.end93.do.end164_crit_edge ], [ %status.0, %cleanup.do.end164_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup166

cleanup166:                                       ; preds = %do.end164, %if.end19.cleanup166_crit_edge, %if.end.cleanup166_crit_edge, %entry.cleanup166_crit_edge
  %retval.0 = phi i32 [ %status.0283, %do.end164 ], [ -27, %entry.cleanup166_crit_edge ], [ -22, %if.end.cleanup166_crit_edge ], [ -12, %if.end19.cleanup166_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fm25_aux_read(ptr noundef %at25, ptr noundef %buf, i8 noundef zeroext %command, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %command.addr = alloca i8, align 1
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %command.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %command, ptr %command.addr, align 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #7
  %1 = getelementptr inbounds i8, ptr %m, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 40)
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %5 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %6 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %7 = getelementptr inbounds i8, ptr %t, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 188)
  %9 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %command.addr, ptr %t, align 4
  %len2 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %len2, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %rx_buf, align 4
  %len6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %len, ptr %len6, align 4
  %transfer_list.i1 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1, ptr noundef %18, ptr noundef nonnull %m) #7
  br i1 %call.i.i.i3, label %if.end.i.i.i5, label %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %spi_message_add_tail.exit6

if.end.i.i.i5:                                    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i1, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %m, ptr %transfer_list.i1, align 4
  %prev3.i.i.i4 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i4, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i1, ptr %18, align 4
  br label %spi_message_add_tail.exit6

spi_message_add_tail.exit6:                       ; preds = %if.end.i.i.i5, %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge
  %lock = getelementptr inbounds %struct.at25_data, ptr %at25, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %spi = getelementptr inbounds %struct.at25_data, ptr %at25, i32 0, i32 1
  %23 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %24, ptr noundef nonnull %m) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fm25_aux_read.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fm25_aux_read, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !131

if.then:                                          ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %spi, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fm25_aux_read.__UNIQUE_ID_ddebug231, ptr noundef %26, ptr noundef nonnull @.str.25, i32 noundef %len, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %spi_message_add_tail.exit6
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sernum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sernum = getelementptr inbounds %struct.at25_data, ptr %1, i32 0, i32 6
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef 8, ptr noundef %sernum) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !32, !33, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !47, !49, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !77, !78, !80, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !107, !108, !109, !111, !113, !114, !116, !118, !119}
!llvm.module.flags = !{!121, !122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !{ptr @__initcall__kmod_at25__237_517_at25_driver_init6, !1, !"__initcall__kmod_at25__237_517_at25_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/at25.c", i32 517, i32 1}
!2 = !{ptr @__exitcall_at25_driver_exit, !1, !"__exitcall_at25_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description238, !4, !"__UNIQUE_ID_description238", i1 false, i1 false}
!4 = !{!"../drivers/misc/eeprom/at25.c", i32 519, i32 1}
!5 = !{ptr @__UNIQUE_ID_author239, !6, !"__UNIQUE_ID_author239", i1 false, i1 false}
!6 = !{!"../drivers/misc/eeprom/at25.c", i32 520, i32 1}
!7 = !{ptr @__UNIQUE_ID_file240, !8, !"__UNIQUE_ID_file240", i1 false, i1 false}
!8 = !{!"../drivers/misc/eeprom/at25.c", i32 521, i32 1}
!9 = !{ptr @__UNIQUE_ID_license241, !8, !"__UNIQUE_ID_license241", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias242, !11, !"__UNIQUE_ID_alias242", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/at25.c", i32 522, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/misc/eeprom/at25.c", i32 509, i32 12}
!14 = !{ptr @at25_driver, !15, !"at25_driver", i1 false, i1 false}
!15 = !{!"../drivers/misc/eeprom/at25.c", i32 507, i32 26}
!16 = !{ptr @at25_spi_ids, !17, !"at25_spi_ids", i1 false, i1 false}
!17 = !{!"../drivers/misc/eeprom/at25.c", i32 411, i32 35}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/misc/eeprom/at25.c", i32 426, i32 48}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/misc/eeprom/at25.c", i32 426, i32 62}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/eeprom/at25.c", i32 439, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @at25_probe.__UNIQUE_ID_ddebug235, !23, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!27 = !{ptr @at25_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/misc/eeprom/at25.c", i32 447, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/misc/eeprom/at25.c", i32 472, i32 3}
!32 = !{ptr @at25_probe.__UNIQUE_ID_ddebug236, !31, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/eeprom/at25.c", i32 495, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @at25_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @at25_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/eeprom/at25.c", i32 373, i32 22}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/eeprom/at25.c", i32 378, i32 3}
!49 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @at25_fram_to_chip._entry, !48, !"_entry", i1 false, i1 false}
!52 = !{ptr @at25_fram_to_chip._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/eeprom/at25.c", i32 383, i32 3}
!55 = !{ptr @at25_fram_to_chip._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @at25_fram_to_chip._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/misc/eeprom/at25.c", i32 166, i32 2}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @fm25_aux_read.__UNIQUE_ID_ddebug231, !58, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/misc/eeprom/at25.c", i32 314, i32 38}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/eeprom/at25.c", i32 316, i32 39}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/misc/eeprom/at25.c", i32 318, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @at25_fw_to_chip._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @at25_fw_to_chip._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/misc/eeprom/at25.c", i32 323, i32 38}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/eeprom/at25.c", i32 325, i32 39}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/misc/eeprom/at25.c", i32 327, i32 3}
!76 = !{ptr @at25_fw_to_chip._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @at25_fw_to_chip._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/misc/eeprom/at25.c", i32 332, i32 38}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/misc/eeprom/at25.c", i32 334, i32 39}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/misc/eeprom/at25.c", i32 336, i32 4}
!84 = !{ptr @at25_fw_to_chip._entry.37, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @at25_fw_to_chip._entry_ptr.39, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/misc/eeprom/at25.c", i32 355, i32 4}
!88 = !{ptr @at25_fw_to_chip._entry.40, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @at25_fw_to_chip._entry_ptr.42, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/misc/eeprom/at25.c", i32 360, i32 36}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/eeprom/at25.c", i32 137, i32 2}
!94 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @at25_ee_read.__UNIQUE_ID_ddebug230, !93, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/eeprom/at25.c", i32 226, i32 4}
!98 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @at25_ee_write.__UNIQUE_ID_ddebug232, !97, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/eeprom/at25.c", i32 256, i32 3}
!102 = !{ptr @at25_ee_write.__UNIQUE_ID_ddebug233, !101, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!103 = !{ptr @at25_ee_write.__UNIQUE_ID_ddebug234, !104, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!104 = !{!"../drivers/misc/eeprom/at25.c", i32 273, i32 5}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/eeprom/at25.c", i32 284, i32 4}
!107 = !{ptr @at25_ee_write._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @at25_ee_write._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @at25_of_match, !110, !"at25_of_match", i1 false, i1 false}
!110 = !{!"../drivers/misc/eeprom/at25.c", i32 404, i32 34}
!111 = !{ptr @sernum_groups, !112, !"sernum_groups", i1 false, i1 false}
!112 = !{!"../drivers/misc/eeprom/at25.c", i32 185, i32 1}
!113 = !{ptr @sernum_group, !112, !"sernum_group", i1 false, i1 false}
!114 = !{ptr @sernum_attrs, !115, !"sernum_attrs", i1 false, i1 false}
!115 = !{!"../drivers/misc/eeprom/at25.c", i32 181, i32 26}
!116 = !{ptr @.str.50, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/misc/eeprom/at25.c", i32 179, i32 8}
!118 = !{ptr @dev_attr_sernum, !117, !"dev_attr_sernum", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/misc/eeprom/at25.c", i32 177, i32 25}
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
!131 = !{i64 2148767684, i64 2148767689, i64 2148767702, i64 2148767746, i64 2148767780, i64 2148767801}
!132 = !{!"branch_weights", i32 2000, i32 1}
!133 = !{!"branch_weights", i32 1, i32 2000}
