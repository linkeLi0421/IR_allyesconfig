; ModuleID = '/llk/IR_all_yes/drivers/net/phy/spi_ks8995.c_pt.bc'
source_filename = "../drivers/net/phy/spi_ks8995.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ks8995_chip_params = type { ptr, i32, i32, i32, i32, i32 }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ks8995_switch = type { ptr, %struct.mutex, ptr, %struct.bin_attribute, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.ks8995_pdata = type { i32, i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_spi_ks8995__230_544_ks8995_driver_init6 = internal global ptr @ks8995_driver_init, section ".initcall6.init", align 4
@ks8995_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ks8995_id, ptr @ks8995_probe, ptr @ks8995_remove, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ks8895_spi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ks8995_driver_exit = internal global ptr @ks8995_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description231 = internal constant [64 x i8] c"spi_ks8995.description=Micrel KS8995 Ethernet switch SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version232 = internal constant [25 x i8] c"spi_ks8995.version=0.1.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi_ks8995\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.1.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_author233 = internal constant [54 x i8] c"spi_ks8995.author=Gabor Juhos <juhosg at openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [43 x i8] c"spi_ks8995.file=drivers/net/phy/spi_ks8995\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [26 x i8] c"spi_ks8995.license=GPL v2\00", section ".modinfo", align 1
@ks8995_id = internal constant { [4 x %struct.spi_device_id], [48 x i8] } { [4 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ks8995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ksz8864\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"ksz8795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spi-ks8995\00", [21 x i8] zeroinitializer }, align 32
@ks8895_spi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ks8995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ksz8864\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"micrel,ksz8795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ks8995_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 440, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bad chip variant %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ks8995_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/net/phy/spi_ks8995.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ks8995_probe._entry_ptr = internal global ptr @ks8995_probe._entry, section ".printk_index", align 4
@ks8995_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ks->lock\00", [22 x i8] zeroinitializer }, align 32
@ks8995_chip = internal constant { [3 x %struct.ks8995_chip_params], [56 x i8] } { [3 x %struct.ks8995_chip_params] [%struct.ks8995_chip_params { ptr @.str.25, i32 149, i32 0, i32 128, i32 8, i32 0 }, %struct.ks8995_chip_params { ptr @.str.26, i32 149, i32 1, i32 256, i32 8, i32 0 }, %struct.ks8995_chip_params { ptr @.str.27, i32 135, i32 9, i32 256, i32 12, i32 1 }], [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"switch-reset\00", [19 x i8] zeroinitializer }, align 32
@ks8995_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 478, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get reset-gpios: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@ks8995_probe._entry_ptr.13 = internal global ptr @ks8995_probe._entry.11, section ".printk_index", align 4
@ks8995_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spi_setup failed, err=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@ks8995_probe._entry_ptr.16 = internal global ptr @ks8995_probe._entry.14, section ".printk_index", align 4
@ks8995_registers_attr = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.40, i16 384, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 128, ptr null, ptr null, ptr @ks8995_registers_read, ptr @ks8995_registers_write, ptr null }, [52 x i8] zeroinitializer }, align 32
@ks8995_probe.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ks8995_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 510, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to create sysfs file, err=%d\0A\00", [59 x i8] zeroinitializer }, align 32
@ks8995_probe._entry_ptr.20 = internal global ptr @ks8995_probe._entry.18, section ".printk_index", align 4
@ks8995_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 515, ptr @.str.23, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s device found, Chip ID:%x, Revision:%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ks8995_probe._entry_ptr.24 = internal global ptr @ks8995_probe._entry.21, section ".printk_index", align 4
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"KS8995MA\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KSZ8864RMN\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"KSZ8795CLX\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@ks8995_get_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 341, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"chip family id mismatch: expected 0x%02x but 0x%02x read\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ks8995_get_revision\00", [44 x i8] zeroinitializer }, align 32
@ks8995_get_revision._entry_ptr = internal global ptr @ks8995_get_revision._entry, section ".printk_index", align 4
@ks8995_get_revision._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.6, i32 375, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"unsupported chip id for KS8995 family: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@ks8995_get_revision._entry_ptr.33 = internal global ptr @ks8995_get_revision._entry.31, section ".printk_index", align 4
@ks8995_get_revision._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.6, i32 391, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"unsupported chip id for KSZ8795 family: 0x%02x\0A\00", [48 x i8] zeroinitializer }, align 32
@ks8995_get_revision._entry_ptr.36 = internal global ptr @ks8995_get_revision._entry.34, section ".printk_index", align 4
@ks8995_get_revision._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.6, i32 396, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported family id: 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@ks8995_get_revision._entry_ptr.39 = internal global ptr @ks8995_get_revision._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"registers\00", [22 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 135, i64 149]
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ks8995_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 534, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 547, i32 1 }
@___asan_gen_.53 = private unnamed_addr constant [10 x i8] c"ks8995_id\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 154, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 536, i32 15 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"ks8895_spi_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 162, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 440, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 448, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"ks8995_chip\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 113, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 475, i32 17 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 477, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 491, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"ks8995_registers_attr\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 422, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 506, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 509, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 514, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 115, i32 11 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 123, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 131, i32 11 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 418, i32 50 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 340, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 374, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 390, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 396, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.165 = private constant [32 x i8] c"../drivers/net/phy/spi_ks8995.c\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 424, i32 13 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_version232, ptr @__exitcall_ks8995_driver_exit, ptr @__initcall__kmod_spi_ks8995__230_544_ks8995_driver_init6, ptr @__modver_attr, ptr @ks8995_driver_exit, ptr @ks8995_get_revision._entry, ptr @ks8995_get_revision._entry.31, ptr @ks8995_get_revision._entry.34, ptr @ks8995_get_revision._entry.37, ptr @ks8995_get_revision._entry_ptr, ptr @ks8995_get_revision._entry_ptr.33, ptr @ks8995_get_revision._entry_ptr.36, ptr @ks8995_get_revision._entry_ptr.39, ptr @ks8995_probe._entry, ptr @ks8995_probe._entry.11, ptr @ks8995_probe._entry.14, ptr @ks8995_probe._entry.18, ptr @ks8995_probe._entry.21, ptr @ks8995_probe._entry_ptr, ptr @ks8995_probe._entry_ptr.13, ptr @ks8995_probe._entry_ptr.16, ptr @ks8995_probe._entry_ptr.20, ptr @ks8995_probe._entry_ptr.24, ptr @ks8995_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @ks8995_id, ptr @.str.3, ptr @ks8895_spi_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ks8995_probe.__key, ptr @.str.9, ptr @ks8995_chip, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @ks8995_registers_attr, ptr @ks8995_probe.__key.17, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8895_spi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_chip to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_registers_attr to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_get_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_get_revision._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_get_revision._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ks8995_get_revision._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8995_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ks8995_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ks8995_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ks8995_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8995_probe(ptr noundef %spi) #2 align 64 {
entry:
  %buf.i.i4.i = alloca i8, align 1
  %buf.i.i.i = alloca i8, align 1
  %id0.i = alloca i8, align 1
  %id1.i = alloca i8, align 1
  %ksz8864_id.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @spi_get_device_id(ptr noundef %spi) #5
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp sgt i32 %1, 2
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.4, i32 noundef %1) #8
  br label %cleanup88

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 152, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup88_crit_edge, label %do.body5

