; ModuleID = '/llk/IR_all_yes/drivers/mtd/devices/spear_smi.c_pt.bc'
source_filename = "../drivers/mtd/devices/spear_smi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.flash_device = type { ptr, i8, i32, i32, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spear_smi_plat_data = type { i32, i32, ptr, [4 x ptr] }
%struct.spear_smi_flash_info = type { ptr, i32, i32, ptr, i32, i8 }
%struct.spear_smi = type { ptr, i32, i32, %struct.mutex, ptr, ptr, %struct.wait_queue_head, i32, [4 x ptr] }
%struct.spear_snor_flash = type { i32, i32, %struct.mutex, %struct.mtd_info, i32, ptr, i32, ptr, i8, i8 }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.erase_info = type { i64, i64, i64 }

@__initcall__kmod_spear_smi__189_1118_spear_smi_driver_init6 = internal global ptr @spear_smi_driver_init, section ".initcall6.init", align 4
@spear_smi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spear_smi_probe, ptr @spear_smi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr @spear_smi_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spear_smi_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spear_smi_driver_exit = internal global ptr @spear_smi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [45 x i8] c"spear_smi.file=drivers/mtd/devices/spear_smi\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [22 x i8] c"spear_smi.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [83 x i8] c"spear_smi.author=Ashish Priyadarshi, Shiraz Hashim <shiraz.linux.kernel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description193 = internal constant [64 x i8] c"spear_smi.description=MTD SMI driver for serial nor flash chips\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smi\00", [28 x i8] zeroinitializer }, align 32
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@spear_smi_id_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,spear600-smi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@spear_smi_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr @spear_smi_suspend, ptr @spear_smi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 954, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spear_smi_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/devices/spear_smi.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry_ptr = internal global ptr @spear_smi_probe._entry, section ".printk_index", align 4
@spear_smi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry_ptr.7 = internal global ptr @spear_smi_probe._entry.6, section ".printk_index", align 4
@spear_smi_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 995, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"exceeding max number of flashes\0A\00", [63 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry_ptr.10 = internal global ptr @spear_smi_probe._entry.8, section ".printk_index", align 4
@spear_smi_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1012, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"SMI IRQ allocation failed\0A\00", [37 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry_ptr.13 = internal global ptr @spear_smi_probe._entry.11, section ".printk_index", align 4
@spear_smi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@spear_smi_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&dev->cmd_complete\00", [45 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1025, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bank setup failed\0A\00", [45 x i8] zeroinitializer }, align 32
@spear_smi_probe._entry_ptr.19 = internal global ptr @spear_smi_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-rate\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st,smi-fast-mode\00", [47 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&flash->lock\00", [19 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 871, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smi-nor%d not found\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"spear_smi_setup_banks\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry_ptr = internal global ptr @spear_smi_setup_banks._entry, section ".printk_index", align 4
@flash_devices = internal constant { [34 x %struct.flash_device], [208 x i8] } { [34 x %struct.flash_device] [%struct.flash_device { ptr @.str.38, i8 -40, i32 1384480, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.39, i8 -40, i32 1450016, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.40, i8 -40, i32 1515552, i32 256, i32 65536, i32 8388608 }, %struct.flash_device { ptr @.str.41, i8 -40, i32 1581088, i32 256, i32 262144, i32 16777216 }, %struct.flash_device { ptr @.str.42, i8 -40, i32 1056800, i32 128, i32 32768, i32 65536 }, %struct.flash_device { ptr @.str.43, i8 -40, i32 1122336, i32 128, i32 32768, i32 131072 }, %struct.flash_device { ptr @.str.44, i8 -40, i32 1187872, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.45, i8 -40, i32 1253408, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.46, i8 -40, i32 1318944, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.47, i8 -40, i32 1130528, i32 256, i32 65536, i32 131072 }, %struct.flash_device { ptr @.str.48, i8 -40, i32 1196064, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.49, i8 -40, i32 1261600, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.50, i8 -40, i32 1327136, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.51, i8 -40, i32 1180161, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.52, i8 -40, i32 1245697, i32 256, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.53, i8 -40, i32 1311233, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.54, i8 -40, i32 1376769, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.55, i8 -40, i32 1442305, i32 256, i32 65536, i32 8388608 }, %struct.flash_device { ptr @.str.56, i8 82, i32 6619167, i32 128, i32 32768, i32 65536 }, %struct.flash_device { ptr @.str.57, i8 82, i32 6291487, i32 256, i32 32768, i32 131072 }, %struct.flash_device { ptr @.str.58, i8 82, i32 6488095, i32 256, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.59, i8 82, i32 6553631, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.60, i8 -41, i32 288287, i32 256, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.61, i8 -40, i32 1056962, i32 16, i32 65536, i32 65536 }, %struct.flash_device { ptr @.str.62, i8 -40, i32 1122498, i32 16, i32 65536, i32 131072 }, %struct.flash_device { ptr @.str.63, i8 -40, i32 1188034, i32 16, i32 65536, i32 262144 }, %struct.flash_device { ptr @.str.64, i8 -40, i32 1253570, i32 16, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.65, i8 -40, i32 1253570, i32 16, i32 65536, i32 524288 }, %struct.flash_device { ptr @.str.66, i8 -40, i32 1319106, i32 16, i32 65536, i32 1048576 }, %struct.flash_device { ptr @.str.67, i8 -40, i32 1384642, i32 256, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.68, i8 -40, i32 1384642, i32 16, i32 65536, i32 2097152 }, %struct.flash_device { ptr @.str.69, i8 -40, i32 1450178, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.70, i8 -40, i32 1450178, i32 256, i32 65536, i32 4194304 }, %struct.flash_device { ptr @.str.71, i8 -40, i32 1515714, i32 256, i32 65536, i32 8388608 }], [208 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.25, ptr @.str.3, i32 905, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mtd .name=%s .size=%llx(%lluM)\0A\00", [32 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry_ptr.29 = internal global ptr @spear_smi_setup_banks._entry.27, section ".printk_index", align 4
@spear_smi_setup_banks._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.25, ptr @.str.3, i32 908, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c".erasesize = 0x%x(%uK)\0A\00", [40 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry_ptr.32 = internal global ptr @spear_smi_setup_banks._entry.30, section ".printk_index", align 4
@spear_smi_setup_banks._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.25, ptr @.str.3, i32 919, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Err MTD partition=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@spear_smi_setup_banks._entry_ptr.35 = internal global ptr @spear_smi_setup_banks._entry.33, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@spear_smi_wait_till_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smi controller is busy, timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spear_smi_wait_till_ready\00", [38 x i8] zeroinitializer }, align 32
@spear_smi_wait_till_ready._entry_ptr = internal global ptr @spear_smi_wait_till_ready._entry, section ".printk_index", align 4
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p16\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p32\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p64\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st m25p128\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p05\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p10\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p20\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p40\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st m25p80\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st m45pe10\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st m45pe20\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st m45pe40\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st m45pe80\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp s25fl004\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp s25fl008\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp s25fl016\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp s25fl032\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sp s25fl064\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel 25f512\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel 25f1024\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel 25f2048\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel 25f4096\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atmel 25fs040\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mac 25l512\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l1005\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l2005\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l4005\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac 25l4005a\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l8005\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l1605\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac 25l1605a\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l3205\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac 25l3205a\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mac 25l6405\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@spear_mtd_erase._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 506, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Invalid Bank Num\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spear_mtd_erase\00", [16 x i8] zeroinitializer }, align 32
@spear_mtd_erase._entry_ptr = internal global ptr @spear_mtd_erase._entry, section ".printk_index", align 4
@spear_smi_erase_sector._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sector erase failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spear_smi_erase_sector\00", [41 x i8] zeroinitializer }, align 32
@spear_smi_erase_sector._entry_ptr = internal global ptr @spear_smi_erase_sector._entry, section ".printk_index", align 4
@spear_smi_write_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"smi controller failed on write enable\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spear_smi_write_enable\00", [41 x i8] zeroinitializer }, align 32
@spear_smi_write_enable._entry_ptr = internal global ptr @spear_smi_write_enable._entry, section ".printk_index", align 4
@spear_smi_write_enable._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.78, ptr @.str.3, i32 410, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"couldn't enable write\0A\00", [41 x i8] zeroinitializer }, align 32
@spear_smi_write_enable._entry_ptr.81 = internal global ptr @spear_smi_write_enable._entry.79, section ".printk_index", align 4
@spear_mtd_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.82, ptr @.str.3, i32 558, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spear_mtd_read\00", [17 x i8] zeroinitializer }, align 32
@spear_mtd_read._entry_ptr = internal global ptr @spear_mtd_read._entry, section ".printk_index", align 4
@spear_mtd_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.83, ptr @.str.3, i32 687, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spear_mtd_write\00", [16 x i8] zeroinitializer }, align 32
@spear_mtd_write._entry_ptr = internal global ptr @spear_mtd_write._entry, section ".printk_index", align 4
@spear_smi_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.3, i32 1052, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dev is null\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spear_smi_remove\00", [47 x i8] zeroinitializer }, align 32
@spear_smi_remove._entry_ptr = internal global ptr @spear_smi_remove._entry, section ".printk_index", align 4
@spear_smi_remove._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.3, i32 1065, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"error removing mtd\0A\00", [44 x i8] zeroinitializer }, align 32
@spear_smi_remove._entry_ptr.88 = internal global ptr @spear_smi_remove._entry.86, section ".printk_index", align 4
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"spear_smi_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1108, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1110, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [19 x i8] c"spear_smi_id_table\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1101, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"spear_smi_pm_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1098, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 954, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 961, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 995, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1012, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1016, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1017, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1025, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 805, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 819, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 823, i32 27 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 866, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 871, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"flash_devices\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 115, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 903, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 907, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 919, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 284, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 116, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 117, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 118, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 119, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 120, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 121, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 122, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 123, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 124, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 125, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 126, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 127, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 128, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 129, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 130, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 131, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 132, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 133, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 134, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 135, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 136, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 137, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 138, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 139, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 140, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 141, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 142, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 143, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 144, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 145, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 146, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 147, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 148, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 149, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.312, i32 464, i32 31 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 506, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 474, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 403, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 410, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 558, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 687, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1052, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.372 = private constant [35 x i8] c"../drivers/mtd/devices/spear_smi.c\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.372, i32 1065, i32 4 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_description193, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_spear_smi_driver_exit, ptr @__initcall__kmod_spear_smi__189_1118_spear_smi_driver_init6, ptr @spear_mtd_erase._entry, ptr @spear_mtd_erase._entry_ptr, ptr @spear_mtd_read._entry, ptr @spear_mtd_read._entry_ptr, ptr @spear_mtd_write._entry, ptr @spear_mtd_write._entry_ptr, ptr @spear_smi_driver_exit, ptr @spear_smi_erase_sector._entry, ptr @spear_smi_erase_sector._entry_ptr, ptr @spear_smi_probe._entry, ptr @spear_smi_probe._entry.11, ptr @spear_smi_probe._entry.17, ptr @spear_smi_probe._entry.6, ptr @spear_smi_probe._entry.8, ptr @spear_smi_probe._entry_ptr, ptr @spear_smi_probe._entry_ptr.10, ptr @spear_smi_probe._entry_ptr.13, ptr @spear_smi_probe._entry_ptr.19, ptr @spear_smi_probe._entry_ptr.7, ptr @spear_smi_remove._entry, ptr @spear_smi_remove._entry.86, ptr @spear_smi_remove._entry_ptr, ptr @spear_smi_remove._entry_ptr.88, ptr @spear_smi_setup_banks._entry, ptr @spear_smi_setup_banks._entry.27, ptr @spear_smi_setup_banks._entry.30, ptr @spear_smi_setup_banks._entry.33, ptr @spear_smi_setup_banks._entry_ptr, ptr @spear_smi_setup_banks._entry_ptr.29, ptr @spear_smi_setup_banks._entry_ptr.32, ptr @spear_smi_setup_banks._entry_ptr.35, ptr @spear_smi_wait_till_ready._entry, ptr @spear_smi_wait_till_ready._entry_ptr, ptr @spear_smi_write_enable._entry, ptr @spear_smi_write_enable._entry.79, ptr @spear_smi_write_enable._entry_ptr, ptr @spear_smi_write_enable._entry_ptr.81, ptr @spear_smi_driver, ptr @.str, ptr @spear_smi_id_table, ptr @spear_smi_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.9, ptr @.str.12, ptr @spear_smi_probe.__key, ptr @.str.14, ptr @spear_smi_probe.__key.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @spear_smi_setup_banks.__key, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @flash_devices, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_id_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_setup_banks.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_setup_banks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_devices to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_setup_banks._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_setup_banks._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_setup_banks._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_wait_till_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_mtd_erase._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_erase_sector._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_write_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_write_enable._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_mtd_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_mtd_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spear_smi_remove._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spear_smi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spear_smi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @spear_smi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %__wq_entry.i.i = alloca %struct.wait_queue_entry, align 4
  %val.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len.i, align 4, !annotation !196
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call.i, align 4
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #7
  %board_flash_info.i = getelementptr inbounds %struct.spear_smi_plat_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %board_flash_info.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %board_flash_info.i, align 4
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.then8, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp.not46.i = icmp eq ptr %call8.i, null
  br i1 %cmp.not46.i, label %if.end7.i.spear_smi_probe_config_dt.exit.thread_crit_edge, label %if.end7.i.for.body.i_crit_edge

if.end7.i.for.body.i_crit_edge:                   ; preds = %if.end7.i
  br label %for.body.i

if.end7.i.spear_smi_probe_config_dt.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spear_smi_probe_config_dt.exit.thread

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %if.end7.i.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %if.end21.i.for.body.i_crit_edge ], [ 0, %if.end7.i.for.body.i_crit_edge ]
  %pp.047.i = phi ptr [ %call22.i, %if.end21.i.for.body.i_crit_edge ], [ %call8.i, %if.end7.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.spear_smi_plat_data, ptr %call.i, i32 0, i32 3, i32 %i.048.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pp.047.i, ptr %arrayidx.i, align 4
  %call10.i = call ptr @of_get_property(ptr noundef nonnull %pp.047.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %len.i) #7
  %10 = ptrtoint ptr %call10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call10.i, align 4
  %12 = ptrtoint ptr %board_flash_info.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board_flash_info.i, align 4
  %mem_base.i = getelementptr inbounds %struct.spear_smi_flash_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %mem_base.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %mem_base.i, align 4
  %arrayidx14.i = getelementptr i32, ptr %call10.i, i32 1
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx14.i, align 4
  %17 = load ptr, ptr %board_flash_info.i, align 4
  %size.i = getelementptr inbounds %struct.spear_smi_flash_info, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %size.i, align 4
  %call17.i = call ptr @of_get_property(ptr noundef nonnull %pp.047.i, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool18.not.i = icmp eq ptr %call17.i, null
  br i1 %tobool18.not.i, label %for.body.i.if.end21.i_crit_edge, label %if.then19.i

for.body.i.if.end21.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then19.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %board_flash_info.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %board_flash_info.i, align 4
  %fast_mode.i = getelementptr inbounds %struct.spear_smi_flash_info, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %fast_mode.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %fast_mode.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then19.i, %for.body.i.if.end21.i_crit_edge
  %inc.i = add i32 %i.048.i, 1
  %call22.i = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %pp.047.i) #7
  %cmp.not.i = icmp eq ptr %call22.i, null
  br i1 %cmp.not.i, label %if.end21.i.spear_smi_probe_config_dt.exit.thread_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end21.i.spear_smi_probe_config_dt.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spear_smi_probe_config_dt.exit.thread

spear_smi_probe_config_dt.exit.thread:            ; preds = %if.end21.i.spear_smi_probe_config_dt.exit.thread_crit_edge, %if.end7.i.spear_smi_probe_config_dt.exit.thread_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end7.i.spear_smi_probe_config_dt.exit.thread_crit_edge ], [ %inc.i, %if.end21.i.spear_smi_probe_config_dt.exit.thread_crit_edge ]
  %num_flashes.i = getelementptr inbounds %struct.spear_smi_plat_data, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %num_flashes.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %i.0.lcssa.i, ptr %num_flashes.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end20

if.then8:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.else:                                          ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %tobool13.not = icmp eq ptr %24, null
  br i1 %tobool13.not, label %if.then14, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end20:                                         ; preds = %if.else.if.end20_crit_edge, %spear_smi_probe_config_dt.exit.thread
  %pdata.0 = phi ptr [ %24, %if.else.if.end20_crit_edge ], [ %call.i, %spear_smi_probe_config_dt.exit.thread ]
  %call21 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.end20.cleanup_crit_edge, label %if.end23

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end20
  %call.i157 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 184, i32 noundef 2848) #7
  %tobool26.not = icmp eq ptr %call.i157, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %call29 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call31 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call29) #7
  %io_base = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 4
  %25 = ptrtoint ptr %io_base to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call31, ptr %io_base, align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then34, label %if.end37

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end28
  %pdev38 = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 5
  %27 = ptrtoint ptr %pdev38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdev, ptr %pdev38, align 4
  %28 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pdata.0, align 4
  %clk_rate39 = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 2
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 50000000)
  %31 = ptrtoint ptr %clk_rate39 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %clk_rate39, align 4
  %num_flashes = getelementptr inbounds %struct.spear_smi_plat_data, ptr %pdata.0, i32 0, i32 1
  %32 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_flashes, align 4
  %num_flashes45 = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 7
  %34 = ptrtoint ptr %num_flashes45 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %num_flashes45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp47 = icmp ugt i32 %33, 4
  br i1 %cmp47, label %do.end51, label %if.end37.if.end54_crit_edge

