; ModuleID = '/llk/IR_all_yes/drivers/nfc/trf7970a.c_pt.bc'
source_filename = "../drivers/nfc/trf7970a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nfc_digital_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.trf7970a = type { i32, ptr, ptr, ptr, ptr, i32, i8, i8, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, ptr, ptr, %struct.mutex, i32, i8, %struct.delayed_work }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.nfc_dev = type { i32, i32, ptr, i32, i32, %struct.device, i8, i8, i8, i8, ptr, i8, %struct.nfc_genl_data, i32, %struct.list_head, i32, i32, %struct.timer_list, %struct.work_struct, i8, ptr, ptr, i32, ptr, ptr }
%struct.nfc_genl_data = type { i32, %struct.mutex }
%struct.nfc_digital_dev = type { ptr, ptr, i32, i32, i32, i32, ptr, [6 x %struct.digital_poll_tech], i8, i8, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.delayed_work, i8, i8, i8, i8, i16, i8, i8, ptr, ptr, i32, i32, ptr, i16, ptr, ptr }
%struct.digital_poll_tech = type { i8, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.sk_buff = type { %union.anon.42, %union.anon.45, %union.anon.46, [48 x i8], %union.anon.47, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.49, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, ptr, %union.anon.44 }
%union.anon.44 = type { ptr }
%union.anon.45 = type { ptr }
%union.anon.46 = type { i64 }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { i32, ptr }
%union.anon.49 = type { %struct.anon.50 }
%struct.anon.50 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.51, i32, i32, i32, i16, i16, %union.anon.53, i32, %union.anon.54, %union.anon.55, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.51 = type { i32 }
%union.anon.53 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i16 }

@__initcall__kmod_trf7970a__425_2259_trf7970a_spi_driver_init6 = internal global ptr @trf7970a_spi_driver_init, section ".initcall6.init", align 4
@trf7970a_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @trf7970a_id_table, ptr @trf7970a_probe, ptr @trf7970a_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @trf7970a_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @trf7970a_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_trf7970a_spi_driver_exit = internal global ptr @trf7970a_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author426 = internal constant [55 x i8] c"trf7970a.author=Mark A. Greer <mgreer@animalcreek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file427 = internal constant [35 x i8] c"trf7970a.file=drivers/nfc/trf7970a\00", section ".modinfo", align 1
@__UNIQUE_ID_license428 = internal constant [24 x i8] c"trf7970a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description429 = internal constant [61 x i8] c"trf7970a.description=TI trf7970a RFID/NFC Transceiver Driver\00", section ".modinfo", align 1
@trf7970a_id_table = internal constant { [2 x %struct.spi_device_id], [56 x i8] } { [2 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"trf7970a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"trf7970a\00", [23 x i8] zeroinitializer }, align 32
@trf7970a_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,trf7970a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@trf7970a_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @trf7970a_suspend, ptr @trf7970a_resume, ptr @trf7970a_suspend, ptr @trf7970a_resume, ptr @trf7970a_suspend, ptr @trf7970a_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @trf7970a_pm_runtime_suspend, ptr @trf7970a_pm_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1997, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No Device Tree entry\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trf7970a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/nfc/trf7970a.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr = internal global ptr @trf7970a_probe._entry, section ".printk_index", align 4
@trf7970a_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2014, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't set up SPI Communication\0A\00", [32 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.8 = internal global ptr @trf7970a_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irq-status-read-quirk\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,enable\00", [22 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2025, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No EN GPIO property\0A\00", [43 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.13 = internal global ptr @trf7970a_probe._entry.11, section ".printk_index", align 4
@trf7970a_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 2032, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"No EN2 GPIO property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.17 = internal global ptr @trf7970a_probe._entry.14, section ".printk_index", align 4
@trf7970a_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 2035, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error getting EN2 GPIO property: %ld\0A\00", [58 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.20 = internal global ptr @trf7970a_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"en2-rf-quirk\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"clock-frequency (%u Hz) unsupported\0A\00", [59 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.25 = internal global ptr @trf7970a_probe._entry.23, section ".printk_index", align 4
@trf7970a_probe.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.26, i8 2, i8 0, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"trf7970a configured for 27MHz crystal\0A\00", [57 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 2061, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't request IRQ#%d: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.29 = internal global ptr @trf7970a_probe._entry.27, section ".printk_index", align 4
@trf7970a_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&trf->lock\00", [21 x i8] zeroinitializer }, align 32
@trf7970a_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&trf->timeout_work)->work)\00", [49 x i8] zeroinitializer }, align 32
@trf7970a_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&trf->timeout_work)->timer\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vin\00", [28 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 2071, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't get VIN regulator: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.38 = internal global ptr @trf7970a_probe._entry.36, section ".printk_index", align 4
@trf7970a_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 2077, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't enable VIN: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.41 = internal global ptr @trf7970a_probe._entry.39, section ".printk_index", align 4
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-io\00", [25 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.2, ptr @.str.3, i32 2088, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't get VDD_IO regulator: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.45 = internal global ptr @trf7970a_probe._entry.43, section ".printk_index", align 4
@trf7970a_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.2, ptr @.str.3, i32 2094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't enable VDD_IO: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.48 = internal global ptr @trf7970a_probe._entry.46, section ".printk_index", align 4
@trf7970a_probe.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.49, i8 2, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"trf7970a config vdd_io to 1.8V\0A\00", [32 x i8] zeroinitializer }, align 32
@trf7970a_nfc_ops = internal constant { %struct.nfc_digital_ops, [56 x i8] } { %struct.nfc_digital_ops { ptr @trf7970a_in_configure_hw, ptr @trf7970a_send_cmd, ptr @trf7970a_tg_configure_hw, ptr @trf7970a_send_cmd, ptr @trf7970a_tg_listen, ptr null, ptr @trf7970a_tg_listen_md, ptr @trf7970a_tg_get_rf_tech, ptr @trf7970a_switch_rf, ptr @trf7970a_abort_cmd }, [56 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.2, ptr @.str.3, i32 2109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't allocate NFC digital device\0A\00", [61 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.52 = internal global ptr @trf7970a_probe._entry.50, section ".printk_index", align 4
@trf7970a_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.2, ptr @.str.3, i32 2130, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't register NFC digital device: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@trf7970a_probe._entry_ptr.55 = internal global ptr @trf7970a_probe._entry.53, section ".printk_index", align 4
@trf7970a_irq.__UNIQUE_ID_ddebug387 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.3, ptr @.str.57, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trf7970a_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"IRQ - state: %d, status: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@trf7970a_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.3, i32 974, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s - Driver in invalid state: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@trf7970a_irq._entry_ptr = internal global ptr @trf7970a_irq._entry, section ".printk_index", align 4
@trf7970a_read_irqstatus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s - irqstatus: Status read failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trf7970a_read_irqstatus\00", [40 x i8] zeroinitializer }, align 32
@trf7970a_read_irqstatus._entry_ptr = internal global ptr @trf7970a_read_irqstatus._entry, section ".printk_index", align 4
@trf7970a_cmd.__UNIQUE_ID_ddebug370 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 115, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trf7970a_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cmd: 0x%x\0A\00", [21 x i8] zeroinitializer }, align 32
@trf7970a_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s - cmd: 0x%x, ret: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_cmd._entry_ptr = internal global ptr @trf7970a_cmd._entry, section ".printk_index", align 4
@trf7970a_fill_fifo.__UNIQUE_ID_ddebug380 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_fill_fifo\00", [45 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Filling FIFO - fifo_bytes: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@trf7970a_transmit.__UNIQUE_ID_ddebug378 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trf7970a_transmit\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a tx data: \00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@trf7970a_transmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.3, i32 672, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - Can't send tx data: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@trf7970a_transmit._entry_ptr = internal global ptr @trf7970a_transmit._entry, section ".printk_index", align 4
@trf7970a_transmit.__UNIQUE_ID_ddebug379 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.3, ptr @.str.70, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Setting timeout for %d ms, state: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.3, ptr @.str.72, i8 0, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_send_err_upstream\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error - state: %d, errno: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@trf7970a_drain_fifo.__UNIQUE_ID_ddebug383 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 -68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"trf7970a_drain_fifo\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Draining FIFO - fifo_bytes: 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@trf7970a_drain_fifo.__UNIQUE_ID_ddebug386 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.3, ptr @.str.75, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Setting timeout for %d ms\0A\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_read_cont.__UNIQUE_ID_ddebug372 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_read_cont\00", [45 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"read_cont(0x%x, %zd)\0A\00", [42 x i8] zeroinitializer }, align 32
@trf7970a_read_cont._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 510, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - addr: 0x%x, ret: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@trf7970a_read_cont._entry_ptr = internal global ptr @trf7970a_read_cont._entry, section ".printk_index", align 4
@trf7970a_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trf7970a_read\00", [18 x i8] zeroinitializer }, align 32
@trf7970a_read._entry_ptr = internal global ptr @trf7970a_read._entry, section ".printk_index", align 4
@trf7970a_read.__UNIQUE_ID_ddebug371 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read(0x%x): 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@trf7970a_send_upstream.__UNIQUE_ID_ddebug375 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trf7970a_send_upstream\00", [41 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a rx data: \00", [45 x i8] zeroinitializer }, align 32
@trf7970a_send_upstream.__UNIQUE_ID_ddebug376 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.83, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Abort process complete\0A\00", [40 x i8] zeroinitializer }, align 32
@trf7970a_write.__UNIQUE_ID_ddebug373 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"trf7970a_write\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write(0x%x): 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@trf7970a_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s - write: 0x%x 0x%x, ret: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@trf7970a_write._entry_ptr = internal global ptr @trf7970a_write._entry, section ".printk_index", align 4
@trf7970a_mode_detect.__UNIQUE_ID_ddebug374 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.87, ptr @.str.3, ptr @.str.88, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"trf7970a_mode_detect\00", [43 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s - mode_detect: target_proto: 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@trf7970a_read_target_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.3, i32 565, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s - target_proto: Read failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_read_target_proto\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_read_target_proto._entry_ptr = internal global ptr @trf7970a_read_target_proto._entry, section ".printk_index", align 4
@trf7970a_timeout_work_handler.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 0, i8 -4, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"trf7970a_timeout_work_handler\00", [34 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Timeout - state: %d, ignore_timeout: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@trf7970a_issue_eof.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 -10, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_issue_eof\00", [45 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Issuing EOF\0A\00", [19 x i8] zeroinitializer }, align 32
@trf7970a_issue_eof.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.70, i8 0, i8 -7, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_in_configure_hw.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trf7970a_in_configure_hw\00", [39 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Configure hw - type: %d, param: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@trf7970a_in_configure_hw.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.95, ptr @.str.3, ptr @.str.97, i8 1, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Unknown type: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf_on.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trf7970a_switch_rf_on\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Switching rf on\0A\00", [47 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.3, i32 1108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s - Incorrect state: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf_on._entry_ptr = internal global ptr @trf7970a_switch_rf_on._entry, section ".printk_index", align 4
@trf7970a_switch_rf_on._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.98, ptr @.str.3, i32 1114, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - Can't initialize: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf_on._entry_ptr.103 = internal global ptr @trf7970a_switch_rf_on._entry.101, section ".printk_index", align 4
@trf7970a_init.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 1, i8 1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"trf7970a_init\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Initializing device - state: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@trf7970a_init.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.106, i8 1, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't init device: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.108, i8 1, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_in_config_rf_tech\00", [37 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rf technology: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.109, i8 1, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unsupported rf technology: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@trf7970a_in_config_framing.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.3, ptr @.str.111, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_in_config_framing\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"framing: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@trf7970a_in_config_framing.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.3, ptr @.str.112, i8 1, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unsupported Framing: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_send_cmd.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 1, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trf7970a_send_cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"New request - state: %d, timeout: %d ms, len: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@trf7970a_send_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.3, i32 1480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s - Bogus state: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@trf7970a_send_cmd._entry_ptr = internal global ptr @trf7970a_send_cmd._entry, section ".printk_index", align 4
@trf7970a_send_cmd.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.83, i8 1, i8 115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_send_cmd.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.113, ptr @.str.3, ptr @.str.116, i8 1, i8 118, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Can't alloc rx_skb\0A\00", [44 x i8] zeroinitializer }, align 32
@trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.96, i8 1, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trf7970a_tg_configure_hw\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.3, ptr @.str.97, i8 1, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.3, ptr @.str.108, i8 1, i8 -121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_tg_config_rf_tech\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.118, ptr @.str.3, ptr @.str.109, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_tg_config_framing.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.111, i8 1, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"trf7970a_tg_config_framing\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_tg_config_framing.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.119, ptr @.str.3, ptr @.str.112, i8 1, i8 -100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_tg_listen.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_tg_listen\00", [45 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Listen - state: %d, timeout: %d ms\0A\00", [60 x i8] zeroinitializer }, align 32
@_trf7970a_tg_listen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.122, ptr @.str.3, i32 1729, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"_trf7970a_tg_listen\00", [44 x i8] zeroinitializer }, align 32
@_trf7970a_tg_listen._entry_ptr = internal global ptr @_trf7970a_tg_listen._entry, section ".printk_index", align 4
@_trf7970a_tg_listen.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.3, ptr @.str.83, i8 1, i8 -79, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@_trf7970a_tg_listen.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.122, ptr @.str.3, ptr @.str.116, i8 1, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@trf7970a_tg_listen_md.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 1, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trf7970a_tg_listen_md\00", [42 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Listen MD - state: %d, timeout: %d ms\0A\00", [57 x i8] zeroinitializer }, align 32
@trf7970a_tg_get_rf_tech.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 1, i8 -55, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"trf7970a_tg_get_rf_tech\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Get RF Tech - state: %d, rf_tech: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.127, ptr @.str.3, ptr @.str.128, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_switch_rf\00", [45 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Switching RF - state: %d, on: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s - Invalid request: %d %d\0A\00", [35 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf._entry_ptr = internal global ptr @trf7970a_switch_rf._entry, section ".printk_index", align 4
@trf7970a_switch_rf._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.3, i32 1154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@trf7970a_switch_rf._entry_ptr.131 = internal global ptr @trf7970a_switch_rf._entry.130, section ".printk_index", align 4
@trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.133, i8 1, i8 15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trf7970a_switch_rf_off\00", [41 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Switching rf off\0A\00", [46 x i8] zeroinitializer }, align 32
@trf7970a_abort_cmd.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.3, ptr @.str.135, i8 1, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"trf7970a_abort_cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Abort process initiated\0A\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_abort_cmd.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.3, ptr @.str.83, i8 1, i8 -48, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"autosuspend-delay\00", [46 x i8] zeroinitializer }, align 32
@trf7970a_power_up.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.137, ptr @.str.3, ptr @.str.138, i8 1, i8 -42, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"trf7970a_power_up\00", [46 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Powering up - state: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@trf7970a_power_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.3, i32 1888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - Can't enable VIN: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_power_up._entry_ptr = internal global ptr @trf7970a_power_up._entry, section ".printk_index", align 4
@trf7970a_power_down.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.3, ptr @.str.141, i8 1, i8 -34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"trf7970a_power_down\00", [44 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Powering down - state: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@trf7970a_power_down.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.3, ptr @.str.142, i8 1, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't power down - not RF_OFF state (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@trf7970a_power_down._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.140, ptr @.str.3, i32 1932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Can't disable VIN: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@trf7970a_power_down._entry_ptr = internal global ptr @trf7970a_power_down._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 13560000, i64 27120000]
@__sancov_gen_cov_switch_values.144 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.147 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.148 = internal global [6 x i64] [i64 4, i64 8, i64 197, i64 201, i64 210, i64 211]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.150 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.152 = internal global [9 x i64] [i64 7, i64 8, i64 33, i64 34, i64 36, i64 39, i64 40, i64 41, i64 42]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.154 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.155 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.156 = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.157 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.160 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 7, i64 10, i64 11]
@__sancov_gen_cov_switch_values.161 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c"trf7970a_spi_driver\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2248, i32 26 }
@___asan_gen_.165 = private unnamed_addr constant [18 x i8] c"trf7970a_id_table\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2241, i32 35 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2253, i32 12 }
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"trf7970a_of_match\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2234, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [16 x i8] c"trf7970a_pm_ops\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2228, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1997, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2014, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2018, i32 32 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2022, i32 49 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2025, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2032, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2034, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2037, i32 39 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2041, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2044, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2051, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2061, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2065, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2066, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2068, i32 49 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2071, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2077, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2085, i32 49 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2088, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2094, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2100, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"trf7970a_nfc_ops\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1865, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2109, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 2129, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 839, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 973, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 545, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 461, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 465, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 717, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 654, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 671, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 695, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 635, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 755, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 813, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 493, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 509, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 477, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 480, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 611, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 618, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 519, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 523, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 595, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 564, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1010, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 986, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1344, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1365, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1102, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1107, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1114, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1031, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1075, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1173, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1212, i32 3 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1269, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1295, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1469, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1479, i32 3 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1496, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1687, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1567, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1627, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1797, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1728, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1810, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1830, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1128, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1142, i32 4 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1153, i32 4 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1085, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1842, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1982, i32 33 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1881, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1888, i32 3 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1913, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1919, i32 3 }
@___asan_gen_.609 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.613 = private constant [26 x i8] c"../drivers/nfc/trf7970a.c\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.613, i32 1931, i32 3 }
@llvm.compiler.used = appending global [187 x ptr] [ptr @__UNIQUE_ID_author426, ptr @__UNIQUE_ID_description429, ptr @__UNIQUE_ID_file427, ptr @__UNIQUE_ID_license428, ptr @__exitcall_trf7970a_spi_driver_exit, ptr @__initcall__kmod_trf7970a__425_2259_trf7970a_spi_driver_init6, ptr @_trf7970a_tg_listen._entry, ptr @_trf7970a_tg_listen._entry_ptr, ptr @trf7970a_cmd._entry, ptr @trf7970a_cmd._entry_ptr, ptr @trf7970a_irq._entry, ptr @trf7970a_irq._entry_ptr, ptr @trf7970a_power_down._entry, ptr @trf7970a_power_down._entry_ptr, ptr @trf7970a_power_up._entry, ptr @trf7970a_power_up._entry_ptr, ptr @trf7970a_probe._entry, ptr @trf7970a_probe._entry.11, ptr @trf7970a_probe._entry.14, ptr @trf7970a_probe._entry.18, ptr @trf7970a_probe._entry.23, ptr @trf7970a_probe._entry.27, ptr @trf7970a_probe._entry.36, ptr @trf7970a_probe._entry.39, ptr @trf7970a_probe._entry.43, ptr @trf7970a_probe._entry.46, ptr @trf7970a_probe._entry.50, ptr @trf7970a_probe._entry.53, ptr @trf7970a_probe._entry.6, ptr @trf7970a_probe._entry_ptr, ptr @trf7970a_probe._entry_ptr.13, ptr @trf7970a_probe._entry_ptr.17, ptr @trf7970a_probe._entry_ptr.20, ptr @trf7970a_probe._entry_ptr.25, ptr @trf7970a_probe._entry_ptr.29, ptr @trf7970a_probe._entry_ptr.38, ptr @trf7970a_probe._entry_ptr.41, ptr @trf7970a_probe._entry_ptr.45, ptr @trf7970a_probe._entry_ptr.48, ptr @trf7970a_probe._entry_ptr.52, ptr @trf7970a_probe._entry_ptr.55, ptr @trf7970a_probe._entry_ptr.8, ptr @trf7970a_read._entry, ptr @trf7970a_read._entry_ptr, ptr @trf7970a_read_cont._entry, ptr @trf7970a_read_cont._entry_ptr, ptr @trf7970a_read_irqstatus._entry, ptr @trf7970a_read_irqstatus._entry_ptr, ptr @trf7970a_read_target_proto._entry, ptr @trf7970a_read_target_proto._entry_ptr, ptr @trf7970a_send_cmd._entry, ptr @trf7970a_send_cmd._entry_ptr, ptr @trf7970a_spi_driver_exit, ptr @trf7970a_switch_rf._entry, ptr @trf7970a_switch_rf._entry.130, ptr @trf7970a_switch_rf._entry_ptr, ptr @trf7970a_switch_rf._entry_ptr.131, ptr @trf7970a_switch_rf_on._entry, ptr @trf7970a_switch_rf_on._entry.101, ptr @trf7970a_switch_rf_on._entry_ptr, ptr @trf7970a_switch_rf_on._entry_ptr.103, ptr @trf7970a_transmit._entry, ptr @trf7970a_transmit._entry_ptr, ptr @trf7970a_write._entry, ptr @trf7970a_write._entry_ptr, ptr @trf7970a_spi_driver, ptr @trf7970a_id_table, ptr @.str, ptr @trf7970a_of_match, ptr @trf7970a_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @trf7970a_probe.__key, ptr @.str.30, ptr @trf7970a_probe.__key.31, ptr @.str.32, ptr @trf7970a_probe.__key.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @trf7970a_nfc_ops, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_nfc_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_read_irqstatus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_transmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_read_cont._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_read_target_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_switch_rf_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_switch_rf_on._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_send_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_trf7970a_tg_listen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_switch_rf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_switch_rf._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_power_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trf7970a_power_down._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @trf7970a_spi_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @trf7970a_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @trf7970a_spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_probe(ptr noundef %spi) #2 align 64 {
entry:
  %autosuspend_delay.i = alloca i32, align 4
  %clk_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_freq) #6
  %2 = ptrtoint ptr %clk_freq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 13560000, ptr %clk_freq, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 276, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %call.i, align 4
  %dev7 = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %spi, ptr %dev7, align 4
  %spi8 = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %spi8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %spi8, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %7 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 8, ptr %bits_per_word, align 1
  %call9 = tail call i32 @spi_setup(ptr noundef %spi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call.i323 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.9, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i323, null
  br i1 %tobool.i.not, label %if.end15.if.end18_crit_edge, label %if.then17

if.end15.if.end18_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %quirks = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks, align 4
  %or = or i32 %11, 1
  store i32 %or, ptr %quirks, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15.if.end18_crit_edge
  %12 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev7, align 4
  %call20 = tail call ptr @devm_gpiod_get_index(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef 0, i32 noundef 3) #6
  %en_gpiod = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 24
  %14 = ptrtoint ptr %en_gpiod to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call20, ptr %en_gpiod, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev7, align 4
  br i1 %cmp.i, label %do.end26, label %if.end30

do.end26:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.12) #9
  %17 = ptrtoint ptr %en_gpiod to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %en_gpiod, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end18
  %call32 = tail call ptr @devm_gpiod_get_index_optional(ptr noundef %16, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 3) #6
  %en2_gpiod = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 25
  %20 = ptrtoint ptr %en2_gpiod to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call32, ptr %en2_gpiod, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %do.end38, label %if.else

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %22, ptr noundef nonnull @.str.15) #9
  br label %if.end58

if.else:                                          ; preds = %if.end30
  %cmp.i324 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %do.end45, label %if.else51

do.end45:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev7, align 4
  %25 = ptrtoint ptr %call32 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.19, i32 noundef %25) #9
  %26 = ptrtoint ptr %en2_gpiod to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %en2_gpiod, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup

if.else51:                                        ; preds = %if.else
  %call.i325 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %tobool.i326.not = icmp eq ptr %call.i325, null
  br i1 %tobool.i326.not, label %if.else51.if.end58_crit_edge, label %if.then53

if.else51.if.end58_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %quirks54 = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 5
  %29 = ptrtoint ptr %quirks54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %quirks54, align 4
  %or55 = or i32 %30, 2
  store i32 %or55, ptr %quirks54, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then53, %if.else51.if.end58_crit_edge, %do.end38
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %clk_freq, i32 noundef 1, i32 noundef 0) #6
  %31 = ptrtoint ptr %clk_freq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %clk_freq, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %do.end65 [
    i32 27120000, label %if.then69
    i32 13560000, label %if.else80
  ]