if.end.cleanup88_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

do.body5:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @ks8995_probe.__key) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spi, ptr %call.i, align 4
  %arrayidx = getelementptr [3 x %struct.ks8995_chip_params], ptr @ks8995_chip, i32 0, i32 %1
  %chip = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %chip, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.body5.if.end20_crit_edge, label %if.then12

do.body5.if.end20_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then12:                                        ; preds = %do.body5
  %call.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 8, i32 noundef 3520) #5
  %pdata = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i147, ptr %pdata, align 4
  %tobool16.not = icmp eq ptr %call.i147, null
  br i1 %tobool16.not, label %if.then12.cleanup88_crit_edge, label %if.end18

if.then12.cleanup88_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

if.end18:                                         ; preds = %if.then12
  %7 = ptrtoint ptr %call.i147 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %call.i147, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end18.if.end20_crit_edge, label %if.end.i

if.end18.if.end20_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %reset_gpio_flags.i = getelementptr inbounds %struct.ks8995_pdata, ptr %call.i147, i32 0, i32 1
  %call.i148 = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %11, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %reset_gpio_flags.i) #5
  %12 = ptrtoint ptr %call.i147 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i148, ptr %call.i147, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end.i, %if.end18.if.end20_crit_edge, %do.body5.if.end20_crit_edge
  %pdata21 = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %pdata21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata21, align 4
  %tobool22.not = icmp eq ptr %14, null
  br i1 %tobool22.not, label %if.end26, label %if.end20.land.lhs.true_crit_edge