if.end37.if.end54_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end51:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %35 = ptrtoint ptr %num_flashes45 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %num_flashes45, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end51, %if.end37.if.end54_crit_edge
  %call56 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %36 = ptrtoint ptr %call.i157 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call56, ptr %call.i157, align 4
  %cmp.i158 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i158, label %if.then59, label %if.end62

if.then59:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %call.i159 = call i32 @clk_prepare(ptr noundef %call56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i159)
  %tobool.not.i160 = icmp eq i32 %call.i159, 0
  br i1 %tobool.not.i160, label %if.end.i161, label %if.end62.cleanup_crit_edge

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i161:                                      ; preds = %if.end62
  %call1.i = call i32 @clk_enable(ptr noundef %call56) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end67, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call56) #7
  br label %cleanup

if.end67:                                         ; preds = %if.end.i161
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 8
  %call.i163 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef nonnull @spear_smi_int_handler, ptr noundef null, i32 noundef 0, ptr noundef %39, ptr noundef nonnull %call.i157) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool70.not = icmp eq i32 %call.i163, 0
  br i1 %tobool70.not, label %do.body78, label %if.end67.err_irq_crit_edge

if.end67.err_irq_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

do.body78:                                        ; preds = %if.end67
  %lock = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @spear_smi_probe.__key) #7
  %cmd_complete = getelementptr inbounds %struct.spear_smi, ptr %call.i157, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %cmd_complete, ptr noundef nonnull @.str.16, ptr noundef nonnull @spear_smi_probe.__key.15) #7
  %40 = ptrtoint ptr %call.i157 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i157, align 4
  %call.i164 = call i32 @clk_get_rate(ptr noundef %41) #7
  %42 = ptrtoint ptr %clk_rate39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %clk_rate39, align 4
  %add.i = add i32 %call.i164, -1
  %sub.i = add i32 %add.i, %43
  %div.i = udiv i32 %sub.i, %43
  %shl.i = shl i32 %div.i, 8
  %or.i = or i32 %shl.i, 65647
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_base, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  call void @arm_heavy_mb() #7
  %46 = call i32 @llvm.bswap.i32(i32 %or.i) #7
  %47 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %io_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %46) #7, !srcloc !198
  call void @mutex_unlock(ptr noundef %lock) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %49 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.i157, ptr %driver_data.i.i, align 4
  %50 = ptrtoint ptr %num_flashes45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_flashes45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp85193.not = icmp eq i32 %51, 0
  br i1 %cmp85193.not, label %do.body78.cleanup_crit_edge, label %for.body.lr.ph

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.body78
  %platform_data.i.i165 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0194 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.spear_smi_plat_data, ptr %pdata.0, i32 0, i32 3, i32 %i.0194
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx, align 4
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i, align 4
  %56 = ptrtoint ptr %platform_data.i.i165 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %platform_data.i.i165, align 8
  %num_flashes.i166 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %num_flashes.i166 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_flashes.i166, align 4
  %sub.i167 = add i32 %59, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i167, i32 %i.0194)
  %cmp.i168 = icmp ult i32 %sub.i167, %i.0194
  br i1 %cmp.i168, label %for.body.err_irq_crit_edge, label %if.end.i172