do.end65:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.24, i32 noundef %32) #9
  br label %cleanup

if.then69:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 15
  %36 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -128, ptr %modulator_sys_clk_ctrl, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_probe.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_probe, %if.then75)) #6
          to label %if.end82 [label %if.then75], !srcloc !341

if.then75:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_probe.__UNIQUE_ID_ddebug423, ptr noundef %38, ptr noundef nonnull @.str.26) #6
  br label %if.end82

if.else80:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %modulator_sys_clk_ctrl81 = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 15
  %39 = ptrtoint ptr %modulator_sys_clk_ctrl81 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %modulator_sys_clk_ctrl81, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.else80, %if.then75, %if.then69
  %40 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev7, align 4
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %42 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq, align 4
  %call84 = call i32 @devm_request_threaded_irq(ptr noundef %41, i32 noundef %43, ptr noundef null, ptr noundef nonnull @trf7970a_irq, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %do.body93, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev7, align 4
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.28, i32 noundef %47, i32 noundef %call84) #9
  br label %cleanup

do.body93:                                        ; preds = %if.end82
  %lock = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 26
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.30, ptr noundef nonnull @trf7970a_probe.__key) #6
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29
  call void @__init_work(ptr noundef %timeout_work, i32 noundef 0) #6
  %48 = ptrtoint ptr %timeout_work to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -64, ptr %timeout_work, align 4
  %lockdep_map = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @trf7970a_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry104 = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29, i32 0, i32 1
  %49 = ptrtoint ptr %entry104 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %entry104, ptr %entry104, align 4
  %prev.i = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %entry104, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29, i32 0, i32 2
  %51 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @trf7970a_timeout_work_handler, ptr %func, align 4
  %timer = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 29, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.34, ptr noundef nonnull @trf7970a_probe.__key.33) #6
  %call116 = call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.35) #6
  %regulator = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 3
  %52 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call116, ptr %regulator, align 4
  %cmp.i327 = icmp ugt ptr %call116, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i327, label %if.then119, label %if.end126

if.then119:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %call116 to i32
  %54 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.37, i32 noundef %53) #9
  br label %err_destroy_lock

if.end126:                                        ; preds = %do.body93
  %call128 = call i32 @regulator_enable(ptr noundef %call116) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %if.end135, label %do.end133

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.40, i32 noundef %call128) #9
  br label %err_destroy_lock

if.end135:                                        ; preds = %if.end126
  %58 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regulator, align 4
  %call137 = call i32 @regulator_get_voltage(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %call137)
  %cmp138 = icmp sgt i32 %call137, 4000000
  br i1 %cmp138, label %if.then139, label %if.end135.if.end140_crit_edge

if.end135.if.end140_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end140

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 12
  %60 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %chip_status_ctrl, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.then139, %if.end135.if.end140_crit_edge
  %call142 = call ptr @devm_regulator_get(ptr noundef %spi, ptr noundef nonnull @.str.42) #6
  %61 = ptrtoint ptr %regulator to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call142, ptr %regulator, align 4
  %cmp.i328 = icmp ugt ptr %call142, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i328, label %if.then146, label %if.end153

if.then146:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %call142 to i32
  %63 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.44, i32 noundef %62) #9
  br label %err_destroy_lock

if.end153:                                        ; preds = %if.end140
  %call155 = call i32 @regulator_enable(ptr noundef %call142) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end162, label %do.end160

do.end160:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.47, i32 noundef %call155) #9
  br label %err_destroy_lock

if.end162:                                        ; preds = %if.end153
  %67 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regulator, align 4
  %call164 = call i32 @regulator_get_voltage(ptr noundef %68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %call164)
  %cmp165 = icmp eq i32 %call164, 1800000
  br i1 %cmp165, label %if.then166, label %if.end162.if.end184_crit_edge

if.end162.if.end184_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end184

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #8
  %io_ctrl = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 17
  %69 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 32, ptr %io_ctrl, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_probe.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_probe, %if.then179)) #6
          to label %if.end184 [label %if.then179], !srcloc !341

if.then179:                                       ; preds = %if.then166
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_probe.__UNIQUE_ID_ddebug424, ptr noundef %71, ptr noundef nonnull @.str.49) #6
  br label %if.end184

if.end184:                                        ; preds = %if.then179, %if.then166, %if.end162.if.end184_crit_edge
  %call185 = call ptr @nfc_digital_allocate_device(ptr noundef nonnull @trf7970a_nfc_ops, i32 noundef 252, i32 noundef 3, i32 noundef 0, i32 noundef 0) #6
  %ddev = getelementptr inbounds %struct.trf7970a, ptr %call.i, i32 0, i32 4
  %72 = ptrtoint ptr %ddev to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call185, ptr %ddev, align 4
  %tobool187.not = icmp eq ptr %call185, null
  %73 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev7, align 4
  br i1 %tobool187.not, label %do.end191, label %if.end193

do.end191:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.51) #9
  br label %err_disable_regulator

if.end193:                                        ; preds = %if.end184
  %75 = ptrtoint ptr %call185 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call185, align 4
  %parent.i.i = getelementptr inbounds %struct.nfc_dev, ptr %76, i32 0, i32 5, i32 1
  %77 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %parent.i.i, align 8
  %78 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ddev, align 4
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %79, i32 0, i32 6
  %80 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call.i, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %81 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %autosuspend_delay.i) #6
  %82 = ptrtoint ptr %autosuspend_delay.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %autosuspend_delay.i, align 4, !annotation !342
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.136, ptr noundef nonnull %autosuspend_delay.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end193.trf7970a_get_autosuspend_delay.exit_crit_edge, label %if.then.i

if.end193.trf7970a_get_autosuspend_delay.exit_crit_edge: ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_get_autosuspend_delay.exit

if.then.i:                                        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %autosuspend_delay.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 30000, ptr %autosuspend_delay.i, align 4
  br label %trf7970a_get_autosuspend_delay.exit

trf7970a_get_autosuspend_delay.exit:              ; preds = %if.then.i, %if.end193.trf7970a_get_autosuspend_delay.exit_crit_edge
  %84 = ptrtoint ptr %autosuspend_delay.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %autosuspend_delay.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %autosuspend_delay.i) #6
  %86 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev7, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %87, i32 noundef %85) #6
  %88 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev7, align 4
  call void @__pm_runtime_use_autosuspend(ptr noundef %89, i1 noundef zeroext true) #6
  %call.i329 = call fastcc i32 @trf7970a_power_up(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i329)
  %tobool.not.i330 = icmp eq i32 %call.i329, 0
  br i1 %tobool.not.i330, label %if.end203, label %trf7970a_get_autosuspend_delay.exit.err_free_ddev_crit_edge

trf7970a_get_autosuspend_delay.exit.err_free_ddev_crit_edge: ; preds = %trf7970a_get_autosuspend_delay.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_ddev

if.end203:                                        ; preds = %trf7970a_get_autosuspend_delay.exit
  %90 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev7, align 4
  %call.i.i331 = call i32 @__pm_runtime_set_status(ptr noundef %91, i32 noundef 0) #6
  %92 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev7, align 4
  call void @pm_runtime_enable(ptr noundef %93) #6
  %94 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev7, align 4
  %call.i8.i = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 12, i32 22
  %96 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store volatile i64 %call.i8.i, ptr %last_busy.i.i, align 8
  %97 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ddev, align 4
  %call205 = call i32 @nfc_digital_register_device(ptr noundef %98) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call205)
  %tobool206.not = icmp eq i32 %call205, 0
  br i1 %tobool206.not, label %if.end203.cleanup_crit_edge, label %do.end210

if.end203.cleanup_crit_edge:                      ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end210:                                        ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #8
  %99 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.54, i32 noundef %call205) #9
  call fastcc void @trf7970a_shutdown(ptr noundef nonnull %call.i)
  br label %err_free_ddev

err_free_ddev:                                    ; preds = %do.end210, %trf7970a_get_autosuspend_delay.exit.err_free_ddev_crit_edge
  %ret.0 = phi i32 [ %call205, %do.end210 ], [ %call.i329, %trf7970a_get_autosuspend_delay.exit.err_free_ddev_crit_edge ]
  %101 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ddev, align 4
  call void @nfc_digital_free_device(ptr noundef %102) #6
  br label %err_disable_regulator

err_disable_regulator:                            ; preds = %err_free_ddev, %do.end191
  %ret.1 = phi i32 [ %ret.0, %err_free_ddev ], [ -12, %do.end191 ]
  %103 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regulator, align 4
  %call215 = call i32 @regulator_disable(ptr noundef %104) #6
  br label %err_destroy_lock

err_destroy_lock:                                 ; preds = %err_disable_regulator, %do.end160, %if.then146, %do.end133, %if.then119
  %ret.2 = phi i32 [ %53, %if.then119 ], [ %call128, %do.end133 ], [ %62, %if.then146 ], [ %call155, %do.end160 ], [ %ret.1, %err_disable_regulator ]
  call void @mutex_destroy(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %err_destroy_lock, %if.end203.cleanup_crit_edge, %do.end89, %do.end65, %do.end45, %do.end26, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ %19, %do.end26 ], [ %28, %do.end45 ], [ -22, %do.end65 ], [ %call84, %do.end89 ], [ %ret.2, %err_destroy_lock ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end203.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_freq) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @trf7970a_shutdown(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %ddev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  tail call void @nfc_digital_unregister_device(ptr noundef %3) #6
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 4
  tail call void @nfc_digital_free_device(ptr noundef %5) #6
  %regulator = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call3 = tail call i32 @regulator_disable(ptr noundef %7) #6
  tail call void @mutex_destroy(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index_optional(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %addr.i = alloca i8, align 1
  %fifo_bytes = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo_bytes) #6
  %0 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %fifo_bytes, align 1, !annotation !342
  %lock = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %1 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %buf.i, align 1, !annotation !342
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !342
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %quirks.i = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 5
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 76, i8 108
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %spec.store.select.i, ptr %addr.i, align 1
  %spec.select.i = select i1 %tobool.not.i, i32 1, i32 2
  %spi2.i = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 2
  %9 = ptrtoint ptr %spi2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spi2.i, align 4
  %call4.i = call i32 @spi_write_then_read(ptr noundef %10, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %buf.i, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call4.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_irq.__UNIQUE_ID_ddebug387, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_irq, %if.then9)) #6
          to label %do.end [label %if.then9], !srcloc !341

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 1
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %17 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dev_id, align 4
  %conv = zext i8 %14 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_irq.__UNIQUE_ID_ddebug387, ptr noundef %16, ptr noundef nonnull @.str.57, i32 noundef %18, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool12.not = icmp eq i8 %14, 0
  br i1 %tobool12.not, label %if.then13, label %if.end15

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

if.end15:                                         ; preds = %do.end
  %19 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dev_id, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %20, label %do.end173 [
    i32 2, label %if.end15.sw.bb_crit_edge
    i32 3, label %if.end15.sw.bb_crit_edge261
    i32 4, label %sw.bb26
    i32 5, label %if.end15.sw.bb36_crit_edge
    i32 6, label %if.end15.sw.bb36_crit_edge262
    i32 7, label %sw.bb122
    i32 8, label %sw.bb128
    i32 9, label %sw.bb146
  ]

if.end15.sw.bb36_crit_edge262:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

if.end15.sw.bb36_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36

if.end15.sw.bb_crit_edge261:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge261
  %is_initiator = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 6
  %22 = ptrtoint ptr %is_initiator to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %is_initiator, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool17.not = icmp eq i8 %23, 0
  %24 = and i8 %14, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool20.not = icmp eq i8 %24, 0
  %or.cond260 = select i1 %tobool17.not, i1 true, i1 %tobool20.not
  br i1 %or.cond260, label %sw.bb.if.end24_crit_edge, label %if.then21

sw.bb.if.end24_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then21:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call22 = call fastcc i32 @trf7970a_cmd(ptr noundef %dev_id, i8 noundef zeroext 22)
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %dev_id, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %sw.bb.if.end24_crit_edge
  %call25 = call fastcc i32 @trf7970a_cmd(ptr noundef %dev_id, i8 noundef zeroext 15)
  br label %err_unlock_exit

sw.bb26:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool29.not = icmp sgt i8 %14, -1
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 29
  %call31 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  %lnot32 = xor i1 %call31, true
  %ignore_timeout = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 28
  %frombool34 = zext i1 %lnot32 to i8
  %26 = ptrtoint ptr %ignore_timeout to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool34, ptr %ignore_timeout, align 4
  call fastcc void @trf7970a_fill_fifo(ptr noundef %dev_id)
  br label %err_unlock_exit

if.else:                                          ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef -5)
  br label %err_unlock_exit

sw.bb36:                                          ; preds = %if.end15.sw.bb36_crit_edge, %if.end15.sw.bb36_crit_edge262
  %conv37 = zext i8 %14 to i32
  %and38 = and i32 %conv37, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else47, label %if.then40

if.then40:                                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #8
  %timeout_work41 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 29
  %call42 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work41) #6
  %lnot43 = xor i1 %call42, true
  %ignore_timeout45 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 28
  %frombool46 = zext i1 %lnot43 to i8
  %27 = ptrtoint ptr %ignore_timeout45 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool46, ptr %ignore_timeout45, align 4
  call fastcc void @trf7970a_drain_fifo(ptr noundef %dev_id, i8 noundef zeroext %14)
  br label %err_unlock_exit

if.else47:                                        ; preds = %sw.bb36
  %and49 = and i32 %conv37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.else64, label %if.then51

if.then51:                                        ; preds = %if.else47
  %call52 = call fastcc i32 @trf7970a_read(ptr noundef %dev_id, i8 noundef zeroext 28, ptr noundef nonnull %fifo_bytes)
  %28 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fifo_bytes, align 1
  %30 = and i8 %29, 127
  store i8 %30, ptr %fifo_bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool56.not = icmp eq i32 %call52, 0
  br i1 %tobool56.not, label %if.else58, label %if.then57

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef %call52)
  br label %err_unlock_exit

if.else58:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool59.not = icmp eq i8 %30, 0
  br i1 %tobool59.not, label %if.then60, label %if.else58.err_unlock_exit_crit_edge

if.else58.err_unlock_exit_crit_edge:              ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.then60:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = call fastcc i32 @trf7970a_cmd(ptr noundef %dev_id, i8 noundef zeroext 15)
  br label %err_unlock_exit

if.else64:                                        ; preds = %if.else47
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %cmp66 = icmp eq i8 %14, -128
  br i1 %cmp66, label %if.else64.if.then74_crit_edge, label %lor.lhs.false

if.else64.if.then74_crit_edge:                    ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

lor.lhs.false:                                    ; preds = %if.else64
  %is_initiator68 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 6
  %31 = ptrtoint ptr %is_initiator68 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_initiator68, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool69.not = icmp eq i8 %32, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %14)
  %cmp72 = icmp eq i8 %14, -124
  %or.cond = select i1 %tobool69.not, i1 %cmp72, i1 false
  br i1 %or.cond, label %lor.lhs.false.if.then74_crit_edge, label %if.else118

lor.lhs.false.if.then74_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then74

if.then74:                                        ; preds = %lor.lhs.false.if.then74_crit_edge, %if.else64.if.then74_crit_edge
  %call75 = call fastcc i32 @trf7970a_cmd(ptr noundef %dev_id, i8 noundef zeroext 15)
  %timeout = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 27
  %33 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool76.not = icmp eq i32 %34, 0
  br i1 %tobool76.not, label %if.then77, label %if.end85

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %timeout_work78 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 29
  %call79 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work78) #6
  %lnot80 = xor i1 %call79, true
  %ignore_timeout82 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 28
  %frombool83 = zext i1 %lnot80 to i8
  %35 = ptrtoint ptr %ignore_timeout82 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %frombool83, ptr %ignore_timeout82, align 4
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 9
  %36 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %rx_skb, align 4
  call fastcc void @trf7970a_send_upstream(ptr noundef %dev_id)
  br label %err_unlock_exit

