; ModuleID = '/llk/IR_all_yes/drivers/nfc/pn544/i2c.c_pt.bc'
source_filename = "../drivers/nfc/pn544/i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.nfc_phy_ops = type { ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pn544_i2c_phy = type { ptr, ptr, ptr, ptr, i32, i8, %struct.work_struct, i32, [33 x i8], ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.pn544_i2c_fw_frame_check = type <{ i8, i16, [3 x i8], i16, i16 }>
%struct.firmware = type { i32, ptr, ptr }
%struct.pn544_i2c_fw_blob = type { i32, i32, [0 x i8] }
%struct.pn544_i2c_fw_frame_write = type <{ i8, i16, [3 x i8], i16, [0 x i8] }>
%struct.pn544_i2c_fw_secure_blob = type { i64, [0 x i8] }
%struct.pn544_i2c_fw_frame_response = type <{ i8, i16 }>
%struct.pn544_i2c_fw_secure_frame = type <{ i8, i16, [0 x i8] }>
%struct.sk_buff = type { %union.anon.86, %union.anon.89, %union.anon.90, [48 x i8], %union.anon.91, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.93, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.86 = type { %struct.anon.87 }
%struct.anon.87 = type { ptr, ptr, %union.anon.88 }
%union.anon.88 = type { ptr }
%union.anon.89 = type { ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, ptr }
%union.anon.93 = type { %struct.anon.94 }
%struct.anon.94 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.95, i32, i32, i32, i16, i16, %union.anon.97, i32, %union.anon.98, %union.anon.99, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.95 = type { i32 }
%union.anon.97 = type { i32 }
%union.anon.98 = type { i32 }
%union.anon.99 = type { i16 }

@__initcall__kmod_pn544_i2c__320_964_pn544_hci_i2c_driver_init6 = internal global ptr @pn544_hci_i2c_driver_init, section ".initcall6.init", align 4
@pn544_hci_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @pn544_hci_i2c_probe, ptr @pn544_hci_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_pn544_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pn544_hci_i2c_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pn544_hci_i2c_driver_exit = internal global ptr @pn544_hci_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file321 = internal constant [43 x i8] c"pn544_i2c.file=drivers/nfc/pn544/pn544_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license322 = internal constant [22 x i8] c"pn544_i2c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [47 x i8] c"pn544_i2c.description=HCI NFC driver for PN544\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pn544_hci_i2c\00", [18 x i8] zeroinitializer }, align 32
@of_pn544_i2c_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,pn544-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"pn544\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NFC: Need I2C_FUNC_I2C\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pn544_hci_i2c_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nfc/pn544/i2c.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry_ptr = internal global ptr @pn544_hci_i2c_probe._entry, section ".printk_index", align 4
@pn544_hci_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&phy->fw_work)\00", [63 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pn544_i2c\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to add GPIO mapping table\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 899, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: Unable to get EN GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry_ptr.12 = internal global ptr @pn544_hci_i2c_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firmware\00", [23 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 906, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: Unable to get FW GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry_ptr.16 = internal global ptr @pn544_hci_i2c_probe._entry.14, section ".printk_index", align 4
@pn544_hci_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 917, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"NFC: Unable to register IRQ handler\0A\00", [59 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_probe._entry_ptr.19 = internal global ptr @pn544_hci_i2c_probe._entry.17, section ".printk_index", align 4
@i2c_phy_ops = internal constant { %struct.nfc_phy_ops, [20 x i8] } { %struct.nfc_phy_ops { ptr @pn544_hci_i2c_write, ptr @pn544_hci_i2c_enable, ptr @pn544_hci_i2c_disable }, [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"shdlc\00", [26 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@pn544_hci_i2c_fw_work_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016pn544_i2c: Firmware Download Complete, result=%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pn544_hci_i2c_fw_work_complete\00", [33 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_fw_work_complete._entry_ptr = internal global ptr @pn544_hci_i2c_fw_work_complete._entry, section ".printk_index", align 4
@pn544_hci_i2c_platform_init.rset_cmd = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\05\F9\04\00\C3\E5", [26 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 194, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NFC: Detecting nfc_en polarity\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pn544_hci_i2c_platform_init\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry_ptr = internal global ptr @pn544_hci_i2c_platform_init._entry, section ".printk_index", align 4
@pn544_hci_i2c_platform_init.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.26, ptr @.str.3, ptr @.str.28, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Sending reset cmd\0A\00", [45 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.3, i32 217, ptr @.str.27, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NFC: nfc_en polarity : active %s\0A\00", [62 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry_ptr.31 = internal global ptr @pn544_hci_i2c_platform_init._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.26, ptr @.str.3, i32 224, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"NFC: Could not detect nfc_en polarity, fallback to active high\0A\00", [32 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_platform_init._entry_ptr.36 = internal global ptr @pn544_hci_i2c_platform_init._entry.34, section ".printk_index", align 4
@pn544_hci_i2c_irq_thread_fn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pn544_hci_i2c_irq_thread_fn.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pn544_hci_i2c_irq_thread_fn\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IRQ\0A\00", [27 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_fw_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"NFC: cannot read fw status\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pn544_hci_i2c_fw_read_status\00", [35 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_fw_read_status._entry_ptr = internal global ptr @pn544_hci_i2c_fw_read_status._entry, section ".printk_index", align 4
@pn544_hci_i2c_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NFC: cannot read len byte\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pn544_hci_i2c_read\00", [45 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_read._entry_ptr = internal global ptr @pn544_hci_i2c_read._entry, section ".printk_index", align 4
@pn544_hci_i2c_read._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.3, i32 371, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NFC: invalid len byte\0A\00", [41 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_read._entry_ptr.45 = internal global ptr @pn544_hci_i2c_read._entry.43, section ".printk_index", align 4
@pn544_hci_i2c_read.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.42, ptr @.str.3, ptr @.str.46, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pn544_i2c: %s:\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"i2c frame read\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"i2c: \00", [26 x i8] zeroinitializer }, align 32
@check_crc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013pn544_i2c: CRC error 0x%x != 0x%x 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"check_crc\00", [22 x i8] zeroinitializer }, align 32
@check_crc._entry_ptr = internal global ptr @check_crc._entry, section ".printk_index", align 4
@check_crc._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.3, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016pn544_i2c: %s: BAD CRC\0A\00", [38 x i8] zeroinitializer }, align 32
@check_crc._entry_ptr.55 = internal global ptr @check_crc._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"crc: \00", [26 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_write.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.57, ptr @.str.3, ptr @.str.46, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pn544_hci_i2c_write\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"i2c frame written\00", [46 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_fw_download._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016pn544_i2c: Starting Firmware Download (%s)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pn544_hci_i2c_fw_download\00", [38 x i8] zeroinitializer }, align 32
@pn544_hci_i2c_fw_download._entry_ptr = internal global ptr @pn544_hci_i2c_fw_download._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.62 = internal global [17 x i64] [i64 15, i64 8, i64 0, i64 1, i64 2, i64 8, i64 11, i64 17, i64 19, i64 24, i64 25, i64 29, i64 32, i64 33, i64 116, i64 224, i64 230]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 4294967175, i64 4294967222, i64 4294967284]
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"pn544_hci_i2c_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 953, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 955, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"of_pn544_i2c_match\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 947, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"pn544_hci_i2c_id_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 46, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 877, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 886, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 894, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 897, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 899, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 904, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 906, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 917, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"i2c_phy_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 518, i32 33 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 921, i32 41 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 544, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [9 x i8] c"rset_cmd\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 191, i32 20 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 194, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 212, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 215, i32 5 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 223, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 493, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 423, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 365, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 371, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 390, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 337, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 339, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 340, i32 30 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 306, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [27 x i8] c"../drivers/nfc/pn544/i2c.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 529, i32 2 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file321, ptr @__UNIQUE_ID_license322, ptr @__exitcall_pn544_hci_i2c_driver_exit, ptr @__initcall__kmod_pn544_i2c__320_964_pn544_hci_i2c_driver_init6, ptr @check_crc._entry, ptr @check_crc._entry.53, ptr @check_crc._entry_ptr, ptr @check_crc._entry_ptr.55, ptr @pn544_hci_i2c_driver_exit, ptr @pn544_hci_i2c_fw_download._entry, ptr @pn544_hci_i2c_fw_download._entry_ptr, ptr @pn544_hci_i2c_fw_read_status._entry, ptr @pn544_hci_i2c_fw_read_status._entry_ptr, ptr @pn544_hci_i2c_fw_work_complete._entry, ptr @pn544_hci_i2c_fw_work_complete._entry_ptr, ptr @pn544_hci_i2c_platform_init._entry, ptr @pn544_hci_i2c_platform_init._entry.29, ptr @pn544_hci_i2c_platform_init._entry.34, ptr @pn544_hci_i2c_platform_init._entry_ptr, ptr @pn544_hci_i2c_platform_init._entry_ptr.31, ptr @pn544_hci_i2c_platform_init._entry_ptr.36, ptr @pn544_hci_i2c_probe._entry, ptr @pn544_hci_i2c_probe._entry.10, ptr @pn544_hci_i2c_probe._entry.14, ptr @pn544_hci_i2c_probe._entry.17, ptr @pn544_hci_i2c_probe._entry_ptr, ptr @pn544_hci_i2c_probe._entry_ptr.12, ptr @pn544_hci_i2c_probe._entry_ptr.16, ptr @pn544_hci_i2c_probe._entry_ptr.19, ptr @pn544_hci_i2c_read._entry, ptr @pn544_hci_i2c_read._entry.43, ptr @pn544_hci_i2c_read._entry_ptr, ptr @pn544_hci_i2c_read._entry_ptr.45, ptr @pn544_hci_i2c_driver, ptr @.str, ptr @of_pn544_i2c_match, ptr @pn544_hci_i2c_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pn544_hci_i2c_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @i2c_phy_ops, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @pn544_hci_i2c_platform_init.rset_cmd, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_pn544_i2c_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_phy_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_fw_work_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_platform_init.rset_cmd to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_platform_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_platform_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_platform_init._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_fw_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_read._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_crc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_crc._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pn544_hci_i2c_fw_download._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pn544_hci_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pn544_hci_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @pn544_hci_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 148, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.body8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %if.end
  %fw_work = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %fw_work, i32 noundef 0) #7
  %6 = ptrtoint ptr %fw_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %fw_work, align 4
  %lockdep_map = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @pn544_hci_i2c_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry12 = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %entry12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry12, ptr %entry12, align 4
  %prev.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry12, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pn544_hci_i2c_fw_work, ptr %func, align 4
  %fw_work_state = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %fw_work_state, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_i2c_probe.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_i2c_probe, %if.then24)) #7
          to label %if.end28 [label %if.then24], !srcloc !143

if.then24:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pn544_hci_i2c_probe.__UNIQUE_ID_ddebug319, ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %do.body8
  %call29 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 3) #7
  %gpiod_en = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call29, ptr %gpiod_en, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end38

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  %14 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod_en, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end28
  %call39 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 3) #7
  %gpiod_fw = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call39, ptr %gpiod_fw, align 4
  %cmp.i98 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i98, label %do.end45, label %if.end48

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #10
  %18 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_fw, align 4
  %20 = ptrtoint ptr %19 to i32
  br label %cleanup

if.end48:                                         ; preds = %if.end38
  tail call fastcc void @pn544_hci_i2c_platform_init(ptr noundef nonnull %call.i)
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %call50 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %22, ptr noundef null, ptr noundef nonnull @pn544_hci_i2c_irq_thread_fn, i32 noundef 8193, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %do.end54, label %if.end56

do.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %hdev = getelementptr inbounds %struct.pn544_i2c_phy, ptr %call.i, i32 0, i32 1
  %call57 = tail call i32 @pn544_hci_probe(ptr noundef nonnull %call.i, ptr noundef nonnull @i2c_phy_ops, ptr noundef nonnull @.str.20, i32 noundef 1, i32 noundef 2, i32 noundef 29, ptr noundef nonnull @pn544_hci_i2c_fw_download, ptr noundef %hdev) #7
  %23 = tail call i32 @llvm.smin.i32(i32 %call57, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end54, %do.end45, %do.end35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %16, %do.end35 ], [ %20, %do.end45 ], [ %call50, %do.end54 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %23, %if.end56 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %fw_work = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 6
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %fw_work) #7
  %fw_work_state = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_work_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %1, i32 noundef -19)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdev = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hdev, align 4
  tail call void @pn544_hci_remove(ptr noundef %5) #7
  %powered = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %powered to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %powered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %gpiod_fw.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %gpiod_fw.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod_fw.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 0) #7
  %gpiod_en.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_en.i, align 4
  %en_polarity.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %lnot.ext.i) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %14 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod_en.i, align 4
  %16 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %en_polarity.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef %17) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %18 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpiod_en.i, align 4
  %20 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %en_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.i = icmp eq i32 %21, 0
  %lnot.ext7.i = zext i1 %tobool5.not.i to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %19, i32 noundef %lnot.ext7.i) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %22 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %powered, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn544_hci_i2c_fw_work(ptr noundef %work) #2 align 64 {