for.body.err_irq_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end.i172:                                      ; preds = %for.body
  %board_flash_info.i169 = getelementptr inbounds %struct.spear_smi_plat_data, ptr %57, i32 0, i32 2
  %60 = ptrtoint ptr %board_flash_info.i169 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %board_flash_info.i169, align 4
  %arrayidx.i170 = getelementptr %struct.spear_smi_flash_info, ptr %61, i32 %i.0194
  %tobool.not.i171 = icmp eq ptr %arrayidx.i170, null
  br i1 %tobool.not.i171, label %if.end.i172.err_irq_crit_edge, label %if.end4.i

if.end.i172.err_irq_crit_edge:                    ; preds = %if.end.i172
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end4.i:                                        ; preds = %if.end.i172
  %call.i.i173 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1536, i32 noundef 2848) #7
  %tobool7.not.i = icmp eq ptr %call.i.i173, null
  br i1 %tobool7.not.i, label %if.end4.i.err_irq_crit_edge, label %if.end9.i

if.end4.i.err_irq_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end9.i:                                        ; preds = %if.end4.i
  %62 = ptrtoint ptr %call.i.i173 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %i.0194, ptr %call.i.i173, align 8
  %fast_mode.i174 = getelementptr %struct.spear_smi_flash_info, ptr %61, i32 %i.0194, i32 5
  %63 = ptrtoint ptr %fast_mode.i174 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %fast_mode.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool11.not.i = icmp ne i8 %64, 0
  %conv12.i = zext i1 %tobool11.not.i to i8
  %fast_mode13.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 9
  %65 = ptrtoint ptr %fast_mode13.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv12.i, ptr %fast_mode13.i, align 1
  %lock.i175 = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock.i175, ptr noundef nonnull @.str.23, ptr noundef nonnull @spear_smi_setup_banks.__key) #7
  %call.i164.i = call fastcc i32 @spear_smi_wait_till_ready(ptr noundef %55, i32 noundef %i.0194, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164.i)
  %tobool.not.i.i = icmp eq i32 %call.i164.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end9.i.spear_smi_probe_flash.exit.i_crit_edge

if.end9.i.spear_smi_probe_flash.exit.i_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spear_smi_probe_flash.exit.i

if.end.i.i:                                       ; preds = %if.end9.i
  %lock.i.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #7
  %status.i.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 1
  %66 = ptrtoint ptr %status.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %status.i.i, align 4
  %io_base.i.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 4
  %67 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io_base.i.i, align 4
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !201
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !202
  call void @arm_heavy_mb() #7
  %70 = or i32 %69, 16
  %71 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !203
  call void @arm_heavy_mb() #7
  %73 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %74, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 -1627389952) #7, !srcloc !198
  %shl.i.i = shl i32 %i.0194, 12
  %or13.i.i = or i32 %shl.i.i, 433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !204
  call void @arm_heavy_mb() #7
  %75 = call i32 @llvm.bswap.i32(i32 %or13.i.i) #7
  %76 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %77, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %75) #7, !srcloc !198
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 770) #7
  %78 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status.i.i, align 4
  %and.i.i = and i32 %79, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool26.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool26.not.i.i, label %if.then35.i.i, label %if.end.i.i.if.end67.i.i_crit_edge

if.end.i.i.if.end67.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i.i

if.then35.i.i:                                    ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  %80 = call ptr @memset(ptr %__wq_entry.i.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i.i, i32 noundef 0) #7
  %cmd_complete.i.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 6
  %call37136.i.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #7
  %81 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %status.i.i, align 4
  %and40137.i.i = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40137.i.i)
  %tobool41.not138.not.i.i = icmp eq i32 %and40137.i.i, 0
  br i1 %tobool41.not138.not.i.i, label %if.then35.i.i.if.end57.i.i_crit_edge, label %if.then35.i.i.for.end.i.i_crit_edge

if.then35.i.i.for.end.i.i_crit_edge:              ; preds = %if.then35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

if.then35.i.i.if.end57.i.i_crit_edge:             ; preds = %if.then35.i.i
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %cleanup.i.i.if.end57.i.i_crit_edge, %if.then35.i.i.if.end57.i.i_crit_edge
  %__ret36.1141.i.i = phi i32 [ %__ret36.1.i.i, %cleanup.i.i.if.end57.i.i_crit_edge ], [ 10, %if.then35.i.i.if.end57.i.i_crit_edge ]
  %call37140.i.i = phi i32 [ %call37.i.i, %cleanup.i.i.if.end57.i.i_crit_edge ], [ %call37136.i.i, %if.then35.i.i.if.end57.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37140.i.i)
  %tobool58.not.i.i = icmp eq i32 %call37140.i.i, 0
  br i1 %tobool58.not.i.i, label %cleanup.i.i, label %if.end57.i.i.if.end64.i.i_crit_edge

if.end57.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end57.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64.i.i

cleanup.i.i:                                      ; preds = %if.end57.i.i
  %call61.i.i = call i32 @schedule_timeout(i32 noundef %__ret36.1141.i.i) #7
  %call37.i.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i.i, ptr noundef nonnull %__wq_entry.i.i, i32 noundef 1) #7
  %83 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %status.i.i, align 4
  %and40.i.i = and i32 %84, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40.i.i)
  %tobool41.not.i.i = icmp eq i32 %and40.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i)
  %tobool45.not.i.i = icmp eq i32 %call61.i.i, 0
  %spec.store.select93.i.i = select i1 %tobool45.not.i.i, i32 1, i32 %call61.i.i
  %__ret36.1.i.i = select i1 %tobool41.not.i.i, i32 %call61.i.i, i32 %spec.store.select93.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret36.1.i.i)
  %tobool51.not.i.i = icmp eq i32 %__ret36.1.i.i, 0
  %not.tobool41.not.i.i = xor i1 %tobool41.not.i.i, true
  %85 = select i1 %not.tobool41.not.i.i, i1 true, i1 %tobool51.not.i.i
  br i1 %85, label %cleanup.i.i.for.end.i.i_crit_edge, label %cleanup.i.i.if.end57.i.i_crit_edge

cleanup.i.i.if.end57.i.i_crit_edge:               ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57.i.i

cleanup.i.i.for.end.i.i_crit_edge:                ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cleanup.i.i.for.end.i.i_crit_edge, %if.then35.i.i.for.end.i.i_crit_edge
  %__ret36.1.lcssa.i.i = phi i32 [ 10, %if.then35.i.i.for.end.i.i_crit_edge ], [ %__ret36.1.i.i, %cleanup.i.i.for.end.i.i_crit_edge ]
  call void @finish_wait(ptr noundef %cmd_complete.i.i, ptr noundef nonnull %__wq_entry.i.i) #7
  br label %if.end64.i.i

if.end64.i.i:                                     ; preds = %for.end.i.i, %if.end57.i.i.if.end64.i.i_crit_edge
  %__ret36.2126.i.i = phi i32 [ %__ret36.1.lcssa.i.i, %for.end.i.i ], [ %call37140.i.i, %if.end57.i.i.if.end64.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret36.2126.i.i)
  %cmp.i.i = icmp slt i32 %__ret36.2126.i.i, 1
  br i1 %cmp.i.i, label %if.end64.i.i.err_probe.i.i_crit_edge, label %if.end64.i.i.if.end67.i.i_crit_edge

if.end64.i.i.if.end67.i.i_crit_edge:              ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67.i.i

if.end64.i.i.err_probe.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_probe.i.i