if.end20.land.lhs.true_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end26:                                         ; preds = %if.end20
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %15 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data, align 8
  %17 = ptrtoint ptr %pdata21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %pdata21, align 4
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %if.end26.if.end49_crit_edge, label %if.end26.land.lhs.true_crit_edge

if.end26.land.lhs.true_crit_edge:                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end26.if.end49_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end26.land.lhs.true_crit_edge, %if.end20.land.lhs.true_crit_edge
  %18 = phi ptr [ %16, %if.end26.land.lhs.true_crit_edge ], [ %14, %if.end20.land.lhs.true_crit_edge ]
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %20)
  %21 = icmp ult i32 %20, 2048
  br i1 %21, label %if.then32, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then32:                                        ; preds = %land.lhs.true
  %reset_gpio_flags = getelementptr inbounds %struct.ks8995_pdata, ptr %18, i32 0, i32 1
  %22 = ptrtoint ptr %reset_gpio_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset_gpio_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp34 = icmp eq i32 %23, 1
  %cond = select i1 %cmp34, i32 4, i32 0
  %call38 = tail call i32 @devm_gpio_request_one(ptr noundef %spi, i32 noundef %20, i32 noundef %cond, ptr noundef nonnull @.str.10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.12, i32 noundef %call38) #8
  br label %cleanup88

if.end45:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %pdata21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdata21, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %call48 = tail call ptr @gpio_to_desc(i32 noundef %27) #5
  tail call void @gpiod_set_value(ptr noundef %call48, i32 noundef 0) #5
  br label %if.end49

if.end49:                                         ; preds = %if.end45, %land.lhs.true.if.end49_crit_edge, %if.end26.if.end49_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mode, align 8
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %30 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 8, ptr %bits_per_word, align 1
  %call50 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.15, i32 noundef %call50) #8
  br label %cleanup88

if.end57:                                         ; preds = %if.end49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id0.i) #5
  %31 = ptrtoint ptr %id0.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %id0.i, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id1.i) #5
  %32 = ptrtoint ptr %id1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %id1.i, align 1, !annotation !96
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ksz8864_id.i) #5
  %33 = ptrtoint ptr %ksz8864_id.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %ksz8864_id.i, align 1, !annotation !96
  %call.i.i = call fastcc i32 @ks8995_read(ptr noundef nonnull %call.i, ptr noundef nonnull %id0.i, i32 noundef 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.i.not.i, label %if.end.i149, label %if.end57.ks8995_get_revision.exit.thread_crit_edge

if.end57.ks8995_get_revision.exit.thread_crit_edge: ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks8995_get_revision.exit.thread

if.end.i149:                                      ; preds = %if.end57
  %34 = ptrtoint ptr %id0.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %id0.i, align 1
  %conv.i = zext i8 %35 to i32
  %36 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chip, align 4
  %family_id.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %family_id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %family_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %39, %conv.i
  br i1 %cmp.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.29, i32 noundef %39, i32 noundef %conv.i) #8
  br label %ks8995_get_revision.exit.thread

if.end6.i:                                        ; preds = %if.end.i149
  %42 = zext i8 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i8 %35, label %do.end80.i [
    i8 -107, label %sw.bb.i
    i8 -121, label %sw.bb55.i
  ]

sw.bb.i:                                          ; preds = %if.end6.i
  %call.i104.i = call fastcc i32 @ks8995_read(ptr noundef nonnull %call.i, ptr noundef nonnull %id1.i, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i104.i)
  %cmp.i105.not.i = icmp eq i32 %call.i104.i, 1
  br i1 %cmp.i105.not.i, label %if.end12.i, label %sw.bb.i.ks8995_get_revision.exit.thread_crit_edge

sw.bb.i.ks8995_get_revision.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks8995_get_revision.exit.thread

if.end12.i:                                       ; preds = %sw.bb.i
  %43 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %id1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %44)
  %cmp15.i = icmp ult i8 %44, 16
  br i1 %cmp15.i, label %land.lhs.true.i, label %if.then29.i