if.end85:                                         ; preds = %if.then74
  %is_initiator86 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 6
  %37 = ptrtoint ptr %is_initiator86 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_initiator86, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool87.not = icmp eq i8 %38, 0
  br i1 %tobool87.not, label %if.end89, label %if.end85.err_unlock_exit_crit_edge

if.end85.err_unlock_exit_crit_edge:               ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.end89:                                         ; preds = %if.end85
  %iso_ctrl90 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 13
  %39 = ptrtoint ptr %iso_ctrl90 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %iso_ctrl90, align 1
  %framing = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 20
  %41 = ptrtoint ptr %framing to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %framing, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %42, label %if.end89.sw.epilog_crit_edge [
    i32 1, label %sw.bb91
    i32 2, label %sw.bb95
    i32 3, label %sw.bb101
  ]

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 22
  %44 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 16, ptr %tx_cmd, align 1
  %45 = or i8 %40, -128
  %46 = ptrtoint ptr %iso_ctrl90 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -1, ptr %iso_ctrl90, align 1
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd96 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 22
  %47 = ptrtoint ptr %tx_cmd96 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 17, ptr %tx_cmd96, align 1
  %48 = and i8 %40, 127
  %49 = ptrtoint ptr %iso_ctrl90 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -1, ptr %iso_ctrl90, align 1
  br label %sw.epilog

sw.bb101:                                         ; preds = %if.end89
  %call102 = call fastcc i32 @trf7970a_write(ptr noundef %dev_id, i8 noundef zeroext 16, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %sw.bb101.err_unlock_exit_crit_edge

sw.bb101.err_unlock_exit_crit_edge:               ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.end105:                                        ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #8
  %special_fcn_reg1 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 16
  %50 = ptrtoint ptr %special_fcn_reg1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 2, ptr %special_fcn_reg1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end105, %sw.bb95, %sw.bb91, %if.end89.sw.epilog_crit_edge
  %iso_ctrl.0 = phi i8 [ %40, %if.end89.sw.epilog_crit_edge ], [ %40, %if.end105 ], [ %48, %sw.bb95 ], [ %45, %sw.bb91 ]
  %51 = ptrtoint ptr %iso_ctrl90 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %iso_ctrl90, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %iso_ctrl.0, i8 %52)
  %cmp109.not = icmp eq i8 %iso_ctrl.0, %52
  br i1 %cmp109.not, label %sw.epilog.err_unlock_exit_crit_edge, label %if.then111

sw.epilog.err_unlock_exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.then111:                                       ; preds = %sw.epilog
  %call112 = call fastcc i32 @trf7970a_write(ptr noundef %dev_id, i8 noundef zeroext 1, i8 noundef zeroext %iso_ctrl.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.then111.err_unlock_exit_crit_edge

if.then111.err_unlock_exit_crit_edge:             ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.end115:                                        ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %iso_ctrl90 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %iso_ctrl.0, ptr %iso_ctrl90, align 1
  br label %err_unlock_exit

if.else118:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef -5)
  br label %err_unlock_exit

sw.bb122:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %14)
  %cmp124.not = icmp eq i8 %14, -128
  br i1 %cmp124.not, label %sw.bb122.err_unlock_exit_crit_edge, label %if.then126

sw.bb122.err_unlock_exit_crit_edge:               ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.then126:                                       ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef -5)
  br label %err_unlock_exit

sw.bb128:                                         ; preds = %if.end15
  %conv129 = zext i8 %14 to i32
  %and130 = and i32 %conv129, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %if.else139, label %if.then132

if.then132:                                       ; preds = %sw.bb128
  call void @__sanitizer_cov_trace_pc() #8
  %timeout_work133 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 29
  %call134 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work133) #6
  %lnot135 = xor i1 %call134, true
  %ignore_timeout137 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 28
  %frombool138 = zext i1 %lnot135 to i8
  %54 = ptrtoint ptr %ignore_timeout137 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool138, ptr %ignore_timeout137, align 4
  call fastcc void @trf7970a_drain_fifo(ptr noundef %dev_id, i8 noundef zeroext %14)
  br label %err_unlock_exit

if.else139:                                       ; preds = %sw.bb128
  %and141 = and i32 %conv129, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and141)
  %tobool142.not = icmp eq i32 %and141, 0
  br i1 %tobool142.not, label %if.then143, label %if.else139.err_unlock_exit_crit_edge

if.else139.err_unlock_exit_crit_edge:             ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.then143:                                       ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef -5)
  br label %err_unlock_exit

sw.bb146:                                         ; preds = %if.end15
  %conv147 = zext i8 %14 to i32
  %and148 = and i32 %conv147, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.else163, label %if.then150

if.then150:                                       ; preds = %sw.bb146
  %timeout_work151 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 29
  %call152 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work151) #6
  %lnot153 = xor i1 %call152, true
  %ignore_timeout155 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 28
  %frombool156 = zext i1 %lnot153 to i8
  %55 = ptrtoint ptr %ignore_timeout155 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %frombool156, ptr %ignore_timeout155, align 4
  %md_rf_tech = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 21
  %call157 = call fastcc i32 @trf7970a_mode_detect(ptr noundef %dev_id, ptr noundef %md_rf_tech)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.else160, label %if.then159

if.then159:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef %call157)
  br label %err_unlock_exit

if.else160:                                       ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %dev_id to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %dev_id, align 4
  call fastcc void @trf7970a_drain_fifo(ptr noundef %dev_id, i8 noundef zeroext %14)
  br label %err_unlock_exit

if.else163:                                       ; preds = %sw.bb146
  %and165 = and i32 %conv147, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.then167, label %if.else163.err_unlock_exit_crit_edge

if.else163.err_unlock_exit_crit_edge:             ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock_exit

if.then167:                                       ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %dev_id, i32 noundef -5)
  br label %err_unlock_exit

do.end173:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev174 = getelementptr inbounds %struct.trf7970a, ptr %dev_id, i32 0, i32 1
  %57 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev174, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %20) #9
  br label %err_unlock_exit

err_unlock_exit:                                  ; preds = %do.end173, %if.then167, %if.else163.err_unlock_exit_crit_edge, %if.else160, %if.then159, %if.then143, %if.else139.err_unlock_exit_crit_edge, %if.then132, %if.then126, %sw.bb122.err_unlock_exit_crit_edge, %if.else118, %if.end115, %if.then111.err_unlock_exit_crit_edge, %sw.epilog.err_unlock_exit_crit_edge, %sw.bb101.err_unlock_exit_crit_edge, %if.end85.err_unlock_exit_crit_edge, %if.then77, %if.then60, %if.else58.err_unlock_exit_crit_edge, %if.then57, %if.then40, %if.else, %if.then30, %if.end24
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unlock_exit, %if.then13, %if.then2, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then2 ], [ 1, %err_unlock_exit ], [ 0, %if.then13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo_bytes) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trf7970a_timeout_work_handler(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -176
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_timeout_work_handler.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_timeout_work_handler, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %work, i32 -172
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %ignore_timeout = getelementptr i8, ptr %work, i32 -4
  %4 = ptrtoint ptr %ignore_timeout to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ignore_timeout, align 4, !range !343
  %6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_timeout_work_handler.__UNIQUE_ID_ddebug390, ptr noundef %1, ptr noundef nonnull @.str.92, i32 noundef %3, i32 noundef %6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr i8, ptr %work, i32 -100
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %ignore_timeout5 = getelementptr i8, ptr %work, i32 -4
  %7 = ptrtoint ptr %ignore_timeout5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ignore_timeout5, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.not = icmp eq i8 %8, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ignore_timeout5 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ignore_timeout5, align 4
  br label %if.end20

if.else:                                          ; preds = %do.end
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %11, label %if.else17 [
    i32 6, label %if.then11
    i32 7, label %if.then16
  ]

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trf7970a_drain_fifo(ptr noundef %add.ptr, i8 noundef zeroext 64)
  br label %if.end20

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @trf7970a_issue_eof(ptr noundef %add.ptr)
  br label %if.end20

if.else17:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_timeout_work_handler, %if.then.i)) #6
          to label %trf7970a_send_err_upstream.exit [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr i8, ptr %work, i32 -172
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef %16, i32 noundef -110) #6
  br label %trf7970a_send_err_upstream.exit

trf7970a_send_err_upstream.exit:                  ; preds = %if.then.i, %if.else17
  %call3.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %work) #6
  %rx_skb.i = getelementptr i8, ptr %work, i32 -144
  %17 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %18, i32 noundef 0) #6
  %19 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -110 to ptr), ptr %rx_skb.i, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %add.ptr) #6
  br label %if.end20

if.end20:                                         ; preds = %trf7970a_send_err_upstream.exit, %if.then16, %if.then11, %if.then7
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_digital_allocate_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_digital_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_shutdown(ptr noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trf, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 5, label %entry.sw.bb_crit_edge11
    i32 6, label %entry.sw.bb_crit_edge12
    i32 7, label %entry.sw.bb_crit_edge13
    i32 8, label %entry.sw.bb_crit_edge14
    i32 2, label %entry.do.body.i_crit_edge
    i32 3, label %entry.do.body.i_crit_edge15
  ]

entry.do.body.i_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge12:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge11:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge11, %entry.sw.bb_crit_edge12, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_shutdown, %if.then.i)) #6
          to label %sw.bb1 [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %5 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %4, ptr noundef nonnull @.str.72, i32 noundef %6, i32 noundef -125) #6
  br label %sw.bb1

sw.bb1:                                           ; preds = %if.then.i, %sw.bb
  %timeout_work.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #6
  %rx_skb.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %7 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #6
  %9 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -125 to ptr), ptr %rx_skb.i, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  %10 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %trf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %switch.i = icmp ult i32 %.pr, 2
  br i1 %switch.i, label %sw.bb1.sw.epilog_crit_edge, label %sw.bb1.do.body.i_crit_edge

sw.bb1.do.body.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body.i:                                        ; preds = %sw.bb1.do.body.i_crit_edge, %entry.do.body.i_crit_edge, %entry.do.body.i_crit_edge15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_shutdown, %if.then5.i)) #6
          to label %do.end.i [label %if.then5.i], !srcloc !341

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i9 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %11 = ptrtoint ptr %dev.i9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i9, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, ptr noundef %12, ptr noundef nonnull @.str.133) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %chip_status_ctrl.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %13 = ptrtoint ptr %chip_status_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %chip_status_ctrl.i, align 4
  %15 = and i8 %14, -33
  store i8 %15, ptr %chip_status_ctrl.i, align 4
  %call9.i = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %15) #6
  %aborting.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 7
  %16 = ptrtoint ptr %aborting.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %aborting.i, align 1
  %17 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %trf, align 4
  %dev11.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %18 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev11.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %21 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev11.i, align 4
  %call.i23.i = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %sw.bb1.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void @__pm_runtime_disable(ptr noundef %24, i1 noundef zeroext true) #6
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %26, i32 noundef 2) #6
  %call3 = tail call fastcc i32 @trf7970a_power_down(ptr noundef %trf)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_cmd(ptr nocapture noundef readonly %trf, i8 noundef zeroext %opcode) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %cmd = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #6
  %0 = and i8 %opcode, 31
  %1 = or i8 %0, -128
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %cmd, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_cmd.__UNIQUE_ID_ddebug370, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %cmd, align 1
  %conv4 = zext i8 %6 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_cmd.__UNIQUE_ID_ddebug370, ptr noundef %4, ptr noundef nonnull @.str.62, i32 noundef %conv4) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spi = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %7 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %9 = getelementptr inbounds i8, ptr %t.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 92)
  %11 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %cmd, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.spi_write.exit_crit_edge

do.end.spi_write.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
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

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %spi_write.exit.if.end13_crit_edge, label %do.end10

spi_write.exit.if.end13_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end10:                                         ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %23 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev11, align 4
  %25 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cmd, align 1
  %conv12 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.61, i32 noundef %conv12, i32 noundef %call.i.i) #9
  br label %if.end13

if.end13:                                         ; preds = %do.end10, %spi_write.exit.if.end13_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #6
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_fill_fifo(ptr noundef %trf) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca i8, align 1
  %fifo_bytes = alloca i8, align 1
  %prefix = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 8
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo_bytes) #6
  %2 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fifo_bytes, align 1, !annotation !342
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %prefix) #6
  %3 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %prefix, align 1, !annotation !342
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 92, ptr %addr.i, align 1
  %spi.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %fifo_bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.do.body3.i_crit_edge, label %do.end.i

entry.do.body3.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr.i, align 1
  %conv2.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %conv2.i, i32 noundef %call.i) #9
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i, %entry.do.body3.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_fill_fifo, %if.then8.i)) #6
          to label %trf7970a_read.exit [label %if.then8.i], !srcloc !341

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %11 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9.i, align 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr.i, align 1
  %conv10.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fifo_bytes, align 1
  %conv11.i = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read.__UNIQUE_ID_ddebug371, ptr noundef %12, ptr noundef nonnull @.str.80, i32 noundef %conv10.i, i32 noundef %conv11.i) #6
  br label %trf7970a_read.exit

trf7970a_read.exit:                               ; preds = %if.then8.i, %do.body3.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  br i1 %tobool.not.i, label %do.body, label %if.then

if.then:                                          ; preds = %trf7970a_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_fill_fifo, %if.then.i)) #6
          to label %trf7970a_send_err_upstream.exit [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i41 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %17 = ptrtoint ptr %dev.i41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i41, align 4
  %19 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %trf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %18, ptr noundef nonnull @.str.72, i32 noundef %20, i32 noundef %call.i) #6
  br label %trf7970a_send_err_upstream.exit

trf7970a_send_err_upstream.exit:                  ; preds = %if.then.i, %if.then
  %timeout_work.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #6
  %rx_skb.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %21 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_skb.i, align 4
  call void @kfree_skb_reason(ptr noundef %22, i32 noundef 0) #6
  %23 = inttoptr i32 %call.i to ptr
  %24 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %rx_skb.i, align 4
  call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %cleanup

do.body:                                          ; preds = %trf7970a_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_fill_fifo.__UNIQUE_ID_ddebug380, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_fill_fifo, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !341

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %27 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %fifo_bytes, align 1
  %conv = zext i8 %28 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_fill_fifo.__UNIQUE_ID_ddebug380, ptr noundef %26, ptr noundef nonnull @.str.65, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %29 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %fifo_bytes, align 1
  %31 = and i8 %30, 127
  store i8 %31, ptr %fifo_bytes, align 1
  %32 = xor i8 %31, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool10.not = icmp eq i8 %32, 0
  br i1 %tobool10.not, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %33 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %timeout_work, i32 noundef 2) #6
  br label %cleanup

if.end14:                                         ; preds = %do.end
  %sub = zext i8 %32 to i32
  %len15 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %len15 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len15, align 4
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 %sub)
  %37 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 63, ptr %prefix, align 1
  %call18 = call fastcc i32 @trf7970a_transmit(ptr noundef %trf, ptr noundef %1, i32 noundef %36, ptr noundef nonnull %prefix, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end14.cleanup_crit_edge, label %if.then20

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %if.end14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_fill_fifo, %if.then.i44)) #6
          to label %trf7970a_send_err_upstream.exit49 [label %if.then.i44], !srcloc !341

if.then.i44:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i43 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %38 = ptrtoint ptr %dev.i43 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i43, align 4
  %40 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %trf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %39, ptr noundef nonnull @.str.72, i32 noundef %41, i32 noundef %call18) #6
  br label %trf7970a_send_err_upstream.exit49

trf7970a_send_err_upstream.exit49:                ; preds = %if.then.i44, %if.then20
  %timeout_work.i45 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i46 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i45) #6
  %rx_skb.i47 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %42 = ptrtoint ptr %rx_skb.i47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_skb.i47, align 4
  call void @kfree_skb_reason(ptr noundef %43, i32 noundef 0) #6
  %44 = inttoptr i32 %call18 to ptr
  %45 = ptrtoint ptr %rx_skb.i47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %rx_skb.i47, align 4
  call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %cleanup

cleanup:                                          ; preds = %trf7970a_send_err_upstream.exit49, %if.end14.cleanup_crit_edge, %if.then11, %trf7970a_send_err_upstream.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %prefix) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo_bytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_send_err_upstream(ptr noundef %trf, i32 noundef %errno) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_err_upstream, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %1, ptr noundef nonnull @.str.72, i32 noundef %3, i32 noundef %errno) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %4 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %5, i32 noundef 0) #6
  %6 = inttoptr i32 %errno to ptr
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %rx_skb, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %trf)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_drain_fifo(ptr noundef %trf, i8 noundef zeroext %status) unnamed_addr #2 align 64 {
entry:
  %addr.i142 = alloca i8, align 1
  %addr.i = alloca i8, align 1
  %fifo_bytes = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %0 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_skb, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %fifo_bytes) #6
  %2 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %fifo_bytes, align 1, !annotation !342
  %3 = and i8 %status, 30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then.i)) #6
          to label %trf7970a_send_err_upstream.exit [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %6 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %7, i32 noundef -5) #6
  br label %trf7970a_send_err_upstream.exit

trf7970a_send_err_upstream.exit:                  ; preds = %if.then.i, %if.then
  %timeout_work.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #6
  %8 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -5 to ptr), ptr %rx_skb, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 92, ptr %addr.i, align 1
  %spi.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %12 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %13, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %fifo_bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.do.body3.i_crit_edge, label %do.end.i

if.end.do.body3.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i124 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i124 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i124, align 4
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr.i, align 1
  %conv2.i = zext i8 %17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %conv2.i, i32 noundef %call.i) #9
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i, %if.end.do.body3.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then8.i)) #6
          to label %trf7970a_read.exit [label %if.then8.i], !srcloc !341

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %18 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev9.i, align 4
  %20 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %addr.i, align 1
  %conv10.i = zext i8 %21 to i32
  %22 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fifo_bytes, align 1
  %conv11.i = zext i8 %23 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read.__UNIQUE_ID_ddebug371, ptr noundef %19, ptr noundef nonnull @.str.80, i32 noundef %conv10.i, i32 noundef %conv11.i) #6
  br label %trf7970a_read.exit

trf7970a_read.exit:                               ; preds = %if.then8.i, %do.body3.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  br i1 %tobool.not.i, label %do.body, label %if.then2

if.then2:                                         ; preds = %trf7970a_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then.i126)) #6
          to label %trf7970a_send_err_upstream.exit131 [label %if.then.i126], !srcloc !341

if.then.i126:                                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i125 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i125 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i125, align 4
  %26 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %trf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %25, ptr noundef nonnull @.str.72, i32 noundef %27, i32 noundef %call.i) #6
  br label %trf7970a_send_err_upstream.exit131

trf7970a_send_err_upstream.exit131:               ; preds = %if.then.i126, %if.then2
  %timeout_work.i127 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i128 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i127) #6
  %28 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_skb, align 4
  call void @kfree_skb_reason(ptr noundef %29, i32 noundef 0) #6
  %30 = inttoptr i32 %call.i to ptr
  %31 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %rx_skb, align 4
  call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %cleanup

do.body:                                          ; preds = %trf7970a_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_drain_fifo.__UNIQUE_ID_ddebug383, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then8)) #6
          to label %do.end [label %if.then8], !srcloc !341

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fifo_bytes, align 1
  %conv9 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_drain_fifo.__UNIQUE_ID_ddebug383, ptr noundef %33, ptr noundef nonnull @.str.74, i32 noundef %conv9) #6
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %36 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %fifo_bytes, align 1
  %38 = and i8 %37, 127
  store i8 %38, ptr %fifo_bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool14.not = icmp eq i8 %38, 0
  br i1 %tobool14.not, label %no_rx_data, label %if.end16

if.end16:                                         ; preds = %do.end
  %conv17 = zext i8 %38 to i32
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.i.not.i = icmp eq i32 %40, 0
  br i1 %tobool.i.not.i, label %cond.false.i, label %if.end16.skb_tailroom.exit_crit_edge