if.end67.i.i:                                     ; preds = %if.end64.i.i.if.end67.i.i_crit_edge, %if.end.i.i.if.end67.i.i_crit_edge
  %86 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_base.i.i, align 4
  %add.ptr71.i.i = getelementptr i8, ptr %87, i32 16
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71.i.i) #7, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !205
  %89 = and i32 %88, -256
  %90 = call i32 @llvm.bswap.i32(i32 %89) #7
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end67.i.i
  %index.05.i.i.i = phi i32 [ 0, %if.end67.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %device_id.i.i.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %index.05.i.i.i, i32 2
  %91 = ptrtoint ptr %device_id.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %device_id.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %90)
  %cmp1.i.i.i = icmp eq i32 %92, %90
  br i1 %cmp1.i.i.i, label %for.body.i.i.i.err_probe.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.err_probe.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_probe.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %index.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 34
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.err_probe.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.err_probe.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_probe.i.i

err_probe.i.i:                                    ; preds = %for.inc.i.i.i.err_probe.i.i_crit_edge, %for.body.i.i.i.err_probe.i.i_crit_edge, %if.end64.i.i.err_probe.i.i_crit_edge
  %ret.0.i.i = phi i32 [ -19, %if.end64.i.i.err_probe.i.i_crit_edge ], [ -19, %for.inc.i.i.i.err_probe.i.i_crit_edge ], [ %index.05.i.i.i, %for.body.i.i.i.err_probe.i.i_crit_edge ]
  %93 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %io_base.i.i, align 4
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #7, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  call void @arm_heavy_mb() #7
  %96 = and i32 %95, -17
  %97 = ptrtoint ptr %io_base.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %io_base.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %98, i32 %96) #7, !srcloc !198
  call void @mutex_unlock(ptr noundef %lock.i.i) #7
  br label %spear_smi_probe_flash.exit.i

spear_smi_probe_flash.exit.i:                     ; preds = %err_probe.i.i, %if.end9.i.spear_smi_probe_flash.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %ret.0.i.i, %err_probe.i.i ], [ %call.i164.i, %if.end9.i.spear_smi_probe_flash.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp15.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp15.i, label %do.end20.i, label %if.end23.i

do.end20.i:                                       ; preds = %spear_smi_probe_flash.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev21.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 5
  %99 = ptrtoint ptr %pdev21.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pdev21.i, align 4
  %dev22.i = getelementptr inbounds %struct.platform_device, ptr %100, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev22.i, ptr noundef nonnull @.str.24, i32 noundef %i.0194) #10
  br label %err_irq

if.end23.i:                                       ; preds = %spear_smi_probe_flash.exit.i
  %mem_base.i176 = getelementptr %struct.spear_smi_flash_info, ptr %61, i32 %i.0194, i32 1
  %101 = ptrtoint ptr %mem_base.i176 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mem_base.i176, align 4
  %size.i177 = getelementptr %struct.spear_smi_flash_info, ptr %61, i32 %i.0194, i32 2
  %103 = ptrtoint ptr %size.i177 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %size.i177, align 4
  %call25.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %102, i32 noundef %104) #7
  %base_addr.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 7
  %105 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call25.i, ptr %base_addr.i, align 4
  %tobool27.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool27.not.i, label %if.end23.i.err_irq_crit_edge, label %if.end29.i

if.end23.i.err_irq_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end29.i:                                       ; preds = %if.end23.i
  %arrayidx31.i = getelementptr %struct.spear_smi, ptr %55, i32 0, i32 8, i32 %i.0194
  %106 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call.i.i173, ptr %arrayidx31.i, align 4
  %mtd.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3
  %priv.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 54
  %107 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %55, ptr %priv.i, align 8
  %108 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i170, align 4
  %tobool32.not.i = icmp eq ptr %109, null
  br i1 %tobool32.not.i, label %if.end41.i, label %if.end41.thread.i

if.end41.thread.i:                                ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %110 = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 13
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %109, ptr %110, align 8
  %parent171.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 56, i32 1
  %112 = ptrtoint ptr %parent171.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %dev, ptr %parent171.i, align 8
  %of_node.i172.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 56, i32 27
  %113 = ptrtoint ptr %of_node.i172.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %53, ptr %of_node.i172.i, align 8
  br label %mtd_set_of_node.exit.i

if.end41.i:                                       ; preds = %if.end29.i
  %arrayidx37.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %retval.0.i.i
  %114 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx37.i, align 4
  %116 = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 13
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %115, ptr %116, align 8
  %parent.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 56, i32 1
  %118 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %dev, ptr %parent.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 56, i32 27
  %119 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %53, ptr %of_node.i.i, align 8
  %tobool.not.i165.i = icmp eq ptr %115, null
  br i1 %tobool.not.i165.i, label %if.then.i.i, label %if.end41.i.mtd_set_of_node.exit.i_crit_edge

if.end41.i.mtd_set_of_node.exit.i_crit_edge:      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_set_of_node.exit.i

if.then.i.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i166.i = call i32 @of_property_read_string(ptr noundef %53, ptr noundef nonnull @.str.72, ptr noundef %116) #7
  br label %mtd_set_of_node.exit.i

mtd_set_of_node.exit.i:                           ; preds = %if.then.i.i, %if.end41.i.mtd_set_of_node.exit.i_crit_edge, %if.end41.thread.i
  %120 = phi ptr [ %110, %if.end41.thread.i ], [ %116, %if.end41.i.mtd_set_of_node.exit.i_crit_edge ], [ %116, %if.then.i.i ]
  %121 = ptrtoint ptr %mtd.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 3, ptr %mtd.i, align 8
  %writesize.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 4
  %122 = ptrtoint ptr %writesize.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 1, ptr %writesize.i, align 4
  %flags.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 1
  %123 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 3072, ptr %flags.i, align 4
  %124 = ptrtoint ptr %size.i177 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %size.i177, align 4
  %conv50.i = zext i32 %125 to i64
  %size52.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 2
  %126 = ptrtoint ptr %size52.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %conv50.i, ptr %size52.i, align 8
  %sectorsize.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %retval.0.i.i, i32 4
  %127 = ptrtoint ptr %sectorsize.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sectorsize.i, align 4
  %erasesize.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 3
  %129 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %erasesize.i, align 8
  %pagesize.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %retval.0.i.i, i32 3
  %130 = ptrtoint ptr %pagesize.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %pagesize.i, align 4
  %page_size.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 6
  %132 = ptrtoint ptr %page_size.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %page_size.i, align 8
  %writebufsize.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 5
  %133 = ptrtoint ptr %writebufsize.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %131, ptr %writebufsize.i, align 8
  %erase_cmd.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %retval.0.i.i, i32 1
  %134 = ptrtoint ptr %erase_cmd.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %erase_cmd.i, align 4
  %erase_cmd59.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 8
  %136 = ptrtoint ptr %erase_cmd59.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %erase_cmd59.i, align 8
  %_erase.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 21
  %137 = ptrtoint ptr %_erase.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @spear_mtd_erase, ptr %_erase.i, align 8
  %_read.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 24
  %138 = ptrtoint ptr %_read.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @spear_mtd_read, ptr %_read.i, align 4
  %_write.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 3, i32 25
  %139 = ptrtoint ptr %_write.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @spear_mtd_write, ptr %_write.i, align 8
  %device_id.i = getelementptr [34 x %struct.flash_device], ptr @flash_devices, i32 0, i32 %retval.0.i.i, i32 2
  %140 = ptrtoint ptr %device_id.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %device_id.i, align 4
  %dev_id.i = getelementptr inbounds %struct.spear_snor_flash, ptr %call.i.i173, i32 0, i32 1
  %142 = ptrtoint ptr %dev_id.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %dev_id.i, align 4
  %pdev67.i = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 5
  %143 = ptrtoint ptr %pdev67.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %pdev67.i, align 4
  %dev68.i = getelementptr inbounds %struct.platform_device, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %120, align 8
  %div162.i = lshr i64 %conv50.i, 20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68.i, ptr noundef nonnull @.str.28, ptr noundef %146, i64 noundef %conv50.i, i64 noundef %div162.i) #10
  %147 = ptrtoint ptr %pdev67.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %pdev67.i, align 4
  %dev79.i = getelementptr inbounds %struct.platform_device, ptr %148, i32 0, i32 3
  %149 = ptrtoint ptr %erasesize.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %erasesize.i, align 8
  %div84163.i = lshr i32 %150, 10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev79.i, ptr noundef nonnull @.str.31, i32 noundef %150, i32 noundef %div84163.i) #10
  %call86.i = call i32 @mtd_device_parse_register(ptr noundef %mtd.i, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %for.inc, label %do.end91.i

do.end91.i:                                       ; preds = %mtd_set_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %pdev67.i.le = getelementptr inbounds %struct.spear_smi, ptr %55, i32 0, i32 5
  %151 = ptrtoint ptr %pdev67.i.le to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pdev67.i.le, align 4
  %dev93.i = getelementptr inbounds %struct.platform_device, ptr %152, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93.i, ptr noundef nonnull @.str.34, i32 noundef %call86.i) #10
  br label %err_irq