entry:
  %frame.i.i231 = alloca [33 x i8], align 1
  %frame.i.i199 = alloca [33 x i8], align 1
  %frame.i = alloca %struct.pn544_i2c_fw_frame_check, align 1
  %frame.i.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %fw_work_state = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fw_work_state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.sw.epilog120_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb20
    i32 4, label %sw.bb47
    i32 5, label %sw.bb79
  ]

entry.sw.epilog120_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog120

sw.bb:                                            ; preds = %entry
  %gpiod_fw.i = getelementptr i8, ptr %work, i32 -12
  %3 = ptrtoint ptr %gpiod_fw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpiod_fw.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %4, i32 noundef 1) #7
  %gpiod_en.i = getelementptr i8, ptr %work, i32 -16
  %5 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpiod_en.i, align 4
  %en_polarity.i = getelementptr i8, ptr %work, i32 -8
  %7 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %en_polarity.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef %8) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %run_mode1.i = getelementptr i8, ptr %work, i32 116
  %9 = ptrtoint ptr %run_mode1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %run_mode1.i, align 4
  %fw = getelementptr i8, ptr %work, i32 84
  %firmware_name = getelementptr i8, ptr %work, i32 48
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call = tail call i32 @request_firmware(ptr noundef %fw, ptr noundef %firmware_name, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.if.then18_crit_edge, label %if.end

sw.bb.if.then18_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end:                                           ; preds = %sw.bb
  %fw_written = getelementptr i8, ptr %work, i32 100
  %12 = ptrtoint ptr %fw_written to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %fw_written, align 4
  %hw_variant = getelementptr i8, ptr %work, i32 -4
  %13 = ptrtoint ptr %hw_variant to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hw_variant, align 4
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %14, label %if.end.if.then18_crit_edge [
    i8 10, label %sw.bb1
    i8 11, label %exit_state_start
  ]

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

sw.bb1:                                           ; preds = %if.end
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %19, align 1
  %fw_blob_size = getelementptr i8, ptr %work, i32 92
  %22 = ptrtoint ptr %fw_blob_size to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %fw_blob_size, align 4
  %be_destaddr = getelementptr inbounds %struct.pn544_i2c_fw_blob, ptr %19, i32 0, i32 1
  %23 = ptrtoint ptr %be_destaddr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %be_destaddr, align 1
  %fw_blob_dest_addr = getelementptr i8, ptr %work, i32 88
  %25 = ptrtoint ptr %fw_blob_dest_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %fw_blob_dest_addr, align 4
  %data5 = getelementptr inbounds %struct.pn544_i2c_fw_blob, ptr %19, i32 0, i32 2
  %fw_blob_data = getelementptr i8, ptr %work, i32 96
  %26 = ptrtoint ptr %fw_blob_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %data5, ptr %fw_blob_data, align 4
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 4
  %29 = ptrtoint ptr %fw_written to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fw_written, align 4
  %add.i = add i32 %30, %24
  %add.ptr.i = getelementptr i8, ptr %data5, i32 %30
  %sub.i = sub i32 %21, %30
  %conv.i = trunc i32 %sub.i to i16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %frame.i.i) #7
  %31 = getelementptr inbounds i8, ptr %frame.i.i, i32 8
  %32 = call ptr @memset(ptr %31, i32 255, i32 25)
  %33 = tail call i16 @llvm.umin.i16(i16 %conv.i, i16 25) #7
  %conv2.i.i = zext i16 %33 to i32
  %add.i.i = add nuw nsw i16 %33, 5
  %narrow.i.i = add nuw nsw i16 %33, 8
  %add6.i.i = zext i16 %narrow.i.i to i32
  %34 = ptrtoint ptr %frame.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 8, ptr %frame.i.i, align 1
  %be_length.i.i = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i, i32 0, i32 1
  %35 = ptrtoint ptr %be_length.i.i to i32
  call void @__asan_storeN_noabort(i32 %35, i32 2)
  store i16 %add.i.i, ptr %be_length.i.i, align 1
  %and.i.i = lshr i32 %add.i, 16
  %conv7.i.i = trunc i32 %and.i.i to i8
  %be_dest_addr.i.i = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %be_dest_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv7.i.i, ptr %be_dest_addr.i.i, align 1
  %and8.i.i = lshr i32 %add.i, 8
  %conv10.i.i = trunc i32 %and8.i.i to i8
  %arrayidx12.i.i = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i, i32 0, i32 2, i32 1
  %37 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv10.i.i, ptr %arrayidx12.i.i, align 1
  %conv14.i.i = trunc i32 %add.i to i8
  %arrayidx16.i.i = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv14.i.i, ptr %arrayidx16.i.i, align 1
  %be_datalen.i.i = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i, i32 0, i32 3
  %39 = ptrtoint ptr %be_datalen.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %33, ptr %be_datalen.i.i, align 1
  %40 = call ptr @memcpy(ptr %31, ptr %add.ptr.i, i32 %conv2.i.i)
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %28, ptr noundef nonnull %frame.i.i, i32 noundef %add6.i.i, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i, i32 %add6.i.i)
  %cmp21.i.i = icmp eq i32 %call.i.i.i, %add6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp25.i.i = icmp slt i32 %call.i.i.i, 0
  %call..i.i = select i1 %cmp25.i.i, i32 %call.i.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %frame.i.i) #7
  br i1 %cmp21.i.i, label %exit_state_start.thread266, label %sw.bb1.if.then18_crit_edge