land.lhs.true.i:                                  ; preds = %if.end12.i
  %45 = lshr i8 %44, 4
  %conv18.i = zext i8 %45 to i32
  %46 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %chip, align 4
  %chip_id.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %chip_id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv18.i)
  %cmp20.i = icmp eq i32 %49, %conv18.i
  br i1 %cmp20.i, label %if.then22.i, label %do.end49.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = lshr i8 %44, 1
  br label %if.end61.sink.split

if.then29.i:                                      ; preds = %if.end12.i
  %call.i107.i = call fastcc i32 @ks8995_read(ptr noundef nonnull %call.i, ptr noundef nonnull %ksz8864_id.i, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i107.i)
  %cmp.i108.not.i = icmp eq i32 %call.i107.i, 1
  br i1 %cmp.i108.not.i, label %if.end33.i, label %if.then29.i.ks8995_get_revision.exit.thread_crit_edge

if.then29.i.ks8995_get_revision.exit.thread_crit_edge: ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks8995_get_revision.exit.thread

if.end33.i:                                       ; preds = %if.then29.i
  %51 = ptrtoint ptr %ksz8864_id.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %ksz8864_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %52)
  %tobool35.not.i = icmp sgt i8 %52, -1
  br i1 %tobool35.not.i, label %if.end33.i.if.end61_crit_edge, label %land.lhs.true36.i

if.end33.i.if.end61_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

land.lhs.true36.i:                                ; preds = %if.end33.i
  %53 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chip, align 4
  %chip_id38.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %chip_id38.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chip_id38.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp39.i = icmp eq i32 %56, 1
  br i1 %cmp39.i, label %if.then41.i, label %land.lhs.true36.i.if.end61_crit_edge

land.lhs.true36.i.if.end61_crit_edge:             ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

if.then41.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #7
  %57 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %id1.i, align 1
  %59 = lshr i8 %58, 1
  %60 = and i8 %59, 7
  br label %if.end61.sink.split

do.end49.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %conv52.i = zext i8 %44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.32, i32 noundef %conv52.i) #8
  br label %ks8995_get_revision.exit.thread

sw.bb55.i:                                        ; preds = %if.end6.i
  %call.i110.i = call fastcc i32 @ks8995_read(ptr noundef nonnull %call.i, ptr noundef nonnull %id1.i, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i110.i)
  %cmp.i111.not.i = icmp eq i32 %call.i110.i, 1
  br i1 %cmp.i111.not.i, label %if.end59.i, label %sw.bb55.i.ks8995_get_revision.exit.thread_crit_edge

sw.bb55.i.ks8995_get_revision.exit.thread_crit_edge: ; preds = %sw.bb55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ks8995_get_revision.exit.thread

if.end59.i:                                       ; preds = %sw.bb55.i
  %63 = ptrtoint ptr %id1.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %id1.i, align 1
  %65 = lshr i8 %64, 4
  %conv61.i = zext i8 %65 to i32
  %66 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %chip, align 4
  %chip_id63.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %chip_id63.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip_id63.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv61.i)
  %cmp64.i = icmp eq i32 %69, %conv61.i
  br i1 %cmp64.i, label %if.then66.i, label %do.end73.i

if.then66.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %70 = lshr i8 %64, 1
  %71 = and i8 %70, 7
  br label %if.end61.sink.split

do.end73.i:                                       ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  %72 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call.i, align 4
  %conv76.i = zext i8 %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.35, i32 noundef %conv76.i) #8
  br label %ks8995_get_revision.exit.thread

do.end80.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.38, i32 noundef %conv.i) #8
  br label %ks8995_get_revision.exit.thread

ks8995_get_revision.exit.thread:                  ; preds = %do.end80.i, %do.end73.i, %sw.bb55.i.ks8995_get_revision.exit.thread_crit_edge, %do.end49.i, %if.then29.i.ks8995_get_revision.exit.thread_crit_edge, %sw.bb.i.ks8995_get_revision.exit.thread_crit_edge, %do.end.i, %if.end57.ks8995_get_revision.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ -5, %sw.bb55.i.ks8995_get_revision.exit.thread_crit_edge ], [ -5, %if.then29.i.ks8995_get_revision.exit.thread_crit_edge ], [ -5, %sw.bb.i.ks8995_get_revision.exit.thread_crit_edge ], [ -5, %if.end57.ks8995_get_revision.exit.thread_crit_edge ], [ -19, %do.end49.i ], [ -19, %do.end73.i ], [ -19, %do.end80.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ksz8864_id.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id0.i) #5
  br label %cleanup88