for.inc:                                          ; preds = %mtd_set_of_node.exit.i
  %inc = add nuw i32 %i.0194, 1
  %153 = ptrtoint ptr %num_flashes45 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_flashes45, align 4
  %cmp85 = icmp ult i32 %inc, %154
  br i1 %cmp85, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_irq:                                          ; preds = %do.end91.i, %if.end23.i.err_irq_crit_edge, %do.end20.i, %if.end4.i.err_irq_crit_edge, %if.end.i172.err_irq_crit_edge, %for.body.err_irq_crit_edge, %if.end67.err_irq_crit_edge
  %.str.18.sink = phi ptr [ @.str.12, %if.end67.err_irq_crit_edge ], [ @.str.18, %do.end20.i ], [ @.str.18, %do.end91.i ], [ @.str.18, %for.body.err_irq_crit_edge ], [ @.str.18, %if.end.i172.err_irq_crit_edge ], [ @.str.18, %if.end4.i.err_irq_crit_edge ], [ @.str.18, %if.end23.i.err_irq_crit_edge ]
  %ret.0 = phi i32 [ %call.i163, %if.end67.err_irq_crit_edge ], [ %retval.0.i.i, %do.end20.i ], [ %call86.i, %do.end91.i ], [ -5, %if.end23.i.err_irq_crit_edge ], [ -12, %if.end4.i.err_irq_crit_edge ], [ -19, %if.end.i172.err_irq_crit_edge ], [ -22, %for.body.err_irq_crit_edge ]
  %155 = ptrtoint ptr %pdev38 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev38, align 4
  %dev94 = getelementptr inbounds %struct.platform_device, ptr %156, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev94, ptr noundef nonnull %.str.18.sink) #10
  %157 = ptrtoint ptr %call.i157 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %call.i157, align 4
  call void @clk_disable(ptr noundef %158) #7
  call void @clk_unprepare(ptr noundef %158) #7
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %for.inc.cleanup_crit_edge, %do.body78.cleanup_crit_edge, %if.then3.i, %if.end62.cleanup_crit_edge, %if.then59, %if.then34, %if.end23.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.then14, %if.then8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then8 ], [ %26, %if.then34 ], [ %37, %if.then59 ], [ %ret.0, %err_irq ], [ -19, %if.then14 ], [ -12, %if.then.cleanup_crit_edge ], [ -19, %if.end20.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i159, %if.end62.cleanup_crit_edge ], [ 0, %do.body78.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %num_flashes = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_flashes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.84) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.spear_smi, ptr %1, i32 0, i32 8, i32 %i.026
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end5

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %mtd = getelementptr inbounds %struct.spear_snor_flash, ptr %5, i32 0, i32 3
  %call6 = tail call i32 @mtd_device_unregister(ptr noundef %mtd) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.for.inc_crit_edge, label %do.end11

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.87) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end11, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.026, 1
  %6 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_flashes, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ 0, %for.end ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_int_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_base = getelementptr inbounds %struct.spear_smi, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !208
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body, !prof !209

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !210
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base, align 4
  %add.ptr6 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !198
  %status7 = getelementptr inbounds %struct.spear_smi, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %status7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %status7, align 4
  %or = or i32 %7, %3
  store i32 %or, ptr %status7, align 4
  %cmd_complete = getelementptr inbounds %struct.spear_smi, ptr %dev_id, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %cmd_complete, i32 noundef 1, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_mtd_erase(ptr noundef %mtd, ptr nocapture noundef readonly %e_info) #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mtd, i32 -104
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %num_flashes = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_flashes, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ugt i32 %3, %sub
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev4 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %8 = ptrtoint ptr %e_info to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %e_info, align 8
  %len7 = getelementptr inbounds %struct.erase_info, ptr %e_info, i32 0, i32 1
  %10 = ptrtoint ptr %len7 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %len7, align 8
  %conv8 = trunc i64 %11 to i32
  %lock = getelementptr i8, ptr %mtd, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8)
  %tobool9.not46 = icmp eq i32 %conv8, 0
  br i1 %tobool9.not46, label %if.end5.while.end_crit_edge, label %while.body.lr.ph

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end5
  %conv = trunc i64 %9 to i32
  %erase_cmd.i = getelementptr i8, ptr %mtd, i32 1424
  %lock.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 3
  %io_base.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 4
  %shl.i = shl i32 %3, 12
  %or20.i = or i32 %shl.i, 388
  %12 = call i32 @llvm.bswap.i32(i32 %or20.i) #7
  %status.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 1
  %cmd_complete.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 6
  %pdev.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 5
  %erasesize = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end15.while.body_crit_edge, %while.body.lr.ph
  %len.048 = phi i32 [ %conv8, %while.body.lr.ph ], [ %sub17, %if.end15.while.body_crit_edge ]
  %addr.047 = phi i32 [ %conv, %while.body.lr.ph ], [ %add, %if.end15.while.body_crit_edge ]
  %13 = ptrtoint ptr %erase_cmd.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %erase_cmd.i, align 8
  %cmd.sroa.5.0.insert.insert.i = and i32 %addr.047, 16777215
  %cmd.sroa.0.0.insert.ext.i = zext i8 %14 to i32
  %cmd.sroa.0.0.insert.shift.i = shl nuw i32 %cmd.sroa.0.0.insert.ext.i, 24
  %cmd.sroa.0.0.insert.insert.i = or i32 %cmd.sroa.0.0.insert.shift.i, %cmd.sroa.5.0.insert.insert.i
  %call.i = call fastcc i32 @spear_smi_wait_till_ready(ptr noundef %1, i32 noundef %3, i32 noundef 300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.if.then13_crit_edge

while.body.if.then13_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end.i:                                         ; preds = %while.body
  %call1.i = call fastcc i32 @spear_smi_write_enable(ptr noundef %1, i32 noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then13_crit_edge

if.end.i.if.then13_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.end4.i:                                        ; preds = %if.end.i
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %15 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io_base.i, align 4
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !211
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !212
  call void @arm_heavy_mb() #7
  %18 = and i32 %17, -49
  %19 = or i32 %18, 16
  %20 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !213
  call void @arm_heavy_mb() #7
  %22 = call i32 @llvm.bswap.i32(i32 %cmd.sroa.0.0.insert.insert.i) #7
  %23 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io_base.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %24, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %22) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !214
  call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_base.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %26, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %12) #7, !srcloc !198
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 470) #7
  %27 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %status.i, align 4
  %and29.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.then39.i, label %if.end4.i.if.else.i_crit_edge

if.end4.i.if.else.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then39.i:                                      ; preds = %if.end4.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %29 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call4117.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %30 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status.i, align 4
  %and4418.i = and i32 %31, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4418.i)
  %tobool45.not19.not.i = icmp eq i32 %and4418.i, 0
  br i1 %tobool45.not19.not.i, label %if.then39.i.if.end61.i_crit_edge, label %if.end68.thread.i

if.then39.i.if.end61.i_crit_edge:                 ; preds = %if.then39.i
  br label %if.end61.i

if.end68.thread.i:                                ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.else.i

if.end61.i:                                       ; preds = %cleanup.i.if.end61.i_crit_edge, %if.then39.i.if.end61.i_crit_edge
  %__ret40.122.i = phi i32 [ %__ret40.1.i, %cleanup.i.if.end61.i_crit_edge ], [ 10, %if.then39.i.if.end61.i_crit_edge ]
  %call4121.i = phi i32 [ %call41.i, %cleanup.i.if.end61.i_crit_edge ], [ %call4117.i, %if.then39.i.if.end61.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4121.i)
  %tobool62.not.i = icmp eq i32 %call4121.i, 0
  br i1 %tobool62.not.i, label %cleanup.i, label %if.end68.thread11.i

if.end68.thread11.i:                              ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br label %if.else.i

cleanup.i:                                        ; preds = %if.end61.i
  %call65.i = call i32 @schedule_timeout(i32 noundef %__ret40.122.i) #7
  %call41.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 4
  %and44.i = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool49.not.i = icmp eq i32 %call65.i, 0
  %spec.store.select92.i = select i1 %tobool49.not.i, i32 1, i32 %call65.i
  %__ret40.1.i = select i1 %tobool45.not.i, i32 %call65.i, i32 %spec.store.select92.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret40.1.i)
  %tobool55.not.i = icmp eq i32 %__ret40.1.i, 0
  %not.tobool45.not.i = xor i1 %tobool45.not.i, true
  %34 = select i1 %not.tobool45.not.i, i1 true, i1 %tobool55.not.i
  br i1 %34, label %if.end68.i, label %cleanup.i.if.end61.i_crit_edge

cleanup.i.if.end61.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

if.end68.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  br i1 %tobool55.not.i, label %if.then70.i, label %if.end68.i.if.else.i_crit_edge

if.end68.i.if.else.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

if.then70.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev.i, align 4
  %dev74.i = getelementptr inbounds %struct.platform_device, ptr %36, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74.i, ptr noundef nonnull @.str.75) #10
  br label %spear_smi_erase_sector.exit

if.else.i:                                        ; preds = %if.end68.i.if.else.i_crit_edge, %if.end68.thread11.i, %if.end68.thread.i, %if.end4.i.if.else.i_crit_edge
  %__ret.110.i = phi i32 [ %__ret40.1.i, %if.end68.i.if.else.i_crit_edge ], [ %call4121.i, %if.end68.thread11.i ], [ 10, %if.end4.i.if.else.i_crit_edge ], [ 10, %if.end68.thread.i ]
  %37 = call i32 @llvm.smin.i32(i32 %__ret.110.i, i32 0) #7
  br label %spear_smi_erase_sector.exit

spear_smi_erase_sector.exit:                      ; preds = %if.else.i, %if.then70.i
  %ret.0.i = phi i32 [ -5, %if.then70.i ], [ %37, %if.else.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !215
  call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %17) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !216
  call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %io_base.i, align 4
  %add.ptr88.i = getelementptr i8, ptr %41, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 0) #7, !srcloc !198
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool12.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool12.not, label %if.end15, label %spear_smi_erase_sector.exit.if.then13_crit_edge

spear_smi_erase_sector.exit.if.then13_crit_edge:  ; preds = %spear_smi_erase_sector.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13