sw.bb1.if.then18_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

exit_state_start.thread266:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %fw_written to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %fw_written, align 4
  %add5.i = add i32 %42, %conv2.i.i
  store i32 %add5.i, ptr %fw_written, align 4
  %43 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %fw_work_state, align 4
  br label %sw.epilog120

exit_state_start:                                 ; preds = %if.end
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  %data10 = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %data10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data10, align 4
  %data11 = getelementptr inbounds %struct.pn544_i2c_fw_secure_blob, ptr %47, i32 0, i32 1
  %fw_blob_data13 = getelementptr i8, ptr %work, i32 96
  %48 = ptrtoint ptr %fw_blob_data13 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %data11, ptr %fw_blob_data13, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %45, align 4
  %fw_size = getelementptr i8, ptr %work, i32 104
  %51 = ptrtoint ptr %fw_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %fw_size, align 4
  %call15 = tail call fastcc i32 @pn544_hci_i2c_fw_secure_write_frame(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %exit_state_start.if.then18_crit_edge, label %exit_state_start.sw.epilog120_crit_edge

exit_state_start.sw.epilog120_crit_edge:          ; preds = %exit_state_start
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog120

exit_state_start.if.then18_crit_edge:             ; preds = %exit_state_start
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %exit_state_start.if.then18_crit_edge, %sw.bb1.if.then18_crit_edge, %if.end.if.then18_crit_edge, %sw.bb.if.then18_crit_edge
  %r.0265 = phi i32 [ %call15, %exit_state_start.if.then18_crit_edge ], [ %call..i.i, %sw.bb1.if.then18_crit_edge ], [ -524, %if.end.if.then18_crit_edge ], [ %call, %sw.bb.if.then18_crit_edge ]
  call fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %add.ptr, i32 noundef %r.0265)
  br label %sw.epilog120

sw.bb20:                                          ; preds = %entry
  %fw_cmd_result = getelementptr i8, ptr %work, i32 108
  %52 = ptrtoint ptr %fw_cmd_result to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fw_cmd_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp21 = icmp slt i32 %53, 0
  br i1 %cmp21, label %sw.bb20.if.then45_crit_edge, label %if.end24

sw.bb20.if.then45_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.end24:                                         ; preds = %sw.bb20
  %fw_written25 = getelementptr i8, ptr %work, i32 100
  %54 = ptrtoint ptr %fw_written25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_written25, align 4
  %fw_blob_size26 = getelementptr i8, ptr %work, i32 92
  %56 = ptrtoint ptr %fw_blob_size26 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fw_blob_size26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp27 = icmp eq i32 %55, %57
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %add.ptr, align 4
  %fw_blob_dest_addr31 = getelementptr i8, ptr %work, i32 88
  %60 = ptrtoint ptr %fw_blob_dest_addr31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw_blob_dest_addr31, align 4
  br i1 %cmp27, label %if.then29, label %if.end41

if.then29:                                        ; preds = %if.end24
  %fw_blob_data32 = getelementptr i8, ptr %work, i32 96
  %62 = ptrtoint ptr %fw_blob_data32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fw_blob_data32, align 4
  %conv34 = trunc i32 %55 to i16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %frame.i) #7
  %64 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 2
  %66 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 2, i32 1
  %67 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 2, i32 2
  %68 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 3
  %69 = getelementptr inbounds %struct.pn544_i2c_fw_frame_check, ptr %frame.i, i32 0, i32 4
  %conv.i197 = and i32 %55, 65535
  %call.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %63, i32 noundef %conv.i197) #7
  %70 = ptrtoint ptr %frame.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 6, ptr %frame.i, align 1
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 2)
  store i16 7, ptr %64, align 1
  %and.i = lshr i32 %61, 16
  %conv1.i = trunc i32 %and.i to i8
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv1.i, ptr %65, align 1
  %and2.i = lshr i32 %61, 8
  %conv4.i = trunc i32 %and2.i to i8
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv4.i, ptr %66, align 1
  %conv8.i = trunc i32 %61 to i8
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv8.i, ptr %67, align 1
  %75 = ptrtoint ptr %68 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 2)
  store i16 %conv34, ptr %68, align 1
  %76 = ptrtoint ptr %69 to i32
  call void @__asan_storeN_noabort(i32 %76, i32 2)
  store i16 %call.i, ptr %69, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef nonnull %frame.i, i32 noundef 10, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call.i.i)
  %cmp.i.not = icmp eq i32 %call.i.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp13.i = icmp slt i32 %call.i.i, 0
  %call11..i = select i1 %cmp13.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %frame.i) #7
  br i1 %cmp.i.not, label %if.end39, label %if.then29.if.then45_crit_edge

if.then29.if.then45_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.end39:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 4, ptr %fw_work_state, align 4
  br label %sw.epilog120

if.end41:                                         ; preds = %if.end24
  %78 = ptrtoint ptr %fw_written25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %fw_written25, align 4
  %add.i202 = add i32 %79, %61
  %fw_blob_data.i203 = getelementptr i8, ptr %work, i32 96
  %80 = ptrtoint ptr %fw_blob_data.i203 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %fw_blob_data.i203, align 4
  %add.ptr.i204 = getelementptr i8, ptr %81, i32 %79
  %82 = ptrtoint ptr %fw_blob_size26 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %fw_blob_size26, align 4
  %sub.i206 = sub i32 %83, %79
  %conv.i207 = trunc i32 %sub.i206 to i16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %frame.i.i199) #7
  %84 = getelementptr inbounds i8, ptr %frame.i.i199, i32 8
  %85 = call ptr @memset(ptr %84, i32 255, i32 25)
  %86 = tail call i16 @llvm.umin.i16(i16 %conv.i207, i16 25) #7
  %conv2.i.i208 = zext i16 %86 to i32
  %add.i.i209 = add nuw nsw i16 %86, 5
  %narrow.i.i210 = add nuw nsw i16 %86, 8
  %add6.i.i211 = zext i16 %narrow.i.i210 to i32
  %87 = ptrtoint ptr %frame.i.i199 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 8, ptr %frame.i.i199, align 1
  %be_length.i.i212 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i199, i32 0, i32 1
  %88 = ptrtoint ptr %be_length.i.i212 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 2)
  store i16 %add.i.i209, ptr %be_length.i.i212, align 1
  %and.i.i213 = lshr i32 %add.i202, 16
  %conv7.i.i214 = trunc i32 %and.i.i213 to i8
  %be_dest_addr.i.i215 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i199, i32 0, i32 2
  %89 = ptrtoint ptr %be_dest_addr.i.i215 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv7.i.i214, ptr %be_dest_addr.i.i215, align 1
  %and8.i.i216 = lshr i32 %add.i202, 8
  %conv10.i.i217 = trunc i32 %and8.i.i216 to i8
  %arrayidx12.i.i218 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i199, i32 0, i32 2, i32 1
  %90 = ptrtoint ptr %arrayidx12.i.i218 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv10.i.i217, ptr %arrayidx12.i.i218, align 1
  %conv14.i.i219 = trunc i32 %add.i202 to i8
  %arrayidx16.i.i220 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i199, i32 0, i32 2, i32 2
  %91 = ptrtoint ptr %arrayidx16.i.i220 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv14.i.i219, ptr %arrayidx16.i.i220, align 1
  %be_datalen.i.i221 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i199, i32 0, i32 3
  %92 = ptrtoint ptr %be_datalen.i.i221 to i32
  call void @__asan_storeN_noabort(i32 %92, i32 2)
  store i16 %86, ptr %be_datalen.i.i221, align 1
  %93 = call ptr @memcpy(ptr %84, ptr %add.ptr.i204, i32 %conv2.i.i208)
  %call.i.i.i222 = call i32 @i2c_transfer_buffer_flags(ptr noundef %59, ptr noundef nonnull %frame.i.i199, i32 noundef %add6.i.i211, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i222, i32 %add6.i.i211)
  %cmp21.i.i223 = icmp eq i32 %call.i.i.i222, %add6.i.i211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i222)
  %cmp25.i.i224 = icmp slt i32 %call.i.i.i222, 0
  %call..i.i225 = select i1 %cmp25.i.i224, i32 %call.i.i.i222, i32 -5
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %frame.i.i199) #7
  br i1 %cmp21.i.i223, label %exit_state_wait_write_answer, label %if.end41.if.then45_crit_edge