if.end16.skb_tailroom.exit_crit_edge:             ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_tailroom.exit

cond.false.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %end.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %44 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %skb_tailroom.exit

skb_tailroom.exit:                                ; preds = %cond.false.i, %if.end16.skb_tailroom.exit_crit_edge
  %cond.i = phi i32 [ %sub.ptr.sub.i, %cond.false.i ], [ 0, %if.end16.skb_tailroom.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i, i32 %conv17)
  %cmp = icmp slt i32 %cond.i, %conv17
  br i1 %cmp, label %if.then20, label %skb_tailroom.exit.if.end32_crit_edge

skb_tailroom.exit.if.end32_crit_edge:             ; preds = %skb_tailroom.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then20:                                        ; preds = %skb_tailroom.exit
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i132 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i133 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i134 = sub i32 %sub.ptr.lhs.cast.i132, %sub.ptr.rhs.cast.i133
  %call26 = call ptr @skb_copy_expand(ptr noundef %1, i32 noundef %sub.ptr.sub.i134, i32 noundef 256, i32 noundef 3264) #6
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %trf, i32 noundef -12)
  br label %cleanup

if.end29:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rx_skb, align 4
  call void @kfree_skb_reason(ptr noundef %50, i32 noundef 0) #6
  %51 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call26, ptr %rx_skb, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %skb_tailroom.exit.if.end32_crit_edge
  %skb.0 = phi ptr [ %call26, %if.end29 ], [ %1, %skb_tailroom.exit.if.end32_crit_edge ]
  %52 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %fifo_bytes, align 1
  %conv33 = zext i8 %53 to i32
  %call34 = call ptr @skb_put(ptr noundef %skb.0, i32 noundef %conv33) #6
  %54 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %fifo_bytes, align 1
  %conv35 = zext i8 %55 to i32
  %call36 = call fastcc i32 @trf7970a_read_cont(ptr noundef %trf, ptr noundef %call34, i32 noundef %conv35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.then38

if.then38:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then.i136)) #6
          to label %trf7970a_send_err_upstream.exit141 [label %if.then.i136], !srcloc !341

if.then.i136:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i135 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %56 = ptrtoint ptr %dev.i135 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i135, align 4
  %58 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %trf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %57, ptr noundef nonnull @.str.72, i32 noundef %59, i32 noundef %call36) #6
  br label %trf7970a_send_err_upstream.exit141

trf7970a_send_err_upstream.exit141:               ; preds = %if.then.i136, %if.then38
  %timeout_work.i137 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i138 = call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i137) #6
  %60 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rx_skb, align 4
  call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #6
  %62 = inttoptr i32 %call36 to ptr
  %63 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %rx_skb, align 4
  call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  %framing = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 20
  %64 = ptrtoint ptr %framing to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %framing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %65)
  %cmp40 = icmp eq i32 %65, 5
  br i1 %cmp40, label %land.lhs.true, label %if.end39.if.else_crit_edge

if.end39.if.else_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end39
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %66 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp42 = icmp eq i32 %67, 1
  br i1 %cmp42, label %land.lhs.true44, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true44:                                  ; preds = %land.lhs.true
  %special_fcn_reg1 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 16
  %68 = ptrtoint ptr %special_fcn_reg1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %special_fcn_reg1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %69)
  %cmp46 = icmp eq i8 %69, 4
  br i1 %cmp46, label %no_rx_data.thread, label %land.lhs.true44.if.else_crit_edge

land.lhs.true44.if.else_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

no_rx_data.thread:                                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %70 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  %74 = lshr i8 %73, 4
  store i8 %74, ptr %71, align 1
  br label %if.then65

if.else:                                          ; preds = %land.lhs.true44.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end39.if.else_crit_edge
  %75 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 6, ptr %trf, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i142) #6
  %76 = ptrtoint ptr %addr.i142 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 92, ptr %addr.i142, align 1
  %77 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %spi.i, align 4
  %call.i144 = call i32 @spi_write_then_read(ptr noundef %78, ptr noundef nonnull %addr.i142, i32 noundef 1, ptr noundef nonnull %fifo_bytes, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.else.do.body3.i149_crit_edge, label %do.end.i148

if.else.do.body3.i149_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i149

do.end.i148:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i146 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %79 = ptrtoint ptr %dev.i146 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i146, align 4
  %81 = ptrtoint ptr %addr.i142 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %addr.i142, align 1
  %conv2.i147 = zext i8 %82 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %conv2.i147, i32 noundef %call.i144) #9
  br label %do.body3.i149

do.body3.i149:                                    ; preds = %do.end.i148, %if.else.do.body3.i149_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then8.i153)) #6
          to label %trf7970a_read.exit154 [label %if.then8.i153], !srcloc !341

if.then8.i153:                                    ; preds = %do.body3.i149
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i150 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %83 = ptrtoint ptr %dev9.i150 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev9.i150, align 4
  %85 = ptrtoint ptr %addr.i142 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %addr.i142, align 1
  %conv10.i151 = zext i8 %86 to i32
  %87 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %fifo_bytes, align 1
  %conv11.i152 = zext i8 %88 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read.__UNIQUE_ID_ddebug371, ptr noundef %84, ptr noundef nonnull @.str.80, i32 noundef %conv10.i151, i32 noundef %conv11.i152) #6
  br label %trf7970a_read.exit154

trf7970a_read.exit154:                            ; preds = %if.then8.i153, %do.body3.i149
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i142) #6
  br i1 %tobool.not.i145, label %if.end54, label %if.then53

if.then53:                                        ; preds = %trf7970a_read.exit154
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @trf7970a_send_err_upstream(ptr noundef %trf, i32 noundef %call.i144)
  br label %cleanup

if.end54:                                         ; preds = %trf7970a_read.exit154
  %89 = ptrtoint ptr %fifo_bytes to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fifo_bytes, align 1
  %91 = and i8 %90, 127
  store i8 %91, ptr %fifo_bytes, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool58.not = icmp eq i8 %91, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp63 = icmp eq i8 %status, 64
  %or.cond = and i1 %cmp63, %tobool58.not
  br i1 %or.cond, label %if.end54.if.then65_crit_edge, label %if.end54.do.body67_crit_edge

if.end54.do.body67_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

if.end54.if.then65_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

no_rx_data:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %status)
  %cmp63.old = icmp eq i8 %status, 64
  br i1 %cmp63.old, label %no_rx_data.if.then65_crit_edge, label %no_rx_data.do.body67_crit_edge

no_rx_data.do.body67_crit_edge:                   ; preds = %no_rx_data
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67

no_rx_data.if.then65_crit_edge:                   ; preds = %no_rx_data
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then65:                                        ; preds = %no_rx_data.if.then65_crit_edge, %if.end54.if.then65_crit_edge, %no_rx_data.thread
  call fastcc void @trf7970a_send_upstream(ptr noundef %trf)
  br label %cleanup

do.body67:                                        ; preds = %no_rx_data.do.body67_crit_edge, %if.end54.do.body67_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_drain_fifo.__UNIQUE_ID_ddebug386, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_drain_fifo, %if.then79)) #6
          to label %do.end83 [label %if.then79], !srcloc !341

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %dev80 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %92 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev80, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_drain_fifo.__UNIQUE_ID_ddebug386, ptr noundef %93, ptr noundef nonnull @.str.75, i32 noundef 20) #6
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %do.body67
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %94 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %timeout_work, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %if.then65, %if.then53, %trf7970a_send_err_upstream.exit141, %if.then28, %trf7970a_send_err_upstream.exit131, %trf7970a_send_err_upstream.exit
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %fifo_bytes) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_read(ptr nocapture noundef readonly %trf, i8 noundef zeroext %reg, ptr noundef %val) unnamed_addr #2 align 64 {
entry:
  %addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  %0 = or i8 %reg, 64
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %0, ptr %addr, align 1
  %spi = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_write_then_read(ptr noundef %3, ptr noundef nonnull %addr, i32 noundef 1, ptr noundef %val, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %do.end

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %addr, align 1
  %conv2 = zext i8 %7 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %conv2, i32 noundef %call) #9
  br label %do.body3

do.body3:                                         ; preds = %do.end, %entry.do.body3_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_read, %if.then8)) #6
          to label %do.end14 [label %if.then8], !srcloc !341

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %8 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev9, align 4
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %addr, align 1
  %conv10 = zext i8 %11 to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %val, align 1
  %conv11 = zext i8 %13 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read.__UNIQUE_ID_ddebug371, ptr noundef %9, ptr noundef nonnull @.str.80, i32 noundef %conv10, i32 noundef %conv11) #6
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %do.body3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_send_upstream(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_skb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 8
  %0 = ptrtoint ptr %tx_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_skb, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %1, i32 noundef 1) #6
  %2 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %tx_skb, align 4
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %3 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rx_skb, align 4
  %tobool.not = icmp eq ptr %4, null
  %cmp.i = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  %or.cond = or i1 %tobool.not, %cmp.i
  br i1 %or.cond, label %entry.if.end12_crit_edge, label %land.lhs.true3

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true3:                                   ; preds = %entry
  %aborting = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 7
  %5 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %aborting, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br i1 %tobool4.not, label %do.body, label %land.lhs.true3.if.end12_crit_edge

land.lhs.true3.if.end12_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_upstream.__UNIQUE_ID_ddebug375, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_upstream, %if.then9)) #6
          to label %if.end12 [label %if.then9], !srcloc !341

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.82, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %10, i32 noundef %12, i1 noundef zeroext false) #6
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %land.lhs.true3.if.end12_crit_edge, %entry.if.end12_crit_edge
  %13 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %trf, align 4
  %aborting13 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 7
  %14 = ptrtoint ptr %aborting13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %aborting13, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool14.not = icmp eq i8 %15, 0
  br i1 %tobool14.not, label %if.end12.if.end39_crit_edge, label %do.body16

if.end12.if.end39_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

do.body16:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_upstream.__UNIQUE_ID_ddebug376, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_upstream, %if.then28)) #6
          to label %do.end30 [label %if.then28], !srcloc !341

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_upstream.__UNIQUE_ID_ddebug376, ptr noundef %17, ptr noundef nonnull @.str.83) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body16
  %18 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_skb, align 4
  %cmp.i63 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %do.end30.if.end37_crit_edge, label %if.then33

do.end30.if.end37_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree_skb_reason(ptr noundef %19, i32 noundef 0) #6
  %20 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -125 to ptr), ptr %rx_skb, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %do.end30.if.end37_crit_edge
  %21 = ptrtoint ptr %aborting13 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %aborting13, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.end37, %if.end12.if.end39_crit_edge
  %cb = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 10
  %22 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cb, align 4
  %ddev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 4
  %24 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ddev, align 4
  %cb_arg = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 11
  %26 = ptrtoint ptr %cb_arg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb_arg, align 4
  %28 = ptrtoint ptr %rx_skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_skb, align 4
  tail call void %23(ptr noundef %25, ptr noundef %27, ptr noundef %29) #6
  %30 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %rx_skb, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_write(ptr nocapture noundef readonly %trf, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %reg, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %val, ptr %0, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_write.__UNIQUE_ID_ddebug373, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_write, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %conv = zext i8 %reg to i32
  %conv3 = zext i8 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_write.__UNIQUE_ID_ddebug373, ptr noundef %4, ptr noundef nonnull @.str.85, i32 noundef %conv, i32 noundef %conv3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %spi = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %5 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %7 = getelementptr inbounds i8, ptr %t.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 92)
  %9 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %buf, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
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
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %do.end.spi_write.exit_crit_edge

do.end.spi_write.exit_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
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

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %do.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %6, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %spi_write.exit.if.end14_crit_edge, label %do.end9

spi_write.exit.if.end14_crit_edge:                ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end9:                                          ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev10 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %21 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev10, align 4
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %buf, align 1
  %conv11 = zext i8 %24 to i32
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %0, align 1
  %conv13 = zext i8 %26 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.84, i32 noundef %conv11, i32 noundef %conv13, i32 noundef %call.i.i) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end9, %spi_write.exit.if.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #6
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_mode_detect(ptr nocapture noundef readonly %trf, ptr nocapture noundef writeonly %rf_tech) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf.i, align 1, !annotation !342
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !342
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 121, ptr %addr.i, align 1
  %spi.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %4 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %5, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %trf7970a_read_target_proto.exit

trf7970a_read_target_proto.exit:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef %call.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.148)
  switch i8 %9, label %do.body [
    i8 -55, label %if.end.sw.epilog_crit_edge
    i8 -59, label %sw.bb1
    i8 -46, label %sw.bb2
    i8 -45, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_mode_detect.__UNIQUE_ID_ddebug374, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_mode_detect, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !341

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %conv9 = zext i8 %9 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_mode_detect.__UNIQUE_ID_ddebug374, ptr noundef %12, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef %conv9) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge
  %tech.0 = phi i8 [ 2, %sw.bb3 ], [ 1, %sw.bb2 ], [ 4, %sw.bb1 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %13 = ptrtoint ptr %rf_tech to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %tech.0, ptr %rf_tech, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then8, %do.body, %trf7970a_read_target_proto.exit
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call.i, %trf7970a_read_target_proto.exit ], [ -5, %if.then8 ], [ -5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_write_then_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_transmit(ptr noundef %trf, ptr noundef %skb, i32 noundef %len, ptr noundef %prefix, i32 noundef %prefix_len) unnamed_addr #2 align 64 {
entry:
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_transmit.__UNIQUE_ID_ddebug378, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_transmit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.67, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %1, i32 noundef %len, i1 noundef zeroext false) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = getelementptr inbounds i8, ptr %m, i32 8
  %3 = call ptr @memset(ptr %2, i32 0, i32 40)
  %4 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %6 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %t, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 188)
  %10 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %prefix, ptr %t, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %11 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %prefix_len, ptr %len4, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %data6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %16 = ptrtoint ptr %data6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data6, align 4
  %arrayidx7 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %arrayidx7, align 4
  %len10 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %len10 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %len10, align 4
  %transfer_list.i80 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i80, ptr noundef %21, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i82, label %if.end.i.i.i84, label %spi_message_add_tail.exit.spi_message_add_tail.exit85_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit85_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit85

if.end.i.i.i84:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i80, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i80 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m, ptr %transfer_list.i80, align 4
  %prev3.i.i.i83 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i83 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i83, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i80, ptr %21, align 4
  br label %spi_message_add_tail.exit85

spi_message_add_tail.exit85:                      ; preds = %if.end.i.i.i84, %spi_message_add_tail.exit.spi_message_add_tail.exit85_crit_edge
  %spi = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %26 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi, align 4
  %call12 = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %spi_message_add_tail.exit85
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.66, i32 noundef %call12) #9
  br label %cleanup

if.end18:                                         ; preds = %spi_message_add_tail.exit85
  %call19 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %len) #6
  %len20 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.not = icmp eq i32 %31, 0
  br i1 %cmp.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %trf, align 4
  br label %do.body35

if.else:                                          ; preds = %if.end18
  %issue_eof = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 23
  %33 = ptrtoint ptr %issue_eof to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %issue_eof, align 2, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool22.not = icmp eq i8 %34, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 7, ptr %trf, align 4
  br label %do.body35

if.else25:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 5, ptr %trf, align 4
  %timeout27 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 27
  %37 = ptrtoint ptr %timeout27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %timeout27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool28.not = icmp eq i32 %38, 0
  %. = select i1 %tobool28.not, i32 20, i32 %38
  br label %do.body35

do.body35:                                        ; preds = %if.else25, %if.then23, %if.then21
  %timeout.0 = phi i32 [ 20, %if.then21 ], [ 40, %if.then23 ], [ %., %if.else25 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_transmit.__UNIQUE_ID_ddebug379, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_transmit, %if.then47)) #6
          to label %do.end52 [label %if.then47], !srcloc !341

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %dev48 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %39 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev48, align 4
  %41 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %trf, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_transmit.__UNIQUE_ID_ddebug379, ptr noundef %40, ptr noundef nonnull @.str.70, i32 noundef %timeout.0, i32 noundef %42) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then47, %do.body35
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout.0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %43 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %43, ptr noundef %timeout_work, i32 noundef %call2.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #6
  ret i32 %call12
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_read_cont(ptr nocapture noundef readonly %trf, ptr noundef %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #6
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 127, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #6
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read_cont.__UNIQUE_ID_ddebug372, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_read_cont, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 1
  %conv5 = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read_cont.__UNIQUE_ID_ddebug372, ptr noundef %2, ptr noundef nonnull @.str.77, i32 noundef %conv5, i32 noundef %len) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = getelementptr inbounds i8, ptr %m, i32 8
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %9 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %11 = getelementptr inbounds i8, ptr %t, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 188)
  %13 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %addr, ptr %t, align 4
  %len7 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %14 = ptrtoint ptr %len7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %len7, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.spi_message_add_tail.exit_crit_edge

do.end.spi_message_add_tail.exit_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %do.end.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %buf, ptr %rx_buf, align 4
  %len11 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %len11, align 4
  %transfer_list.i1 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i3 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i1, ptr noundef %22, ptr noundef nonnull %m) #6
  br i1 %call.i.i.i3, label %if.end.i.i.i5, label %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_message_add_tail.exit6

if.end.i.i.i5:                                    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i1, ptr %prev.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %transfer_list.i1, align 4
  %prev3.i.i.i4 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i4, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i1, ptr %22, align 4
  br label %spi_message_add_tail.exit6

spi_message_add_tail.exit6:                       ; preds = %if.end.i.i.i5, %spi_message_add_tail.exit.spi_message_add_tail.exit6_crit_edge
  %spi = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %27 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi, align 4
  %call13 = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %m) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %spi_message_add_tail.exit6.if.end21_crit_edge, label %do.end18

spi_message_add_tail.exit6.if.end21_crit_edge:    ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.end18:                                         ; preds = %spi_message_add_tail.exit6
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %29 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev19, align 4
  %31 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %addr, align 1
  %conv20 = zext i8 %32 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef %conv20, i32 noundef %call13) #9
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %spi_message_add_tail.exit6.if.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #6
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_issue_eof(ptr noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_issue_eof.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_issue_eof, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_issue_eof.__UNIQUE_ID_ddebug388, ptr noundef %1, ptr noundef nonnull @.str.94) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %trf, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end6_crit_edge, label %if.then5

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_issue_eof, %if.then.i49)) #6
          to label %trf7970a_send_err_upstream.exit [label %if.then.i49], !srcloc !341

if.then.i49:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %4 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %3, ptr noundef nonnull @.str.72, i32 noundef %5, i32 noundef %call3) #6
  br label %trf7970a_send_err_upstream.exit

trf7970a_send_err_upstream.exit:                  ; preds = %if.then.i49, %if.then5
  %timeout_work.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i) #6
  %rx_skb.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %6 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %7, i32 noundef 0) #6
  %8 = inttoptr i32 %call3 to ptr
  %9 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rx_skb.i, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %if.end6

if.end6:                                          ; preds = %trf7970a_send_err_upstream.exit, %do.end.if.end6_crit_edge
  %call7 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %trf, i8 noundef zeroext 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_issue_eof, %if.then.i51)) #6
          to label %trf7970a_send_err_upstream.exit55 [label %if.then.i51], !srcloc !341

if.then.i51:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i50 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i50, align 4
  %12 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %11, ptr noundef nonnull @.str.72, i32 noundef %13, i32 noundef %call7) #6
  br label %trf7970a_send_err_upstream.exit55

trf7970a_send_err_upstream.exit55:                ; preds = %if.then.i51, %if.then9
  %timeout_work.i52 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  %call3.i53 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work.i52) #6
  %rx_skb.i54 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 9
  %14 = ptrtoint ptr %rx_skb.i54 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_skb.i54, align 4
  tail call void @kfree_skb_reason(ptr noundef %15, i32 noundef 0) #6
  %16 = inttoptr i32 %call7 to ptr
  %17 = ptrtoint ptr %rx_skb.i54 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %rx_skb.i54, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %trf) #6
  br label %if.end10