if.then13:                                        ; preds = %spear_smi_erase_sector.exit.if.then13_crit_edge, %if.end.i.if.then13_crit_edge, %while.body.if.then13_crit_edge
  %retval.0.i44 = phi i32 [ %ret.0.i, %spear_smi_erase_sector.exit.if.then13_crit_edge ], [ %call1.i, %if.end.i.if.then13_crit_edge ], [ %call.i, %while.body.if.then13_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end15:                                         ; preds = %spear_smi_erase_sector.exit
  %42 = ptrtoint ptr %erasesize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %erasesize, align 8
  %add = add i32 %43, %addr.047
  %sub17 = sub i32 %len.048, %43
  %tobool9.not = icmp eq i32 %sub17, 0
  br i1 %tobool9.not, label %if.end15.while.end_crit_edge, label %if.end15.while.body_crit_edge

if.end15.while.body_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %if.end5.while.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then13, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %retval.0.i44, %if.then13 ], [ 0, %while.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_mtd_read(ptr noundef %mtd, i64 noundef %from, i32 noundef %len, ptr nocapture noundef writeonly %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mtd, i32 -104
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %num_flashes = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_flashes, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ugt i32 %3, %sub
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %base_addr = getelementptr i8, ptr %mtd, i32 1420
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  %lock = getelementptr i8, ptr %mtd, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i, align 8
  %call6 = tail call fastcc i32 @spear_smi_wait_till_ready(ptr noundef nonnull %1, i32 noundef %11, i32 noundef 300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end10, label %if.then8

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %idx.ext = trunc i64 %from to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %lock11 = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock11, i32 noundef 0) #7
  %io_base = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #7, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !217
  %15 = and i32 %14, -49
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %fast_mode = getelementptr i8, ptr %mtd, i32 1425
  %17 = ptrtoint ptr %fast_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fast_mode, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool15.not = icmp eq i8 %18, 0
  %or = or i32 %16, 32768
  %spec.select = select i1 %tobool15.not, i32 %16, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !218
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %spec.select)
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !198
  tail call void @mmiocpy(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %len) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !219
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %14) #7, !srcloc !198
  tail call void @mutex_unlock(ptr noundef %lock11) #7
  %24 = ptrtoint ptr %retlen to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %len, ptr %retlen, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call6, %if.then8 ], [ 0, %if.end10 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_mtd_write(ptr noundef %mtd, i64 noundef %to, i32 noundef %len, ptr nocapture noundef %retlen, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %mtd, i32 -104
  %priv = getelementptr inbounds %struct.mtd_info, ptr %mtd, i32 0, i32 54
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %add.ptr.i, null
  %tobool1.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup46_crit_edge, label %if.end

entry.cleanup46_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup46

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 8
  %num_flashes = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %num_flashes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_flashes, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %sub)
  %cmp = icmp ugt i32 %3, %sub
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.73) #10
  br label %cleanup46

if.end4:                                          ; preds = %if.end
  %base_addr = getelementptr i8, ptr %mtd, i32 1420
  %8 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base_addr, align 4
  %idx.ext = trunc i64 %to to i32
  %add.ptr = getelementptr i8, ptr %9, i32 %idx.ext
  %lock = getelementptr i8, ptr %mtd, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %page_size5 = getelementptr i8, ptr %mtd, i32 1416
  %10 = ptrtoint ptr %page_size5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %page_size5, align 8
  %rem = urem i32 %idx.ext, %11
  %add = add i32 %rem, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %11)
  %cmp7.not = icmp ugt i32 %add, %11
  br i1 %cmp7.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 8
  %call11 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %1, i32 noundef %13, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then13, label %if.then9.err_write_crit_edge

if.then9.err_write_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_write

if.then13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retlen, align 4
  %add14 = add i32 %15, %len
  store i32 %add14, ptr %retlen, align 4
  br label %err_write

if.else:                                          ; preds = %if.end4
  %sub17 = sub i32 %11, %rem
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i, align 8
  %call19 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %1, i32 noundef %17, ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %sub17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else22, label %if.else.err_write_crit_edge

if.else.err_write_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_write

if.else22:                                        ; preds = %if.else
  %18 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retlen, align 4
  %add23 = add i32 %19, %sub17
  store i32 %add23, ptr %retlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %len)
  %cmp2597 = icmp ult i32 %sub17, %len
  br i1 %cmp2597, label %if.else22.for.body_crit_edge, label %if.else22.err_write_crit_edge

if.else22.err_write_crit_edge:                    ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_write

if.else22.for.body_crit_edge:                     ; preds = %if.else22
  br label %for.body

for.body:                                         ; preds = %if.else40.for.body_crit_edge, %if.else22.for.body_crit_edge
  %i.098 = phi i32 [ %add43, %if.else40.for.body_crit_edge ], [ %sub17, %if.else22.for.body_crit_edge ]
  %sub27 = sub i32 %len, %i.098
  %20 = ptrtoint ptr %page_size5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %page_size5, align 8
  %22 = tail call i32 @llvm.umin.i32(i32 %sub27, i32 %21)
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 8
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %i.098
  %add.ptr36 = getelementptr i8, ptr %buf, i32 %i.098
  %call37 = tail call fastcc i32 @spear_smi_cpy_toio(ptr noundef nonnull %1, i32 noundef %24, ptr noundef %add.ptr35, ptr noundef %add.ptr36, i32 noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else40, label %for.body.err_write_crit_edge

for.body.err_write_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_write

if.else40:                                        ; preds = %for.body
  %25 = ptrtoint ptr %retlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %retlen, align 4
  %add41 = add i32 %26, %22
  store i32 %add41, ptr %retlen, align 4
  %add43 = add i32 %22, %i.098
  %cmp25 = icmp ult i32 %add43, %len
  br i1 %cmp25, label %if.else40.for.body_crit_edge, label %if.else40.err_write_crit_edge

if.else40.err_write_crit_edge:                    ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_write

if.else40.for.body_crit_edge:                     ; preds = %if.else40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

err_write:                                        ; preds = %if.else40.err_write_crit_edge, %for.body.err_write_crit_edge, %if.else22.err_write_crit_edge, %if.else.err_write_crit_edge, %if.then13, %if.then9.err_write_crit_edge
  %ret.3 = phi i32 [ %call11, %if.then9.err_write_crit_edge ], [ 0, %if.then13 ], [ %call19, %if.else.err_write_crit_edge ], [ 0, %if.else22.err_write_crit_edge ], [ 0, %if.else40.err_write_crit_edge ], [ %call37, %for.body.err_write_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup46

cleanup46:                                        ; preds = %err_write, %do.end, %entry.cleanup46_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.3, %err_write ], [ -19, %entry.cleanup46_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_wait_till_ready(ptr noundef %dev, i32 noundef %bank, i32 noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %lock.i = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 3
  %status.i = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 1
  %io_base.i = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 4
  %shl.i = shl i32 %bank, 12
  %or7.i = or i32 %shl.i, 1280
  %1 = call i32 @llvm.bswap.i32(i32 %or7.i) #7
  %cmd_complete.i = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 6
  %2 = add i32 %0, %timeout
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status.i, align 4
  %4 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io_base.i, align 4
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !200
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !220
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !221
  call void @arm_heavy_mb() #7
  %7 = and i32 %6, -49
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !222
  call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %1) #7, !srcloc !198
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 239) #7
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status.i, align 4
  %and17.i = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool.not.i, label %if.then24.i, label %do.body.if.then55.i_crit_edge

do.body.if.then55.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i

if.then24.i:                                      ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  %14 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #7
  %call26112.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %15 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status.i, align 4
  %and29113.i = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29113.i)
  %tobool30.not114.not.i = icmp eq i32 %and29113.i, 0
  br i1 %tobool30.not114.not.i, label %if.then24.i.if.end46.i_crit_edge, label %if.then24.i.for.end.i_crit_edge

if.then24.i.for.end.i_crit_edge:                  ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then24.i.if.end46.i_crit_edge:                 ; preds = %if.then24.i
  br label %if.end46.i

if.end46.i:                                       ; preds = %cleanup.i.if.end46.i_crit_edge, %if.then24.i.if.end46.i_crit_edge
  %__ret25.1117.i = phi i32 [ %__ret25.1.i, %cleanup.i.if.end46.i_crit_edge ], [ 10, %if.then24.i.if.end46.i_crit_edge ]
  %call26116.i = phi i32 [ %call26.i, %cleanup.i.if.end46.i_crit_edge ], [ %call26112.i, %if.then24.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26116.i)
  %tobool47.not.i = icmp eq i32 %call26116.i, 0
  br i1 %tobool47.not.i, label %cleanup.i, label %if.end46.i.if.end53.i_crit_edge

if.end46.i.if.end53.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

cleanup.i:                                        ; preds = %if.end46.i
  %call50.i = call i32 @schedule_timeout(i32 noundef %__ret25.1117.i) #7
  %call26.i = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #7
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %status.i, align 4
  %and29.i = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool34.not.i = icmp eq i32 %call50.i, 0
  %spec.store.select75.i = select i1 %tobool34.not.i, i32 1, i32 %call50.i
  %__ret25.1.i = select i1 %tobool30.not.i, i32 %call50.i, i32 %spec.store.select75.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1.i)
  %tobool40.not.i = icmp eq i32 %__ret25.1.i, 0
  %not.tobool30.not.i = xor i1 %tobool30.not.i, true
  %19 = select i1 %not.tobool30.not.i, i1 true, i1 %tobool40.not.i
  br i1 %19, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end46.i_crit_edge

cleanup.i.if.end46.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then24.i.for.end.i_crit_edge
  %__ret25.1.lcssa.i = phi i32 [ 10, %if.then24.i.for.end.i_crit_edge ], [ %__ret25.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %cmd_complete.i, ptr noundef nonnull %__wq_entry.i) #7
  br label %if.end53.i