if.end41.if.then45_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

exit_state_wait_write_answer:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %fw_written25 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %fw_written25, align 4
  %add5.i226 = add i32 %95, %conv2.i.i208
  store i32 %add5.i226, ptr %fw_written25, align 4
  %96 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %fw_work_state, align 4
  br label %sw.epilog120

if.then45:                                        ; preds = %if.end41.if.then45_crit_edge, %if.then29.if.then45_crit_edge, %sw.bb20.if.then45_crit_edge
  %r.1.ph = phi i32 [ %call..i.i225, %if.end41.if.then45_crit_edge ], [ %call11..i, %if.then29.if.then45_crit_edge ], [ %53, %sw.bb20.if.then45_crit_edge ]
  call fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %add.ptr, i32 noundef %r.1.ph)
  br label %sw.epilog120

sw.bb47:                                          ; preds = %entry
  %fw_cmd_result48 = getelementptr i8, ptr %work, i32 108
  %97 = ptrtoint ptr %fw_cmd_result48 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %fw_cmd_result48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp49 = icmp slt i32 %98, 0
  br i1 %cmp49, label %sw.bb47.if.then77_crit_edge, label %if.end52

sw.bb47.if.then77_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

if.end52:                                         ; preds = %sw.bb47
  %fw_blob_data53 = getelementptr i8, ptr %work, i32 96
  %99 = ptrtoint ptr %fw_blob_data53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %fw_blob_data53, align 4
  %fw_blob_size54 = getelementptr i8, ptr %work, i32 92
  %101 = ptrtoint ptr %fw_blob_size54 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %fw_blob_size54, align 4
  %add.ptr55 = getelementptr i8, ptr %100, i32 %102
  %103 = ptrtoint ptr %add.ptr55 to i32
  call void @__asan_loadN_noabort(i32 %103, i32 4)
  %104 = load i32, ptr %add.ptr55, align 1
  store i32 %104, ptr %fw_blob_size54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp60.not = icmp eq i32 %104, 0
  br i1 %cmp60.not, label %if.end52.if.then77_crit_edge, label %if.then62

if.end52.if.then77_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

if.then62:                                        ; preds = %if.end52
  %be_destaddr63 = getelementptr inbounds %struct.pn544_i2c_fw_blob, ptr %add.ptr55, i32 0, i32 1
  %105 = ptrtoint ptr %be_destaddr63 to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %106 = load i32, ptr %be_destaddr63, align 1
  %fw_blob_dest_addr65 = getelementptr i8, ptr %work, i32 88
  %107 = ptrtoint ptr %fw_blob_dest_addr65 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %fw_blob_dest_addr65, align 4
  %data66 = getelementptr inbounds %struct.pn544_i2c_fw_blob, ptr %add.ptr55, i32 0, i32 2
  %108 = ptrtoint ptr %fw_blob_data53 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %data66, ptr %fw_blob_data53, align 4
  %fw_written69 = getelementptr i8, ptr %work, i32 100
  %109 = ptrtoint ptr %fw_written69 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %fw_written69, align 4
  %110 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %add.ptr, align 4
  %112 = ptrtoint ptr %fw_blob_size54 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %fw_blob_size54, align 4
  %conv.i239 = trunc i32 %113 to i16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %frame.i.i231) #7
  %114 = getelementptr inbounds i8, ptr %frame.i.i231, i32 8
  %115 = call ptr @memset(ptr %114, i32 255, i32 25)
  %116 = tail call i16 @llvm.umin.i16(i16 %conv.i239, i16 25) #7
  %conv2.i.i240 = zext i16 %116 to i32
  %add.i.i241 = add nuw nsw i16 %116, 5
  %narrow.i.i242 = add nuw nsw i16 %116, 8
  %add6.i.i243 = zext i16 %narrow.i.i242 to i32
  %117 = ptrtoint ptr %frame.i.i231 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 8, ptr %frame.i.i231, align 1
  %be_length.i.i244 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i231, i32 0, i32 1
  %118 = ptrtoint ptr %be_length.i.i244 to i32
  call void @__asan_storeN_noabort(i32 %118, i32 2)
  store i16 %add.i.i241, ptr %be_length.i.i244, align 1
  %and.i.i245 = lshr i32 %106, 16
  %conv7.i.i246 = trunc i32 %and.i.i245 to i8
  %be_dest_addr.i.i247 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i231, i32 0, i32 2
  %119 = ptrtoint ptr %be_dest_addr.i.i247 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv7.i.i246, ptr %be_dest_addr.i.i247, align 1
  %and8.i.i248 = lshr i32 %106, 8
  %conv10.i.i249 = trunc i32 %and8.i.i248 to i8
  %arrayidx12.i.i250 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i231, i32 0, i32 2, i32 1
  %120 = ptrtoint ptr %arrayidx12.i.i250 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv10.i.i249, ptr %arrayidx12.i.i250, align 1
  %conv14.i.i251 = trunc i32 %106 to i8
  %arrayidx16.i.i252 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i231, i32 0, i32 2, i32 2
  %121 = ptrtoint ptr %arrayidx16.i.i252 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv14.i.i251, ptr %arrayidx16.i.i252, align 1
  %be_datalen.i.i253 = getelementptr inbounds %struct.pn544_i2c_fw_frame_write, ptr %frame.i.i231, i32 0, i32 3
  %122 = ptrtoint ptr %be_datalen.i.i253 to i32
  call void @__asan_storeN_noabort(i32 %122, i32 2)
  store i16 %116, ptr %be_datalen.i.i253, align 1
  %123 = call ptr @memcpy(ptr %114, ptr %data66, i32 %conv2.i.i240)
  %call.i.i.i254 = call i32 @i2c_transfer_buffer_flags(ptr noundef %111, ptr noundef nonnull %frame.i.i231, i32 noundef %add6.i.i243, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i254, i32 %add6.i.i243)
  %cmp21.i.i255 = icmp eq i32 %call.i.i.i254, %add6.i.i243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i254)
  %cmp25.i.i256 = icmp slt i32 %call.i.i.i254, 0
  %call..i.i257 = select i1 %cmp25.i.i256, i32 %call.i.i.i254, i32 -5
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %frame.i.i231) #7
  br i1 %cmp21.i.i255, label %lor.lhs.false, label %if.then62.if.then77_crit_edge

if.then62.if.then77_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

lor.lhs.false:                                    ; preds = %if.then62
  %124 = ptrtoint ptr %fw_written69 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %fw_written69, align 4
  %add5.i258 = add i32 %125, %conv2.i.i240
  store i32 %add5.i258, ptr %fw_written69, align 4
  %126 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 3, ptr %fw_work_state, align 4
  %127 = ptrtoint ptr %fw_blob_size54 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pr = load i32, ptr %fw_blob_size54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp75 = icmp eq i32 %.pr, 0
  br i1 %cmp75, label %lor.lhs.false.if.then77_crit_edge, label %lor.lhs.false.sw.epilog120_crit_edge

lor.lhs.false.sw.epilog120_crit_edge:             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog120

lor.lhs.false.if.then77_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then77

if.then77:                                        ; preds = %lor.lhs.false.if.then77_crit_edge, %if.then62.if.then77_crit_edge, %if.end52.if.then77_crit_edge, %sw.bb47.if.then77_crit_edge
  %r.2274 = phi i32 [ 0, %lor.lhs.false.if.then77_crit_edge ], [ %call..i.i257, %if.then62.if.then77_crit_edge ], [ %98, %sw.bb47.if.then77_crit_edge ], [ %98, %if.end52.if.then77_crit_edge ]
  call fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %add.ptr, i32 noundef %r.2274)
  br label %sw.epilog120

sw.bb79:                                          ; preds = %entry
  %fw_cmd_result80 = getelementptr i8, ptr %work, i32 108
  %128 = ptrtoint ptr %fw_cmd_result80 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %fw_cmd_result80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp81 = icmp slt i32 %129, 0
  br i1 %cmp81, label %sw.bb79.if.then117_crit_edge, label %if.end84

sw.bb79.if.then117_crit_edge:                     ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.end84:                                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %129)
  %cmp85 = icmp eq i32 %129, 33
  br i1 %cmp85, label %if.end84.exit_state_wait_secure_write_answer_crit_edge, label %if.end89