if.end10:                                         ; preds = %trf7970a_send_err_upstream.exit55, %if.end6.if.end10_crit_edge
  %18 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %trf, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_issue_eof.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_issue_eof, %if.then23)) #6
          to label %if.else.i [label %if.then23], !srcloc !341

if.then23:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %19 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev24, align 4
  %timeout = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 27
  %21 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timeout, align 4
  %23 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_issue_eof.__UNIQUE_ID_ddebug389, ptr noundef %20, ptr noundef nonnull @.str.70, i32 noundef %22, i32 noundef %24) #6
  br label %if.else.i

if.else.i:                                        ; preds = %if.then23, %if.end10
  %timeout29 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 27
  %25 = ptrtoint ptr %timeout29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %timeout29, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %26) #6
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %27 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %27, ptr noundef %timeout_work, i32 noundef %call2.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_in_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_configure_hw, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug400, ptr noundef %3, ptr noundef nonnull @.str.96, i32 noundef %type, i32 noundef %param) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %is_initiator = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %is_initiator to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %is_initiator, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.then6, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %call7 = tail call fastcc i32 @trf7970a_switch_rf_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.err_unlock_crit_edge

if.then6.err_unlock_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %type, label %do.body15 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @trf7970a_in_config_rf_tech(ptr noundef %1, i32 noundef %param)
  br label %err_unlock

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call fastcc i32 @trf7970a_in_config_framing(ptr noundef %1, i32 noundef %param)
  br label %err_unlock

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_configure_hw, %if.then27)) #6
          to label %err_unlock [label %if.then27], !srcloc !341

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug401, ptr noundef %9, ptr noundef nonnull @.str.97, i32 noundef %type) #6
  br label %err_unlock

err_unlock:                                       ; preds = %if.then27, %do.body15, %sw.bb13, %sw.bb, %if.then6.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then6.err_unlock_crit_edge ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb ], [ -22, %if.then27 ], [ -22, %do.body15 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_send_cmd(ptr noundef %ddev, ptr noundef %skb, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %addr.i = alloca i8, align 1
  %prefix = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %prefix) #6
  %2 = getelementptr inbounds [5 x i8], ptr %prefix, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %prefix, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %prefix, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %prefix, i32 0, i32 4
  %6 = call ptr @memset(ptr %prefix, i32 255, i32 5)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %conv = zext i16 %timeout to i32
  %len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_cmd.__UNIQUE_ID_ddebug402, ptr noundef %8, ptr noundef nonnull @.str.114, i32 noundef %10, i32 noundef %conv, i32 noundef %12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %len5 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %13 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %14)
  %cmp = icmp ugt i32 %14, 4095
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  %17 = and i32 %16, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp eq i32 %17, 2
  br i1 %switch, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dev19 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.113, i32 noundef %16) #9
  br label %out_err

if.end21:                                         ; preds = %if.end8
  %aborting = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %aborting, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool22.not = icmp eq i8 %21, 0
  br i1 %tobool22.not, label %if.end42, label %do.body24

do.body24:                                        ; preds = %if.end21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_cmd, %if.then36)) #6
          to label %do.end40 [label %if.then36], !srcloc !341

if.then36:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %dev37 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_cmd.__UNIQUE_ID_ddebug403, ptr noundef %23, ptr noundef nonnull @.str.83) #6
  br label %do.end40

do.end40:                                         ; preds = %if.then36, %do.body24
  %24 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %aborting, align 1
  br label %out_err

if.end42:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %timeout)
  %tobool43.not = icmp eq i16 %timeout, 0
  br i1 %tobool43.not, label %if.end42.if.end67_crit_edge, label %if.then44

if.end42.if.end67_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then44:                                        ; preds = %if.end42
  %call45 = tail call ptr @nfc_alloc_recv_skb(i32 noundef 256, i32 noundef 3264) #6
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %rx_skb, align 4
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %do.body49, label %if.then44.if.end67_crit_edge

if.then44.if.end67_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.body49:                                        ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_send_cmd, %if.then61)) #6
          to label %out_err [label %if.then61], !srcloc !341

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %dev62 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_cmd.__UNIQUE_ID_ddebug404, ptr noundef %27, ptr noundef nonnull @.str.116) #6
  br label %out_err

if.end67:                                         ; preds = %if.then44.if.end67_crit_edge, %if.end42.if.end67_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp69 = icmp eq i32 %29, 3
  br i1 %cmp69, label %if.then71, label %if.end67.if.end77_crit_edge

if.end67.if.end77_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

if.then71:                                        ; preds = %if.end67
  %call72 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %1, i8 noundef zeroext 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then71.out_err_crit_edge

if.then71.out_err_crit_edge:                      ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end75:                                         ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %1, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.end75, %if.end67.if.end77_crit_edge
  %is_initiator = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %is_initiator to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_initiator, align 4, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool78.not = icmp eq i8 %32, 0
  br i1 %tobool78.not, label %if.end77.if.end84_crit_edge, label %if.then79

if.end77.if.end84_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then79:                                        ; preds = %if.end77
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i, align 4
  %issue_eof.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %issue_eof.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %issue_eof.i, align 2
  %technology.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 19
  %36 = ptrtoint ptr %technology.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %technology.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %37, label %if.then79.if.end84_crit_edge [
    i32 0, label %land.lhs.true.i
    i32 3, label %if.then19.i
  ]

if.then79.if.end84_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.lhs.true.i:                                  ; preds = %if.then79
  %framing.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 20
  %39 = ptrtoint ptr %framing.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %framing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %40)
  %cmp1.i = icmp eq i32 %40, 5
  br i1 %cmp1.i, label %if.then.i, label %land.lhs.true.i.if.end84_crit_edge

land.lhs.true.i.if.end84_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then.i:                                        ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %42)
  %cmp2.i = icmp eq i8 %42, 48
  %..i = select i1 %cmp2.i, i8 0, i8 4
  %special_fcn_reg16.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 16
  %43 = ptrtoint ptr %special_fcn_reg16.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %special_fcn_reg16.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %..i, i8 %44)
  %cmp8.not.i = icmp eq i8 %..i, %44
  br i1 %cmp8.not.i, label %if.then.i.if.end84_crit_edge, label %if.then10.i

if.then.i.if.end84_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then10.i:                                      ; preds = %if.then.i
  %call.i = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext %..i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end12.i, label %if.then10.i.out_err_crit_edge

if.then10.i.out_err_crit_edge:                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end12.i:                                       ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %special_fcn_reg16.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %..i, ptr %special_fcn_reg16.i, align 4
  br label %if.end84

if.then19.i:                                      ; preds = %if.then79
  %iso_ctrl20.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 13
  %46 = ptrtoint ptr %iso_ctrl20.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iso_ctrl20.i, align 1
  %48 = and i8 %47, -32
  %49 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %34, align 1
  %51 = and i8 %50, 3
  %and25.i = zext i8 %51 to i32
  %52 = zext i32 %and25.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %and25.i, label %if.then19.unreachabledefault.i [
    i32 0, label %if.then19.i.sw.epilog.i_crit_edge
    i32 1, label %sw.bb28.i
    i32 2, label %sw.bb32.i
    i32 3, label %sw.bb36.i
  ]

if.then19.i.sw.epilog.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb28.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %53 = or i8 %48, 4
  br label %sw.epilog.i

sw.bb32.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = or i8 %48, 2
  br label %sw.epilog.i

sw.bb36.i:                                        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = or i8 %48, 6
  br label %sw.epilog.i

if.then19.unreachabledefault.i:                   ; preds = %if.then19.i
  unreachable

sw.epilog.i:                                      ; preds = %sw.bb36.i, %sw.bb32.i, %sw.bb28.i, %if.then19.i.sw.epilog.i_crit_edge
  %iso_ctrl.0.i = phi i8 [ %55, %sw.bb36.i ], [ %54, %sw.bb32.i ], [ %53, %sw.bb28.i ], [ %48, %if.then19.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %iso_ctrl.0.i, i8 %47)
  %cmp43.not.i = icmp eq i8 %iso_ctrl.0.i, %47
  br i1 %cmp43.not.i, label %sw.epilog.i.if.end51.i_crit_edge, label %if.then45.i

sw.epilog.i.if.end51.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51.i

if.then45.i:                                      ; preds = %sw.epilog.i
  %call46.i = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %iso_ctrl.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.then45.i.out_err_crit_edge

if.then45.i.out_err_crit_edge:                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end49.i:                                       ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %iso_ctrl20.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %iso_ctrl.0.i, ptr %iso_ctrl20.i, align 1
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.end49.i, %sw.epilog.i.if.end51.i_crit_edge
  %framing52.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 20
  %57 = ptrtoint ptr %framing52.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %framing52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %58)
  %cmp53.i = icmp eq i32 %58, 13
  br i1 %cmp53.i, label %land.lhs.true55.i, label %if.end51.i.if.end84_crit_edge

if.end51.i.if.end84_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.lhs.true55.i:                                ; preds = %if.end51.i
  %arrayidx56.i = getelementptr i8, ptr %34, i32 1
  %59 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx56.i, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.152)
  switch i8 %60, label %land.lhs.true55.i.if.end84_crit_edge [
    i8 33, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge
    i8 34, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge193
    i8 36, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge194
    i8 39, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge195
    i8 40, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge196
    i8 41, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge197
    i8 42, label %land.lhs.true55.i.land.lhs.true59.i_crit_edge198
  ]

land.lhs.true55.i.land.lhs.true59.i_crit_edge198: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge197: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge196: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge195: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge194: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge193: ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.land.lhs.true59.i_crit_edge:    ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true59.i

land.lhs.true55.i.if.end84_crit_edge:             ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

land.lhs.true59.i:                                ; preds = %land.lhs.true55.i.land.lhs.true59.i_crit_edge, %land.lhs.true55.i.land.lhs.true59.i_crit_edge193, %land.lhs.true55.i.land.lhs.true59.i_crit_edge194, %land.lhs.true55.i.land.lhs.true59.i_crit_edge195, %land.lhs.true55.i.land.lhs.true59.i_crit_edge196, %land.lhs.true55.i.land.lhs.true59.i_crit_edge197, %land.lhs.true55.i.land.lhs.true59.i_crit_edge198
  %62 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %34, align 1
  %64 = and i8 %63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool63.not.i = icmp eq i8 %64, 0
  br i1 %tobool63.not.i, label %land.lhs.true59.i.if.end84_crit_edge, label %if.then64.i

land.lhs.true59.i.if.end84_crit_edge:             ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end84

if.then64.i:                                      ; preds = %land.lhs.true59.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %issue_eof.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %issue_eof.i, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.then64.i, %land.lhs.true59.i.if.end84_crit_edge, %land.lhs.true55.i.if.end84_crit_edge, %if.end51.i.if.end84_crit_edge, %if.end12.i, %if.then.i.if.end84_crit_edge, %land.lhs.true.i.if.end84_crit_edge, %if.then79.if.end84_crit_edge, %if.end77.if.end84_crit_edge
  %ddev85 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 4
  %66 = ptrtoint ptr %ddev85 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %ddev, ptr %ddev85, align 4
  %tx_skb = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 8
  %67 = ptrtoint ptr %tx_skb to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %skb, ptr %tx_skb, align 4
  %cb86 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 10
  %68 = ptrtoint ptr %cb86 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %cb, ptr %cb86, align 4
  %cb_arg = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 11
  %69 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arg, ptr %cb_arg, align 4
  %conv87 = zext i16 %timeout to i32
  %timeout88 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 27
  %70 = ptrtoint ptr %timeout88 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv87, ptr %timeout88, align 4
  %ignore_timeout = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 28
  %71 = ptrtoint ptr %ignore_timeout to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %ignore_timeout, align 4
  %72 = ptrtoint ptr %len5 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len5, align 4
  %74 = ptrtoint ptr %prefix to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -113, ptr %prefix, align 1
  %tx_cmd = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 22
  %75 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %tx_cmd, align 1
  %77 = and i8 %76, 31
  %78 = or i8 %77, -128
  %79 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %2, align 1
  %80 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 61, ptr %3, align 1
  %framing = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 20
  %81 = ptrtoint ptr %framing to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %framing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp94 = icmp eq i32 %82, 0
  br i1 %cmp94, label %if.then96, label %if.else

if.then96:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %4, align 1
  br label %if.end111

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %and99 = lshr i32 %73, 4
  %conv107 = trunc i32 %and99 to i8
  %84 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv107, ptr %4, align 1
  %.tr = trunc i32 %73 to i8
  %conv109 = shl i8 %.tr, 4
  br label %if.end111

if.end111:                                        ; preds = %if.else, %if.then96
  %storemerge = phi i8 [ %conv109, %if.else ], [ 15, %if.then96 ]
  %85 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %storemerge, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %86 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -1, ptr %buf.i, align 1, !annotation !342
  %87 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -1, ptr %87, align 1, !annotation !342
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %quirks.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 5
  %89 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i187 = icmp eq i32 %and.i, 0
  %spec.store.select.i = select i1 %tobool.not.i187, i8 76, i8 108
  %91 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %spec.store.select.i, ptr %addr.i, align 1
  %spec.select.i = select i1 %tobool.not.i187, i32 1, i32 2
  %spi2.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 2
  %92 = ptrtoint ptr %spi2.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %spi2.i, align 4
  %call4.i = call i32 @spi_write_then_read(ptr noundef %93, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %buf.i, i32 noundef %spec.select.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end119, label %trf7970a_read_irqstatus.exit

trf7970a_read_irqstatus.exit:                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %94 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef %call4.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %out_err

if.end119:                                        ; preds = %if.end111
  %96 = call i32 @llvm.smin.i32(i32 %73, i32 127)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call120 = call fastcc i32 @trf7970a_transmit(ptr noundef %1, ptr noundef %skb, i32 noundef %96, ptr noundef nonnull %prefix, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end119.out_err_crit_edge, label %if.then122

if.end119.out_err_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #8
  %rx_skb123 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 9
  %97 = ptrtoint ptr %rx_skb123 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_skb123, align 4
  call void @kfree_skb_reason(ptr noundef %98, i32 noundef 0) #6
  %99 = ptrtoint ptr %rx_skb123 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr null, ptr %rx_skb123, align 4
  br label %out_err

out_err:                                          ; preds = %if.then122, %if.end119.out_err_crit_edge, %trf7970a_read_irqstatus.exit, %if.then45.i.out_err_crit_edge, %if.then10.i.out_err_crit_edge, %if.then71.out_err_crit_edge, %if.then61, %do.body49, %do.end40, %do.end18
  %ret.0 = phi i32 [ -5, %do.end18 ], [ -125, %do.end40 ], [ %call72, %if.then71.out_err_crit_edge ], [ %call4.i, %trf7970a_read_irqstatus.exit ], [ %call120, %if.then122 ], [ 0, %if.end119.out_err_crit_edge ], [ -12, %if.then61 ], [ -12, %do.body49 ], [ %call.i, %if.then10.i.out_err_crit_edge ], [ %call46.i, %if.then45.i.out_err_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %out_err, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_err ], [ -22, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %prefix) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_tg_configure_hw(ptr nocapture noundef readonly %ddev, i32 noundef %type, i32 noundef %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_configure_hw, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, ptr noundef %3, ptr noundef nonnull @.str.96, i32 noundef %type, i32 noundef %param) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %is_initiator = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %is_initiator to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %is_initiator, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.then6, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then6:                                         ; preds = %do.end
  %call7 = tail call fastcc i32 @trf7970a_switch_rf_on(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then6.err_unlock_crit_edge

if.then6.err_unlock_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unlock

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %7 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %type, label %do.body15 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @trf7970a_tg_config_rf_tech(ptr noundef %1, i32 noundef %param)
  br label %err_unlock

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call fastcc i32 @trf7970a_tg_config_framing(ptr noundef %1, i32 noundef %param)
  br label %err_unlock

do.body15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_configure_hw, %if.then27)) #6
          to label %err_unlock [label %if.then27], !srcloc !341

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug412, ptr noundef %9, ptr noundef nonnull @.str.97, i32 noundef %type) #6
  br label %err_unlock

err_unlock:                                       ; preds = %if.then27, %do.body15, %sw.bb13, %sw.bb, %if.then6.err_unlock_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then6.err_unlock_crit_edge ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb ], [ -22, %if.then27 ], [ -22, %do.body15 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_tg_listen(ptr noundef %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_listen.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_listen, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %conv = zext i16 %timeout to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_listen.__UNIQUE_ID_ddebug415, ptr noundef %3, ptr noundef nonnull @.str.121, i32 noundef %5, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @_trf7970a_tg_listen(ptr noundef %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg, i1 noundef zeroext false)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_tg_listen_md(ptr noundef %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_listen_md.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_listen_md, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %conv = zext i16 %timeout to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_listen_md.__UNIQUE_ID_ddebug416, ptr noundef %3, ptr noundef nonnull @.str.124, i32 noundef %5, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_listen_md, %if.then.i)) #6
          to label %do.end.i [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, ptr noundef %9, ptr noundef nonnull @.str.96, i32 noundef 0, i32 noundef 0) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %lock.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %is_initiator.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %is_initiator.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %is_initiator.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %switch.i = icmp ult i32 %12, 2
  br i1 %switch.i, label %if.then6.i, label %do.end.i.if.end11.i_crit_edge

do.end.i.if.end11.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then6.i:                                       ; preds = %do.end.i
  %call7.i = tail call fastcc i32 @trf7970a_switch_rf_on(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.then6.i.if.end11.i_crit_edge, label %trf7970a_tg_configure_hw.exit.thread42

if.then6.i.if.end11.i_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

trf7970a_tg_configure_hw.exit.thread42:           ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

if.end11.i:                                       ; preds = %if.then6.i.if.end11.i_crit_edge, %do.end.i.if.end11.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_listen_md, %if.then.i36)) #6
          to label %do.end.i37 [label %if.then.i36], !srcloc !341

if.then.i36:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i35 = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 1
  %13 = ptrtoint ptr %dev.i35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407, ptr noundef %14, ptr noundef nonnull @.str.108, i32 noundef 0) #6
  br label %do.end.i37

do.end.i37:                                       ; preds = %if.then.i36, %if.end11.i
  %iso_ctrl_tech.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 14
  %15 = ptrtoint ptr %iso_ctrl_tech.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 36, ptr %iso_ctrl_tech.i, align 2
  %modulator_sys_clk_ctrl.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 15
  %16 = ptrtoint ptr %modulator_sys_clk_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %modulator_sys_clk_ctrl.i, align 1
  %18 = and i8 %17, -8
  %19 = or i8 %18, 1
  store i8 %19, ptr %modulator_sys_clk_ctrl.i, align 1
  %technology.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 19
  %20 = ptrtoint ptr %technology.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %technology.i, align 4
  %framing.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 20
  %21 = ptrtoint ptr %framing.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %framing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %22)
  %cmp.i = icmp eq i32 %22, 11
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.i37.trf7970a_tg_configure_hw.exit.thread_crit_edge

do.end.i37.trf7970a_tg_configure_hw.exit.thread_crit_edge: ; preds = %do.end.i37
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_tg_configure_hw.exit.thread

land.lhs.true.i:                                  ; preds = %do.end.i37
  %iso_ctrl.i = getelementptr inbounds %struct.trf7970a, ptr %7, i32 0, i32 13
  %23 = ptrtoint ptr %iso_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iso_ctrl.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %24)
  %cmp42.not.i = icmp eq i8 %24, 36
  br i1 %cmp42.not.i, label %land.lhs.true.i.trf7970a_tg_configure_hw.exit.thread_crit_edge, label %trf7970a_tg_configure_hw.exit

land.lhs.true.i.trf7970a_tg_configure_hw.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_tg_configure_hw.exit.thread