if.end53.i:                                       ; preds = %for.end.i, %if.end46.i.if.end53.i_crit_edge
  %__ret25.2102.i = phi i32 [ %__ret25.1.lcssa.i, %for.end.i ], [ %call26116.i, %if.end46.i.if.end53.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.2102.i)
  %cmp.i = icmp sgt i32 %__ret25.2102.i, 0
  br i1 %cmp.i, label %if.end53.i.if.then55.i_crit_edge, label %if.else.i

if.end53.i.if.then55.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then55.i

if.then55.i:                                      ; preds = %if.end53.i.if.then55.i_crit_edge, %do.body.if.then55.i_crit_edge
  %20 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %status.i, align 4
  %and57.i = and i32 %21, 65535
  br label %spear_smi_read_sr.exit

if.else.i:                                        ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.2102.i)
  %cmp58.i = icmp eq i32 %__ret25.2102.i, 0
  %spec.select = select i1 %cmp58.i, i32 -110, i32 %__ret25.2102.i
  br label %spear_smi_read_sr.exit

spear_smi_read_sr.exit:                           ; preds = %if.else.i, %if.then55.i
  %ret.0.i = phi i32 [ %and57.i, %if.then55.i ], [ %spec.select, %if.else.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !223
  call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io_base.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %6) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io_base.i, align 4
  %add.ptr71.i = getelementptr i8, ptr %25, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71.i, i32 0) #7, !srcloc !198
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp = icmp slt i32 %ret.0.i, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %spear_smi_read_sr.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %ret.0.i)
  %cmp1 = icmp eq i32 %ret.0.i, -110
  br i1 %cmp1, label %if.then.do.cond_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.do.cond_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.cond

if.else:                                          ; preds = %spear_smi_read_sr.exit
  %and = and i32 %ret.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else.cleanup_crit_edge, label %if.end5

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 281, i32 noundef 0) #7
  %call.i = call i32 @__cond_resched() #7
  br label %do.cond

do.cond:                                          ; preds = %if.end5, %if.then.do.cond_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %26, %2
  %cmp7 = icmp slt i32 %sub, 0
  br i1 %cmp7, label %do.cond.do.body_crit_edge, label %do.end10

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end10:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 5
  %27 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev, align 4
  %dev11 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev11, ptr noundef nonnull @.str.36) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end10 ], [ 0, %if.else.cleanup_crit_edge ], [ %ret.0.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_write_enable(ptr noundef %dev, i32 noundef %bank) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %status = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 4
  %io_base = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io_base, align 4
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %2) #7, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  tail call void @arm_heavy_mb() #7
  %4 = and i32 %3, -17
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %bank, 12
  %or7 = or i32 %shl, 2304
  %7 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %7) #7, !srcloc !198
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 395) #7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 4
  %and17 = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool.not = icmp eq i32 %and17, 0
  br i1 %tobool.not, label %if.then24, label %entry.if.end53_crit_edge

entry.if.end53_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

if.then24:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %cmd_complete = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 6
  %call26126 = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %13 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status, align 4
  %and29127 = and i32 %14, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29127)
  %tobool30.not128.not = icmp eq i32 %and29127, 0
  br i1 %tobool30.not128.not, label %if.then24.if.end46_crit_edge, label %if.then24.for.end_crit_edge

if.then24.for.end_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then24.if.end46_crit_edge:                     ; preds = %if.then24
  br label %if.end46

if.end46:                                         ; preds = %cleanup.if.end46_crit_edge, %if.then24.if.end46_crit_edge
  %__ret25.1131 = phi i32 [ %__ret25.1, %cleanup.if.end46_crit_edge ], [ 10, %if.then24.if.end46_crit_edge ]
  %call26130 = phi i32 [ %call26, %cleanup.if.end46_crit_edge ], [ %call26126, %if.then24.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26130)
  %tobool47.not = icmp eq i32 %call26130, 0
  br i1 %tobool47.not, label %cleanup, label %if.end46.__out_crit_edge

if.end46.__out_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end46
  %call50 = call i32 @schedule_timeout(i32 noundef %__ret25.1131) #7
  %call26 = call i32 @prepare_to_wait_event(ptr noundef %cmd_complete, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %15 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %status, align 4
  %and29 = and i32 %16, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool34.not = icmp eq i32 %call50, 0
  %spec.store.select89 = select i1 %tobool34.not, i32 1, i32 %call50
  %__ret25.1 = select i1 %tobool30.not, i32 %call50, i32 %spec.store.select89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret25.1)
  %tobool40.not = icmp eq i32 %__ret25.1, 0
  %not.tobool30.not = xor i1 %tobool30.not, true
  %17 = select i1 %not.tobool30.not, i1 true, i1 %tobool40.not
  br i1 %17, label %cleanup.for.end_crit_edge, label %cleanup.if.end46_crit_edge

cleanup.if.end46_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then24.for.end_crit_edge
  %__ret25.1.lcssa = phi i32 [ 10, %if.then24.for.end_crit_edge ], [ %__ret25.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %cmd_complete, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end46.__out_crit_edge
  %__ret25.2118 = phi i32 [ %__ret25.1.lcssa, %for.end ], [ %call26130, %if.end46.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end53

if.end53:                                         ; preds = %__out, %entry.if.end53_crit_edge
  %__ret.1 = phi i32 [ 10, %entry.if.end53_crit_edge ], [ %__ret25.2118, %__out ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %3) #7, !srcloc !198
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %io_base, align 4
  %add.ptr64 = getelementptr i8, ptr %21, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 0) #7, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp = icmp eq i32 %__ret.1, 0
  br i1 %cmp, label %if.end53.if.end85.sink.split_crit_edge, label %if.else

if.end53.if.end85.sink.split_crit_edge:           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.sink.split

if.else:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp70 = icmp sgt i32 %__ret.1, 0
  br i1 %cmp70, label %if.then71, label %if.else.if.end85_crit_edge

if.else.if.end85_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then71:                                        ; preds = %if.else
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %add = add i32 %bank, 12
  %shl73 = shl nuw i32 1, %add
  %and74 = and i32 %23, %shl73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.then71.if.end85.sink.split_crit_edge, label %if.then71.if.end85_crit_edge

if.then71.if.end85_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then71.if.end85.sink.split_crit_edge:          ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.sink.split

if.end85.sink.split:                              ; preds = %if.then71.if.end85.sink.split_crit_edge, %if.end53.if.end85.sink.split_crit_edge
  %.str.80.sink = phi ptr [ @.str.77, %if.end53.if.end85.sink.split_crit_edge ], [ @.str.80, %if.then71.if.end85.sink.split_crit_edge ]
  %pdev81 = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 5
  %24 = ptrtoint ptr %pdev81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev81, align 4
  %dev82 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev82, ptr noundef nonnull %.str.80.sink) #10
  br label %if.end85

if.end85:                                         ; preds = %if.end85.sink.split, %if.then71.if.end85_crit_edge, %if.else.if.end85_crit_edge
  %ret.0 = phi i32 [ %__ret.1, %if.else.if.end85_crit_edge ], [ 0, %if.then71.if.end85_crit_edge ], [ -5, %if.end85.sink.split ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @spear_smi_cpy_toio(ptr noundef %dev, i32 noundef %bank, ptr noundef %dest, ptr noundef %src, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call fastcc i32 @spear_smi_wait_till_ready(ptr noundef %dev, i32 noundef %bank, i32 noundef 300)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @spear_smi_write_enable(ptr noundef %dev, i32 noundef %bank)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %io_base = getelementptr inbounds %struct.spear_smi, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !200
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !230
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !231
  tail call void @arm_heavy_mb() #7
  %3 = and i32 %2, -49
  %4 = or i32 %3, 32
  %5 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %4) #7, !srcloc !198
  %7 = ptrtoint ptr %dest to i32
  %8 = or i32 %7, %len
  %9 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmiocpy(ptr noundef %dest, ptr noundef %src, i32 noundef %len) #7
  br label %do.body14

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not5.i = icmp eq i32 %len, 0
  br i1 %tobool.not5.i, label %if.else.do.body14_crit_edge, label %if.else.while.body.i_crit_edge

if.else.while.body.i_crit_edge:                   ; preds = %if.else
  br label %while.body.i

if.else.do.body14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.else.while.body.i_crit_edge
  %from.08.i = phi ptr [ %incdec.ptr.i, %while.body.i.while.body.i_crit_edge ], [ %src, %if.else.while.body.i_crit_edge ]
  %len.addr.07.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %len, %if.else.while.body.i_crit_edge ]
  %dest.addr.06.i = phi ptr [ %incdec.ptr1.i, %while.body.i.while.body.i_crit_edge ], [ %dest, %if.else.while.body.i_crit_edge ]
  %dec.i = add i32 %len.addr.07.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !232
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %from.08.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %from.08.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %dest.addr.06.i, i8 %12) #7, !srcloc !233
  %incdec.ptr.i = getelementptr i8, ptr %from.08.i, i32 1
  %incdec.ptr1.i = getelementptr i8, ptr %dest.addr.06.i, i32 1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %while.body.i.do.body14_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.do.body14_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body14

do.body14:                                        ; preds = %while.body.i.do.body14_crit_edge, %if.else.do.body14_crit_edge, %if.then12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !234
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %2) #7, !srcloc !198
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body14 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef nonnull %3) #7
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spear_smi_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then5, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef nonnull %3) #7
  br label %if.end6