if.end84.exit_state_wait_secure_write_answer_crit_edge: ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit_state_wait_secure_write_answer

if.end89:                                         ; preds = %if.end84
  %fw_written90 = getelementptr i8, ptr %work, i32 100
  %130 = ptrtoint ptr %fw_written90 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %fw_written90, align 4
  %fw_blob_size91 = getelementptr i8, ptr %work, i32 92
  %132 = ptrtoint ptr %fw_blob_size91 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %fw_blob_size91, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %131, i32 %133)
  %cmp92 = icmp eq i32 %131, %133
  br i1 %cmp92, label %if.then94, label %if.end89.lor.lhs.false113_crit_edge

if.end89.lor.lhs.false113_crit_edge:              ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false113

if.then94:                                        ; preds = %if.end89
  %fw_blob_data95 = getelementptr i8, ptr %work, i32 96
  %134 = ptrtoint ptr %fw_blob_data95 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %fw_blob_data95, align 4
  %fw_size99 = getelementptr i8, ptr %work, i32 104
  %136 = ptrtoint ptr %fw_size99 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %fw_size99, align 4
  %add.neg = sub i32 -8, %131
  %sub = add i32 %add.neg, %137
  store i32 %sub, ptr %fw_size99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %sub)
  %cmp101 = icmp ugt i32 %sub, 10
  br i1 %cmp101, label %if.then103, label %if.then94.lor.lhs.false113_crit_edge

if.then94.lor.lhs.false113_crit_edge:             ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false113

if.then103:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr97 = getelementptr i8, ptr %135, i32 %131
  %data104 = getelementptr inbounds %struct.pn544_i2c_fw_secure_blob, ptr %add.ptr97, i32 0, i32 1
  %138 = ptrtoint ptr %fw_blob_data95 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %data104, ptr %fw_blob_data95, align 4
  %139 = ptrtoint ptr %fw_written90 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %fw_written90, align 4
  br label %exit_state_wait_secure_write_answer

exit_state_wait_secure_write_answer:              ; preds = %if.then103, %if.end84.exit_state_wait_secure_write_answer_crit_edge
  %call108 = tail call fastcc i32 @pn544_hci_i2c_fw_secure_write_frame(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %cmp111 = icmp slt i32 %call108, 0
  br i1 %cmp111, label %exit_state_wait_secure_write_answer.if.then117_crit_edge, label %exit_state_wait_secure_write_answer.lor.lhs.false113_crit_edge

exit_state_wait_secure_write_answer.lor.lhs.false113_crit_edge: ; preds = %exit_state_wait_secure_write_answer
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false113

exit_state_wait_secure_write_answer.if.then117_crit_edge: ; preds = %exit_state_wait_secure_write_answer
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

lor.lhs.false113:                                 ; preds = %exit_state_wait_secure_write_answer.lor.lhs.false113_crit_edge, %if.then94.lor.lhs.false113_crit_edge, %if.end89.lor.lhs.false113_crit_edge
  %r.3277 = phi i32 [ %call108, %exit_state_wait_secure_write_answer.lor.lhs.false113_crit_edge ], [ %129, %if.then94.lor.lhs.false113_crit_edge ], [ %129, %if.end89.lor.lhs.false113_crit_edge ]
  %fw_size114 = getelementptr i8, ptr %work, i32 104
  %140 = ptrtoint ptr %fw_size114 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %fw_size114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp115 = icmp eq i32 %141, 0
  br i1 %cmp115, label %lor.lhs.false113.if.then117_crit_edge, label %lor.lhs.false113.sw.epilog120_crit_edge

lor.lhs.false113.sw.epilog120_crit_edge:          ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog120

lor.lhs.false113.if.then117_crit_edge:            ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then117

if.then117:                                       ; preds = %lor.lhs.false113.if.then117_crit_edge, %exit_state_wait_secure_write_answer.if.then117_crit_edge, %sw.bb79.if.then117_crit_edge
  %r.3278 = phi i32 [ %r.3277, %lor.lhs.false113.if.then117_crit_edge ], [ %call108, %exit_state_wait_secure_write_answer.if.then117_crit_edge ], [ %129, %sw.bb79.if.then117_crit_edge ]
  tail call fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %add.ptr, i32 noundef %r.3278)
  br label %sw.epilog120

sw.epilog120:                                     ; preds = %if.then117, %lor.lhs.false113.sw.epilog120_crit_edge, %if.then77, %lor.lhs.false.sw.epilog120_crit_edge, %if.then45, %exit_state_wait_write_answer, %if.end39, %if.then18, %exit_state_start.sw.epilog120_crit_edge, %exit_state_start.thread266, %entry.sw.epilog120_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pn544_hci_i2c_platform_init(ptr nocapture noundef %phy) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #10
  %gpiod_fw = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_fw, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #7
  %en_polarity = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 4
  %gpiod_en = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %polarity.055 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %en_polarity to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %polarity.055, ptr %en_polarity, align 4
  br label %while.cond

while.cond:                                       ; preds = %do.end15.while.cond_crit_edge, %for.body
  %retry.0 = phi i32 [ 3, %for.body ], [ %dec, %do.end15.while.cond_crit_edge ]
  %dec = add nsw i32 %retry.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retry.0)
  %tobool.not = icmp eq i32 %retry.0, 0
  br i1 %tobool.not, label %for.inc, label %while.body

while.body:                                       ; preds = %while.cond
  %5 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpiod_en, align 4
  %7 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %en_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool2.not = icmp eq i32 %8, 0
  %lnot.ext = zext i1 %tobool2.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %6, i32 noundef %lnot.ext) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %9 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpiod_en, align 4
  %11 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %en_polarity, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %10, i32 noundef %12) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_i2c_platform_init.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_i2c_platform_init, %if.then)) #7
          to label %do.end15 [label %if.then], !srcloc !143

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pn544_hci_i2c_platform_init.__UNIQUE_ID_ddebug315, ptr noundef %dev13, ptr noundef nonnull @.str.28) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then, %while.body
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull @pn544_hci_i2c_platform_init.rset_cmd, i32 noundef 6, i16 noundef zeroext 0) #7
  %cmp18 = icmp eq i32 %call.i, 6
  br i1 %cmp18, label %do.end22, label %do.end15.while.cond_crit_edge

do.end15.while.cond_crit_edge:                    ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end22:                                         ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %polarity.055)
  %cmp25 = icmp eq i32 %polarity.055, 0
  %cond = select i1 %cmp25, ptr @.str.32, ptr @.str.33
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond) #10
  br label %out

for.inc:                                          ; preds = %while.cond
  %inc = add nuw nsw i32 %polarity.055, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %do.end29, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end29:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %dev31 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev31, ptr noundef nonnull @.str.35) #10
  br label %out

out:                                              ; preds = %do.end29, %do.end22
  %21 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpiod_en, align 4
  %23 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %en_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool34.not = icmp eq i32 %24, 0
  %lnot.ext36 = zext i1 %tobool34.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %22, i32 noundef %lnot.ext36) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_irq_thread_fn(i32 noundef %irq, ptr noundef %phy_id) #2 align 64 {
entry:
  %response.i = alloca %struct.pn544_i2c_fw_frame_response, align 1
  %skb = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #7
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %skb, align 4
  %tobool.not = icmp eq ptr %phy_id, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %lor.lhs.false

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy_id, align 4
  %irq1 = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %irq)
  %cmp.not = icmp eq i32 %4, %irq
  br i1 %cmp.not, label %if.end36, label %lor.lhs.false.land.end_crit_edge

lor.lhs.false.land.end_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.end

land.end:                                         ; preds = %lor.lhs.false.land.end_crit_edge, %entry.land.end_crit_edge
  %.b90 = load i1, ptr @pn544_hci_i2c_irq_thread_fn.__already_done, align 1
  br i1 %.b90, label %land.end.cleanup_crit_edge, label %if.then7, !prof !144

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @pn544_hci_i2c_irq_thread_fn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 488, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end36:                                         ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_i2c_irq_thread_fn.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_i2c_irq_thread_fn, %if.then47)) #7
          to label %do.end50 [label %if.then47], !srcloc !143

if.then47:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pn544_hci_i2c_irq_thread_fn.__UNIQUE_ID_ddebug318, ptr noundef %dev, ptr noundef nonnull @.str.38) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %if.end36
  %hard_fault = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 18
  %5 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp51.not = icmp eq i32 %6, 0
  br i1 %cmp51.not, label %if.end53, label %do.end50.cleanup_crit_edge