trf7970a_tg_configure_hw.exit.thread:             ; preds = %land.lhs.true.i.trf7970a_tg_configure_hw.exit.thread_crit_edge, %do.end.i37.trf7970a_tg_configure_hw.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %if.end7

trf7970a_tg_configure_hw.exit:                    ; preds = %land.lhs.true.i
  %call46.i = tail call fastcc i32 @trf7970a_write(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext 36) #6
  %25 = ptrtoint ptr %iso_ctrl_tech.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iso_ctrl_tech.i, align 2
  %27 = ptrtoint ptr %iso_ctrl.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %iso_ctrl.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool5.not = icmp eq i32 %call46.i, 0
  br i1 %tobool5.not, label %trf7970a_tg_configure_hw.exit.if.end7_crit_edge, label %trf7970a_tg_configure_hw.exit.cleanup_crit_edge

trf7970a_tg_configure_hw.exit.cleanup_crit_edge:  ; preds = %trf7970a_tg_configure_hw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

trf7970a_tg_configure_hw.exit.if.end7_crit_edge:  ; preds = %trf7970a_tg_configure_hw.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %trf7970a_tg_configure_hw.exit.if.end7_crit_edge, %trf7970a_tg_configure_hw.exit.thread
  %28 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_listen_md, %if.then.i24)) #6
          to label %do.end.i28 [label %if.then.i24], !srcloc !341

if.then.i24:                                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i23 = getelementptr inbounds %struct.trf7970a, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dev.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i23, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, ptr noundef %31, ptr noundef nonnull @.str.96, i32 noundef 1, i32 noundef 7) #6
  br label %do.end.i28

do.end.i28:                                       ; preds = %if.then.i24, %if.end7
  %lock.i25 = getelementptr inbounds %struct.trf7970a, ptr %29, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock.i25, i32 noundef 0) #6
  %is_initiator.i26 = getelementptr inbounds %struct.trf7970a, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %is_initiator.i26 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %is_initiator.i26, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %switch.i27 = icmp ult i32 %34, 2
  br i1 %switch.i27, label %if.then6.i31, label %do.end.i28.trf7970a_tg_configure_hw.exit34_crit_edge

do.end.i28.trf7970a_tg_configure_hw.exit34_crit_edge: ; preds = %do.end.i28
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_tg_configure_hw.exit34

if.then6.i31:                                     ; preds = %do.end.i28
  %call7.i29 = tail call fastcc i32 @trf7970a_switch_rf_on(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i29)
  %tobool8.not.i30 = icmp eq i32 %call7.i29, 0
  br i1 %tobool8.not.i30, label %if.then6.i31.trf7970a_tg_configure_hw.exit34_crit_edge, label %trf7970a_tg_configure_hw.exit34.thread

if.then6.i31.trf7970a_tg_configure_hw.exit34_crit_edge: ; preds = %if.then6.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_tg_configure_hw.exit34

trf7970a_tg_configure_hw.exit34.thread:           ; preds = %if.then6.i31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %lock.i25) #6
  br label %cleanup

trf7970a_tg_configure_hw.exit34:                  ; preds = %if.then6.i31.trf7970a_tg_configure_hw.exit34_crit_edge, %do.end.i28.trf7970a_tg_configure_hw.exit34_crit_edge
  %call14.i = tail call fastcc i32 @trf7970a_tg_config_framing(ptr noundef %29, i32 noundef 7) #6
  tail call void @mutex_unlock(ptr noundef %lock.i25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool9.not = icmp eq i32 %call14.i, 0
  br i1 %tobool9.not, label %if.end11, label %trf7970a_tg_configure_hw.exit34.cleanup_crit_edge

trf7970a_tg_configure_hw.exit34.cleanup_crit_edge: ; preds = %trf7970a_tg_configure_hw.exit34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %trf7970a_tg_configure_hw.exit34
  call void @__sanitizer_cov_trace_pc() #8
  %call12 = tail call fastcc i32 @_trf7970a_tg_listen(ptr noundef %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %trf7970a_tg_configure_hw.exit34.cleanup_crit_edge, %trf7970a_tg_configure_hw.exit34.thread, %trf7970a_tg_configure_hw.exit.cleanup_crit_edge, %trf7970a_tg_configure_hw.exit.thread42
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ %call46.i, %trf7970a_tg_configure_hw.exit.cleanup_crit_edge ], [ %call14.i, %trf7970a_tg_configure_hw.exit34.cleanup_crit_edge ], [ %call7.i, %trf7970a_tg_configure_hw.exit.thread42 ], [ %call7.i29, %trf7970a_tg_configure_hw.exit34.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_tg_get_rf_tech(ptr nocapture noundef readonly %ddev, ptr nocapture noundef writeonly %rf_tech) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_get_rf_tech.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_get_rf_tech, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %md_rf_tech = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 21
  %6 = ptrtoint ptr %md_rf_tech to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %md_rf_tech, align 4
  %conv = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_get_rf_tech.__UNIQUE_ID_ddebug417, ptr noundef %3, ptr noundef nonnull @.str.126, i32 noundef %5, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %md_rf_tech4 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %md_rf_tech4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %md_rf_tech4, align 4
  %10 = ptrtoint ptr %rf_tech to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %rf_tech, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_switch_rf(ptr nocapture noundef readonly %ddev, i1 noundef zeroext %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_switch_rf.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_switch_rf, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %conv = zext i1 %on to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_switch_rf.__UNIQUE_ID_ddebug395, ptr noundef %3, ptr noundef nonnull @.str.128, i32 noundef %5, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  br i1 %on, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %7, label %do.end13 [
    i32 0, label %if.then7.sw.bb_crit_edge
    i32 1, label %if.then7.sw.bb_crit_edge52
    i32 2, label %if.then7.if.end30_crit_edge
    i32 3, label %if.then7.if.end30_crit_edge53
  ]

if.then7.if.end30_crit_edge53:                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then7.if.end30_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then7.sw.bb_crit_edge52:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then7.sw.bb_crit_edge:                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.then7.sw.bb_crit_edge, %if.then7.sw.bb_crit_edge52
  %call9 = tail call fastcc i32 @trf7970a_switch_rf_on(ptr noundef %1)
  br label %if.end30

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %dev14 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef %7, i32 noundef 1) #9
  tail call fastcc void @trf7970a_switch_rf_off(ptr noundef %1)
  br label %if.end30

if.else:                                          ; preds = %do.end
  %11 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %7, label %sw.bb28 [
    i32 0, label %if.else.if.end30_crit_edge
    i32 1, label %if.else.if.end30_crit_edge54
    i32 2, label %if.else.do.body.i_crit_edge
    i32 3, label %if.else.do.body.i_crit_edge55
    i32 5, label %if.else.do.body.i_crit_edge56
    i32 6, label %if.else.do.body.i_crit_edge57
  ]

if.else.do.body.i_crit_edge57:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.do.body.i_crit_edge56:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.do.body.i_crit_edge55:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.else.if.end30_crit_edge54:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

sw.bb28:                                          ; preds = %if.else
  %dev24 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.127, i32 noundef %7, i32 noundef 0) #9
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %switch.i = icmp ult i32 %.pr, 2
  br i1 %switch.i, label %sw.bb28.if.end30_crit_edge, label %sw.bb28.do.body.i_crit_edge

sw.bb28.do.body.i_crit_edge:                      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.bb28.if.end30_crit_edge:                       ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

do.body.i:                                        ; preds = %sw.bb28.do.body.i_crit_edge, %if.else.do.body.i_crit_edge, %if.else.do.body.i_crit_edge55, %if.else.do.body.i_crit_edge56, %if.else.do.body.i_crit_edge57
  %ret.050 = phi i32 [ -22, %sw.bb28.do.body.i_crit_edge ], [ 0, %if.else.do.body.i_crit_edge ], [ 0, %if.else.do.body.i_crit_edge55 ], [ 0, %if.else.do.body.i_crit_edge56 ], [ 0, %if.else.do.body.i_crit_edge57 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_switch_rf, %if.then5.i)) #6
          to label %do.end.i [label %if.then5.i], !srcloc !341

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, ptr noundef %16, ptr noundef nonnull @.str.133) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %chip_status_ctrl.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %chip_status_ctrl.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_status_ctrl.i, align 4
  %19 = and i8 %18, -33
  store i8 %19, ptr %chip_status_ctrl.i, align 4
  %call9.i = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %19) #6
  %aborting.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %aborting.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %aborting.i, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %1, align 4
  %dev11.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev11.i, align 4
  %call.i.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 12, i32 22
  %24 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store volatile i64 %call.i.i, ptr %last_busy.i.i, align 8
  %25 = ptrtoint ptr %dev11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev11.i, align 4
  %call.i23.i = tail call i32 @__pm_runtime_suspend(ptr noundef %26, i32 noundef 13) #6
  br label %if.end30

if.end30:                                         ; preds = %do.end.i, %sw.bb28.if.end30_crit_edge, %if.else.if.end30_crit_edge, %if.else.if.end30_crit_edge54, %do.end13, %sw.bb, %if.then7.if.end30_crit_edge, %if.then7.if.end30_crit_edge53
  %ret.1 = phi i32 [ -22, %do.end13 ], [ 0, %if.then7.if.end30_crit_edge ], [ 0, %if.then7.if.end30_crit_edge53 ], [ %call9, %sw.bb ], [ 0, %if.else.if.end30_crit_edge ], [ 0, %if.else.if.end30_crit_edge54 ], [ -22, %sw.bb28.if.end30_crit_edge ], [ %ret.050, %do.end.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trf7970a_abort_cmd(ptr nocapture noundef readonly %ddev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_abort_cmd.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_abort_cmd, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_abort_cmd.__UNIQUE_ID_ddebug418, ptr noundef %3, ptr noundef nonnull @.str.135) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %5, label %do.end.sw.epilog_crit_edge [
    i32 4, label %do.end.sw.bb_crit_edge
    i32 5, label %do.end.sw.bb_crit_edge40
    i32 6, label %do.end.sw.bb_crit_edge41
    i32 7, label %do.end.sw.bb_crit_edge42
    i32 8, label %sw.bb4
  ]

do.end.sw.bb_crit_edge42:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end.sw.bb_crit_edge41:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end.sw.bb_crit_edge40:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge40, %do.end.sw.bb_crit_edge41, %do.end.sw.bb_crit_edge42
  %aborting = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %aborting, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 29
  %call5 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  %lnot6 = xor i1 %call5, true
  %ignore_timeout = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 28
  %frombool8 = zext i1 %lnot6 to i8
  %8 = ptrtoint ptr %ignore_timeout to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool8, ptr %ignore_timeout, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_abort_cmd, %if.then.i)) #6
          to label %trf7970a_send_err_upstream.exit [label %if.then.i], !srcloc !341

if.then.i:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, ptr noundef %10, ptr noundef nonnull @.str.72, i32 noundef %12, i32 noundef -125) #6
  br label %trf7970a_send_err_upstream.exit

trf7970a_send_err_upstream.exit:                  ; preds = %if.then.i, %sw.bb4
  %call3.i = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timeout_work) #6
  %rx_skb.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_skb.i, align 4
  tail call void @kfree_skb_reason(ptr noundef %14, i32 noundef 0) #6
  %15 = ptrtoint ptr %rx_skb.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -125 to ptr), ptr %rx_skb.i, align 4
  tail call fastcc void @trf7970a_send_upstream(ptr noundef %1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_abort_cmd.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_abort_cmd, %if.then21)) #6
          to label %sw.epilog [label %if.then21], !srcloc !341

if.then21:                                        ; preds = %trf7970a_send_err_upstream.exit
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_abort_cmd.__UNIQUE_ID_ddebug419, ptr noundef %17, ptr noundef nonnull @.str.83) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21, %trf7970a_send_err_upstream.exit, %sw.bb, %do.end.sw.epilog_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_switch_rf_on(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_switch_rf_on.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_switch_rf_on, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_switch_rf_on.__UNIQUE_ID_ddebug394, ptr noundef %1, ptr noundef nonnull @.str.99) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %2 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %4 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.98, i32 noundef %5) #9
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %call12 = tail call fastcc i32 @trf7970a_init(ptr noundef %trf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %do.end17

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.98, i32 noundef %call12) #9
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %trf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end17, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ %call12, %do.end17 ], [ 0, %if.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_in_config_rf_tech(ptr nocapture noundef %trf, i32 noundef %tech) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_config_rf_tech, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug396, ptr noundef %1, ptr noundef nonnull @.str.108, i32 noundef %tech) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %tech to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %tech, label %do.body41 [
    i32 0, label %sw.bb
    i32 4, label %sw.bb5
    i32 1, label %sw.bb14
    i32 2, label %sw.bb23
    i32 3, label %sw.bb32
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %3 = ptrtoint ptr %iso_ctrl_tech to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %iso_ctrl_tech, align 2
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %4 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %modulator_sys_clk_ctrl, align 1
  %6 = and i8 %5, -8
  %7 = or i8 %6, 1
  store i8 %7, ptr %modulator_sys_clk_ctrl, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech6 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %8 = ptrtoint ptr %iso_ctrl_tech6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %iso_ctrl_tech6, align 2
  %modulator_sys_clk_ctrl7 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %9 = ptrtoint ptr %modulator_sys_clk_ctrl7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %modulator_sys_clk_ctrl7, align 1
  %11 = and i8 %10, -8
  store i8 %11, ptr %modulator_sys_clk_ctrl7, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech15 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %12 = ptrtoint ptr %iso_ctrl_tech15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 26, ptr %iso_ctrl_tech15, align 2
  %modulator_sys_clk_ctrl16 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %13 = ptrtoint ptr %modulator_sys_clk_ctrl16 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %modulator_sys_clk_ctrl16, align 1
  %15 = and i8 %14, -8
  store i8 %15, ptr %modulator_sys_clk_ctrl16, align 1
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech24 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %16 = ptrtoint ptr %iso_ctrl_tech24 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 27, ptr %iso_ctrl_tech24, align 2
  %modulator_sys_clk_ctrl25 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %17 = ptrtoint ptr %modulator_sys_clk_ctrl25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %modulator_sys_clk_ctrl25, align 1
  %19 = and i8 %18, -8
  store i8 %19, ptr %modulator_sys_clk_ctrl25, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech33 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %20 = ptrtoint ptr %iso_ctrl_tech33 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %iso_ctrl_tech33, align 2
  %modulator_sys_clk_ctrl34 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %21 = ptrtoint ptr %modulator_sys_clk_ctrl34 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %modulator_sys_clk_ctrl34, align 1
  %23 = and i8 %22, -8
  %24 = or i8 %23, 1
  store i8 %24, ptr %modulator_sys_clk_ctrl34, align 1
  br label %sw.epilog

do.body41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_config_rf_tech, %if.then53)) #6
          to label %cleanup [label %if.then53], !srcloc !341

if.then53:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #8
  %dev54 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %25 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug397, ptr noundef %26, ptr noundef nonnull @.str.109, i32 noundef %tech) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb23, %sw.bb14, %sw.bb5, %sw.bb
  %.sink = phi i32 [ 1000, %sw.bb32 ], [ 20000, %sw.bb23 ], [ 20000, %sw.bb14 ], [ 5000, %sw.bb5 ], [ 5000, %sw.bb ]
  %guard_time40 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 18
  %27 = ptrtoint ptr %guard_time40 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %guard_time40, align 4
  %technology = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 19
  %28 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %tech, ptr %technology, align 4
  %iso_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %29 = ptrtoint ptr %iso_ctrl to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %iso_ctrl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %cmp = icmp eq i8 %30, -1
  br i1 %cmp, label %if.then60, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then60:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %call61 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 24, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %sw.epilog.cleanup_crit_edge, %if.then53, %do.body41
  %retval.0 = phi i32 [ -22, %if.then53 ], [ %call61, %if.then60 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_in_config_framing(ptr nocapture noundef %trf, i32 noundef %framing) unnamed_addr #2 align 64 {
entry:
  %is_rf_field = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_ctrl_tech = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %0 = ptrtoint ptr %iso_ctrl_tech to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iso_ctrl_tech, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %is_rf_field) #6
  %2 = ptrtoint ptr %is_rf_field to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_rf_field, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_config_framing.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_config_framing, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_config_framing.__UNIQUE_ID_ddebug398, ptr noundef %4, ptr noundef nonnull @.str.111, i32 noundef %framing) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = zext i32 %framing to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %framing, label %do.body13 [
    i32 0, label %do.end.sw.bb_crit_edge
    i32 1, label %do.end.sw.bb_crit_edge118
    i32 2, label %do.end.sw.bb4_crit_edge
    i32 6, label %do.end.sw.bb4_crit_edge119
    i32 14, label %do.end.sw.bb4_crit_edge120
    i32 15, label %do.end.sw.bb4_crit_edge121
    i32 8, label %do.end.sw.bb4_crit_edge122
    i32 9, label %do.end.sw.bb4_crit_edge123
    i32 12, label %do.end.sw.bb4_crit_edge124
    i32 13, label %do.end.sw.bb4_crit_edge125
    i32 7, label %do.end.sw.bb4_crit_edge126
    i32 10, label %do.end.sw.bb4_crit_edge127
    i32 5, label %sw.bb8
  ]

do.end.sw.bb4_crit_edge127:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge126:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge125:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge124:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge123:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge122:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge121:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge120:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge119:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb_crit_edge118:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge118
  %tx_cmd = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %6 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 16, ptr %tx_cmd, align 1
  %7 = or i8 %1, -128
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end.sw.bb4_crit_edge, %do.end.sw.bb4_crit_edge119, %do.end.sw.bb4_crit_edge120, %do.end.sw.bb4_crit_edge121, %do.end.sw.bb4_crit_edge122, %do.end.sw.bb4_crit_edge123, %do.end.sw.bb4_crit_edge124, %do.end.sw.bb4_crit_edge125, %do.end.sw.bb4_crit_edge126, %do.end.sw.bb4_crit_edge127
  %tx_cmd5 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %8 = ptrtoint ptr %tx_cmd5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 17, ptr %tx_cmd5, align 1
  %9 = and i8 %1, 127
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd9 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %10 = ptrtoint ptr %tx_cmd9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 17, ptr %tx_cmd9, align 1
  %11 = or i8 %1, -128
  br label %sw.epilog

do.body13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_in_config_framing.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_in_config_framing, %if.then25)) #6
          to label %cleanup [label %if.then25], !srcloc !341

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %dev26 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_in_config_framing.__UNIQUE_ID_ddebug399, ptr noundef %13, ptr noundef nonnull @.str.112, i32 noundef %framing) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb4, %sw.bb
  %iso_ctrl.0 = phi i8 [ %11, %sw.bb8 ], [ %9, %sw.bb4 ], [ %7, %sw.bb ]
  %framing30 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 20
  %14 = ptrtoint ptr %framing30 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %framing, ptr %framing30, align 4
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %15 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %chip_status_ctrl, align 4
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool33.not = icmp eq i8 %17, 0
  br i1 %tobool33.not, label %if.then34, label %sw.epilog.if.end42_crit_edge

sw.epilog.if.end42_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then34:                                        ; preds = %sw.epilog
  %call35 = call fastcc i32 @trf7970a_is_rf_field(ptr noundef %trf, ptr noundef nonnull %is_rf_field)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.then34
  %18 = ptrtoint ptr %is_rf_field to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_rf_field, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool39.not = icmp eq i8 %19, 0
  br i1 %tobool39.not, label %if.end38.if.end42_crit_edge, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end42:                                         ; preds = %if.end38.if.end42_crit_edge, %sw.epilog.if.end42_crit_edge
  %iso_ctrl44 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %20 = ptrtoint ptr %iso_ctrl44 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %iso_ctrl44, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %iso_ctrl.0, i8 %21)
  %cmp.not = icmp eq i8 %iso_ctrl.0, %21
  br i1 %cmp.not, label %if.end42.if.end57_crit_edge, label %if.then47

