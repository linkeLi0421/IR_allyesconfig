; ModuleID = '/llk/IR_all_yes/drivers/misc/gehc-achc.c_pt.bc'
source_filename = "../drivers/misc/gehc-achc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.achc_data = type { ptr, ptr, ptr, %struct.mutex }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_gehc_achc__244_562_gehc_achc_spi_driver_init6 = internal global ptr @gehc_achc_spi_driver_init, section ".initcall6.init", align 4
@gehc_achc_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @gehc_achc_id, ptr @gehc_achc_probe, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gehc_achc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gehc_achc_groups, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_gehc_achc_spi_driver_exit = internal global ptr @gehc_achc_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [39 x i8] c"gehc_achc.description=GEHC ACHC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [69 x i8] c"gehc_achc.author=Sebastian Reichel <sebastian.reichel@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [38 x i8] c"gehc_achc.file=drivers/misc/gehc-achc\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [22 x i8] c"gehc_achc.license=GPL\00", section ".modinfo", align 1
@gehc_achc_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ge,achc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"achc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gehc-achc\00", [22 x i8] zeroinitializer }, align 32
@gehc_achc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ge,achc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gehc_achc_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gehc_achc_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gehc_achc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&achc->device_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing second reg entry!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@gehc_achc_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gehc_achc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gehc_achc_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_update_firmware, ptr @dev_attr_reset, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_update_firmware = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @update_firmware_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @reset_show, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_firmware\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"achc.bin\00", [23 x i8] zeroinitializer }, align 32
@ezport_flash._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 427, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to flash firmware: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ezport_flash\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/misc/gehc-achc.c\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ezport_flash._entry_ptr = internal global ptr @ezport_flash._entry, section ".printk_index", align 4
@ezport_flash.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.9, ptr @.str.10, ptr @.str.14, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gehc_achc\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Finished FW flashing!\0A\00", [41 x i8] zeroinitializer }, align 32
@ezport_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.10, i32 393, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not get firmware: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ezport_firmware_load\00", [43 x i8] zeroinitializer }, align 32
@ezport_firmware_load._entry_ptr = internal global ptr @ezport_firmware_load._entry, section ".printk_index", align 4
@ezport_firmware_flash_data.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.10, ptr @.str.18, i8 0, i8 83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ezport_firmware_flash_data\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"EzPort flash data with %zu bytes...\0A\00", [59 x i8] zeroinitializer }, align 32
@ezport_firmware_flash_data.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.17, ptr @.str.10, ptr @.str.19, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EzPort verify flashed data...\0A\00", [33 x i8] zeroinitializer }, align 32
@ezport_firmware_flash_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.10, i32 377, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to verify flashed data: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@ezport_firmware_flash_data._entry_ptr = internal global ptr @ezport_firmware_flash_data._entry, section ".printk_index", align 4
@ezport_firmware_flash_data._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.10, i32 381, ptr @.str.23, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EzPort reset failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ezport_firmware_flash_data._entry_ptr.24 = internal global ptr @ezport_firmware_flash_data._entry.21, section ".printk_index", align 4
@ezport_get_status_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 108, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Invalid EzPort status, EzPort is not functional!\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ezport_get_status_register\00", [37 x i8] zeroinitializer }, align 32
@ezport_get_status_register._entry_ptr = internal global ptr @ezport_get_status_register._entry, section ".printk_index", align 4
@ezport_bulk_erase.cmd = internal constant { i8, [31 x i8] } { i8 -57, [31 x i8] zeroinitializer }, align 32
@ezport_bulk_erase.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ezport_bulk_erase\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EzPort bulk erase...\0A\00", [42 x i8] zeroinitializer }, align 32
@ezport_write_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.10, i32 166, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"EzPort write enable timed out\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ezport_write_enable\00", [44 x i8] zeroinitializer }, align 32
@ezport_write_enable._entry_ptr = internal global ptr @ezport_write_enable._entry, section ".printk_index", align 4
@ezport_section_erase.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.31, ptr @.str.10, ptr @.str.32, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ezport_section_erase\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Ezport section erase @ 0x%06x...\0A\00", [62 x i8] zeroinitializer }, align 32
@ezport_flash_transfer.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.33, ptr @.str.10, ptr @.str.34, i8 0, i8 55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ezport_flash_transfer\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EzPort write %zu bytes @ 0x%06x...\0A\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ezport_firmware_compare_data.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.35, ptr @.str.10, ptr @.str.36, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ezport_firmware_compare_data\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"EzPort compare data with %zu bytes...\0A\00", [57 x i8] zeroinitializer }, align 32
@ezport_firmware_compare_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.10, i32 307, ptr @.str.38, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Device is in secure mode (status=0x%02x)!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ezport_firmware_compare_data._entry_ptr = internal global ptr @ezport_firmware_compare_data._entry, section ".printk_index", align 4
@ezport_firmware_compare_data._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.10, i32 308, ptr @.str.38, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"FW verification is not possible\0A\00", [63 x i8] zeroinitializer }, align 32
@ezport_firmware_compare_data._entry_ptr.41 = internal global ptr @ezport_firmware_compare_data._entry.39, section ".printk_index", align 4
@ezport_flash_compare.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.10, ptr @.str.43, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ezport_flash_compare\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Verification failure @ %06x\00", [36 x i8] zeroinitializer }, align 32
@ezport_flash_compare.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.10, ptr @.str.44, i8 0, i8 71, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fw:  \00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@ezport_flash_compare.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.42, ptr @.str.10, ptr @.str.46, i8 0, i8 71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev: \00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"gehc_achc_spi_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 553, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"gehc_achc_id\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 540, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 555, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"gehc_achc_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 547, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"gehc_achc_groups\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 519, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 521, i32 53 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 523, i32 40 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 533, i32 42 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 535, i32 57 }
@___asan_gen_.81 = private unnamed_addr constant [16 x i8] c"gehc_achc_group\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 495, i32 1 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"gehc_achc_attrs\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 490, i32 26 }
@___asan_gen_.87 = private unnamed_addr constant [25 x i8] c"dev_attr_update_firmware\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 488, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 454, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 446, i32 48 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 427, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 429, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 393, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 332, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 369, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 377, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 381, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 108, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [4 x i8] c"cmd\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 175, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 177, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 166, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 199, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 222, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 300, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 307, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 308, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 283, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 284, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 285, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private constant [28 x i8] c"../drivers/misc/gehc-achc.c\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.232, i32 468, i32 25 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_gehc_achc_spi_driver_exit, ptr @__initcall__kmod_gehc_achc__244_562_gehc_achc_spi_driver_init6, ptr @ezport_firmware_compare_data._entry, ptr @ezport_firmware_compare_data._entry.39, ptr @ezport_firmware_compare_data._entry_ptr, ptr @ezport_firmware_compare_data._entry_ptr.41, ptr @ezport_firmware_flash_data._entry, ptr @ezport_firmware_flash_data._entry.21, ptr @ezport_firmware_flash_data._entry_ptr, ptr @ezport_firmware_flash_data._entry_ptr.24, ptr @ezport_firmware_load._entry, ptr @ezport_firmware_load._entry_ptr, ptr @ezport_flash._entry, ptr @ezport_flash._entry_ptr, ptr @ezport_get_status_register._entry, ptr @ezport_get_status_register._entry_ptr, ptr @ezport_write_enable._entry, ptr @ezport_write_enable._entry_ptr, ptr @gehc_achc_spi_driver_exit, ptr @gehc_achc_spi_driver, ptr @gehc_achc_id, ptr @.str, ptr @gehc_achc_of_match, ptr @gehc_achc_groups, ptr @gehc_achc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gehc_achc_group, ptr @gehc_achc_attrs, ptr @dev_attr_update_firmware, ptr @dev_attr_reset, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @ezport_bulk_erase.cmd, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gehc_achc_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_firmware to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_flash._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_firmware_flash_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_firmware_flash_data._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_get_status_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_bulk_erase.cmd to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_write_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_firmware_compare_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ezport_firmware_compare_data._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gehc_achc_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @gehc_achc_spi_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gehc_achc_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @gehc_achc_spi_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gehc_achc_probe(ptr noundef %spi) #2 align 64 {
entry:
  %ezport_reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ezport_reg) #9
  %0 = ptrtoint ptr %ezport_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ezport_reg, align 4, !annotation !133
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %1 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 300000, ptr %max_speed_hz, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bits_per_word, align 1
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %mode, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 104, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %call.i, align 4
  %device_lock = getelementptr inbounds %struct.achc_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %device_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gehc_achc_probe.__key) #9
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @of_property_read_u32_index(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef 1, ptr noundef nonnull %ezport_reg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %call2, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %ezport_reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ezport_reg, align 4
  %conv = trunc i32 %9 to i8
  %call8 = call ptr @spi_new_ancillary_device(ptr noundef %spi, i8 noundef zeroext %conv) #9
  %ezport = getelementptr inbounds %struct.achc_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %ezport to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %ezport, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call.i57 = call i32 @devm_add_action(ptr noundef %spi, ptr noundef nonnull @unregister_ezport, ptr noundef %call8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i, label %if.end20, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @spi_unregister_device(ptr noundef %call8) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %call22 = call ptr @devm_gpiod_get(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef 3) #9
  %reset = getelementptr inbounds %struct.achc_data, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %reset, align 4
  %cmp.i58 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call22 to i32
  %call29 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %spi, i32 noundef %13, ptr noundef nonnull @.str.5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end20.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then11, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then4 ], [ %11, %if.then11 ], [ %call29, %if.then25 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i57, %devm_add_action_or_reset.exit ], [ 0, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ezport_reg) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_new_ancillary_device(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @unregister_ezport(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @spi_unregister_device(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_firmware_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !133
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2.not = icmp eq i32 %4, 1
  br i1 %cmp2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %device_lock = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %device_lock, i32 noundef 0) #9
  %ezport = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ezport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ezport, align 4
  %reset = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reset, align 4
  %call3 = call fastcc i32 @ezport_flash(ptr noundef %6, ptr noundef %8)
  call void @mutex_unlock(ptr noundef %device_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp5 = icmp slt i32 %call3, 0
  %call3.count = select i1 %cmp5, i32 %call3, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call3.count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_flash(ptr noundef %spi, ptr noundef %reset) unnamed_addr #2 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %assert_cs.i = alloca %struct.spi_transfer, align 4
  %release_cs.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %assert_cs.i) #9
  %0 = call ptr @memset(ptr %assert_cs.i, i32 0, i32 96)
  %1 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %assert_cs.i, i32 0, i32 7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 64, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %release_cs.i) #9
  %3 = call ptr @memset(ptr %release_cs.i, i32 0, i32 96)
  %master.i = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 2
  %4 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %master.i, align 4
  %call.i = tail call i32 @spi_bus_lock(ptr noundef %5) #9
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 0, i32 40)
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %10 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %11 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %assert_cs.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %assert_cs.i, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %call1.i = call i32 @spi_sync_locked(ptr noundef %spi, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %ezport_start_programming.exit.thread

ezport_start_programming.exit.thread:             ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master.i, align 4
  %call4.i10 = call i32 @spi_bus_unlock(ptr noundef %17) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %release_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %assert_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %spi_message_add_tail.exit.i
  call void @msleep(i32 noundef 200) #9
  call void @gpiod_set_value(ptr noundef %reset, i32 noundef 1) #9
  call void @msleep(i32 noundef 100) #9
  call void @gpiod_set_value(ptr noundef %reset, i32 noundef 0) #9
  call void @msleep(i32 noundef 200) #9
  %18 = call ptr @memset(ptr %6, i32 0, i32 40)
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %22 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %transfer_list.i12.i = getelementptr inbounds %struct.spi_transfer, ptr %release_cs.i, i32 0, i32 18
  %call.i.i.i14.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i12.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i14.i, label %if.end.i.i.i16.i, label %if.end.i.ezport_start_programming.exit_crit_edge

if.end.i.ezport_start_programming.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ezport_start_programming.exit

if.end.i.i.i16.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i12.i, ptr %prev.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %transfer_list.i12.i, align 4
  %prev3.i.i.i15.i = getelementptr inbounds %struct.spi_transfer, ptr %release_cs.i, i32 0, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %prev3.i.i.i15.i, align 4
  %26 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i12.i, ptr %msg.i, align 4
  br label %ezport_start_programming.exit

ezport_start_programming.exit:                    ; preds = %if.end.i.i.i16.i, %if.end.i.ezport_start_programming.exit_crit_edge
  %call2.i = call i32 @spi_sync_locked(ptr noundef %spi, ptr noundef nonnull %msg.i) #9
  %27 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master.i, align 4
  %call4.i = call i32 @spi_bus_unlock(ptr noundef %28) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %release_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %assert_cs.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not = icmp eq i32 %call2.i, 0
  br i1 %tobool.not, label %if.end, label %ezport_start_programming.exit.cleanup_crit_edge

ezport_start_programming.exit.cleanup_crit_edge:  ; preds = %ezport_start_programming.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %ezport_start_programming.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #9
  %29 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !133
  %call.i1 = call i32 @request_firmware(ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.7, ptr noundef %spi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i2 = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i2, label %if.end.i4, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15, i32 noundef %call.i1) #12
  br label %ezport_firmware_load.exit

if.end.i4:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %31, align 4
  %call2.i3 = call fastcc i32 @ezport_firmware_flash_data(ptr noundef %spi, ptr noundef %33, i32 noundef %35) #9
  %36 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %37) #9
  br label %ezport_firmware_load.exit

ezport_firmware_load.exit:                        ; preds = %if.end.i4, %do.end.i
  %retval.0.i5 = phi i32 [ %call.i1, %do.end.i ], [ %call2.i3, %if.end.i4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #9
  %38 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %master.i, align 4
  %call.i7 = call i32 @spi_bus_lock(ptr noundef %39) #9
  call void @gpiod_set_value(ptr noundef %reset, i32 noundef 1) #9
  call void @msleep(i32 noundef 100) #9
  call void @gpiod_set_value(ptr noundef %reset, i32 noundef 0) #9
  call void @msleep(i32 noundef 200) #9
  %40 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %master.i, align 4
  %call2.i8 = call i32 @spi_bus_unlock(ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i5)
  %tobool2.not = icmp eq i32 %retval.0.i5, 0
  br i1 %tobool2.not, label %do.body4, label %do.end

do.end:                                           ; preds = %ezport_firmware_load.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %retval.0.i5) #12
  br label %cleanup

do.body4:                                         ; preds = %ezport_firmware_load.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_flash.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_flash, %if.then9)) #9
          to label %cleanup [label %if.then9], !srcloc !134

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_flash.__UNIQUE_ID_ddebug243, ptr noundef %spi, ptr noundef nonnull @.str.14) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %do.body4, %do.end, %ezport_start_programming.exit.cleanup_crit_edge, %ezport_start_programming.exit.thread
  %retval.0 = phi i32 [ %call2.i, %ezport_start_programming.exit.cleanup_crit_edge ], [ 0, %if.then9 ], [ %retval.0.i5, %do.end ], [ %call1.i, %ezport_start_programming.exit.thread ], [ 0, %do.body4 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync_locked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_bus_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_firmware_flash_data(ptr noundef %spi, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %cmd.i = alloca i8, align 1
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_firmware_flash_data.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_firmware_flash_data, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_firmware_flash_data.__UNIQUE_ID_ddebug239, ptr noundef %spi, ptr noundef nonnull @.str.18, i32 noundef %size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #9
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !133
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %spi_w8r8.exit.thread.i, label %spi_w8r8.exit.i

spi_w8r8.exit.thread.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  br label %cleanup

spi_w8r8.exit.i:                                  ; preds = %do.end
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp1.i = icmp eq i8 %3, -1
  br i1 %cmp1.i, label %do.end.i, label %if.end5

do.end.i:                                         ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end5:                                          ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool6.not = icmp sgt i8 %3, -1
  br i1 %tobool6.not, label %if.end5.if.end16_crit_edge, label %if.then7

if.end5.if.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then7:                                         ; preds = %if.end5
  %call8 = call fastcc i32 @ezport_bulk_erase(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then7.cleanup_crit_edge, label %if.end11

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %and12 = and i32 %call8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end16_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end16:                                         ; preds = %if.end11.if.end16_crit_edge, %if.end5.if.end16_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp17.not138 = icmp eq i32 %size, 0
  br i1 %cmp17.not138, label %if.end16.do.body48_crit_edge, label %if.end16.while.body_crit_edge

if.end16.while.body_crit_edge:                    ; preds = %if.end16
  br label %while.body

if.end16.do.body48_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

while.cond:                                       ; preds = %if.else41
  %add = add i32 %6, %address.0139
  %sub = sub i32 %size, %add
  %cmp17.not = icmp eq i32 %add, %size
  br i1 %cmp17.not, label %while.cond.do.body48_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.do.body48_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end16.while.body_crit_edge
  %sub141 = phi i32 [ %sub, %while.cond.while.body_crit_edge ], [ %size, %if.end16.while.body_crit_edge ]
  %address.0139 = phi i32 [ %add, %while.cond.while.body_crit_edge ], [ 0, %if.end16.while.body_crit_edge ]
  %and18 = and i32 %address.0139, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.then20, label %while.body.if.end31_crit_edge

while.body.if.end31_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then20:                                        ; preds = %while.body
  %call21 = call fastcc i32 @ezport_section_erase(ptr noundef %spi, i32 noundef %address.0139)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then20.cleanup_crit_edge, label %if.end24

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.then20
  %4 = and i32 %call21, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end24.if.end31_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %if.end24.if.end31_crit_edge, %while.body.if.end31_crit_edge
  %6 = call i32 @llvm.umin.i32(i32 %sub141, i32 2048)
  %add.ptr = getelementptr i8, ptr %data, i32 %address.0139
  %call35 = call fastcc i32 @ezport_flash_transfer(ptr noundef %spi, i32 noundef %address.0139, ptr noundef %add.ptr, i32 noundef %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end31.cleanup_crit_edge, label %if.else

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end31
  %and38 = and i32 %call35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else41, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else41:                                        ; preds = %if.else
  %and42 = and i32 %call35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %while.cond, label %if.else41.cleanup_crit_edge

if.else41.cleanup_crit_edge:                      ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body48:                                        ; preds = %while.cond.do.body48_crit_edge, %if.end16.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_firmware_flash_data.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_firmware_flash_data, %if.then60)) #9
          to label %do.end64 [label %if.then60], !srcloc !134

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_firmware_flash_data.__UNIQUE_ID_ddebug242, ptr noundef %spi, ptr noundef nonnull @.str.19) #9
  br label %do.end64

do.end64:                                         ; preds = %if.then60, %do.body48
  %call65 = call fastcc i32 @ezport_firmware_compare_data(ptr noundef %spi, ptr noundef %data, i32 noundef %size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %call65)
  %cmp66 = icmp eq i32 %call65, -13
  %spec.store.select = select i1 %cmp66, i32 0, i32 %call65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp69 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp69, label %do.end73, label %do.end64.if.end75_crit_edge

do.end64.if.end75_crit_edge:                      ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end73:                                         ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.20, i32 noundef %spec.store.select) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end73, %do.end64.if.end75_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.i) #9
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -71, ptr %cmd.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #9
  %8 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 92)
  %10 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %cmd.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end75.spi_write.exit.i_crit_edge