if.end61.sink.split:                              ; preds = %if.then66.i, %if.then41.i, %if.then22.i
  %.sink = phi i8 [ %71, %if.then66.i ], [ %60, %if.then41.i ], [ %50, %if.then22.i ]
  %conv68.i = zext i8 %.sink to i32
  %revision_id69.i = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 5
  %76 = ptrtoint ptr %revision_id69.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %conv68.i, ptr %revision_id69.i, align 4
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %land.lhs.true36.i.if.end61_crit_edge, %if.end33.i.if.end61_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ksz8864_id.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id1.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id0.i) #5
  %regs_attr = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 3
  %77 = call ptr @memcpy(ptr %regs_attr, ptr @ks8995_registers_attr, i32 44)
  %78 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %chip, align 4
  %regs_size = getelementptr inbounds %struct.ks8995_chip_params, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %regs_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %regs_size, align 4
  %size = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %size, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i.i) #5
  %83 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %buf.i.i.i, align 1
  %call.i.i.i = call fastcc i32 @ks8995_write(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i.i.i, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %call.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i.i) #5
  br i1 %cmp.i.i.not.i, label %ks8995_reset.exit, label %if.end61.cleanup88_crit_edge

if.end61.cleanup88_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

ks8995_reset.exit:                                ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %84(i32 noundef 2147480) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i4.i) #5
  %85 = ptrtoint ptr %buf.i.i4.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 1, ptr %buf.i.i4.i, align 1
  %call.i.i5.i = call fastcc i32 @ks8995_write(ptr noundef nonnull %call.i, ptr noundef nonnull %buf.i.i4.i, i32 noundef 1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i5.i)
  %cmp.i.i6.i.not = icmp eq i32 %call.i.i5.i, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i4.i) #5
  br i1 %cmp.i.i6.i.not, label %do.body68, label %ks8995_reset.exit.cleanup88_crit_edge

ks8995_reset.exit.cleanup88_crit_edge:            ; preds = %ks8995_reset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup88

do.body68:                                        ; preds = %ks8995_reset.exit
  %key = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  %86 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ks8995_probe.__key.17, ptr %key, align 4
  %call74 = call i32 @sysfs_create_bin_file(ptr noundef %spi, ptr noundef %regs_attr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %do.end84, label %do.end79

do.end79:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.19, i32 noundef %call74) #8
  br label %cleanup88

do.end84:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %chip, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 4
  %chip_id = getelementptr inbounds %struct.ks8995_chip_params, ptr %88, i32 0, i32 2
  %91 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %chip_id, align 4
  %revision_id = getelementptr inbounds %struct.ks8995_switch, ptr %call.i, i32 0, i32 5
  %93 = ptrtoint ptr %revision_id to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %revision_id, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.22, ptr noundef %90, i32 noundef %92, i32 noundef %94) #8
  br label %cleanup88