do.end50.cleanup_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end53:                                         ; preds = %do.end50
  %run_mode = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 17
  %7 = ptrtoint ptr %run_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %run_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp54 = icmp eq i32 %8, 1
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %response.i) #7
  %9 = ptrtoint ptr %response.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %response.i, align 1, !annotation !145
  %10 = getelementptr inbounds %struct.pn544_i2c_fw_frame_response, ptr %response.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 -1, ptr %10, align 1, !annotation !145
  %12 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy_id, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %response.i, i32 noundef 3, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #10
  br label %pn544_hci_i2c_fw_read_status.exit

if.end.i:                                         ; preds = %if.then55
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  %14 = ptrtoint ptr %response.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %response.i, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %15, label %sw.default.i [
    i8 0, label %if.end.i.pn544_hci_i2c_fw_read_status.exit_crit_edge
    i8 33, label %sw.bb1.i
    i8 1, label %sw.bb4.i
    i8 2, label %sw.bb5.i
    i8 8, label %sw.bb6.i
    i8 11, label %sw.bb7.i
    i8 17, label %sw.bb8.i
    i8 19, label %sw.bb9.i
    i8 24, label %sw.bb10.i
    i8 25, label %sw.bb11.i
    i8 29, label %sw.bb12.i
    i8 32, label %sw.bb13.i
    i8 -32, label %sw.bb14.i
    i8 116, label %if.end.i.sw.bb15.i_crit_edge
    i8 -26, label %if.end.i.sw.bb15.i_crit_edge94
  ]

if.end.i.sw.bb15.i_crit_edge94:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

if.end.i.sw.bb15.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

if.end.i.pn544_hci_i2c_fw_read_status.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

sw.bb15.i:                                        ; preds = %if.end.i.sw.bb15.i_crit_edge, %if.end.i.sw.bb15.i_crit_edge94
  br label %pn544_hci_i2c_fw_read_status.exit

sw.default.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pn544_hci_i2c_fw_read_status.exit

pn544_hci_i2c_fw_read_status.exit:                ; preds = %sw.default.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb1.i, %if.end.i.pn544_hci_i2c_fw_read_status.exit_crit_edge, %do.end.i
  %retval.0.i91 = phi i32 [ -5, %do.end.i ], [ -5, %sw.default.i ], [ -5, %sw.bb15.i ], [ -13, %sw.bb14.i ], [ -12, %sw.bb13.i ], [ -22, %sw.bb12.i ], [ -126, %sw.bb11.i ], [ -74, %sw.bb10.i ], [ -524, %sw.bb9.i ], [ -22, %sw.bb8.i ], [ -71, %sw.bb7.i ], [ -13, %sw.bb6.i ], [ -61, %sw.bb5.i ], [ -110, %sw.bb4.i ], [ 33, %sw.bb1.i ], [ 0, %if.end.i.pn544_hci_i2c_fw_read_status.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %response.i) #7
  %fw_cmd_result = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 15
  %17 = ptrtoint ptr %fw_cmd_result to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %retval.0.i91, ptr %fw_cmd_result, align 4
  %fw_work = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i92 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %fw_work) #7
  br label %cleanup

if.else:                                          ; preds = %if.end53
  %call58 = call fastcc i32 @pn544_hci_i2c_read(ptr noundef nonnull %phy_id, ptr noundef nonnull %skb)
  %19 = zext i32 %call58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call58, label %if.end68 [
    i32 -121, label %if.then60
    i32 -12, label %if.else.cleanup_crit_edge
    i32 -74, label %if.else.cleanup_crit_edge95
  ]

if.else.cleanup_crit_edge95:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %hard_fault to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -121, ptr %hard_fault, align 4
  %hdev = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 1
  %21 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hdev, align 4
  tail call void @nfc_hci_recv_frame(ptr noundef %22, ptr noundef null) #7
  br label %cleanup

if.end68:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hdev69 = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 1
  %23 = ptrtoint ptr %hdev69 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hdev69, align 4
  %25 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %skb, align 4
  tail call void @nfc_hci_recv_frame(ptr noundef %24, ptr noundef %26) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.then60, %if.else.cleanup_crit_edge, %if.else.cleanup_crit_edge95, %pn544_hci_i2c_fw_read_status.exit, %do.end50.cleanup_crit_edge, %if.then7, %land.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then60 ], [ 0, %if.then7 ], [ 0, %land.end.cleanup_crit_edge ], [ 1, %do.end50.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge95 ], [ 1, %if.end68 ], [ 1, %pn544_hci_i2c_fw_read_status.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pn544_hci_probe(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_fw_download(ptr noundef %phy_id, ptr noundef %firmware_name, i8 noundef zeroext %hw_variant) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %firmware_name) #10
  %firmware_name1 = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 8
  %call2 = tail call ptr @strcpy(ptr noundef %firmware_name1, ptr noundef %firmware_name) #11
  %hw_variant3 = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 5
  %0 = ptrtoint ptr %hw_variant3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %hw_variant, ptr %hw_variant3, align 4
  %fw_work_state = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 7
  %1 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %fw_work_state, align 4
  %fw_work = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %fw_work) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pn544_hci_i2c_fw_secure_write_frame(ptr noundef %phy) unnamed_addr #2 align 64 {
entry:
  %buf.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_blob_data = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 12
  %0 = ptrtoint ptr %fw_blob_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_blob_data, align 4
  %fw_written = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 13
  %2 = ptrtoint ptr %fw_written to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_written, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %be_datalen = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %be_datalen to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %be_datalen, align 1
  %conv = zext i16 %5 to i32
  %add = add nuw nsw i32 %conv, 3
  %fw_blob_size = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 11
  %6 = ptrtoint ptr %fw_blob_size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %fw_blob_size, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %fw_blob_size1 = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 11
  %7 = ptrtoint ptr %fw_blob_size1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fw_blob_size1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %cmp2 = icmp ugt i32 %8, 33
  br i1 %cmp2, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %10)
  %cmp5.not = icmp eq i8 %10, 12
  br i1 %cmp5.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %8)
  %cmp10.not = icmp eq i32 %8, 33
  br i1 %cmp10.not, label %if.end8.if.end24_crit_edge, label %if.then12

if.end8.if.end24_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then12:                                        ; preds = %if.end8
  %11 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %phy, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef %1, i32 noundef %8, i16 noundef zeroext 0) #7
  %13 = ptrtoint ptr %fw_blob_size1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fw_blob_size1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %14)
  %cmp17 = icmp eq i32 %call.i, %14
  br i1 %cmp17, label %if.then12.exit_crit_edge, label %if.else

if.then12.exit_crit_edge:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp20 = icmp slt i32 %call.i, 0
  %call15. = select i1 %cmp20, i32 %call.i, i32 -5
  br label %cleanup

if.end24:                                         ; preds = %if.end8.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %sub = sub i32 %8, %3
  %conv29 = trunc i32 %sub to i16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %buf.i) #7
  %15 = getelementptr inbounds i8, ptr %buf.i, i32 3
  %16 = call ptr @memset(ptr %15, i32 255, i32 30)
  %17 = tail call i16 @llvm.umin.i16(i16 %conv29, i16 30) #7
  %18 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 13, ptr %buf.i, align 1
  %be_datalen.i = getelementptr inbounds %struct.pn544_i2c_fw_secure_frame, ptr %buf.i, i32 0, i32 1
  %19 = ptrtoint ptr %be_datalen.i to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 %17, ptr %be_datalen.i, align 1
  %conv4.i = zext i16 %17 to i32
  %20 = call ptr @memcpy(ptr %15, ptr %add.ptr, i32 %conv4.i)
  %add.i = add nuw nsw i32 %conv4.i, 3
  %21 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %buf.i, i32 noundef %add.i, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %add.i)
  %cmp7.i = icmp eq i32 %call.i.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i = icmp slt i32 %call.i.i, 0
  %call..i = select i1 %cmp11.i, i32 %call.i.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %buf.i) #7
  br i1 %cmp7.i, label %if.end24.exit_crit_edge, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.exit_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