if.end75.spi_write.exit.i_crit_edge:              ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %if.end75.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %do.end81, label %ezport_soft_reset.exit

ezport_soft_reset.exit:                           ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @msleep(i32 noundef 200) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #9
  br label %cleanup

do.end81:                                         ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.i) #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.22) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %ezport_soft_reset.exit, %if.else41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then7.cleanup_crit_edge, %do.end.i, %spi_w8r8.exit.thread.i
  %retval.0 = phi i32 [ %call8, %if.then7.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ %call.i.i.i, %do.end81 ], [ 0, %ezport_soft_reset.exit ], [ %call.i.i, %spi_w8r8.exit.thread.i ], [ -22, %do.end.i ], [ -5, %if.else41.cleanup_crit_edge ], [ -110, %if.else.cleanup_crit_edge ], [ %call35, %if.end31.cleanup_crit_edge ], [ -5, %if.end24.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_bulk_erase(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_bulk_erase.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_bulk_erase, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_bulk_erase.__UNIQUE_ID_ddebug230, ptr noundef %spi, ptr noundef nonnull @.str.28) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @ezport_write_enable(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #9
  %0 = getelementptr inbounds i8, ptr %t.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ezport_bulk_erase.cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end5.spi_write.exit_crit_edge

if.end5.spi_write.exit_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %11 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end5.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp7 = icmp slt i32 %call.i.i, 0
  br i1 %cmp7, label %spi_write.exit.cleanup_crit_edge, label %spi_write.exit.for.body.i_crit_edge

spi_write.exit.for.body.i_crit_edge:              ; preds = %spi_write.exit
  br label %for.body.i

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %spi_write.exit.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %spi_write.exit.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %14 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %15 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %spi_w8r8.exit.thread.i.i, label %spi_w8r8.exit.i.i

spi_w8r8.exit.thread.i.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %if.end.i

spi_w8r8.exit.i.i:                                ; preds = %for.body.i
  %16 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp1.i.i = icmp eq i8 %17, -1
  br i1 %cmp1.i.i, label %do.end.i.i, label %ezport_get_status_register.exit.i

do.end.i.i:                                       ; preds = %spi_w8r8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %if.end.i

ezport_get_status_register.exit.i:                ; preds = %spi_w8r8.exit.i.i
  %conv.i.i.i = zext i8 %17 to i32
  %and.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ezport_wait_write.exit.split.loop.exit25, label %ezport_get_status_register.exit.i.if.end.i_crit_edge

ezport_get_status_register.exit.i.if.end.i_crit_edge: ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %ezport_get_status_register.exit.i.if.end.i_crit_edge, %do.end.i.i, %spi_w8r8.exit.thread.i.i
  %retval.0.i10.i = phi i32 [ %conv.i.i.i, %ezport_get_status_register.exit.i.if.end.i_crit_edge ], [ %call.i.i.i, %spi_w8r8.exit.thread.i.i ], [ -22, %do.end.i.i ]
  call void @msleep(i32 noundef 10) #9
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.ezport_wait_write.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.ezport_wait_write.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ezport_wait_write.exit

ezport_wait_write.exit.split.loop.exit25:         ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.le = zext i8 %17 to i32
  br label %ezport_wait_write.exit

ezport_wait_write.exit:                           ; preds = %ezport_wait_write.exit.split.loop.exit25, %if.end.i.ezport_wait_write.exit_crit_edge
  %ret.1.i = phi i32 [ %conv.i.i.i.le, %ezport_wait_write.exit.split.loop.exit25 ], [ %retval.0.i10.i, %if.end.i.ezport_wait_write.exit_crit_edge ]
  %18 = call i32 @llvm.smin.i32(i32 %ret.1.i, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %ezport_wait_write.exit, %spi_write.exit.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ %18, %ezport_wait_write.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_section_erase(ptr noundef %spi, i32 noundef %address) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %query = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query) #9
  %0 = getelementptr inbounds [4 x i8], ptr %query, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %query, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %query, i32 0, i32 3
  %3 = ptrtoint ptr %query to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -40, ptr %query, align 1
  %shr = lshr i32 %address, 16
  %conv = trunc i32 %shr to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %0, align 1
  %shr2 = lshr i32 %address, 8
  %conv4 = trunc i32 %shr2 to i8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv4, ptr %1, align 1
  %conv7 = trunc i32 %address to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv7, ptr %2, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_section_erase.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_section_erase, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_section_erase.__UNIQUE_ID_ddebug231, ptr noundef %spi, ptr noundef nonnull @.str.32, i32 noundef %address) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and10 = and i32 %address, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %call14 = tail call fastcc i32 @ezport_write_enable(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #9
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %query, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end17.spi_write.exit_crit_edge

if.end17.spi_write.exit_crit_edge:                ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
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

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end17.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp19 = icmp slt i32 %call.i.i, 0
  br i1 %cmp19, label %spi_write.exit.cleanup_crit_edge, label %spi_write.exit.for.body.i_crit_edge

spi_write.exit.for.body.i_crit_edge:              ; preds = %spi_write.exit
  br label %for.body.i

spi_write.exit.cleanup_crit_edge:                 ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %spi_write.exit.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %spi_write.exit.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %21 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %22 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %spi_w8r8.exit.thread.i.i, label %spi_w8r8.exit.i.i

spi_w8r8.exit.thread.i.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %if.end.i

spi_w8r8.exit.i.i:                                ; preds = %for.body.i
  %23 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp1.i.i = icmp eq i8 %24, -1
  br i1 %cmp1.i.i, label %do.end.i.i, label %ezport_get_status_register.exit.i

do.end.i.i:                                       ; preds = %spi_w8r8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %if.end.i

ezport_get_status_register.exit.i:                ; preds = %spi_w8r8.exit.i.i
  %conv.i.i.i = zext i8 %24 to i32
  %and.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cleanup.loopexit.split.loop.exit, label %ezport_get_status_register.exit.i.if.end.i_crit_edge

ezport_get_status_register.exit.i.if.end.i_crit_edge: ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %ezport_get_status_register.exit.i.if.end.i_crit_edge, %do.end.i.i, %spi_w8r8.exit.thread.i.i
  %retval.0.i10.i = phi i32 [ %conv.i.i.i, %ezport_get_status_register.exit.i.if.end.i_crit_edge ], [ %call.i.i.i, %spi_w8r8.exit.thread.i.i ], [ -22, %do.end.i.i ]
  call void @msleep(i32 noundef 10) #9
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 200
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.le = zext i8 %24 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %if.end.i.cleanup_crit_edge, %spi_write.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %call.i.i, %spi_write.exit.cleanup_crit_edge ], [ %conv.i.i.i.le, %cleanup.loopexit.split.loop.exit ], [ %retval.0.i10.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_flash_transfer(ptr noundef %spi, i32 noundef %address, ptr noundef %payload, i32 noundef %payload_size) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #9
  %0 = getelementptr inbounds i8, ptr %xfers, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_flash_transfer.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_flash_transfer, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_flash_transfer.__UNIQUE_ID_ddebug232, ptr noundef %spi, ptr noundef nonnull @.str.34, i32 noundef %payload_size, i32 noundef %address) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @ezport_write_enable(ptr noundef %spi)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3265, i32 noundef 4) #13
  %tobool7.not = icmp eq ptr %call7.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %call7.i, align 8
  %shr = lshr i32 %address, 16
  %conv = trunc i32 %shr to i8
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 1
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %arrayidx10, align 1
  %shr11 = lshr i32 %address, 8
  %conv12 = trunc i32 %shr11 to i8
  %arrayidx13 = getelementptr i8, ptr %call7.i, i32 2
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv12, ptr %arrayidx13, align 2
  %conv15 = trunc i32 %address to i8
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 3
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %arrayidx16, align 1
  %7 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %len, align 4
  %arrayidx19 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %payload, ptr %arrayidx19, align 4
  %len22 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %payload_size, ptr %len22, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  %11 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end9.spi_message_add_tail.exit.i.i_crit_edge