if.end42.if.end57_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.then47:                                        ; preds = %if.end42
  %call48 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 1, i8 noundef zeroext %iso_ctrl.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.then47.cleanup_crit_edge

if.then47.cleanup_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51:                                         ; preds = %if.then47
  %22 = ptrtoint ptr %iso_ctrl44 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %iso_ctrl.0, ptr %iso_ctrl44, align 1
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %23 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %modulator_sys_clk_ctrl, align 1
  %call53 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 9, i8 noundef zeroext %24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57

if.end57:                                         ; preds = %if.end51.if.end57_crit_edge, %if.end42.if.end57_crit_edge
  %25 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_status_ctrl, align 4
  %27 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool61.not = icmp eq i8 %27, 0
  br i1 %tobool61.not, label %if.then62, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then62:                                        ; preds = %if.end57
  %or65 = or i8 %26, 32
  %call67 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %or65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %chip_status_ctrl, align 4
  %30 = or i8 %29, 32
  store i8 %30, ptr %chip_status_ctrl, align 4
  %guard_time = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 18
  %31 = ptrtoint ptr %guard_time to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %guard_time, align 4
  %add = add i32 %32, 1000
  tail call void @usleep_range_state(i32 noundef %32, i32 noundef %add, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then62.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %if.then47.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.then25, %do.body13
  %retval.0 = phi i32 [ -22, %if.then25 ], [ %call35, %if.then34.cleanup_crit_edge ], [ -16, %if.end38.cleanup_crit_edge ], [ %call48, %if.then47.cleanup_crit_edge ], [ %call53, %if.end51.cleanup_crit_edge ], [ %call67, %if.then62.cleanup_crit_edge ], [ 0, %if.end70 ], [ 0, %if.end57.cleanup_crit_edge ], [ -22, %do.body13 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %is_rf_field) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_init(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_init.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_init.__UNIQUE_ID_ddebug391, ptr noundef %1, ptr noundef nonnull @.str.105, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %trf, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %do.end.do.body34_crit_edge

do.end.do.body34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end6:                                          ; preds = %do.end
  %call7 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %trf, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.do.body34_crit_edge

if.end6.do.body34_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end10:                                         ; preds = %if.end6
  %io_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 17
  %4 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %io_ctrl, align 1
  %6 = or i8 %5, 1
  %call12 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 11, i8 noundef zeroext %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.do.body34_crit_edge

if.end10.do.body34_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end15:                                         ; preds = %if.end10
  %call16 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 24, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.do.body34_crit_edge

if.end15.do.body34_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end19:                                         ; preds = %if.end15
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %7 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %chip_status_ctrl, align 4
  %9 = and i8 %8, -33
  store i8 %9, ptr %chip_status_ctrl, align 4
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %10 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %modulator_sys_clk_ctrl, align 1
  %call22 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 9, i8 noundef zeroext %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end19.do.body34_crit_edge

if.end19.do.body34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end25:                                         ; preds = %if.end19
  %call26 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 20, i8 noundef zeroext 15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.do.body34_crit_edge

if.end25.do.body34_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 16, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.do.body34_crit_edge

if.end29.do.body34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body34

if.end33:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %special_fcn_reg1 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 16
  %12 = ptrtoint ptr %special_fcn_reg1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %special_fcn_reg1, align 4
  %iso_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %13 = ptrtoint ptr %iso_ctrl to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %iso_ctrl, align 1
  br label %cleanup

do.body34:                                        ; preds = %if.end29.do.body34_crit_edge, %if.end25.do.body34_crit_edge, %if.end19.do.body34_crit_edge, %if.end15.do.body34_crit_edge, %if.end10.do.body34_crit_edge, %if.end6.do.body34_crit_edge, %do.end.do.body34_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end.do.body34_crit_edge ], [ %call7, %if.end6.do.body34_crit_edge ], [ %call12, %if.end10.do.body34_crit_edge ], [ %call16, %if.end15.do.body34_crit_edge ], [ %call22, %if.end19.do.body34_crit_edge ], [ %call26, %if.end25.do.body34_crit_edge ], [ %call30, %if.end29.do.body34_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_init.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_init, %if.then46)) #6
          to label %cleanup [label %if.then46], !srcloc !341

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  %dev47 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %14 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev47, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_init.__UNIQUE_ID_ddebug392, ptr noundef %15, ptr noundef nonnull @.str.106, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body34, %if.end33
  %retval.0 = phi i32 [ 0, %if.end33 ], [ %ret.0, %if.then46 ], [ %ret.0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_is_rf_field(ptr nocapture noundef readonly %trf, ptr nocapture noundef writeonly %is_rf_field) unnamed_addr #2 align 64 {
entry:
  %addr.i = alloca i8, align 1
  %rssi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %rssi) #6
  %0 = ptrtoint ptr %rssi to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %rssi, align 1, !annotation !342
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %1 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %chip_status_ctrl, align 4
  %3 = or i8 %2, 2
  %call = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %trf, i8 noundef zeroext 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 50, i32 noundef 60, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.i) #6
  %4 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 79, ptr %addr.i, align 1
  %spi.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 2
  %5 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_write_then_read(ptr noundef %6, ptr noundef nonnull %addr.i, i32 noundef 1, ptr noundef nonnull %rssi, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5.do.body3.i_crit_edge, label %do.end.i

if.end5.do.body3.i_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  %9 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %addr.i, align 1
  %conv2.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef %conv2.i, i32 noundef %call.i) #9
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.end.i, %if.end5.do.body3.i_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_read.__UNIQUE_ID_ddebug371, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_is_rf_field, %if.then8.i)) #6
          to label %trf7970a_read.exit [label %if.then8.i], !srcloc !341

if.then8.i:                                       ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev9.i = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %11 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev9.i, align 4
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %addr.i, align 1
  %conv10.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rssi, align 1
  %conv11.i = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_read.__UNIQUE_ID_ddebug371, ptr noundef %12, ptr noundef nonnull @.str.80, i32 noundef %conv10.i, i32 noundef %conv11.i) #6
  br label %trf7970a_read.exit

trf7970a_read.exit:                               ; preds = %if.then8.i, %do.body3.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.i) #6
  br i1 %tobool.not.i, label %if.end9, label %trf7970a_read.exit.cleanup_crit_edge

trf7970a_read.exit.cleanup_crit_edge:             ; preds = %trf7970a_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %trf7970a_read.exit
  %17 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %chip_status_ctrl, align 4
  %call11 = call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %rssi to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rssi, align 1
  %21 = and i8 %20, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool16.not = icmp ne i8 %21, 0
  %. = zext i1 %tobool16.not to i8
  %22 = ptrtoint ptr %is_rf_field to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %., ptr %is_rf_field, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %trf7970a_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call.i, %trf7970a_read.exit.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %rssi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfc_alloc_recv_skb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_tg_config_rf_tech(ptr nocapture noundef %trf, i32 noundef %tech) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_config_rf_tech, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407, ptr noundef %1, ptr noundef nonnull @.str.108, i32 noundef %tech) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %tech to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %tech, label %do.body21 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb13
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %3 = ptrtoint ptr %iso_ctrl_tech to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 36, ptr %iso_ctrl_tech, align 2
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %4 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %modulator_sys_clk_ctrl, align 1
  %6 = and i8 %5, -8
  %7 = or i8 %6, 1
  store i8 %7, ptr %modulator_sys_clk_ctrl, align 1
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech6 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %8 = ptrtoint ptr %iso_ctrl_tech6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 34, ptr %iso_ctrl_tech6, align 2
  %modulator_sys_clk_ctrl7 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %9 = ptrtoint ptr %modulator_sys_clk_ctrl7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %modulator_sys_clk_ctrl7, align 1
  %11 = and i8 %10, -8
  store i8 %11, ptr %modulator_sys_clk_ctrl7, align 1
  br label %sw.epilog

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %iso_ctrl_tech14 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %12 = ptrtoint ptr %iso_ctrl_tech14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 35, ptr %iso_ctrl_tech14, align 2
  %modulator_sys_clk_ctrl15 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %13 = ptrtoint ptr %modulator_sys_clk_ctrl15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %modulator_sys_clk_ctrl15, align 1
  %15 = and i8 %14, -8
  store i8 %15, ptr %modulator_sys_clk_ctrl15, align 1
  br label %sw.epilog

do.body21:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_config_rf_tech, %if.then33)) #6
          to label %cleanup [label %if.then33], !srcloc !341

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %dev34 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %16 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug408, ptr noundef %17, ptr noundef nonnull @.str.109, i32 noundef %tech) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb5, %sw.bb
  %technology = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 19
  %18 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %tech, ptr %technology, align 4
  %framing = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 20
  %19 = ptrtoint ptr %framing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %framing, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %20)
  %cmp = icmp eq i32 %20, 11
  br i1 %cmp, label %land.lhs.true, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.epilog
  %iso_ctrl_tech39 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %21 = ptrtoint ptr %iso_ctrl_tech39 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %iso_ctrl_tech39, align 2
  %iso_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %23 = ptrtoint ptr %iso_ctrl to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iso_ctrl, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp42.not = icmp eq i8 %22, %24
  br i1 %cmp42.not, label %land.lhs.true.cleanup_crit_edge, label %if.then44

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then44:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call46 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 1, i8 noundef zeroext %22)
  %25 = ptrtoint ptr %iso_ctrl_tech39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %iso_ctrl_tech39, align 2
  %27 = ptrtoint ptr %iso_ctrl to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %iso_ctrl, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %land.lhs.true.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then33, %do.body21
  %retval.0 = phi i32 [ -22, %if.then33 ], [ %call46, %if.then44 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_tg_config_framing(ptr nocapture noundef %trf, i32 noundef %framing) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_ctrl_tech = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 14
  %0 = ptrtoint ptr %iso_ctrl_tech to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iso_ctrl_tech, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_config_framing, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug409, ptr noundef %3, ptr noundef nonnull @.str.111, i32 noundef %framing) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %framing to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %framing, label %do.body15 [
    i32 7, label %sw.bb
    i32 1, label %do.end.sw.bb4_crit_edge
    i32 2, label %do.end.sw.bb4_crit_edge100
    i32 3, label %do.end.sw.bb4_crit_edge101
    i32 10, label %sw.bb6
    i32 11, label %sw.bb10
  ]

do.end.sw.bb4_crit_edge101:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge100:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

do.end.sw.bb4_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %5 = ptrtoint ptr %tx_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 16, ptr %tx_cmd, align 1
  %6 = or i8 %1, -128
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end.sw.bb4_crit_edge, %do.end.sw.bb4_crit_edge100, %do.end.sw.bb4_crit_edge101
  %iso_ctrl5 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %7 = ptrtoint ptr %iso_ctrl5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %iso_ctrl5, align 1
  br label %sw.epilog

sw.bb6:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd7 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %9 = ptrtoint ptr %tx_cmd7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 17, ptr %tx_cmd7, align 1
  %10 = and i8 %1, 127
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %tx_cmd11 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 22
  %11 = ptrtoint ptr %tx_cmd11 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 17, ptr %tx_cmd11, align 1
  %12 = and i8 %1, 127
  br label %sw.epilog

do.body15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_tg_config_framing, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !341

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  %dev28 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %13 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug410, ptr noundef %14, ptr noundef nonnull @.str.112, i32 noundef %framing) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb6, %sw.bb4, %sw.bb
  %iso_ctrl.0 = phi i8 [ %12, %sw.bb10 ], [ %10, %sw.bb6 ], [ %8, %sw.bb4 ], [ %6, %sw.bb ]
  %framing32 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 20
  %15 = ptrtoint ptr %framing32 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %framing, ptr %framing32, align 4
  %iso_ctrl34 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 13
  %16 = ptrtoint ptr %iso_ctrl34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iso_ctrl34, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %iso_ctrl.0, i8 %17)
  %cmp.not = icmp eq i8 %iso_ctrl.0, %17
  br i1 %cmp.not, label %sw.epilog.if.end47_crit_edge, label %if.then37

sw.epilog.if.end47_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.then37:                                        ; preds = %sw.epilog
  %call38 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 1, i8 noundef zeroext %iso_ctrl.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %18 = ptrtoint ptr %iso_ctrl34 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %iso_ctrl.0, ptr %iso_ctrl34, align 1
  %modulator_sys_clk_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 15
  %19 = ptrtoint ptr %modulator_sys_clk_ctrl to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %modulator_sys_clk_ctrl, align 1
  %call43 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 9, i8 noundef zeroext %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

if.end47:                                         ; preds = %if.end41.if.end47_crit_edge, %sw.epilog.if.end47_crit_edge
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %21 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_status_ctrl, align 4
  %23 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool50.not = icmp eq i8 %23, 0
  br i1 %tobool50.not, label %if.then51, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then51:                                        ; preds = %if.end47
  %or54 = or i8 %22, 32
  %call56 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %or54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chip_status_ctrl, align 4
  %26 = or i8 %25, 32
  store i8 %26, ptr %chip_status_ctrl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.then51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.then27, %do.body15
  %retval.0 = phi i32 [ -22, %if.then27 ], [ %call38, %if.then37.cleanup_crit_edge ], [ %call43, %if.end41.cleanup_crit_edge ], [ %call56, %if.then51.cleanup_crit_edge ], [ 0, %if.end59 ], [ 0, %if.end47.cleanup_crit_edge ], [ -22, %do.body15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_trf7970a_tg_listen(ptr noundef %ddev, i16 noundef zeroext %timeout, ptr noundef %cb, ptr noundef %arg, i1 noundef zeroext %mode_detect) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.nfc_digital_dev, ptr %ddev, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.122, i32 noundef %3) #9
  br label %out_err

if.end:                                           ; preds = %entry
  %aborting = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aborting, align 1, !range !343
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end17, label %do.body5

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_trf7970a_tg_listen.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_trf7970a_tg_listen, %if.then11)) #6
          to label %do.end15 [label %if.then11], !srcloc !341

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_trf7970a_tg_listen.__UNIQUE_ID_ddebug413, ptr noundef %10, ptr noundef nonnull @.str.83) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body5
  %11 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %aborting, align 1
  br label %out_err

if.end17:                                         ; preds = %if.end
  %call18 = tail call ptr @nfc_alloc_recv_skb(i32 noundef 256, i32 noundef 3264) #6
  %rx_skb = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %rx_skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %rx_skb, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %do.body22, label %if.end39

do.body22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_trf7970a_tg_listen.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_trf7970a_tg_listen, %if.then34)) #6
          to label %out_err [label %if.then34], !srcloc !341

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev35, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @_trf7970a_tg_listen.__UNIQUE_ID_ddebug414, ptr noundef %14, ptr noundef nonnull @.str.116) #6
  br label %out_err

if.end39:                                         ; preds = %if.end17
  %call40 = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext -16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_err_crit_edge

if.end39.out_err_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end43:                                         ; preds = %if.end39
  %io_ctrl = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %io_ctrl to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %io_ctrl, align 1
  %17 = or i8 %16, 1
  %call45 = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.out_err_crit_edge

if.end43.out_err_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end48:                                         ; preds = %if.end43
  %call49 = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 22, i8 noundef zeroext 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.out_err_crit_edge

if.end48.out_err_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end52:                                         ; preds = %if.end48
  %call53 = tail call fastcc i32 @trf7970a_write(ptr noundef %1, i8 noundef zeroext 24, i8 noundef zeroext 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.out_err_crit_edge

if.end52.out_err_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end56:                                         ; preds = %if.end52
  %ddev57 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %ddev57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ddev, ptr %ddev57, align 4
  %cb58 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %cb58 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %cb, ptr %cb58, align 4
  %cb_arg = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %cb_arg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arg, ptr %cb_arg, align 4
  %conv59 = zext i16 %timeout to i32
  %timeout60 = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 27
  %21 = ptrtoint ptr %timeout60 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv59, ptr %timeout60, align 4
  %ignore_timeout = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 28
  %22 = ptrtoint ptr %ignore_timeout to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %ignore_timeout, align 4
  %call61 = tail call fastcc i32 @trf7970a_cmd(ptr noundef %1, i8 noundef zeroext 23)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end56.out_err_crit_edge

if.end56.out_err_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_err

if.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %cond = select i1 %mode_detect, i32 9, i32 8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %1, align 4
  %timeout_work = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 29
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv59) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %timeout_work, i32 noundef %call2.i) #6
  br label %out_err

out_err:                                          ; preds = %if.end64, %if.end56.out_err_crit_edge, %if.end52.out_err_crit_edge, %if.end48.out_err_crit_edge, %if.end43.out_err_crit_edge, %if.end39.out_err_crit_edge, %if.then34, %do.body22, %do.end15, %do.end
  %ret.0 = phi i32 [ -5, %do.end ], [ -125, %do.end15 ], [ %call40, %if.end39.out_err_crit_edge ], [ %call45, %if.end43.out_err_crit_edge ], [ %call49, %if.end48.out_err_crit_edge ], [ %call53, %if.end52.out_err_crit_edge ], [ %call61, %if.end56.out_err_crit_edge ], [ 0, %if.end64 ], [ -12, %if.then34 ], [ -12, %do.body22 ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trf7970a_switch_rf_off(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_switch_rf_off, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !341

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, ptr noundef %3, ptr noundef nonnull @.str.133) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %chip_status_ctrl = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 12
  %4 = ptrtoint ptr %chip_status_ctrl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chip_status_ctrl, align 4
  %6 = and i8 %5, -33
  store i8 %6, ptr %chip_status_ctrl, align 4
  %call9 = tail call fastcc i32 @trf7970a_write(ptr noundef %trf, i8 noundef zeroext 0, i8 noundef zeroext %6)
  %aborting = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 7
  %7 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %aborting, align 1
  %8 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %trf, align 4
  %dev11 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev11, align 4
  %call.i23 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #6
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_power_up(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_power_up.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_power_up, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_power_up.__UNIQUE_ID_ddebug420, ptr noundef %1, ptr noundef nonnull @.str.138, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not = icmp eq i32 %5, 0
  br i1 %cmp.not, label %if.end5, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %regulator = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 3
  %6 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regulator, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.137, i32 noundef %call6) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %en2_gpiod = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 25
  %10 = ptrtoint ptr %en2_gpiod to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %en2_gpiod, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.end13.if.end18_crit_edge, label %land.lhs.true

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end13
  %quirks = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 5
  %12 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks, align 4
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.then16, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %11, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %land.lhs.true.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %en_gpiod = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 24
  %14 = ptrtoint ptr %en_gpiod to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %en_gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 21000, i32 noundef 2) #6
  %16 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %trf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end11 ], [ 0, %if.end18 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @trf7970a_power_down(ptr nocapture noundef %trf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_power_down.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_power_down, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !341

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_power_down.__UNIQUE_ID_ddebug421, ptr noundef %1, ptr noundef nonnull @.str.141, i32 noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %trf, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %5, label %do.body9 [
    i32 0, label %do.end.cleanup_crit_edge
    i32 1, label %if.end27
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @trf7970a_power_down.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@trf7970a_power_down, %if.then21)) #6
          to label %cleanup [label %if.then21], !srcloc !341

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %7 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev22, align 4
  %9 = ptrtoint ptr %trf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trf, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @trf7970a_power_down.__UNIQUE_ID_ddebug422, ptr noundef %8, ptr noundef nonnull @.str.142, i32 noundef %10) #6
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %en_gpiod = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 24
  %11 = ptrtoint ptr %en_gpiod to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %en_gpiod, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %12, i32 noundef 0) #6
  %en2_gpiod = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 25
  %13 = ptrtoint ptr %en2_gpiod to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %en2_gpiod, align 4
  %tobool28.not = icmp eq ptr %14, null
  br i1 %tobool28.not, label %if.end27.if.end32_crit_edge, label %land.lhs.true