if.then5:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i11 = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %clk_rate.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk_rate.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clk_rate.i, align 4
  %add.i = add i32 %call.i11, -1
  %sub.i = add i32 %add.i, %7
  %div.i = udiv i32 %sub.i, %7
  %shl.i = shl i32 %div.i, 8
  %or.i = or i32 %shl.i, 65647
  %lock.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !197
  tail call void @arm_heavy_mb() #7
  %io_base.i = getelementptr inbounds %struct.spear_smi, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #7, !srcloc !198
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !199
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %11 = ptrtoint ptr %io_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #7, !srcloc !198
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.i, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ret.014 = phi i32 [ 0, %if.then5 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.then.if.end6_crit_edge ], [ -1, %entry.if.end6_crit_edge ], [ -1, %land.lhs.true.if.end6_crit_edge ]
  ret i32 %ret.014
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !54, !55, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185}
!llvm.module.flags = !{!187, !188, !189, !190, !191, !192, !193, !194}
!llvm.ident = !{!195}

!0 = !{ptr @__initcall__kmod_spear_smi__189_1118_spear_smi_driver_init6, !1, !"__initcall__kmod_spear_smi__189_1118_spear_smi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1118, i32 1}
!2 = !{ptr @__exitcall_spear_smi_driver_exit, !1, !"__exitcall_spear_smi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file190, !4, !"__UNIQUE_ID_file190", i1 false, i1 false}
!4 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1120, i32 1}
!5 = !{ptr @__UNIQUE_ID_license191, !4, !"__UNIQUE_ID_license191", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author192, !7, !"__UNIQUE_ID_author192", i1 false, i1 false}
!7 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1121, i32 1}
!8 = !{ptr @__UNIQUE_ID_description193, !9, !"__UNIQUE_ID_description193", i1 false, i1 false}
!9 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1122, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1110, i32 11}
!12 = !{ptr @spear_smi_driver, !13, !"spear_smi_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1108, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mtd/devices/spear_smi.c", i32 954, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @spear_smi_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @spear_smi_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @spear_smi_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!23 = !{!"../drivers/mtd/devices/spear_smi.c", i32 961, i32 4}
!24 = !{ptr @spear_smi_probe._entry_ptr.7, !23, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/devices/spear_smi.c", i32 995, i32 3}
!27 = !{ptr @spear_smi_probe._entry.8, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @spear_smi_probe._entry_ptr.10, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1012, i32 3}
!31 = !{ptr @spear_smi_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @spear_smi_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @spear_smi_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1016, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @spear_smi_probe.__key.15, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1017, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1025, i32 4}
!41 = !{ptr @spear_smi_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @spear_smi_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mtd/devices/spear_smi.c", i32 805, i32 27}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mtd/devices/spear_smi.c", i32 819, i32 30}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/devices/spear_smi.c", i32 823, i32 27}
!49 = !{ptr @spear_smi_setup_banks.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/mtd/devices/spear_smi.c", i32 866, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/mtd/devices/spear_smi.c", i32 871, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @spear_smi_setup_banks._entry, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @spear_smi_setup_banks._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/devices/spear_smi.c", i32 903, i32 2}
!60 = !{ptr @spear_smi_setup_banks._entry.27, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @spear_smi_setup_banks._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/devices/spear_smi.c", i32 907, i32 2}
!64 = !{ptr @spear_smi_setup_banks._entry.30, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @spear_smi_setup_banks._entry_ptr.32, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/mtd/devices/spear_smi.c", i32 919, i32 3}
!68 = !{ptr @spear_smi_setup_banks._entry.33, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @spear_smi_setup_banks._entry_ptr.35, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/devices/spear_smi.c", i32 284, i32 2}
!72 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @spear_smi_wait_till_ready._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @spear_smi_wait_till_ready._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/mtd/devices/spear_smi.c", i32 116, i32 2}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/mtd/devices/spear_smi.c", i32 117, i32 2}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/mtd/devices/spear_smi.c", i32 118, i32 2}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/mtd/devices/spear_smi.c", i32 119, i32 2}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/mtd/devices/spear_smi.c", i32 120, i32 2}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/mtd/devices/spear_smi.c", i32 121, i32 2}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/mtd/devices/spear_smi.c", i32 122, i32 2}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/mtd/devices/spear_smi.c", i32 123, i32 2}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/mtd/devices/spear_smi.c", i32 124, i32 2}
!93 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/mtd/devices/spear_smi.c", i32 125, i32 2}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/mtd/devices/spear_smi.c", i32 126, i32 2}
!97 = !{ptr @.str.49, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/mtd/devices/spear_smi.c", i32 127, i32 2}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/mtd/devices/spear_smi.c", i32 128, i32 2}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/mtd/devices/spear_smi.c", i32 129, i32 2}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/mtd/devices/spear_smi.c", i32 130, i32 2}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/mtd/devices/spear_smi.c", i32 131, i32 2}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/mtd/devices/spear_smi.c", i32 132, i32 2}
!109 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/mtd/devices/spear_smi.c", i32 133, i32 2}
!111 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/mtd/devices/spear_smi.c", i32 134, i32 2}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/mtd/devices/spear_smi.c", i32 135, i32 2}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/mtd/devices/spear_smi.c", i32 136, i32 2}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/mtd/devices/spear_smi.c", i32 137, i32 2}
!119 = !{ptr @.str.60, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/mtd/devices/spear_smi.c", i32 138, i32 2}
!121 = !{ptr @.str.61, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/mtd/devices/spear_smi.c", i32 139, i32 2}
!123 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/mtd/devices/spear_smi.c", i32 140, i32 2}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/mtd/devices/spear_smi.c", i32 141, i32 2}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/mtd/devices/spear_smi.c", i32 142, i32 2}
!129 = !{ptr @.str.65, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/mtd/devices/spear_smi.c", i32 143, i32 2}
!131 = !{ptr @.str.66, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/mtd/devices/spear_smi.c", i32 144, i32 2}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/mtd/devices/spear_smi.c", i32 145, i32 2}
!135 = !{ptr @.str.68, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/mtd/devices/spear_smi.c", i32 146, i32 2}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/mtd/devices/spear_smi.c", i32 147, i32 2}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/mtd/devices/spear_smi.c", i32 148, i32 2}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/mtd/devices/spear_smi.c", i32 149, i32 2}
!143 = !{ptr @flash_devices, !144, !"flash_devices", i1 false, i1 false}
!144 = !{!"../drivers/mtd/devices/spear_smi.c", i32 115, i32 28}
!145 = !{ptr @.str.72, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!147 = !{ptr @.str.73, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/mtd/devices/spear_smi.c", i32 506, i32 3}
!149 = !{ptr @.str.74, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @spear_mtd_erase._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @spear_mtd_erase._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.75, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/mtd/devices/spear_smi.c", i32 474, i32 3}
!154 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @spear_smi_erase_sector._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @spear_smi_erase_sector._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/mtd/devices/spear_smi.c", i32 403, i32 3}
!159 = !{ptr @.str.78, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @spear_smi_write_enable._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @spear_smi_write_enable._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.80, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/mtd/devices/spear_smi.c", i32 410, i32 4}
!164 = !{ptr @spear_smi_write_enable._entry.79, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @spear_smi_write_enable._entry_ptr.81, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/mtd/devices/spear_smi.c", i32 558, i32 3}
!168 = !{ptr @spear_mtd_read._entry, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @spear_mtd_read._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/mtd/devices/spear_smi.c", i32 687, i32 3}
!172 = !{ptr @spear_mtd_write._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @spear_mtd_write._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1052, i32 3}
!176 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @spear_smi_remove._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @spear_smi_remove._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1065, i32 4}
!181 = !{ptr @spear_smi_remove._entry.86, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @spear_smi_remove._entry_ptr.88, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @spear_smi_id_table, !184, !"spear_smi_id_table", i1 false, i1 false}
!184 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1101, i32 34}
!185 = !{ptr @spear_smi_pm_ops, !186, !"spear_smi_pm_ops", i1 false, i1 false}
!186 = !{!"../drivers/mtd/devices/spear_smi.c", i32 1098, i32 8}
!187 = !{i32 1, !"wchar_size", i32 2}
!188 = !{i32 1, !"min_enum_size", i32 4}
!189 = !{i32 8, !"branch-target-enforcement", i32 0}
!190 = !{i32 8, !"sign-return-address", i32 0}
!191 = !{i32 8, !"sign-return-address-all", i32 0}
!192 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!193 = !{i32 7, !"uwtable", i32 1}
!194 = !{i32 7, !"frame-pointer", i32 2}
!195 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!196 = !{!"auto-init"}
!197 = !{i64 2153276143}
!198 = !{i64 4926385}
!199 = !{i64 2153276532}
!200 = !{i64 4926803}
!201 = !{i64 2153300423}
!202 = !{i64 2153300668}
!203 = !{i64 2153301111}
!204 = !{i64 2153301538}
!205 = !{i64 2153304202}
!206 = !{i64 2153304696}
!207 = !{i64 2153304943}
!208 = !{i64 2153275273}
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !{i64 2153275525}
!211 = !{i64 2153285561}
!212 = !{i64 2153285842}
!213 = !{i64 2153286355}
!214 = !{i64 2153286841}
!215 = !{i64 2153290967}
!216 = !{i64 2153291375}
!217 = !{i64 2153295266}
!218 = !{i64 2153295521}
!219 = !{i64 2153295962}
!220 = !{i64 2153268689}
!221 = !{i64 2153268970}
!222 = !{i64 2153269542}
!223 = !{i64 2153272043}
!224 = !{i64 2153272451}
!225 = !{i64 2153277638}
!226 = !{i64 2153277890}
!227 = !{i64 2153278411}
!228 = !{i64 2153280908}
!229 = !{i64 2153281316}
!230 = !{i64 2153297122}
!231 = !{i64 2153297403}
!232 = !{i64 2153296356}
!233 = !{i64 4926188}
!234 = !{i64 2153298093}