cleanup88:                                        ; preds = %do.end84, %do.end79, %ks8995_reset.exit.cleanup88_crit_edge, %if.end61.cleanup88_crit_edge, %ks8995_get_revision.exit.thread, %do.end55, %do.end43, %if.then12.cleanup88_crit_edge, %if.end.cleanup88_crit_edge, %do.end
  %retval.1 = phi i32 [ -19, %do.end ], [ %call50, %do.end55 ], [ %call74, %do.end79 ], [ 0, %do.end84 ], [ -12, %if.end.cleanup88_crit_edge ], [ -12, %if.then12.cleanup88_crit_edge ], [ -5, %do.end43 ], [ 1, %ks8995_reset.exit.cleanup88_crit_edge ], [ %err.0.i.ph, %ks8995_get_revision.exit.thread ], [ 1, %if.end61.cleanup88_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8995_remove(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs_attr = getelementptr inbounds %struct.ks8995_switch, ptr %1, i32 0, i32 3
  tail call void @sysfs_remove_bin_file(ptr noundef %spi, ptr noundef %regs_attr) #5
  %pdata = getelementptr inbounds %struct.ks8995_switch, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @gpio_to_desc(i32 noundef %5) #5
  tail call void @gpiod_set_value(ptr noundef %call5, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks8995_read(ptr noundef %ks, ptr noundef %buf, i32 noundef %offset, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %chip.i = getelementptr inbounds %struct.ks8995_switch, ptr %ks, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %addr_width.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_width.i, align 4
  %addr_shift.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %addr_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_shift.i, align 4
  %add.i = add i32 %5, %3
  %shl.i = shl i32 3, %add.i
  %shl6.i = shl i32 %offset, %5
  %or.i = or i32 %shl.i, %shl6.i
  %conv8.i = trunc i32 %or.i to i16
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv8.i, ptr %cmd, align 2
  %7 = getelementptr inbounds i8, ptr %m, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %13 = getelementptr inbounds i8, ptr %t, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 188)
  %15 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %rx_buf = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %rx_buf, align 4
  %len5 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %count, ptr %len5, align 4
  %transfer_list.i14 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i16 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i14, ptr noundef %24, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i16, label %if.end.i.i.i18, label %spi_message_add_tail.exit.spi_message_add_tail.exit19_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit19_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit19

if.end.i.i.i18:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i14, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m, ptr %transfer_list.i14, align 4
  %prev3.i.i.i17 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i17, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i14, ptr %24, align 4
  br label %spi_message_add_tail.exit19

spi_message_add_tail.exit19:                      ; preds = %if.end.i.i.i18, %spi_message_add_tail.exit.spi_message_add_tail.exit19_crit_edge
  %lock = getelementptr inbounds %struct.ks8995_switch, ptr %ks, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %29 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ks, align 4
  %call7 = call i32 @spi_sync(ptr noundef %30, ptr noundef nonnull %m) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  %count.call7 = select i1 %tobool.not, i32 %count, i32 %call7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  ret i32 %count.call7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8995_registers_read(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv = trunc i64 %off to i32
  %call2 = tail call fastcc i32 @ks8995_read(ptr noundef %1, ptr noundef %buf, i32 noundef %conv, i32 noundef %count)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ks8995_registers_write(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv = trunc i64 %off to i32
  %call2 = tail call fastcc i32 @ks8995_write(ptr noundef %1, ptr noundef %buf, i32 noundef %conv, i32 noundef %count)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ks8995_write(ptr noundef %ks, ptr noundef %buf, i32 noundef %offset, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca i16, align 2
  %t = alloca [2 x %struct.spi_transfer], align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #5
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %chip.i = getelementptr inbounds %struct.ks8995_switch, ptr %ks, i32 0, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 4
  %addr_width.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %addr_width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr_width.i, align 4
  %addr_shift.i = getelementptr inbounds %struct.ks8995_chip_params, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %addr_shift.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %addr_shift.i, align 4
  %add.i = add i32 %5, %3
  %shl.i = shl i32 2, %add.i
  %shl6.i = shl i32 %offset, %5
  %or.i = or i32 %shl.i, %shl6.i
  %conv8.i = trunc i32 %or.i to i16
  %6 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv8.i, ptr %cmd, align 2
  %7 = getelementptr inbounds i8, ptr %m, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %11 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %12 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %13 = getelementptr inbounds i8, ptr %t, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 188)
  %15 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %cmd, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %20 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %arrayidx3 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %arrayidx3, align 4
  %len6 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %len6 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %count, ptr %len6, align 4
  %transfer_list.i15 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i17 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i15, ptr noundef %24, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i17, label %if.end.i.i.i19, label %spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge

spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge: ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit20

if.end.i.i.i19:                                   ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i15, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %m, ptr %transfer_list.i15, align 4
  %prev3.i.i.i18 = getelementptr inbounds [2 x %struct.spi_transfer], ptr %t, i32 0, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i18, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i15, ptr %24, align 4
  br label %spi_message_add_tail.exit20

spi_message_add_tail.exit20:                      ; preds = %if.end.i.i.i19, %spi_message_add_tail.exit.spi_message_add_tail.exit20_crit_edge
  %lock = getelementptr inbounds %struct.ks8995_switch, ptr %ks, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %29 = ptrtoint ptr %ks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ks, align 4
  %call8 = call i32 @spi_sync(ptr noundef %30, ptr noundef nonnull %m) #5
  call void @mutex_unlock(ptr noundef %lock) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  %count.call8 = select i1 %tobool.not, i32 %count, i32 %call8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #5
  ret i32 %count.call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_spi_ks8995__230_544_ks8995_driver_init6, !1, !"__initcall__kmod_spi_ks8995__230_544_ks8995_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/spi_ks8995.c", i32 544, i32 1}
!2 = !{ptr @__exitcall_ks8995_driver_exit, !1, !"__exitcall_ks8995_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description231, !4, !"__UNIQUE_ID_description231", i1 false, i1 false}
!4 = !{!"../drivers/net/phy/spi_ks8995.c", i32 546, i32 1}
!5 = !{ptr @__UNIQUE_ID_version232, !6, !"__UNIQUE_ID_version232", i1 false, i1 false}
!6 = !{!"../drivers/net/phy/spi_ks8995.c", i32 547, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author233, !12, !"__UNIQUE_ID_author233", i1 false, i1 false}
!12 = !{!"../drivers/net/phy/spi_ks8995.c", i32 548, i32 1}
!13 = !{ptr @__UNIQUE_ID_file234, !14, !"__UNIQUE_ID_file234", i1 false, i1 false}
!14 = !{!"../drivers/net/phy/spi_ks8995.c", i32 549, i32 1}
!15 = !{ptr @__UNIQUE_ID_license235, !14, !"__UNIQUE_ID_license235", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/phy/spi_ks8995.c", i32 536, i32 15}
!18 = !{ptr @ks8995_driver, !19, !"ks8995_driver", i1 false, i1 false}
!19 = !{!"../drivers/net/phy/spi_ks8995.c", i32 534, i32 26}
!20 = !{ptr @ks8995_id, !21, !"ks8995_id", i1 false, i1 false}
!21 = !{!"../drivers/net/phy/spi_ks8995.c", i32 154, i32 35}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/phy/spi_ks8995.c", i32 440, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ks8995_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ks8995_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @ks8995_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/net/phy/spi_ks8995.c", i32 448, i32 2}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/phy/spi_ks8995.c", i32 475, i32 17}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/phy/spi_ks8995.c", i32 477, i32 4}
!37 = !{ptr @ks8995_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @ks8995_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/net/phy/spi_ks8995.c", i32 491, i32 3}
!41 = !{ptr @ks8995_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @ks8995_probe._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @ks8995_probe.__key.17, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/phy/spi_ks8995.c", i32 506, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/phy/spi_ks8995.c", i32 509, i32 3}
!47 = !{ptr @ks8995_probe._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ks8995_probe._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/net/phy/spi_ks8995.c", i32 514, i32 2}
!51 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ks8995_probe._entry.21, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ks8995_probe._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/phy/spi_ks8995.c", i32 115, i32 11}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/phy/spi_ks8995.c", i32 123, i32 11}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/phy/spi_ks8995.c", i32 131, i32 11}
!60 = !{ptr @ks8995_chip, !61, !"ks8995_chip", i1 false, i1 false}
!61 = !{!"../drivers/net/phy/spi_ks8995.c", i32 113, i32 40}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/phy/spi_ks8995.c", i32 418, i32 50}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/phy/spi_ks8995.c", i32 340, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @ks8995_get_revision._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @ks8995_get_revision._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/phy/spi_ks8995.c", i32 374, i32 4}
!71 = !{ptr @ks8995_get_revision._entry.31, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @ks8995_get_revision._entry_ptr.33, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/phy/spi_ks8995.c", i32 390, i32 4}
!75 = !{ptr @ks8995_get_revision._entry.34, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ks8995_get_revision._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/phy/spi_ks8995.c", i32 396, i32 3}
!79 = !{ptr @ks8995_get_revision._entry.37, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @ks8995_get_revision._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/phy/spi_ks8995.c", i32 424, i32 13}
!83 = !{ptr @ks8995_registers_attr, !84, !"ks8995_registers_attr", i1 false, i1 false}
!84 = !{!"../drivers/net/phy/spi_ks8995.c", i32 422, i32 35}
!85 = !{ptr @ks8895_spi_of_match, !86, !"ks8895_spi_of_match", i1 false, i1 false}
!86 = !{!"../drivers/net/phy/spi_ks8995.c", i32 162, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