if.end9.spi_message_add_tail.exit.i.i_crit_edge:  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end9.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %22, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1, ptr %22, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @kfree(ptr noundef nonnull %call7.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24 = icmp slt i32 %call.i, 0
  br i1 %cmp24, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %spi_message_add_tail.exit.i.i.1.for.body.i_crit_edge

spi_message_add_tail.exit.i.i.1.for.body.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  br label %for.body.i

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %spi_message_add_tail.exit.i.i.1.for.body.i_crit_edge
  %i.014.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %spi_message_add_tail.exit.i.i.1.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %27 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %28 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %spi_w8r8.exit.thread.i.i, label %spi_w8r8.exit.i.i

spi_w8r8.exit.thread.i.i:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %if.end.i

spi_w8r8.exit.i.i:                                ; preds = %for.body.i
  %29 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp1.i.i = icmp eq i8 %30, -1
  br i1 %cmp1.i.i, label %do.end.i.i, label %ezport_get_status_register.exit.i

do.end.i.i:                                       ; preds = %spi_w8r8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %if.end.i

ezport_get_status_register.exit.i:                ; preds = %spi_w8r8.exit.i.i
  %conv.i.i.i = zext i8 %30 to i32
  %and.i = and i32 %conv.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cleanup.loopexit.split.loop.exit, label %ezport_get_status_register.exit.i.if.end.i_crit_edge

ezport_get_status_register.exit.i.if.end.i_crit_edge: ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %ezport_get_status_register.exit.i.if.end.i_crit_edge, %do.end.i.i, %spi_w8r8.exit.thread.i.i
  %retval.0.i10.i = phi i32 [ %conv.i.i.i, %ezport_get_status_register.exit.i.if.end.i_crit_edge ], [ %call.i.i.i, %spi_w8r8.exit.thread.i.i ], [ -22, %do.end.i.i ]
  call void @msleep(i32 noundef 10) #9
  %inc.i = add nuw nsw i32 %i.014.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 40
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %ezport_get_status_register.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.le = zext i8 %30 to i32
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %if.end.i.cleanup_crit_edge, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ], [ %conv.i.i.i.le, %cleanup.loopexit.split.loop.exit ], [ %retval.0.i10.i, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_firmware_compare_data(ptr noundef %spi, ptr noundef %data, i32 noundef %size) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i = alloca i8, align 1
  %result.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_firmware_compare_data.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_firmware_compare_data, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_firmware_compare_data.__UNIQUE_ID_ddebug236, ptr noundef %spi, ptr noundef nonnull @.str.36, i32 noundef %size) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  %0 = ptrtoint ptr %cmd.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 5, ptr %cmd.addr.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i) #9
  %1 = ptrtoint ptr %result.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %result.i.i, align 1, !annotation !133
  %call.i.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %spi_w8r8.exit.thread.i, label %spi_w8r8.exit.i