exit:                                             ; preds = %if.end24.exit_crit_edge, %if.then12.exit_crit_edge
  %r.0 = phi i32 [ %call.i, %if.then12.exit_crit_edge ], [ %conv4.i, %if.end24.exit_crit_edge ]
  %23 = ptrtoint ptr %fw_written to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_written, align 4
  %add36 = add i32 %24, %r.0
  store i32 %add36, ptr %fw_written, align 4
  %fw_work_state = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 7
  %25 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %fw_work_state, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp39 = icmp eq i8 %27, 1
  br i1 %cmp39, label %if.then41, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then41:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  %gpiod_fw.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 3
  %28 = ptrtoint ptr %gpiod_fw.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gpiod_fw.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %29, i32 noundef 1) #7
  %gpiod_en.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 2
  %30 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpiod_en.i, align 4
  %en_polarity.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 4
  %32 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %en_polarity.i, align 4
  call void @gpiod_set_value_cansleep(ptr noundef %31, i32 noundef %33) #7
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %run_mode1.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 17
  %34 = ptrtoint ptr %run_mode1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %run_mode1.i, align 4
  %fw_cmd_result = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 15
  %35 = ptrtoint ptr %fw_cmd_result to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %fw_cmd_result, align 4
  %fw_work = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %36 = load ptr, ptr @system_wq, align 4
  %call.i.i70 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %36, ptr noundef %fw_work) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %exit.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.else, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call15., %if.else ], [ %call..i, %if.end24.cleanup_crit_edge ], [ 0, %if.then41 ], [ 0, %exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pn544_hci_i2c_fw_work_complete(ptr noundef %phy, i32 noundef %result) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %result) #10
  %gpiod_fw.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 3
  %0 = ptrtoint ptr %gpiod_fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_fw.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #7
  %gpiod_en.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_en.i, align 4
  %en_polarity.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 4
  %4 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %lnot.ext.i = zext i1 %tobool.not.i to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %lnot.ext.i) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %6 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_en.i, align 4
  %8 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_polarity.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %9) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %10 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_en.i, align 4
  %12 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_polarity.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i = icmp eq i32 %13, 0
  %lnot.ext7.i = zext i1 %tobool5.not.i to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %lnot.ext7.i) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %powered.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 16
  %14 = ptrtoint ptr %powered.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %powered.i, align 4
  %fw_work_state = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 7
  %15 = ptrtoint ptr %fw_work_state to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %fw_work_state, align 4
  %fw = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 9
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @release_firmware(ptr noundef nonnull %17) #7
  %18 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %fw, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hdev = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 1
  %19 = ptrtoint ptr %hdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hdev, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %firmware_name = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy, i32 0, i32 8
  %sub = sub i32 0, %result
  %call3 = tail call i32 @nfc_fw_download_done(ptr noundef %22, ptr noundef %firmware_name, i32 noundef %sub) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pn544_hci_i2c_disable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_fw = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %gpiod_fw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_fw, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #7
  %gpiod_en = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_en, align 4
  %en_polarity = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 4
  %4 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %lnot.ext = zext i1 %tobool.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %lnot.ext) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %6 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpiod_en, align 4
  %8 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %en_polarity, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %7, i32 noundef %9) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %10 = ptrtoint ptr %gpiod_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpiod_en, align 4
  %12 = ptrtoint ptr %en_polarity to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %en_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  %lnot.ext7 = zext i1 %tobool5.not to i32
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef %lnot.ext7) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %powered = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 16
  %14 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %powered, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_fw_download_done(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pn544_hci_i2c_read(ptr nocapture noundef readonly %phy, ptr nocapture noundef %skb) unnamed_addr #2 align 64 {
entry:
  %len = alloca i8, align 1
  %tmp = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %len) #7
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %len, align 1, !annotation !145
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tmp) #7
  %1 = call ptr @memset(ptr %tmp, i32 255, i32 32)
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %len, i32 noundef 1, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %6 = add i8 %5, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 -30, i8 %6)
  %7 = icmp ult i8 %6, -30
  br i1 %7, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.44) #10
  br label %flush

if.end11:                                         ; preds = %if.end
  %conv = zext i8 %5 to i32
  %add = add nuw nsw i32 %conv, 1
  %call.i76 = call ptr @__alloc_skb(i32 noundef %add, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i76, ptr %skb, align 4
  %cmp14 = icmp eq ptr %call.i76, null
  br i1 %cmp14, label %if.end11.flush_crit_edge, label %if.end17

if.end11.flush_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %flush

if.end17:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len, align 1
  %call.i77 = call ptr @skb_put(ptr noundef nonnull %call.i76, i32 noundef 1) #7
  %11 = ptrtoint ptr %call.i77 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %call.i77, align 1
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %skb, align 4
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len, align 1
  %conv18 = zext i8 %15 to i32
  %call19 = call ptr @skb_put(ptr noundef %13, i32 noundef %conv18) #7
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len, align 1
  %conv20 = zext i8 %17 to i32
  %call.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %call19, i32 noundef %conv20, i16 noundef zeroext 1) #7
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len, align 1
  %conv22 = zext i8 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i78, i32 %conv22)
  %cmp23.not = icmp eq i32 %call.i78, %conv22
  br i1 %cmp23.not, label %do.body28, label %if.then25

if.then25:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %21, i32 noundef 0) #7
  br label %cleanup

do.body28:                                        ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_i2c_read.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_i2c_read, %if.then33)) #7
          to label %do.end36 [label %if.then33], !srcloc !143

if.then33:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_i2c_read.__UNIQUE_ID_ddebug317, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #7
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %do.body28
  %22 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %skb, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %len37 = getelementptr inbounds %struct.sk_buff, ptr %23, i32 0, i32 6
  %26 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len37, align 4
  call void @print_hex_dump(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %25, i32 noundef %27, i1 noundef zeroext false) #7
  %28 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %skb, align 4
  %data40 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 19
  %30 = ptrtoint ptr %data40 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data40, align 4
  %len41 = getelementptr inbounds %struct.sk_buff, ptr %29, i32 0, i32 6
  %32 = ptrtoint ptr %len41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len41, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %31, align 1
  %conv.i = zext i8 %35 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %call.i79 = call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %31, i32 noundef %sub.i) #7
  %neg.i = xor i16 %call.i79, -1
  %arrayidx4.i = getelementptr i8, ptr %31, i32 %sub.i
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx4.i, align 1
  %conv6.i = zext i16 %neg.i to i32
  %38 = trunc i16 %neg.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %38)
  %cmp.not.i = icmp eq i8 %37, %38
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %do.end36.if.then45_crit_edge

do.end36.if.then45_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

lor.lhs.false.i:                                  ; preds = %do.end36
  %arrayidx9.i = getelementptr i8, ptr %31, i32 %conv.i
  %39 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %40 to i32
  %41 = lshr i32 %conv6.i, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv10.i)
  %cmp12.not.i = icmp eq i32 %41, %conv10.i
  br i1 %cmp12.not.i, label %if.end46, label %lor.lhs.false.i.if.then45_crit_edge

lor.lhs.false.i.if.then45_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false.i.if.then45_crit_edge, %do.end36.if.then45_crit_edge
  %arrayidx16.i = getelementptr i8, ptr %31, i32 %conv.i
  %42 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %43 to i32
  %conv20.i = zext i8 %37 to i32
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv6.i, i32 noundef %conv17.i, i32 noundef %conv20.i) #10
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.52) #10
  call void @print_hex_dump(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.56, i32 noundef 0, i32 noundef 16, i32 noundef 2, ptr noundef %31, i32 noundef %33, i1 noundef zeroext false) #7
  %44 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %skb, align 4
  call void @kfree_skb_reason(ptr noundef %45, i32 noundef 0) #7
  br label %flush

if.end46:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %skb, align 4
  %call47 = call ptr @skb_pull(ptr noundef %47, i32 noundef 1) #7
  %48 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %skb, align 4
  %len48 = getelementptr inbounds %struct.sk_buff, ptr %49, i32 0, i32 6
  %50 = ptrtoint ptr %len48 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len48, align 4
  %sub = add i32 %51, -2
  call void @skb_trim(ptr noundef %49, i32 noundef %sub) #7
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  br label %cleanup