if.end27.if.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end27
  %quirks = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 5
  %15 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %quirks, align 4
  %and = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool29.not = icmp eq i32 %and, 0
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %14, i32 noundef 0) #6
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %land.lhs.true.if.end32_crit_edge, %if.end27.if.end32_crit_edge
  %regulator = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 3
  %17 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regulator, align 4
  %call33 = tail call i32 @regulator_disable(ptr noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.if.end40_crit_edge, label %do.end38

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %dev39 = getelementptr inbounds %struct.trf7970a, ptr %trf, i32 0, i32 1
  %19 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140, i32 noundef %call33) #9
  br label %if.end40

if.end40:                                         ; preds = %do.end38, %if.end32.if.end40_crit_edge
  %21 = ptrtoint ptr %trf to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %trf, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then21, %do.body9, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end40 ], [ %5, %do.end.cleanup_crit_edge ], [ -16, %if.then21 ], [ -16, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_digital_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @trf7970a_shutdown(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call.i = tail call fastcc i32 @trf7970a_power_up(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.trf7970a_startup.exit_crit_edge

entry.trf7970a_startup.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %trf7970a_startup.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_set_status(ptr noundef %3, i32 noundef 0) #6
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %5) #6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %call.i8.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 22
  %8 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store volatile i64 %call.i8.i, ptr %last_busy.i.i, align 8
  br label %trf7970a_startup.exit

trf7970a_startup.exit:                            ; preds = %if.end.i, %entry.trf7970a_startup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_pm_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.trf7970a, ptr %1, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call2 = tail call fastcc i32 @trf7970a_power_down(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trf7970a_pm_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call2 = tail call fastcc i32 @trf7970a_power_up(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 22
  %2 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !198, !200, !201, !202, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !233, !234, !235, !237, !238, !240, !241, !242, !244, !245, !246, !248, !250, !251, !253, !254, !256, !258, !259, !261, !263, !264, !266, !268, !269, !270, !272, !273, !274, !276, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !299, !300, !301, !303, !304, !305, !307, !309, !311, !312, !313, !315, !316, !317, !319, !320, !321, !323, !324, !326, !327, !328, !330}
!llvm.module.flags = !{!332, !333, !334, !335, !336, !337, !338, !339}
!llvm.ident = !{!340}

!0 = !{ptr @__initcall__kmod_trf7970a__425_2259_trf7970a_spi_driver_init6, !1, !"__initcall__kmod_trf7970a__425_2259_trf7970a_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/trf7970a.c", i32 2259, i32 1}
!2 = !{ptr @__exitcall_trf7970a_spi_driver_exit, !1, !"__exitcall_trf7970a_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author426, !4, !"__UNIQUE_ID_author426", i1 false, i1 false}
!4 = !{!"../drivers/nfc/trf7970a.c", i32 2261, i32 1}
!5 = !{ptr @__UNIQUE_ID_file427, !6, !"__UNIQUE_ID_file427", i1 false, i1 false}
!6 = !{!"../drivers/nfc/trf7970a.c", i32 2262, i32 1}
!7 = !{ptr @__UNIQUE_ID_license428, !6, !"__UNIQUE_ID_license428", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description429, !9, !"__UNIQUE_ID_description429", i1 false, i1 false}
!9 = !{!"../drivers/nfc/trf7970a.c", i32 2263, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nfc/trf7970a.c", i32 2253, i32 12}
!12 = !{ptr @trf7970a_spi_driver, !13, !"trf7970a_spi_driver", i1 false, i1 false}
!13 = !{!"../drivers/nfc/trf7970a.c", i32 2248, i32 26}
!14 = !{ptr @trf7970a_id_table, !15, !"trf7970a_id_table", i1 false, i1 false}
!15 = !{!"../drivers/nfc/trf7970a.c", i32 2241, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nfc/trf7970a.c", i32 1997, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @trf7970a_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @trf7970a_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nfc/trf7970a.c", i32 2014, i32 3}
!26 = !{ptr @trf7970a_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @trf7970a_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/nfc/trf7970a.c", i32 2018, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/nfc/trf7970a.c", i32 2022, i32 49}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/nfc/trf7970a.c", i32 2025, i32 3}
!34 = !{ptr @trf7970a_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @trf7970a_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/nfc/trf7970a.c", i32 2032, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @trf7970a_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @trf7970a_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/nfc/trf7970a.c", i32 2034, i32 3}
!43 = !{ptr @trf7970a_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @trf7970a_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/nfc/trf7970a.c", i32 2037, i32 39}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/nfc/trf7970a.c", i32 2041, i32 27}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/nfc/trf7970a.c", i32 2044, i32 3}
!51 = !{ptr @trf7970a_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @trf7970a_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/nfc/trf7970a.c", i32 2051, i32 3}
!55 = !{ptr @trf7970a_probe.__UNIQUE_ID_ddebug423, !54, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/nfc/trf7970a.c", i32 2061, i32 3}
!58 = !{ptr @trf7970a_probe._entry.27, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @trf7970a_probe._entry_ptr.29, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @trf7970a_probe.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/nfc/trf7970a.c", i32 2065, i32 2}
!62 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @trf7970a_probe.__key.31, !64, !"__key", i1 false, i1 false}
!64 = !{!"../drivers/nfc/trf7970a.c", i32 2066, i32 2}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @trf7970a_probe.__key.33, !64, !"__key", i1 false, i1 false}
!67 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nfc/trf7970a.c", i32 2068, i32 49}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/nfc/trf7970a.c", i32 2071, i32 3}
!72 = !{ptr @trf7970a_probe._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @trf7970a_probe._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/nfc/trf7970a.c", i32 2077, i32 3}
!76 = !{ptr @trf7970a_probe._entry.39, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @trf7970a_probe._entry_ptr.41, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/nfc/trf7970a.c", i32 2085, i32 49}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/nfc/trf7970a.c", i32 2088, i32 3}
!82 = !{ptr @trf7970a_probe._entry.43, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @trf7970a_probe._entry_ptr.45, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/nfc/trf7970a.c", i32 2094, i32 3}
!86 = !{ptr @trf7970a_probe._entry.46, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @trf7970a_probe._entry_ptr.48, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/nfc/trf7970a.c", i32 2100, i32 3}
!90 = !{ptr @trf7970a_probe.__UNIQUE_ID_ddebug424, !89, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/nfc/trf7970a.c", i32 2109, i32 3}
!93 = !{ptr @trf7970a_probe._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @trf7970a_probe._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/nfc/trf7970a.c", i32 2129, i32 3}
!97 = !{ptr @trf7970a_probe._entry.53, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @trf7970a_probe._entry_ptr.55, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/nfc/trf7970a.c", i32 839, i32 2}
!101 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @trf7970a_irq.__UNIQUE_ID_ddebug387, !100, !"__UNIQUE_ID_ddebug387", i1 false, i1 false}
!103 = !{ptr @.str.58, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/nfc/trf7970a.c", i32 973, i32 3}
!105 = !{ptr @trf7970a_irq._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @trf7970a_irq._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/nfc/trf7970a.c", i32 545, i32 3}
!109 = !{ptr @.str.60, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @trf7970a_read_irqstatus._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @trf7970a_read_irqstatus._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/nfc/trf7970a.c", i32 461, i32 2}
!114 = !{ptr @.str.62, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @trf7970a_cmd.__UNIQUE_ID_ddebug370, !113, !"__UNIQUE_ID_ddebug370", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/nfc/trf7970a.c", i32 465, i32 3}
!118 = !{ptr @trf7970a_cmd._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @trf7970a_cmd._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.64, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/nfc/trf7970a.c", i32 717, i32 2}
!122 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @trf7970a_fill_fifo.__UNIQUE_ID_ddebug380, !121, !"__UNIQUE_ID_ddebug380", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/nfc/trf7970a.c", i32 654, i32 2}
!126 = !{ptr @.str.67, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @trf7970a_transmit.__UNIQUE_ID_ddebug378, !125, !"__UNIQUE_ID_ddebug378", i1 false, i1 false}
!128 = !{ptr @.str.68, !125, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/nfc/trf7970a.c", i32 671, i32 3}
!131 = !{ptr @trf7970a_transmit._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @trf7970a_transmit._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/nfc/trf7970a.c", i32 695, i32 2}
!135 = !{ptr @trf7970a_transmit.__UNIQUE_ID_ddebug379, !134, !"__UNIQUE_ID_ddebug379", i1 false, i1 false}
!136 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/nfc/trf7970a.c", i32 635, i32 2}
!138 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @trf7970a_send_err_upstream.__UNIQUE_ID_ddebug377, !137, !"__UNIQUE_ID_ddebug377", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/nfc/trf7970a.c", i32 755, i32 2}
!142 = !{ptr @.str.74, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @trf7970a_drain_fifo.__UNIQUE_ID_ddebug383, !141, !"__UNIQUE_ID_ddebug383", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/nfc/trf7970a.c", i32 813, i32 2}
!146 = !{ptr @trf7970a_drain_fifo.__UNIQUE_ID_ddebug386, !145, !"__UNIQUE_ID_ddebug386", i1 false, i1 false}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/nfc/trf7970a.c", i32 493, i32 2}
!149 = !{ptr @.str.77, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @trf7970a_read_cont.__UNIQUE_ID_ddebug372, !148, !"__UNIQUE_ID_ddebug372", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/nfc/trf7970a.c", i32 509, i32 3}
!153 = !{ptr @trf7970a_read_cont._entry, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @trf7970a_read_cont._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.79, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/nfc/trf7970a.c", i32 477, i32 3}
!157 = !{ptr @trf7970a_read._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @trf7970a_read._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/nfc/trf7970a.c", i32 480, i32 2}
!161 = !{ptr @trf7970a_read.__UNIQUE_ID_ddebug371, !160, !"__UNIQUE_ID_ddebug371", i1 false, i1 false}
!162 = !{ptr @.str.81, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/nfc/trf7970a.c", i32 611, i32 3}
!164 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @trf7970a_send_upstream.__UNIQUE_ID_ddebug375, !163, !"__UNIQUE_ID_ddebug375", i1 false, i1 false}
!166 = !{ptr @.str.83, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/nfc/trf7970a.c", i32 618, i32 3}
!168 = !{ptr @trf7970a_send_upstream.__UNIQUE_ID_ddebug376, !167, !"__UNIQUE_ID_ddebug376", i1 false, i1 false}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/nfc/trf7970a.c", i32 519, i32 2}
!171 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @trf7970a_write.__UNIQUE_ID_ddebug373, !170, !"__UNIQUE_ID_ddebug373", i1 false, i1 false}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/nfc/trf7970a.c", i32 523, i32 3}
!175 = !{ptr @trf7970a_write._entry, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @trf7970a_write._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.87, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/nfc/trf7970a.c", i32 595, i32 3}
!179 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @trf7970a_mode_detect.__UNIQUE_ID_ddebug374, !178, !"__UNIQUE_ID_ddebug374", i1 false, i1 false}
!181 = !{ptr @.str.89, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/nfc/trf7970a.c", i32 564, i32 3}
!183 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @trf7970a_read_target_proto._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @trf7970a_read_target_proto._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/nfc/trf7970a.c", i32 1010, i32 2}
!188 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @trf7970a_timeout_work_handler.__UNIQUE_ID_ddebug390, !187, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/nfc/trf7970a.c", i32 986, i32 2}
!192 = !{ptr @.str.94, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @trf7970a_issue_eof.__UNIQUE_ID_ddebug388, !191, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!194 = !{ptr @trf7970a_issue_eof.__UNIQUE_ID_ddebug389, !195, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!195 = !{!"../drivers/nfc/trf7970a.c", i32 998, i32 2}
!196 = !{ptr @trf7970a_nfc_ops, !197, !"trf7970a_nfc_ops", i1 false, i1 false}
!197 = !{!"../drivers/nfc/trf7970a.c", i32 1865, i32 37}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/nfc/trf7970a.c", i32 1344, i32 2}
!200 = !{ptr @.str.96, !199, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug400, !199, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!202 = !{ptr @.str.97, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/nfc/trf7970a.c", i32 1365, i32 3}
!204 = !{ptr @trf7970a_in_configure_hw.__UNIQUE_ID_ddebug401, !203, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/nfc/trf7970a.c", i32 1102, i32 2}
!207 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @trf7970a_switch_rf_on.__UNIQUE_ID_ddebug394, !206, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!209 = !{ptr @.str.100, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/nfc/trf7970a.c", i32 1107, i32 3}
!211 = !{ptr @trf7970a_switch_rf_on._entry, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @trf7970a_switch_rf_on._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/nfc/trf7970a.c", i32 1114, i32 3}
!215 = !{ptr @trf7970a_switch_rf_on._entry.101, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @trf7970a_switch_rf_on._entry_ptr.103, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.104, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/nfc/trf7970a.c", i32 1031, i32 2}
!219 = !{ptr @.str.105, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @trf7970a_init.__UNIQUE_ID_ddebug391, !218, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!221 = !{ptr @.str.106, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/nfc/trf7970a.c", i32 1075, i32 2}
!223 = !{ptr @trf7970a_init.__UNIQUE_ID_ddebug392, !222, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!224 = !{ptr @.str.107, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/nfc/trf7970a.c", i32 1173, i32 2}
!226 = !{ptr @.str.108, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug396, !225, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!228 = !{ptr @.str.109, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/nfc/trf7970a.c", i32 1212, i32 3}
!230 = !{ptr @trf7970a_in_config_rf_tech.__UNIQUE_ID_ddebug397, !229, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/nfc/trf7970a.c", i32 1269, i32 2}
!233 = !{ptr @.str.111, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @trf7970a_in_config_framing.__UNIQUE_ID_ddebug398, !232, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/nfc/trf7970a.c", i32 1295, i32 3}
!237 = !{ptr @trf7970a_in_config_framing.__UNIQUE_ID_ddebug399, !236, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/nfc/trf7970a.c", i32 1469, i32 2}
!240 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug402, !239, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!242 = !{ptr @.str.115, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/nfc/trf7970a.c", i32 1479, i32 3}
!244 = !{ptr @trf7970a_send_cmd._entry, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @trf7970a_send_cmd._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug403, !247, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!247 = !{!"../drivers/nfc/trf7970a.c", i32 1486, i32 3}
!248 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/nfc/trf7970a.c", i32 1496, i32 4}
!250 = !{ptr @trf7970a_send_cmd.__UNIQUE_ID_ddebug404, !249, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/nfc/trf7970a.c", i32 1687, i32 2}
!253 = !{ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug411, !252, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!254 = !{ptr @trf7970a_tg_configure_hw.__UNIQUE_ID_ddebug412, !255, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!255 = !{!"../drivers/nfc/trf7970a.c", i32 1708, i32 3}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/nfc/trf7970a.c", i32 1567, i32 2}
!258 = !{ptr @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug407, !257, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!259 = !{ptr @trf7970a_tg_config_rf_tech.__UNIQUE_ID_ddebug408, !260, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!260 = !{!"../drivers/nfc/trf7970a.c", i32 1592, i32 3}
!261 = !{ptr @.str.119, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/nfc/trf7970a.c", i32 1627, i32 2}
!263 = !{ptr @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug409, !262, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!264 = !{ptr @trf7970a_tg_config_framing.__UNIQUE_ID_ddebug410, !265, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!265 = !{!"../drivers/nfc/trf7970a.c", i32 1649, i32 3}
!266 = !{ptr @.str.120, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/nfc/trf7970a.c", i32 1797, i32 2}
!268 = !{ptr @.str.121, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @trf7970a_tg_listen.__UNIQUE_ID_ddebug415, !267, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!270 = !{ptr @.str.122, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/nfc/trf7970a.c", i32 1728, i32 3}
!272 = !{ptr @_trf7970a_tg_listen._entry, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @_trf7970a_tg_listen._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @_trf7970a_tg_listen.__UNIQUE_ID_ddebug413, !275, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!275 = !{!"../drivers/nfc/trf7970a.c", i32 1735, i32 3}
!276 = !{ptr @_trf7970a_tg_listen.__UNIQUE_ID_ddebug414, !277, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!277 = !{!"../drivers/nfc/trf7970a.c", i32 1744, i32 3}
!278 = !{ptr @.str.123, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/nfc/trf7970a.c", i32 1810, i32 2}
!280 = !{ptr @.str.124, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @trf7970a_tg_listen_md.__UNIQUE_ID_ddebug416, !279, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/nfc/trf7970a.c", i32 1830, i32 2}
!284 = !{ptr @.str.126, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @trf7970a_tg_get_rf_tech.__UNIQUE_ID_ddebug417, !283, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!286 = !{ptr @.str.127, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/nfc/trf7970a.c", i32 1128, i32 2}
!288 = !{ptr @.str.128, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @trf7970a_switch_rf.__UNIQUE_ID_ddebug395, !287, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!290 = !{ptr @.str.129, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/nfc/trf7970a.c", i32 1142, i32 4}
!292 = !{ptr @trf7970a_switch_rf._entry, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @trf7970a_switch_rf._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @trf7970a_switch_rf._entry.130, !295, !"_entry", i1 false, i1 false}
!295 = !{!"../drivers/nfc/trf7970a.c", i32 1153, i32 4}
!296 = !{ptr @trf7970a_switch_rf._entry_ptr.131, !295, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.132, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/nfc/trf7970a.c", i32 1085, i32 2}
!299 = !{ptr @.str.133, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @trf7970a_switch_rf_off.__UNIQUE_ID_ddebug393, !298, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!301 = !{ptr @.str.134, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/nfc/trf7970a.c", i32 1842, i32 2}
!303 = !{ptr @.str.135, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @trf7970a_abort_cmd.__UNIQUE_ID_ddebug418, !302, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!305 = !{ptr @trf7970a_abort_cmd.__UNIQUE_ID_ddebug419, !306, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!306 = !{!"../drivers/nfc/trf7970a.c", i32 1856, i32 3}
!307 = !{ptr @.str.136, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/nfc/trf7970a.c", i32 1982, i32 33}
!309 = !{ptr @.str.137, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/nfc/trf7970a.c", i32 1881, i32 2}
!311 = !{ptr @.str.138, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @trf7970a_power_up.__UNIQUE_ID_ddebug420, !310, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!313 = !{ptr @.str.139, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/nfc/trf7970a.c", i32 1888, i32 3}
!315 = !{ptr @trf7970a_power_up._entry, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @trf7970a_power_up._entry_ptr, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.140, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/nfc/trf7970a.c", i32 1913, i32 2}
!319 = !{ptr @.str.141, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @trf7970a_power_down.__UNIQUE_ID_ddebug421, !318, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!321 = !{ptr @.str.142, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/nfc/trf7970a.c", i32 1919, i32 3}
!323 = !{ptr @trf7970a_power_down.__UNIQUE_ID_ddebug422, !322, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!324 = !{ptr @.str.143, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/nfc/trf7970a.c", i32 1931, i32 3}
!326 = !{ptr @trf7970a_power_down._entry, !325, !"_entry", i1 false, i1 false}
!327 = !{ptr @trf7970a_power_down._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!328 = !{ptr @trf7970a_of_match, !329, !"trf7970a_of_match", i1 false, i1 false}
!329 = !{!"../drivers/nfc/trf7970a.c", i32 2234, i32 34}
!330 = !{ptr @trf7970a_pm_ops, !331, !"trf7970a_pm_ops", i1 false, i1 false}
!331 = !{!"../drivers/nfc/trf7970a.c", i32 2228, i32 32}
!332 = !{i32 1, !"wchar_size", i32 2}
!333 = !{i32 1, !"min_enum_size", i32 4}
!334 = !{i32 8, !"branch-target-enforcement", i32 0}
!335 = !{i32 8, !"sign-return-address", i32 0}
!336 = !{i32 8, !"sign-return-address-all", i32 0}
!337 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!338 = !{i32 7, !"uwtable", i32 1}
!339 = !{i32 7, !"frame-pointer", i32 2}
!340 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!341 = !{i64 2149014911, i64 2149014916, i64 2149014929, i64 2149014973, i64 2149015007, i64 2149015028}
!342 = !{!"auto-init"}
!343 = !{i8 0, i8 2}