spi_w8r8.exit.thread.i:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  br label %cleanup

spi_w8r8.exit.i:                                  ; preds = %do.end
  %2 = ptrtoint ptr %result.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %result.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp1.i = icmp eq i8 %3, -1
  br i1 %cmp1.i, label %do.end.i, label %if.end5

do.end.i:                                         ; preds = %spi_w8r8.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %cleanup

if.end5:                                          ; preds = %spi_w8r8.exit.i
  %and = and i32 %conv.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %while.cond.preheader, label %do.end10

while.cond.preheader:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp17.not49 = icmp eq i32 %size, 0
  br i1 %cmp17.not49, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.37, i32 noundef %conv.i.i) #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.40) #12
  br label %cleanup

while.cond:                                       ; preds = %while.body
  %add = add i32 %4, %address.050
  %cmp17.not = icmp eq i32 %add, %size
  br i1 %cmp17.not, label %while.cond.cleanup_crit_edge, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %address.050 = phi i32 [ %add, %while.cond.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %sub = sub i32 %size, %address.050
  %4 = call i32 @llvm.umin.i32(i32 %sub, i32 2048)
  %add.ptr = getelementptr i8, ptr %data, i32 %address.050
  %call21 = call fastcc i32 @ezport_flash_compare(ptr noundef %spi, i32 noundef %address.050, ptr noundef %add.ptr, i32 noundef %4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %while.cond, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %do.end10, %while.cond.preheader.cleanup_crit_edge, %do.end.i, %spi_w8r8.exit.thread.i
  %retval.0 = phi i32 [ -13, %do.end10 ], [ %call.i.i, %spi_w8r8.exit.thread.i ], [ -22, %do.end.i ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ %call21, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_write_enable(ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  %cmd.addr.i.i.i = alloca i8, align 1
  %result.i.i.i = alloca i8, align 1
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %cmd.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %1 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %2 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #9
  %3 = call ptr @memset(ptr %0, i32 0, i32 92)
  %4 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cmd.addr.i, ptr %t.i.i, align 4
  %5 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %6 = call ptr @memset(ptr %1, i32 0, i32 40)
  %7 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %8 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %9 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %10 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_write.exit.i_crit_edge

entry.spi_write.exit.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %13 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %14 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i

spi_write.exit.i:                                 ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_write.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %spi_write.exit.i.ezport_send_simple.exit.thread_crit_edge, label %if.end.i

spi_write.exit.i.ezport_send_simple.exit.thread_crit_edge: ; preds = %spi_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ezport_send_simple.exit.thread

if.end.i:                                         ; preds = %spi_write.exit.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %15 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %16 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i1.i = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i1.i, 0
  br i1 %cmp.i.i.i, label %spi_w8r8.exit.thread.i.i, label %spi_w8r8.exit.i.i

spi_w8r8.exit.thread.i.i:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %ezport_send_simple.exit.thread

spi_w8r8.exit.i.i:                                ; preds = %if.end.i
  %17 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp1.i.i = icmp eq i8 %18, -1
  br i1 %cmp1.i.i, label %do.end.i.i, label %ezport_send_simple.exit

do.end.i.i:                                       ; preds = %spi_w8r8.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %ezport_send_simple.exit.thread

ezport_send_simple.exit.thread:                   ; preds = %do.end.i.i, %spi_w8r8.exit.thread.i.i, %spi_write.exit.i.ezport_send_simple.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %for.inc

ezport_send_simple.exit:                          ; preds = %spi_w8r8.exit.i.i
  %conv.i.i.i = zext i8 %18 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp1 = icmp eq i8 %18, 0
  %and = and i32 %conv.i.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = or i1 %cmp1, %tobool.not
  br i1 %or.cond, label %ezport_send_simple.exit.for.inc_crit_edge, label %ezport_send_simple.exit.for.end_crit_edge

ezport_send_simple.exit.for.end_crit_edge:        ; preds = %ezport_send_simple.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ezport_send_simple.exit.for.inc_crit_edge:        ; preds = %ezport_send_simple.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %ezport_send_simple.exit.for.inc_crit_edge, %ezport_send_simple.exit.thread
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %19 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #9
  %20 = call ptr @memset(ptr %0, i32 0, i32 92)
  %21 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cmd.addr.i, ptr %t.i.i, align 4
  %22 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %23 = call ptr @memset(ptr %1, i32 0, i32 40)
  %24 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i.1, label %if.end.i.i.i.i.i.i.i.1, label %for.inc.spi_write.exit.i.1_crit_edge

for.inc.spi_write.exit.i.1_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit.i.1

if.end.i.i.i.i.i.i.i.1:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i.1

spi_write.exit.i.1:                               ; preds = %if.end.i.i.i.i.i.i.i.1, %for.inc.spi_write.exit.i.1_crit_edge
  %call.i.i.i.1 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.i.i.1, 0
  br i1 %cmp.i.1, label %spi_write.exit.i.1.ezport_send_simple.exit.thread.1_crit_edge, label %if.end.i.1

spi_write.exit.i.1.ezport_send_simple.exit.thread.1_crit_edge: ; preds = %spi_write.exit.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %ezport_send_simple.exit.thread.1

if.end.i.1:                                       ; preds = %spi_write.exit.i.1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %32 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %33 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i1.i.1 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i.1)
  %cmp.i.i.i.1 = icmp slt i32 %call.i.i1.i.1, 0
  br i1 %cmp.i.i.i.1, label %spi_w8r8.exit.thread.i.i.1, label %spi_w8r8.exit.i.i.1

spi_w8r8.exit.i.i.1:                              ; preds = %if.end.i.1
  %34 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp1.i.i.1 = icmp eq i8 %35, -1
  br i1 %cmp1.i.i.1, label %do.end.i.i.1, label %ezport_send_simple.exit.1

ezport_send_simple.exit.1:                        ; preds = %spi_w8r8.exit.i.i.1
  %conv.i.i.i.1 = zext i8 %35 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp1.1 = icmp eq i8 %35, 0
  %and.1 = and i32 %conv.i.i.i.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  %or.cond.1 = or i1 %cmp1.1, %tobool.not.1
  br i1 %or.cond.1, label %ezport_send_simple.exit.1.for.inc.1_crit_edge, label %ezport_send_simple.exit.1.for.end_crit_edge

ezport_send_simple.exit.1.for.end_crit_edge:      ; preds = %ezport_send_simple.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

ezport_send_simple.exit.1.for.inc.1_crit_edge:    ; preds = %ezport_send_simple.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

do.end.i.i.1:                                     ; preds = %spi_w8r8.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %ezport_send_simple.exit.thread.1

spi_w8r8.exit.thread.i.i.1:                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %ezport_send_simple.exit.thread.1

ezport_send_simple.exit.thread.1:                 ; preds = %spi_w8r8.exit.thread.i.i.1, %do.end.i.i.1, %spi_write.exit.i.1.ezport_send_simple.exit.thread.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %for.inc.1

for.inc.1:                                        ; preds = %ezport_send_simple.exit.thread.1, %ezport_send_simple.exit.1.for.inc.1_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i)
  %36 = ptrtoint ptr %cmd.addr.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 6, ptr %cmd.addr.i, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #9
  %37 = call ptr @memset(ptr %0, i32 0, i32 92)
  %38 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %cmd.addr.i, ptr %t.i.i, align 4
  %39 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  %40 = call ptr @memset(ptr %1, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %42 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %43 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %44 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i.i.2 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #9
  br i1 %call.i.i.i.i.i.i.i.2, label %if.end.i.i.i.i.i.i.i.2, label %for.inc.1.spi_write.exit.i.2_crit_edge

for.inc.1.spi_write.exit.i.2_crit_edge:           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_write.exit.i.2

if.end.i.i.i.i.i.i.i.2:                           ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_write.exit.i.2

spi_write.exit.i.2:                               ; preds = %if.end.i.i.i.i.i.i.i.2, %for.inc.1.spi_write.exit.i.2_crit_edge
  %call.i.i.i.2 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.i.i.2, 0
  br i1 %cmp.i.2, label %spi_write.exit.i.2.ezport_send_simple.exit.thread.2_crit_edge, label %if.end.i.2

spi_write.exit.i.2.ezport_send_simple.exit.thread.2_crit_edge: ; preds = %spi_write.exit.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %ezport_send_simple.exit.thread.2

if.end.i.2:                                       ; preds = %spi_write.exit.i.2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  %49 = ptrtoint ptr %cmd.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 5, ptr %cmd.addr.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %result.i.i.i) #9
  %50 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 -1, ptr %result.i.i.i, align 1, !annotation !133
  %call.i.i1.i.2 = call i32 @spi_write_then_read(ptr noundef %spi, ptr noundef nonnull %cmd.addr.i.i.i, i32 noundef 1, ptr noundef nonnull %result.i.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1.i.2)
  %cmp.i.i.i.2 = icmp slt i32 %call.i.i1.i.2, 0
  br i1 %cmp.i.i.i.2, label %spi_w8r8.exit.thread.i.i.2, label %spi_w8r8.exit.i.i.2

spi_w8r8.exit.i.i.2:                              ; preds = %if.end.i.2
  %51 = ptrtoint ptr %result.i.i.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %result.i.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %cmp1.i.i.2 = icmp eq i8 %52, -1
  br i1 %cmp1.i.i.2, label %do.end.i.i.2, label %ezport_send_simple.exit.2

ezport_send_simple.exit.2:                        ; preds = %spi_w8r8.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i.i.2 = zext i8 %52 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %for.end

do.end.i.i.2:                                     ; preds = %spi_w8r8.exit.i.i.2
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.25) #12
  br label %ezport_send_simple.exit.thread.2

spi_w8r8.exit.thread.i.i.2:                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %result.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i.i.i) #9
  br label %ezport_send_simple.exit.thread.2