flush:                                            ; preds = %if.then45, %if.end11.flush_crit_edge, %do.end9
  %r.0 = phi i32 [ -74, %do.end9 ], [ -74, %if.then45 ], [ -12, %if.end11.flush_crit_edge ]
  %call.i81 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %tmp, i32 noundef 32, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp50 = icmp slt i32 %call.i81, 0
  %spec.select = select i1 %cmp50, i32 -121, i32 %r.0
  call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %flush, %if.end46, %if.then25, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ %spec.select, %flush ], [ -121, %if.then25 ], [ 0, %if.end46 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %len) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfc_hci_recv_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_write(ptr nocapture noundef readonly %phy_id, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_id, align 4
  %hard_fault = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 18
  %2 = ptrtoint ptr %hard_fault to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hard_fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 6000, i32 noundef 2) #7
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i, align 4
  %6 = trunc i32 %5 to i8
  %conv.i = add i8 %6, 2
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #7
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %call.i, align 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  %10 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i, align 4
  %call3.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext -1, ptr noundef %9, i32 noundef %11) #7
  %neg.i = xor i16 %call3.i, -1
  %conv7.i = trunc i16 %neg.i to i8
  %call.i.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #7
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7.i, ptr %call.i.i, align 1
  %13 = lshr i16 %neg.i, 8
  %conv9.i = trunc i16 %13 to i8
  %call.i17.i = tail call ptr @skb_put(ptr noundef %skb, i32 noundef 1) #7
  %14 = ptrtoint ptr %call.i17.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv9.i, ptr %call.i17.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pn544_hci_i2c_write.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pn544_hci_i2c_write, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !143

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pn544_hci_i2c_write.__UNIQUE_ID_ddebug316, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.58) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %if.end
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 2, i32 noundef 16, i32 noundef 1, ptr noundef %16, i32 noundef %18, i1 noundef zeroext false) #7
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %21 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len1.i, align 4
  %call.i41 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %20, i32 noundef %22, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call.i41)
  %cmp12 = icmp eq i32 %call.i41, -121
  br i1 %cmp12, label %if.then13, label %do.end.if.end17_crit_edge

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then13:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 10000, i32 noundef 2) #7
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %25 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len1.i, align 4
  %call.i42 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef %24, i32 noundef %26, i16 noundef zeroext 0) #7
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %do.end.if.end17_crit_edge
  %r.0 = phi i32 [ %call.i42, %if.then13 ], [ %call.i41, %do.end.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %r.0)
  %cmp18 = icmp sgt i32 %r.0, -1
  br i1 %cmp18, label %if.then19, label %if.end17.if.end24_crit_edge

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0, i32 %28)
  %cmp21.not = icmp eq i32 %r.0, %28
  %. = select i1 %cmp21.not, i32 0, i32 -121
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.end17.if.end24_crit_edge
  %r.1 = phi i32 [ %r.0, %if.end17.if.end24_crit_edge ], [ %., %if.then19 ]
  %call.i43 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 1) #7
  tail call void @skb_trim(ptr noundef %skb, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %if.end24 ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn544_hci_i2c_enable(ptr nocapture noundef %phy_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod_fw.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 3
  %0 = ptrtoint ptr %gpiod_fw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod_fw.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #7
  %gpiod_en.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 2
  %2 = ptrtoint ptr %gpiod_en.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpiod_en.i, align 4
  %en_polarity.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 4
  %4 = ptrtoint ptr %en_polarity.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %en_polarity.i, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef %5) #7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 15000, i32 noundef 2) #7
  %run_mode1.i = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 17
  %6 = ptrtoint ptr %run_mode1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %run_mode1.i, align 4
  %powered = getelementptr inbounds %struct.pn544_i2c_phy, ptr %phy_id, i32 0, i32 16
  %7 = ptrtoint ptr %powered to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %powered, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn544_hci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !68, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !121, !123, !124, !125, !127, !128, !129, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @__initcall__kmod_pn544_i2c__320_964_pn544_hci_i2c_driver_init6, !1, !"__initcall__kmod_pn544_i2c__320_964_pn544_hci_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nfc/pn544/i2c.c", i32 964, i32 1}
!2 = !{ptr @__exitcall_pn544_hci_i2c_driver_exit, !1, !"__exitcall_pn544_hci_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file321, !4, !"__UNIQUE_ID_file321", i1 false, i1 false}
!4 = !{!"../drivers/nfc/pn544/i2c.c", i32 966, i32 1}
!5 = !{ptr @__UNIQUE_ID_license322, !4, !"__UNIQUE_ID_license322", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description323, !7, !"__UNIQUE_ID_description323", i1 false, i1 false}
!7 = !{!"../drivers/nfc/pn544/i2c.c", i32 967, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nfc/pn544/i2c.c", i32 955, i32 14}
!10 = !{ptr @pn544_hci_i2c_driver, !11, !"pn544_hci_i2c_driver", i1 false, i1 false}
!11 = !{!"../drivers/nfc/pn544/i2c.c", i32 953, i32 26}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nfc/pn544/i2c.c", i32 877, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @pn544_hci_i2c_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @pn544_hci_i2c_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @pn544_hci_i2c_probe.__key, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/nfc/pn544/i2c.c", i32 886, i32 2}
!22 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/nfc/pn544/i2c.c", i32 894, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pn544_hci_i2c_probe.__UNIQUE_ID_ddebug319, !24, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/nfc/pn544/i2c.c", i32 897, i32 38}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/nfc/pn544/i2c.c", i32 899, i32 3}
!31 = !{ptr @pn544_hci_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @pn544_hci_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nfc/pn544/i2c.c", i32 904, i32 38}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nfc/pn544/i2c.c", i32 906, i32 3}
!37 = !{ptr @pn544_hci_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pn544_hci_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nfc/pn544/i2c.c", i32 917, i32 3}
!41 = !{ptr @pn544_hci_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pn544_hci_i2c_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/nfc/pn544/i2c.c", i32 921, i32 41}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/nfc/pn544/i2c.c", i32 544, i32 2}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @pn544_hci_i2c_fw_work_complete._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @pn544_hci_i2c_fw_work_complete._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/nfc/pn544/i2c.c", i32 864, i32 4}
!52 = distinct !{null, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/nfc/pn544/i2c.c", i32 865, i32 4}
!54 = distinct !{null, !55, !"acpi_pn544_gpios", i1 false, i1 false}
!55 = !{!"../drivers/nfc/pn544/i2c.c", i32 863, i32 39}
!56 = distinct !{null, !57, !"enable_gpios", i1 false, i1 false}
!57 = !{!"../drivers/nfc/pn544/i2c.c", i32 860, i32 38}
!58 = distinct !{null, !59, !"firmware_gpios", i1 false, i1 false}
!59 = !{!"../drivers/nfc/pn544/i2c.c", i32 861, i32 38}
!60 = !{ptr @pn544_hci_i2c_platform_init.rset_cmd, !61, !"rset_cmd", i1 false, i1 false}
!61 = !{!"../drivers/nfc/pn544/i2c.c", i32 191, i32 20}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/nfc/pn544/i2c.c", i32 194, i32 2}
!64 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @pn544_hci_i2c_platform_init._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @pn544_hci_i2c_platform_init._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/nfc/pn544/i2c.c", i32 212, i32 4}
!70 = !{ptr @pn544_hci_i2c_platform_init.__UNIQUE_ID_ddebug315, !69, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/nfc/pn544/i2c.c", i32 215, i32 5}
!73 = !{ptr @pn544_hci_i2c_platform_init._entry.29, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pn544_hci_i2c_platform_init._entry_ptr.31, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/nfc/pn544/i2c.c", i32 223, i32 2}
!79 = !{ptr @pn544_hci_i2c_platform_init._entry.34, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @pn544_hci_i2c_platform_init._entry_ptr.36, !78, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/nfc/pn544/i2c.c", i32 488, i32 3}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/nfc/pn544/i2c.c", i32 493, i32 2}
!85 = !{ptr @.str.38, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pn544_hci_i2c_irq_thread_fn.__UNIQUE_ID_ddebug318, !84, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/nfc/pn544/i2c.c", i32 423, i32 3}
!89 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @pn544_hci_i2c_fw_read_status._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @pn544_hci_i2c_fw_read_status._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/nfc/pn544/i2c.c", i32 365, i32 3}
!94 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @pn544_hci_i2c_read._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @pn544_hci_i2c_read._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/nfc/pn544/i2c.c", i32 371, i32 3}
!99 = !{ptr @pn544_hci_i2c_read._entry.43, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @pn544_hci_i2c_read._entry_ptr.45, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/nfc/pn544/i2c.c", i32 390, i32 2}
!103 = !{ptr @pn544_hci_i2c_read.__UNIQUE_ID_ddebug317, !102, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!104 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/nfc/pn544/i2c.c", i32 337, i32 3}
!110 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @check_crc._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @check_crc._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/nfc/pn544/i2c.c", i32 339, i32 3}
!115 = !{ptr @check_crc._entry.53, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @check_crc._entry_ptr.55, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/nfc/pn544/i2c.c", i32 340, i32 30}
!119 = !{ptr @i2c_phy_ops, !120, !"i2c_phy_ops", i1 false, i1 false}
!120 = !{!"../drivers/nfc/pn544/i2c.c", i32 518, i32 33}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/nfc/pn544/i2c.c", i32 306, i32 2}
!123 = !{ptr @pn544_hci_i2c_write.__UNIQUE_ID_ddebug316, !122, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!124 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @.str.59, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/nfc/pn544/i2c.c", i32 529, i32 2}
!127 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pn544_hci_i2c_fw_download._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @pn544_hci_i2c_fw_download._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @of_pn544_i2c_match, !131, !"of_pn544_i2c_match", i1 false, i1 false}
!131 = !{!"../drivers/nfc/pn544/i2c.c", i32 947, i32 34}
!132 = !{ptr @pn544_hci_i2c_id_table, !133, !"pn544_hci_i2c_id_table", i1 false, i1 false}
!133 = !{!"../drivers/nfc/pn544/i2c.c", i32 46, i32 35}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i64 2148976797, i64 2148976802, i64 2148976815, i64 2148976859, i64 2148976893, i64 2148976914}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!"auto-init"}