ezport_send_simple.exit.thread.2:                 ; preds = %spi_w8r8.exit.thread.i.i.2, %do.end.i.i.2, %spi_write.exit.i.2.ezport_send_simple.exit.thread.2_crit_edge
  %retval.0.i.ph.2 = phi i32 [ %call.i.i1.i.2, %spi_w8r8.exit.thread.i.i.2 ], [ -22, %do.end.i.i.2 ], [ %call.i.i.i.2, %spi_write.exit.i.2.ezport_send_simple.exit.thread.2_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd.addr.i)
  br label %for.end

for.end:                                          ; preds = %ezport_send_simple.exit.thread.2, %ezport_send_simple.exit.2, %ezport_send_simple.exit.1.for.end_crit_edge, %ezport_send_simple.exit.for.end_crit_edge
  %ret.1 = phi i32 [ %retval.0.i.ph.2, %ezport_send_simple.exit.thread.2 ], [ %conv.i.i.i.2, %ezport_send_simple.exit.2 ], [ %conv.i.i.i.1, %ezport_send_simple.exit.1.for.end_crit_edge ], [ %conv.i.i.i, %ezport_send_simple.exit.for.end_crit_edge ]
  %and2 = and i32 %ret.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %do.end, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.29) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ezport_flash_compare(ptr noundef %spi, i32 noundef %address, ptr noundef %payload, i32 noundef %payload_size) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfers = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfers) #9
  %0 = getelementptr inbounds i8, ptr %xfers, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %add = add i32 %payload_size, 5
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3265) #14
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 11, ptr %call9.i, align 128
  %shr = lshr i32 %address, 16
  %conv = trunc i32 %shr to i8
  %arrayidx1 = getelementptr i8, ptr %call9.i, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %arrayidx1, align 1
  %shr2 = lshr i32 %address, 8
  %conv3 = trunc i32 %shr2 to i8
  %arrayidx4 = getelementptr i8, ptr %call9.i, i32 2
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %arrayidx4, align 2
  %conv6 = trunc i32 %address to i8
  %arrayidx7 = getelementptr i8, ptr %call9.i, i32 3
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv6, ptr %arrayidx7, align 1
  %6 = ptrtoint ptr %xfers to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %xfers, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %len, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 12
  %8 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1000000, ptr %speed_hz, align 4
  %add.ptr = getelementptr i8, ptr %call9.i, i32 4
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %rx_buf, align 4
  %add12 = add i32 %payload_size, 1
  %len14 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add12, ptr %len14, align 4
  %speed_hz16 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %xfers, i32 0, i32 1, i32 12
  %11 = ptrtoint ptr %speed_hz16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1000000, ptr %speed_hz16, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18
  %22 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %23, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfers, i32 1, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i.i.i.1, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.1, ptr %23, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool18.not = icmp eq i32 %call.i, 0
  br i1 %tobool18.not, label %if.end20, label %spi_message_add_tail.exit.i.i.1.err_crit_edge

spi_message_add_tail.exit.i.i.1.err_crit_edge:    ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end20:                                         ; preds = %spi_message_add_tail.exit.i.i.1
  %add.ptr22 = getelementptr i8, ptr %call9.i, i32 5
  %bcmp = call i32 @bcmp(ptr %payload, ptr %add.ptr22, i32 %payload_size) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool24.not = icmp eq i32 %bcmp, 0
  br i1 %tobool24.not, label %if.end20.err_crit_edge, label %if.then25

if.end20.err_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then25:                                        ; preds = %if.end20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_flash_compare.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_flash_compare, %if.then30)) #9
          to label %do.body32 [label %if.then30], !srcloc !134

if.then30:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ezport_flash_compare.__UNIQUE_ID_ddebug233, ptr noundef %spi, ptr noundef nonnull @.str.43, i32 noundef %address) #9
  br label %do.body32

do.body32:                                        ; preds = %if.then30, %if.then25
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_flash_compare.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_flash_compare, %if.then44)) #9
          to label %do.body48 [label %if.then44], !srcloc !134

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %payload, i32 noundef %payload_size, i1 noundef zeroext true) #9
  br label %do.body48

do.body48:                                        ; preds = %if.then44, %do.body32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ezport_flash_compare.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ezport_flash_compare, %if.then60)) #9
          to label %err [label %if.then60], !srcloc !134

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  call void @print_hex_dump(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %add.ptr, i32 noundef %payload_size, i1 noundef zeroext true) #9
  br label %err

err:                                              ; preds = %if.then60, %do.body48, %if.end20.err_crit_edge, %spi_message_add_tail.exit.i.i.1.err_crit_edge
  %ret.0 = phi i32 [ %call.i, %spi_message_add_tail.exit.i.i.1.err_crit_edge ], [ -74, %if.then60 ], [ 0, %if.end20.err_crit_edge ], [ -74, %do.body48 ]
  call void @kfree(ptr noundef nonnull %call9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfers) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %device_lock = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %device_lock, i32 noundef 0) #9
  %reset = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  %call1 = tail call i32 @gpiod_get_value(ptr noundef %3) #9
  tail call void @mutex_unlock(ptr noundef %device_lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.47, i32 noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !133
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %device_lock = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %device_lock, i32 noundef 0) #9
  %reset = getelementptr inbounds %struct.achc_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  call void @gpiod_set_value(ptr noundef %6, i32 noundef %8) #9
  call void @mutex_unlock(ptr noundef %device_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !41, !42, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_gehc_achc__244_562_gehc_achc_spi_driver_init6, !1, !"__initcall__kmod_gehc_achc__244_562_gehc_achc_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/gehc-achc.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_gehc_achc_spi_driver_exit, !1, !"__exitcall_gehc_achc_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../drivers/misc/gehc-achc.c", i32 564, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../drivers/misc/gehc-achc.c", i32 565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/misc/gehc-achc.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/gehc-achc.c", i32 555, i32 11}
!12 = !{ptr @gehc_achc_spi_driver, !13, !"gehc_achc_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/gehc-achc.c", i32 553, i32 26}
!14 = !{ptr @gehc_achc_id, !15, !"gehc_achc_id", i1 false, i1 false}
!15 = !{!"../drivers/misc/gehc-achc.c", i32 540, i32 35}
!16 = !{ptr @gehc_achc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/misc/gehc-achc.c", i32 519, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/misc/gehc-achc.c", i32 521, i32 53}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/misc/gehc-achc.c", i32 523, i32 40}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/misc/gehc-achc.c", i32 533, i32 42}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/misc/gehc-achc.c", i32 535, i32 57}
!27 = !{ptr @gehc_achc_of_match, !28, !"gehc_achc_of_match", i1 false, i1 false}
!28 = !{!"../drivers/misc/gehc-achc.c", i32 547, i32 34}
!29 = !{ptr @gehc_achc_groups, !30, !"gehc_achc_groups", i1 false, i1 false}
!30 = !{!"../drivers/misc/gehc-achc.c", i32 495, i32 1}
!31 = !{ptr @gehc_achc_group, !30, !"gehc_achc_group", i1 false, i1 false}
!32 = !{ptr @gehc_achc_attrs, !33, !"gehc_achc_attrs", i1 false, i1 false}
!33 = !{!"../drivers/misc/gehc-achc.c", i32 490, i32 26}
!34 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/misc/gehc-achc.c", i32 454, i32 8}
!36 = !{ptr @dev_attr_update_firmware, !35, !"dev_attr_update_firmware", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/misc/gehc-achc.c", i32 446, i32 48}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/misc/gehc-achc.c", i32 427, i32 3}
!41 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @ezport_flash._entry, !40, !"_entry", i1 false, i1 false}
!46 = !{ptr @ezport_flash._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/misc/gehc-achc.c", i32 429, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ezport_flash.__UNIQUE_ID_ddebug243, !48, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/misc/gehc-achc.c", i32 393, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ezport_firmware_load._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ezport_firmware_load._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/misc/gehc-achc.c", i32 332, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @ezport_firmware_flash_data.__UNIQUE_ID_ddebug239, !57, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/misc/gehc-achc.c", i32 369, i32 2}
!62 = !{ptr @ezport_firmware_flash_data.__UNIQUE_ID_ddebug242, !61, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/misc/gehc-achc.c", i32 377, i32 3}
!65 = !{ptr @ezport_firmware_flash_data._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ezport_firmware_flash_data._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/misc/gehc-achc.c", i32 381, i32 3}
!69 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @ezport_firmware_flash_data._entry.21, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @ezport_firmware_flash_data._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/misc/gehc-achc.c", i32 108, i32 3}
!74 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @ezport_get_status_register._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @ezport_get_status_register._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ezport_bulk_erase.cmd, !78, !"cmd", i1 false, i1 false}
!78 = !{!"../drivers/misc/gehc-achc.c", i32 175, i32 18}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/misc/gehc-achc.c", i32 177, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ezport_bulk_erase.__UNIQUE_ID_ddebug230, !80, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/misc/gehc-achc.c", i32 166, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ezport_write_enable._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @ezport_write_enable._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/misc/gehc-achc.c", i32 199, i32 2}
!90 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ezport_section_erase.__UNIQUE_ID_ddebug231, !89, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/misc/gehc-achc.c", i32 222, i32 2}
!94 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @ezport_flash_transfer.__UNIQUE_ID_ddebug232, !93, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/misc/gehc-achc.c", i32 300, i32 2}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @ezport_firmware_compare_data.__UNIQUE_ID_ddebug236, !97, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/misc/gehc-achc.c", i32 307, i32 3}
!102 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ezport_firmware_compare_data._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @ezport_firmware_compare_data._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/misc/gehc-achc.c", i32 308, i32 3}
!107 = !{ptr @ezport_firmware_compare_data._entry.39, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ezport_firmware_compare_data._entry_ptr.41, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/misc/gehc-achc.c", i32 283, i32 3}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @ezport_flash_compare.__UNIQUE_ID_ddebug233, !110, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/misc/gehc-achc.c", i32 284, i32 3}
!115 = !{ptr @ezport_flash_compare.__UNIQUE_ID_ddebug234, !114, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!116 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/misc/gehc-achc.c", i32 285, i32 3}
!119 = !{ptr @ezport_flash_compare.__UNIQUE_ID_ddebug235, !118, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!120 = !{ptr @dev_attr_reset, !121, !"dev_attr_reset", i1 false, i1 false}
!121 = !{!"../drivers/misc/gehc-achc.c", i32 488, i32 8}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/misc/gehc-achc.c", i32 468, i32 25}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{i64 2148767654, i64 2148767659, i64 2148767672, i64 2148767716, i64 2148767750, i64 2148767771}
