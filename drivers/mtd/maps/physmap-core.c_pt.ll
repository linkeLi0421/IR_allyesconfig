; ModuleID = '/llk/IR_all_yes/drivers/mtd/maps/physmap-core.c_pt.bc'
source_filename = "../drivers/mtd/maps/physmap-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.physmap_flash_data = type { i32, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.physmap_flash_info = type { i32, ptr, ptr, ptr, %struct.spinlock, i32, ptr, ptr, i32, ptr, ptr, i32, i32 }
%struct.map_info = type { ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.gpio_descs = type { ptr, i32, [0 x ptr] }
%struct.mtd_info = type { i8, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.notifier_block, %struct.mtd_ecc_stats, i32, ptr, ptr, %struct.device, i32, %struct.mtd_debug_info, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.43 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mtd_ecc_stats = type { i32, i32, i32, i32 }
%struct.mtd_debug_info = type { ptr, ptr, ptr }
%union.anon.43 = type { %struct.mtd_part, [160 x i8] }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%union.map_word = type { [8 x i32] }

@physmap_flash = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @physmap_flash_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 1, ptr @physmap_flash_resource, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@physmap_flash_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @physmap_flash_probe, ptr @physmap_flash_remove, ptr @physmap_flash_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_flash_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_physmap__190_677_physmap_init6 = internal global ptr @physmap_init, section ".initcall6.init", align 4
@__exitcall_physmap_exit = internal global ptr @physmap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file191 = internal constant [38 x i8] c"physmap.file=drivers/mtd/maps/physmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [20 x i8] c"physmap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [53 x i8] c"physmap.author=David Woodhouse <dwmw2@infradead.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [49 x i8] c"physmap.author=Vitaly Wool <vwool@ru.mvista.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author195 = internal constant [50 x i8] c"physmap.author=Mike Frysinger <vapier@gentoo.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description196 = internal constant [56 x i8] c"physmap.description=Generic configurable MTD map driver\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"physmap-flash\00", [18 x i8] zeroinitializer }, align 32
@physmap_flash_data = internal global { %struct.physmap_flash_data, [60 x i8] } { %struct.physmap_flash_data { i32 2, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@physmap_flash_resource = internal global { %struct.resource, [32 x i8] } { %struct.resource { i32 134217728, i32 134217727, ptr null, i32 512, i32 0, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@of_flash_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cfi-flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.27 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jedec-flash\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.29 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mtd-ram\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.43 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mtd-rom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @.str.31 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] c"rom\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"direct-mapped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@physmap_flash_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"addr-gpios only supported for nmaps == 1\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"physmap_flash_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/mtd/maps/physmap-core.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@physmap_flash_probe._entry_ptr = internal global ptr @physmap_flash_probe._entry, section ".printk_index", align 4
@physmap_flash_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 523, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"physmap platform flash device: %pR\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@physmap_flash_probe._entry_ptr.10 = internal global ptr @physmap_flash_probe._entry.7, section ".printk_index", align 4
@rom_probe_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.29, ptr @.str.41, ptr @.str.31], [16 x i8] zeroinitializer }, align 32
@physmap_flash_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"map_probe failed\0A\00", [46 x i8] zeroinitializer }, align 32
@physmap_flash_probe._entry_ptr.13 = internal global ptr @physmap_flash_probe._entry.11, section ".printk_index", align 4
@physmap_flash_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&info->vpp_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,mtd-name\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no-unaligned-direct-access\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank-width\00", [21 x i8] zeroinitializer }, align 32
@physmap_flash_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 362, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Can't get bank width from device tree\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"physmap_flash_of_init\00", [42 x i8] zeroinitializer }, align 32
@physmap_flash_of_init._entry_ptr = internal global ptr @physmap_flash_of_init._entry, section ".printk_index", align 4
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"little-endian\00", [18 x i8] zeroinitializer }, align 32
@of_select_probe_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 315, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Device tree uses obsolete \22direct-mapped\22 flash binding\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"of_select_probe_type\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@of_select_probe_type._entry_ptr = internal global ptr @of_select_probe_type._entry, section ".printk_index", align 4
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"probe-type\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CFI\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cfi_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"JEDEC\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"jedec_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROM\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_rom\00", [24 x i8] zeroinitializer }, align 32
@of_select_probe_type._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.23, ptr @.str.4, i32 330, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"obsolete_probe: don't know probe type '%s', mapping as rom\0A\00", [36 x i8] zeroinitializer }, align 32
@of_select_probe_type._entry_ptr.34 = internal global ptr @of_select_probe_type._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,part-probe\00", [47 x i8] zeroinitializer }, align 32
@of_default_part_probes = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr null], [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cmdlinepart\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RedBoot\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ofpart\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ofoldpart\00", [22 x i8] zeroinitializer }, align 32
@part_probe_types = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.40, ptr null], [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"afs\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qinfo_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"map_ram\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.44 = private unnamed_addr constant [14 x i8] c"physmap_flash\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 642, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"physmap_flash_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 621, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 643, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"physmap_flash_data\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 632, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [23 x i8] c"physmap_flash_resource\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 636, i32 24 }
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"of_flash_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 243, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 488, i32 57 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 494, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 522, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"rom_probe_types\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 416, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 571, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 592, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 356, i32 30 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 358, i32 43 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 360, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 362, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 366, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 368, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 314, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 317, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 321, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 322, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 323, i32 33 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 324, i32 16 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 325, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 326, i32 16 }
@___asan_gen_.164 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 328, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 287, i32 40 }
@___asan_gen_.173 = private unnamed_addr constant [23 x i8] c"of_default_part_probes\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 277, i32 27 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 278, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 278, i32 17 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 278, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 278, i32 38 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"part_probe_types\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 420, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 421, i32 28 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 417, i32 30 }
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"../include/linux/mtd/mtd.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 464, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.201 = private constant [35 x i8] c"../drivers/mtd/maps/physmap-core.c\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.201, i32 263, i32 11 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_author195, ptr @__UNIQUE_ID_description196, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_physmap_exit, ptr @__initcall__kmod_physmap__190_677_physmap_init6, ptr @of_select_probe_type._entry, ptr @of_select_probe_type._entry.32, ptr @of_select_probe_type._entry_ptr, ptr @of_select_probe_type._entry_ptr.34, ptr @physmap_exit, ptr @physmap_flash_of_init._entry, ptr @physmap_flash_of_init._entry_ptr, ptr @physmap_flash_probe._entry, ptr @physmap_flash_probe._entry.11, ptr @physmap_flash_probe._entry.7, ptr @physmap_flash_probe._entry_ptr, ptr @physmap_flash_probe._entry_ptr.10, ptr @physmap_flash_probe._entry_ptr.13, ptr @physmap_flash, ptr @physmap_flash_driver, ptr @.str, ptr @physmap_flash_data, ptr @physmap_flash_resource, ptr @of_flash_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @rom_probe_types, ptr @.str.12, ptr @physmap_flash_probe.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @of_default_part_probes, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @part_probe_types, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_data to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_resource to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_flash_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rom_probe_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @physmap_flash_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_select_probe_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_select_probe_type._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_default_part_probes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @part_probe_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @physmap_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull @physmap_flash) #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @physmap_flash_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @physmap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @physmap_flash_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @platform_device_register(ptr noundef nonnull @physmap_flash) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end3_crit_edge, label %if.then2

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @physmap_flash_driver) #7
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %err.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.then.if.end3_crit_edge ], [ %call, %entry.if.end3_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @physmap_flash_probe(ptr noundef %dev) #2 align 64 {
entry:
  %probe_type.i.i = alloca ptr, align 4
  %mtd_name.i = alloca ptr, align 4
  %bankwidth.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.cleanup201_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup201_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #7
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup201_crit_edge, label %while.cond.preheader

if.end.cleanup201_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

while.cond.preheader:                             ; preds = %if.end
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call.i, align 4
  %call9362 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef %5) #7
  %tobool10.not363 = icmp eq ptr %call9362, null
  br i1 %tobool10.not363, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %call.i, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef %inc) #7
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %while.end.cleanup201_crit_edge, label %if.end15

while.end.cleanup201_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

if.end15:                                         ; preds = %while.end
  %mul = mul i32 %9, 76
  %call.i319 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul, i32 noundef 3520) #7
  %maps = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %maps to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i319, ptr %maps, align 4
  %tobool20.not = icmp eq ptr %call.i319, null
  br i1 %tobool20.not, label %if.end15.cleanup201_crit_edge, label %if.end22

if.end15.cleanup201_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

if.end22:                                         ; preds = %if.end15
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call.i, align 4
  %mul25 = shl i32 %12, 2
  %call.i320 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %mul25, i32 noundef 3520) #7
  %mtds = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %mtds to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i320, ptr %mtds, align 4
  %tobool28.not = icmp eq ptr %call.i320, null
  br i1 %tobool28.not, label %if.end22.cleanup201_crit_edge, label %if.end30

if.end22.cleanup201_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

if.end30:                                         ; preds = %if.end22
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call32 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 3) #7
  %gpios = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %gpios, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call32 to i32
  br label %cleanup201

if.end38:                                         ; preds = %if.end30
  %tobool40.not = icmp eq ptr %call32, null
  br i1 %tobool40.not, label %if.end38.if.end45_crit_edge, label %land.lhs.true41

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true41:                                  ; preds = %if.end38
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp ugt i32 %18, 1
  br i1 %cmp, label %do.end, label %land.lhs.true41.if.end45_crit_edge

land.lhs.true41.if.end45_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

do.end:                                           ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  br label %cleanup201

if.end45:                                         ; preds = %land.lhs.true41.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call.i321 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %tobool51.not = icmp eq ptr %20, null
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i, align 4
  br i1 %tobool51.not, label %if.else, label %if.end.i

if.end.i:                                         ; preds = %if.end45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtd_name.i) #7
  %23 = ptrtoint ptr %mtd_name.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %mtd_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bankwidth.i) #7
  %24 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %bankwidth.i, align 4, !annotation !121
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %probe_type.i.i) #7
  %call.i.i = tail call ptr @of_match_device(ptr noundef nonnull @of_flash_match, ptr noundef %dev1) #7
  %data.i.i = getelementptr inbounds %struct.of_device_id, ptr %call.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i, align 4
  %27 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %probe_type.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %if.end.i.of_select_probe_type.exit.i_crit_edge

if.end.i.of_select_probe_type.exit.i_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_select_probe_type.exit.i

do.end.i.i:                                       ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  %call4.i.i = call i32 @of_property_read_string(ptr noundef nonnull %20, ptr noundef nonnull @.str.25, ptr noundef nonnull %probe_type.i.i) #7
  %28 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %probe_type.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i.i, label %do.end.i.i.of_select_probe_type.exit.i_crit_edge, label %if.end7.i.i

do.end.i.i.of_select_probe_type.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_select_probe_type.exit.i

if.end7.i.i:                                      ; preds = %do.end.i.i
  %call8.i.i = call i32 @strcmp(ptr noundef nonnull %29, ptr noundef nonnull dereferenceable(4) @.str.26) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.else.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @.str.27, ptr %probe_type.i.i, align 4
  br label %if.end25.i.i

if.else.i.i:                                      ; preds = %if.end7.i.i
  %call11.i.i = call i32 @strcmp(ptr noundef nonnull %29, ptr noundef nonnull dereferenceable(6) @.str.28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.else14.i.i

if.then13.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.29, ptr %probe_type.i.i, align 4
  br label %if.end25.i.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  %call15.i.i = call i32 @strcmp(ptr noundef nonnull %29, ptr noundef nonnull dereferenceable(4) @.str.30) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.then17.i.i, label %do.end21.i.i

if.then17.i.i:                                    ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @.str.31, ptr %probe_type.i.i, align 4
  br label %if.end25.i.i

do.end21.i.i:                                     ; preds = %if.else14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.33, ptr noundef nonnull %29) #10
  %33 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.31, ptr %probe_type.i.i, align 4
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %do.end21.i.i, %if.then17.i.i, %if.then13.i.i, %if.then10.i.i
  %34 = ptrtoint ptr %probe_type.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %probe_type.i.i, align 4
  br label %of_select_probe_type.exit.i

of_select_probe_type.exit.i:                      ; preds = %if.end25.i.i, %do.end.i.i.of_select_probe_type.exit.i_crit_edge, %if.end.i.of_select_probe_type.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end25.i.i ], [ %26, %if.end.i.of_select_probe_type.exit.i_crit_edge ], [ null, %do.end.i.i.of_select_probe_type.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %probe_type.i.i) #7
  %probe_type.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 6
  %36 = ptrtoint ptr %probe_type.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %retval.0.i.i, ptr %probe_type.i, align 4
  %37 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_string_helper(ptr noundef %38, ptr noundef nonnull @.str.35, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %of_select_probe_type.exit.i.if.end7.i_crit_edge, label %if.end.i.i

of_select_probe_type.exit.i.if.end7.i_crit_edge:  ; preds = %of_select_probe_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end.i.i:                                       ; preds = %of_select_probe_type.exit.i
  %add.i.i = add nuw i32 %call.i.i.i, 1
  %39 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 4) #7
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %if.end.i.i.of_get_part_probes.exit.thread.i_crit_edge, label %devm_kcalloc.exit.i.i, !prof !122

if.end.i.i.of_get_part_probes.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_part_probes.exit.thread.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i.i
  %41 = extractvalue { i32, i1 } %39, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %41, i32 noundef 3520) #7
  %tobool.not.i116.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i116.i, label %devm_kcalloc.exit.i.i.of_get_part_probes.exit.thread.i_crit_edge, label %if.end5.i.i

devm_kcalloc.exit.i.i.of_get_part_probes.exit.thread.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_part_probes.exit.thread.i

if.end5.i.i:                                      ; preds = %devm_kcalloc.exit.i.i
  %call.i19.i.i = call i32 @of_property_read_string_helper(ptr noundef %38, ptr noundef nonnull @.str.35, ptr noundef nonnull %call5.i.i.i.i, i32 noundef %call.i.i.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %cmp7.i.i = icmp slt i32 %call.i19.i.i, 0
  br i1 %cmp7.i.i, label %if.end5.i.i.of_get_part_probes.exit.thread.i_crit_edge, label %if.end5.i.i.if.end7.i_crit_edge

if.end5.i.i.if.end7.i_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i

if.end5.i.i.of_get_part_probes.exit.thread.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_get_part_probes.exit.thread.i

of_get_part_probes.exit.thread.i:                 ; preds = %if.end5.i.i.of_get_part_probes.exit.thread.i_crit_edge, %devm_kcalloc.exit.i.i.of_get_part_probes.exit.thread.i_crit_edge, %if.end.i.i.of_get_part_probes.exit.thread.i_crit_edge
  %part_types125.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 7
  %42 = ptrtoint ptr %part_types125.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %part_types125.i, align 4
  br label %if.end55.thread375

if.end7.i:                                        ; preds = %if.end5.i.i.if.end7.i_crit_edge, %of_select_probe_type.exit.i.if.end7.i_crit_edge
  %retval.0.i117.i = phi ptr [ @of_default_part_probes, %of_select_probe_type.exit.i.if.end7.i_crit_edge ], [ %call5.i.i.i.i, %if.end5.i.i.if.end7.i_crit_edge ]
  %part_types.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 7
  %43 = ptrtoint ptr %part_types.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i117.i, ptr %part_types.i, align 4
  %call8.i = call i32 @of_property_read_string(ptr noundef nonnull %20, ptr noundef nonnull @.str.15, ptr noundef nonnull %mtd_name.i) #7
  %call.i118.i = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i118.i, null
  %call.i.i119.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %20, ptr noundef nonnull @.str.17, ptr noundef nonnull %bankwidth.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i119.i)
  %tobool11.not.i = icmp sgt i32 %call.i.i119.i, -1
  br i1 %tobool11.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %if.end55.thread375

if.end14.i:                                       ; preds = %if.end7.i
  %call.i120.i = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.20, ptr noundef null) #7
  %tobool.i121.not.i = icmp eq ptr %call.i120.i, null
  br i1 %tobool.i121.not.i, label %if.else.i, label %if.end14.i.if.end20.i_crit_edge

if.end14.i.if.end20.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122.i = call ptr @of_find_property(ptr noundef nonnull %20, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool.i123.not.i = icmp eq ptr %call.i122.i, null
  %spec.select.i = select i1 %tobool.i123.not.i, i32 0, i32 2
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.end14.i.if.end20.i_crit_edge
  %swap.0.i = phi i32 [ 3, %if.end14.i.if.end20.i_crit_edge ], [ %spec.select.i, %if.else.i ]
  %44 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp127.not.i = icmp eq i32 %45, 0
  br i1 %cmp127.not.i, label %if.end20.i.if.end55_crit_edge, label %for.body.lr.ph.i

if.end20.i.if.end55_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.body.lr.ph.i:                                 ; preds = %if.end20.i
  %maps.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0128.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %mtd_name.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mtd_name.i, align 4
  %48 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %maps.i, align 4
  %arrayidx.i = getelementptr %struct.map_info, ptr %49, i32 %i.0128.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %arrayidx.i, align 4
  %51 = load ptr, ptr %maps.i, align 4
  %swap23.i = getelementptr %struct.map_info, ptr %51, i32 %i.0128.i, i32 5
  %52 = ptrtoint ptr %swap23.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %swap.0.i, ptr %swap23.i, align 4
  %53 = ptrtoint ptr %bankwidth.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bankwidth.i, align 4
  %55 = load ptr, ptr %maps.i, align 4
  %bankwidth26.i = getelementptr %struct.map_info, ptr %55, i32 %i.0128.i, i32 6
  %56 = ptrtoint ptr %bankwidth26.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %54, ptr %bankwidth26.i, align 4
  %57 = load ptr, ptr %maps.i, align 4
  %device_node.i = getelementptr %struct.map_info, ptr %57, i32 %i.0128.i, i32 16
  %58 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %20, ptr %device_node.i, align 4
  %59 = load ptr, ptr %maps.i, align 4
  %arrayidx30.i = getelementptr %struct.map_info, ptr %59, i32 %i.0128.i
  %call31.i = call i32 @of_flash_probe_bt1_rom(ptr noundef %dev, ptr noundef nonnull %20, ptr noundef %arrayidx30.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %for.body.i.if.end55.thread375_crit_edge

for.body.i.if.end55.thread375_crit_edge:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread375

if.end34.i:                                       ; preds = %for.body.i
  %60 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %maps.i, align 4
  %arrayidx36.i = getelementptr %struct.map_info, ptr %61, i32 %i.0128.i
  %call37.i = call i32 @of_flash_probe_gemini(ptr noundef %dev, ptr noundef nonnull %20, ptr noundef %arrayidx36.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %tobool38.not.i = icmp eq i32 %call37.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end34.i.if.end55.thread375_crit_edge

if.end34.i.if.end55.thread375_crit_edge:          ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread375

if.end40.i:                                       ; preds = %if.end34.i
  %62 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %maps.i, align 4
  %arrayidx42.i = getelementptr %struct.map_info, ptr %63, i32 %i.0128.i
  %call43.i = call i32 @of_flash_probe_ixp4xx(ptr noundef %dev, ptr noundef nonnull %20, ptr noundef %arrayidx42.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end40.i.if.end55.thread375_crit_edge

if.end40.i.if.end55.thread375_crit_edge:          ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread375

if.end46.i:                                       ; preds = %if.end40.i
  %64 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %maps.i, align 4
  %arrayidx48.i = getelementptr %struct.map_info, ptr %65, i32 %i.0128.i
  %call49.i = call i32 @of_flash_probe_versatile(ptr noundef %dev, ptr noundef nonnull %20, ptr noundef %arrayidx48.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end46.i.if.end55.thread375_crit_edge

if.end46.i.if.end55.thread375_crit_edge:          ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55.thread375

if.end52.i:                                       ; preds = %if.end46.i
  br i1 %tobool.i.not.i, label %if.end52.i.for.inc.i_crit_edge, label %if.then54.i

if.end52.i.for.inc.i_crit_edge:                   ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %maps.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %maps.i, align 4
  %phys.i = getelementptr %struct.map_info, ptr %67, i32 %i.0128.i, i32 2
  %68 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %phys.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then54.i, %if.end52.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0128.i, 1
  %69 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %22, align 4
  %cmp.i322 = icmp ult i32 %inc.i, %70
  br i1 %cmp.i322, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end55_crit_edge

for.inc.i.if.end55_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.else:                                          ; preds = %if.end45
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %71 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i324 = icmp eq ptr %72, null
  br i1 %tobool.not.i324, label %if.else.if.then57_crit_edge, label %if.end.i327

if.else.if.then57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.end.i327:                                      ; preds = %if.else
  %probe_type.i325 = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 6
  %73 = ptrtoint ptr %probe_type.i325 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %probe_type.i325, align 4
  %probe_type3.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 6
  %75 = ptrtoint ptr %probe_type3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %probe_type3.i, align 4
  %part_probe_types.i = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 8
  %76 = ptrtoint ptr %part_probe_types.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %part_probe_types.i, align 4
  %tobool4.not.i = icmp eq ptr %77, null
  %.part_probe_types.i = select i1 %tobool4.not.i, ptr @part_probe_types, ptr %77
  %part_types.i326 = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 7
  %78 = ptrtoint ptr %part_types.i326 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %.part_probe_types.i, ptr %part_types.i326, align 4
  %parts.i = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 7
  %79 = ptrtoint ptr %parts.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %parts.i, align 4
  %parts5.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 9
  %81 = ptrtoint ptr %parts5.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %parts5.i, align 4
  %nr_parts.i = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 4
  %82 = ptrtoint ptr %nr_parts.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_parts.i, align 4
  %nparts.i = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 8
  %84 = ptrtoint ptr %nparts.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %nparts.i, align 4
  %init.i = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 1
  %85 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init.i, align 4
  %tobool6.not.i = icmp eq ptr %86, null
  br i1 %tobool6.not.i, label %if.end.i327.if.end13.i_crit_edge, label %if.then7.i

if.end.i327.if.end13.i_crit_edge:                 ; preds = %if.end.i327
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.then7.i:                                       ; preds = %if.end.i327
  %call9.i = tail call i32 %86(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then7.i.if.end13.i_crit_edge, label %if.then7.i.if.then57_crit_edge

if.then7.i.if.then57_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

if.then7.i.if.end13.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then7.i.if.end13.i_crit_edge, %if.end.i327.if.end13.i_crit_edge
  %87 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp44.not.i = icmp eq i32 %88, 0
  br i1 %cmp44.not.i, label %if.end13.i.for.cond.preheader_crit_edge, label %for.body.lr.ph.i329

if.end13.i.for.cond.preheader_crit_edge:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.body.lr.ph.i329:                              ; preds = %if.end13.i
  %maps.i328 = getelementptr inbounds %struct.physmap_flash_info, ptr %22, i32 0, i32 3
  %pfow_base.i = getelementptr inbounds %struct.physmap_flash_data, ptr %72, i32 0, i32 5
  br label %for.body.i333

for.body.i333:                                    ; preds = %for.body.i333.for.body.i333_crit_edge, %for.body.lr.ph.i329
  %i.045.i = phi i32 [ 0, %for.body.lr.ph.i329 ], [ %inc.i331, %for.body.i333.for.body.i333_crit_edge ]
  %89 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %72, align 4
  %91 = ptrtoint ptr %maps.i328 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %maps.i328, align 4
  %bankwidth.i330 = getelementptr %struct.map_info, ptr %92, i32 %i.045.i, i32 6
  %93 = ptrtoint ptr %bankwidth.i330 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %bankwidth.i330, align 4
  %94 = ptrtoint ptr %pfow_base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %pfow_base.i, align 4
  %96 = load ptr, ptr %maps.i328, align 4
  %pfow_base16.i = getelementptr %struct.map_info, ptr %96, i32 %i.045.i, i32 13
  %97 = ptrtoint ptr %pfow_base16.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %95, ptr %pfow_base16.i, align 4
  %98 = load ptr, ptr %maps.i328, align 4
  %set_vpp.i = getelementptr %struct.map_info, ptr %98, i32 %i.045.i, i32 12
  %99 = ptrtoint ptr %set_vpp.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @physmap_set_vpp, ptr %set_vpp.i, align 4
  %inc.i331 = add nuw i32 %i.045.i, 1
  %100 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %22, align 4
  %cmp.i332 = icmp ult i32 %inc.i331, %101
  br i1 %cmp.i332, label %for.body.i333.for.body.i333_crit_edge, label %for.body.i333.for.cond.preheader_crit_edge

for.body.i333.for.cond.preheader_crit_edge:       ; preds = %for.body.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.body.i333.for.body.i333_crit_edge:            ; preds = %for.body.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i333

if.end55.thread375:                               ; preds = %if.end46.i.if.end55.thread375_crit_edge, %if.end40.i.if.end55.thread375_crit_edge, %if.end34.i.if.end55.thread375_crit_edge, %for.body.i.if.end55.thread375_crit_edge, %do.end.i, %of_get_part_probes.exit.thread.i
  %retval.0.i.ph = phi i32 [ -12, %of_get_part_probes.exit.thread.i ], [ %call.i.i119.i, %do.end.i ], [ %call31.i, %for.body.i.if.end55.thread375_crit_edge ], [ %call37.i, %if.end34.i.if.end55.thread375_crit_edge ], [ %call43.i, %if.end40.i.if.end55.thread375_crit_edge ], [ %call49.i, %if.end46.i.if.end55.thread375_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankwidth.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtd_name.i) #7
  br label %if.then57

if.end55:                                         ; preds = %for.inc.i.if.end55_crit_edge, %if.end20.i.if.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bankwidth.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtd_name.i) #7
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end55, %for.body.i333.for.cond.preheader_crit_edge, %if.end13.i.for.cond.preheader_crit_edge
  %102 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp63365.not = icmp eq i32 %103, 0
  br i1 %cmp63365.not, label %for.cond.preheader.if.else173_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.else173_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else173

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %win_order = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 12
  %104 = ptrtoint ptr %dev to i32
  %probe_type = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 6
  br label %for.body

if.then57:                                        ; preds = %if.end55.thread375, %if.then7.i.if.then57_crit_edge, %if.else.if.then57_crit_edge
  %err.0353 = phi i32 [ %call9.i, %if.then7.i.if.then57_crit_edge ], [ -22, %if.else.if.then57_crit_edge ], [ %retval.0.i.ph, %if.end55.thread375 ]
  %call.i335 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup201

for.body:                                         ; preds = %for.inc165.for.body_crit_edge, %for.body.lr.ph
  %i.0366 = phi i32 [ 0, %for.body.lr.ph ], [ %inc166, %for.inc165.for.body_crit_edge ]
  %call64 = call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef %i.0366) #7
  %call66 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call64) #7
  %105 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %maps, align 4
  %virt = getelementptr %struct.map_info, ptr %106, i32 %i.0366, i32 3
  %107 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call66, ptr %virt, align 4
  %108 = load ptr, ptr %maps, align 4
  %virt70 = getelementptr %struct.map_info, ptr %108, i32 %i.0366, i32 3
  %109 = ptrtoint ptr %virt70 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %virt70, align 4
  %cmp.i336 = icmp ugt ptr %110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i336, label %if.then72, label %do.end80

if.then72:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %110 to i32
  br label %err_out

do.end80:                                         ; preds = %for.body
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %call64) #10
  %112 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %maps, align 4
  %arrayidx83 = getelementptr %struct.map_info, ptr %113, i32 %i.0366
  %114 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %115, null
  br i1 %tobool84.not, label %if.then85, label %do.end80.if.end91_crit_edge

do.end80.if.end91_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then85:                                        ; preds = %do.end80
  %116 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i337 = icmp eq ptr %117, null
  br i1 %tobool.not.i337, label %if.end.i338, label %if.then85.dev_name.exit_crit_edge

if.then85.dev_name.exit_crit_edge:                ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i338:                                      ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i338, %if.then85.dev_name.exit_crit_edge
  %retval.0.i339 = phi ptr [ %119, %if.end.i338 ], [ %117, %if.then85.dev_name.exit_crit_edge ]
  %120 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %retval.0.i339, ptr %arrayidx83, align 4
  br label %if.end91

if.end91:                                         ; preds = %dev_name.exit, %do.end80.if.end91_crit_edge
  %121 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %maps, align 4
  %phys = getelementptr %struct.map_info, ptr %122, i32 %i.0366, i32 2
  %123 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool94.not = icmp eq i32 %124, 0
  br i1 %tobool94.not, label %if.then95, label %if.end91.if.end99_crit_edge

if.end91.if.end99_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then95:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %call64 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %call64, align 4
  %127 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %phys, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then95, %if.end91.if.end99_crit_edge
  %end.i = getelementptr inbounds %struct.resource, ptr %call64, i32 0, i32 1
  %128 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %end.i, align 4
  %130 = ptrtoint ptr %call64 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %call64, align 4
  %sub.i = add i32 %129, 1
  %add.i = sub i32 %sub.i, %131
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %131)
  %tobool.not.i.i340 = icmp eq i32 %sub.i, %131
  %132 = call i32 @llvm.ctlz.i32(i32 %add.i, i1 true) #7, !range !123
  %sub.i.i.op = xor i32 %132, 31
  %sub = select i1 %tobool.not.i.i340, i32 -1, i32 %sub.i.i.op
  %133 = ptrtoint ptr %win_order to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub, ptr %win_order, align 4
  %134 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %gpios, align 4
  %tobool104.not = icmp eq ptr %135, null
  br i1 %tobool104.not, label %if.end99.cond.end_crit_edge, label %cond.true

if.end99.cond.end_crit_edge:                      ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %ndescs = getelementptr inbounds %struct.gpio_descs, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %ndescs to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %ndescs, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end99.cond.end_crit_edge
  %cond = phi i32 [ %137, %cond.true ], [ 0, %if.end99.cond.end_crit_edge ]
  %add = add i32 %cond, %sub
  %shl = shl nuw i32 1, %add
  %138 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %maps, align 4
  %size = getelementptr %struct.map_info, ptr %139, i32 %i.0366, i32 1
  %140 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %shl, ptr %size, align 4
  %141 = load ptr, ptr %maps, align 4
  %map_priv_1 = getelementptr %struct.map_info, ptr %141, i32 %i.0366, i32 14
  %142 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %104, ptr %map_priv_1, align 4
  %143 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %gpios, align 4
  %tobool111.not = icmp eq ptr %144, null
  br i1 %tobool111.not, label %cond.end.if.end119_crit_edge, label %if.then112

cond.end.if.end119_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then112:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %maps, align 4
  %phys.i341 = getelementptr %struct.map_info, ptr %146, i32 %i.0366, i32 2
  %147 = ptrtoint ptr %phys.i341 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %phys.i341, align 4
  %read.i = getelementptr %struct.map_info, ptr %146, i32 %i.0366, i32 7
  %148 = ptrtoint ptr %read.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr @physmap_addr_gpios_read, ptr %read.i, align 4
  %copy_from.i = getelementptr %struct.map_info, ptr %146, i32 %i.0366, i32 8
  %149 = ptrtoint ptr %copy_from.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @physmap_addr_gpios_copy_from, ptr %copy_from.i, align 4
  %write.i = getelementptr %struct.map_info, ptr %146, i32 %i.0366, i32 9
  %150 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @physmap_addr_gpios_write, ptr %write.i, align 4
  %copy_to.i = getelementptr %struct.map_info, ptr %146, i32 %i.0366, i32 10
  %151 = ptrtoint ptr %copy_to.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr @physmap_addr_gpios_copy_to, ptr %copy_to.i, align 4
  br label %if.end119

if.end119:                                        ; preds = %if.then112, %cond.end.if.end119_crit_edge
  %152 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %maps, align 4
  %read = getelementptr %struct.map_info, ptr %153, i32 %i.0366, i32 7
  %154 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %read, align 4
  %tobool122.not = icmp eq ptr %155, null
  br i1 %tobool122.not, label %if.then123, label %if.end119.if.end126_crit_edge

if.end119.if.end126_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then123:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx121 = getelementptr %struct.map_info, ptr %153, i32 %i.0366
  call void @simple_map_init(ptr noundef %arrayidx121) #7
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end119.if.end126_crit_edge
  %156 = ptrtoint ptr %probe_type to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %probe_type, align 4
  %tobool127.not = icmp eq ptr %157, null
  br i1 %tobool127.not, label %for.body138, label %if.then128

if.then128:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %158 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %maps, align 4
  %arrayidx131 = getelementptr %struct.map_info, ptr %159, i32 %i.0366
  %call132 = call ptr @do_map_probe(ptr noundef nonnull %157, ptr noundef %arrayidx131) #7
  %160 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %mtds, align 4
  %arrayidx134 = getelementptr ptr, ptr %161, i32 %i.0366
  %162 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call132, ptr %arrayidx134, align 4
  br label %if.end151

for.body138:                                      ; preds = %if.end126
  %163 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %maps, align 4
  %arrayidx141 = getelementptr %struct.map_info, ptr %164, i32 %i.0366
  %call142 = call ptr @do_map_probe(ptr noundef nonnull @.str.27, ptr noundef %arrayidx141) #7
  %165 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mtds, align 4
  %arrayidx144 = getelementptr ptr, ptr %166, i32 %i.0366
  %167 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %call142, ptr %arrayidx144, align 4
  %168 = load ptr, ptr %mtds, align 4
  %arrayidx146 = getelementptr ptr, ptr %168, i32 %i.0366
  %169 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx146, align 4
  %tobool147.not = icmp eq ptr %170, null
  br i1 %tobool147.not, label %for.body138.1, label %for.body138.if.end151_crit_edge

for.body138.if.end151_crit_edge:                  ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

for.body138.1:                                    ; preds = %for.body138
  %171 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %maps, align 4
  %arrayidx141.1 = getelementptr %struct.map_info, ptr %172, i32 %i.0366
  %call142.1 = call ptr @do_map_probe(ptr noundef nonnull @.str.29, ptr noundef %arrayidx141.1) #7
  %173 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %mtds, align 4
  %arrayidx144.1 = getelementptr ptr, ptr %174, i32 %i.0366
  %175 = ptrtoint ptr %arrayidx144.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call142.1, ptr %arrayidx144.1, align 4
  %176 = load ptr, ptr %mtds, align 4
  %arrayidx146.1 = getelementptr ptr, ptr %176, i32 %i.0366
  %177 = ptrtoint ptr %arrayidx146.1 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx146.1, align 4
  %tobool147.not.1 = icmp eq ptr %178, null
  br i1 %tobool147.not.1, label %for.body138.2, label %for.body138.1.if.end151_crit_edge

for.body138.1.if.end151_crit_edge:                ; preds = %for.body138.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

for.body138.2:                                    ; preds = %for.body138.1
  %179 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %maps, align 4
  %arrayidx141.2 = getelementptr %struct.map_info, ptr %180, i32 %i.0366
  %call142.2 = call ptr @do_map_probe(ptr noundef nonnull @.str.41, ptr noundef %arrayidx141.2) #7
  %181 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %mtds, align 4
  %arrayidx144.2 = getelementptr ptr, ptr %182, i32 %i.0366
  %183 = ptrtoint ptr %arrayidx144.2 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %call142.2, ptr %arrayidx144.2, align 4
  %184 = load ptr, ptr %mtds, align 4
  %arrayidx146.2 = getelementptr ptr, ptr %184, i32 %i.0366
  %185 = ptrtoint ptr %arrayidx146.2 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx146.2, align 4
  %tobool147.not.2 = icmp eq ptr %186, null
  br i1 %tobool147.not.2, label %for.body138.3, label %for.body138.2.if.end151_crit_edge

for.body138.2.if.end151_crit_edge:                ; preds = %for.body138.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end151

for.body138.3:                                    ; preds = %for.body138.2
  call void @__sanitizer_cov_trace_pc() #9
  %187 = ptrtoint ptr %maps to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %maps, align 4
  %arrayidx141.3 = getelementptr %struct.map_info, ptr %188, i32 %i.0366
  %call142.3 = call ptr @do_map_probe(ptr noundef nonnull @.str.31, ptr noundef %arrayidx141.3) #7
  %189 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mtds, align 4
  %arrayidx144.3 = getelementptr ptr, ptr %190, i32 %i.0366
  %191 = ptrtoint ptr %arrayidx144.3 to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call142.3, ptr %arrayidx144.3, align 4
  br label %if.end151

if.end151:                                        ; preds = %for.body138.3, %for.body138.2.if.end151_crit_edge, %for.body138.1.if.end151_crit_edge, %for.body138.if.end151_crit_edge, %if.then128
  %192 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %mtds, align 4
  %arrayidx153 = getelementptr ptr, ptr %193, i32 %i.0366
  %194 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx153, align 4
  %tobool154.not = icmp eq ptr %195, null
  br i1 %tobool154.not, label %do.end158, label %for.inc165

do.end158:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %err_out

for.inc165:                                       ; preds = %if.end151
  %parent = getelementptr inbounds %struct.mtd_info, ptr %195, i32 0, i32 56, i32 1
  %196 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %dev1, ptr %parent, align 8
  %inc166 = add nuw i32 %i.0366, 1
  %197 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %call.i, align 4
  %cmp63 = icmp ult i32 %inc166, %198
  br i1 %cmp63, label %for.inc165.for.body_crit_edge, label %for.end167

for.inc165.for.body_crit_edge:                    ; preds = %for.inc165
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end167:                                       ; preds = %for.inc165
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp169 = icmp eq i32 %198, 1
  br i1 %cmp169, label %if.then170, label %for.end167.if.else173_crit_edge

for.end167.if.else173_crit_edge:                  ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else173

if.then170:                                       ; preds = %for.end167
  call void @__sanitizer_cov_trace_pc() #9
  %199 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mtds, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %cmtd = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 2
  %203 = ptrtoint ptr %cmtd to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %202, ptr %cmtd, align 4
  br label %do.body188

if.else173:                                       ; preds = %for.end167.if.else173_crit_edge, %for.cond.preheader.if.else173_crit_edge
  %.lcssa380 = phi i32 [ %198, %for.end167.if.else173_crit_edge ], [ 0, %for.cond.preheader.if.else173_crit_edge ]
  %204 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %mtds, align 4
  %init_name.i342 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 3
  %206 = ptrtoint ptr %init_name.i342 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %init_name.i342, align 8
  %tobool.not.i343 = icmp eq ptr %207, null
  br i1 %tobool.not.i343, label %if.end.i344, label %if.else173.dev_name.exit346_crit_edge

if.else173.dev_name.exit346_crit_edge:            ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit346

if.end.i344:                                      ; preds = %if.else173
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit346

dev_name.exit346:                                 ; preds = %if.end.i344, %if.else173.dev_name.exit346_crit_edge
  %retval.0.i345 = phi ptr [ %209, %if.end.i344 ], [ %207, %if.else173.dev_name.exit346_crit_edge ]
  %call178 = call ptr @mtd_concat_create(ptr noundef %205, i32 noundef %.lcssa380, ptr noundef %retval.0.i345) #7
  %cmtd179 = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 2
  %210 = ptrtoint ptr %cmtd179 to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %call178, ptr %cmtd179, align 4
  %tobool181.not = icmp eq ptr %call178, null
  br i1 %tobool181.not, label %dev_name.exit346.err_out_crit_edge, label %dev_name.exit346.do.body188_crit_edge

dev_name.exit346.do.body188_crit_edge:            ; preds = %dev_name.exit346
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body188

dev_name.exit346.err_out_crit_edge:               ; preds = %dev_name.exit346
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

do.body188:                                       ; preds = %dev_name.exit346.do.body188_crit_edge, %if.then170
  %vpp_lock = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %vpp_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @physmap_flash_probe.__key, i16 noundef signext 3) #7
  %cmtd192 = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 2
  %211 = ptrtoint ptr %cmtd192 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cmtd192, align 4
  %213 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %of_node, align 8
  %of_node.i347 = getelementptr inbounds %struct.mtd_info, ptr %212, i32 0, i32 56, i32 27
  %215 = ptrtoint ptr %of_node.i347 to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %214, ptr %of_node.i347, align 8
  %name.i = getelementptr inbounds %struct.mtd_info, ptr %212, i32 0, i32 13
  %216 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %name.i, align 8
  %tobool.not.i348 = icmp eq ptr %217, null
  br i1 %tobool.not.i348, label %if.then.i, label %do.body188.mtd_set_of_node.exit_crit_edge

do.body188.mtd_set_of_node.exit_crit_edge:        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtd_set_of_node.exit

if.then.i:                                        ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  %call.i349 = call i32 @of_property_read_string(ptr noundef %214, ptr noundef nonnull @.str.42, ptr noundef %name.i) #7
  br label %mtd_set_of_node.exit

mtd_set_of_node.exit:                             ; preds = %if.then.i, %do.body188.mtd_set_of_node.exit_crit_edge
  %218 = ptrtoint ptr %cmtd192 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %cmtd192, align 4
  %part_types = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 7
  %220 = ptrtoint ptr %part_types to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %part_types, align 4
  %parts = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 9
  %222 = ptrtoint ptr %parts to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %parts, align 4
  %nparts = getelementptr inbounds %struct.physmap_flash_info, ptr %call.i, i32 0, i32 8
  %224 = ptrtoint ptr %nparts to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %nparts, align 4
  %call196 = call i32 @mtd_device_parse_register(ptr noundef %219, ptr noundef %221, ptr noundef null, ptr noundef %223, i32 noundef %225) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %mtd_set_of_node.exit.cleanup201_crit_edge, label %mtd_set_of_node.exit.err_out_crit_edge

mtd_set_of_node.exit.err_out_crit_edge:           ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out

mtd_set_of_node.exit.cleanup201_crit_edge:        ; preds = %mtd_set_of_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup201

err_out:                                          ; preds = %mtd_set_of_node.exit.err_out_crit_edge, %dev_name.exit346.err_out_crit_edge, %do.end158, %if.then72
  %err.5 = phi i32 [ %call196, %mtd_set_of_node.exit.err_out_crit_edge ], [ -6, %do.end158 ], [ %111, %if.then72 ], [ -6, %dev_name.exit346.err_out_crit_edge ]
  %call200 = call i32 @physmap_flash_remove(ptr noundef %dev)
  br label %cleanup201

cleanup201:                                       ; preds = %err_out, %mtd_set_of_node.exit.cleanup201_crit_edge, %if.then57, %do.end, %if.then35, %if.end22.cleanup201_crit_edge, %if.end15.cleanup201_crit_edge, %while.end.cleanup201_crit_edge, %if.end.cleanup201_crit_edge, %land.lhs.true.cleanup201_crit_edge
  %retval.0 = phi i32 [ %16, %if.then35 ], [ -22, %do.end ], [ %err.0353, %if.then57 ], [ %err.5, %err_out ], [ -22, %land.lhs.true.cleanup201_crit_edge ], [ -12, %if.end.cleanup201_crit_edge ], [ -19, %while.end.cleanup201_crit_edge ], [ -12, %if.end15.cleanup201_crit_edge ], [ -12, %if.end22.cleanup201_crit_edge ], [ 0, %mtd_set_of_node.exit.cleanup201_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @physmap_flash_remove(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %entry
  %cmtd = getelementptr inbounds %struct.physmap_flash_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cmtd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmtd, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end12_crit_edge, label %if.then2

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then2:                                         ; preds = %if.end
  %call4 = tail call i32 @mtd_device_unregister(ptr noundef nonnull %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then2.out_crit_edge

if.then2.out_crit_edge:                           ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end7:                                          ; preds = %if.then2
  %4 = ptrtoint ptr %cmtd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmtd, align 4
  %mtds = getelementptr inbounds %struct.physmap_flash_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mtds, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %cmp.not = icmp eq ptr %5, %9
  br i1 %cmp.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mtd_concat_destroy(ptr noundef %5) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1352.not = icmp eq i32 %11, 0
  br i1 %cmp1352.not, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %mtds14 = getelementptr inbounds %struct.physmap_flash_info, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %mtds14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mtds14, align 4
  %arrayidx15 = getelementptr ptr, ptr %13, i32 %i.053
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx15, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %for.body.for.inc_crit_edge, label %if.then17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @map_destroy(ptr noundef nonnull %15) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.053, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %cmp13 = icmp ult i32 %inc, %17
  br i1 %cmp13, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %platform_data.i, align 8
  %tobool23.not = icmp eq ptr %19, null
  br i1 %tobool23.not, label %for.end.out_crit_edge, label %land.lhs.true

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true:                                    ; preds = %for.end
  %exit = getelementptr inbounds %struct.physmap_flash_data, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %exit, align 4
  %tobool24.not = icmp eq ptr %21, null
  br i1 %tobool24.not, label %land.lhs.true.out_crit_edge, label %if.then25

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %dev) #7
  br label %out

out:                                              ; preds = %if.then25, %land.lhs.true.out_crit_edge, %for.end.out_crit_edge, %if.then2.out_crit_edge, %entry.out_crit_edge
  %err.1 = phi i32 [ %call4, %if.then2.out_crit_edge ], [ 0, %if.then25 ], [ 0, %land.lhs.true.out_crit_edge ], [ 0, %for.end.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev28, i32 noundef 5) #7
  tail call void @__pm_runtime_disable(ptr noundef %dev28, i1 noundef zeroext true) #7
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_flash_shutdown(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mtds = getelementptr inbounds %struct.physmap_flash_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %i.027 = phi i32 [ %inc, %for.inc.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  %4 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mtds, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.027
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %land.rhs.while.cond.i.i_crit_edge

land.rhs.while.cond.i.i_crit_edge:                ; preds = %land.rhs
  br label %while.cond.i.i

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %land.rhs.while.cond.i.i_crit_edge
  %mtd.addr.0.i.i = phi ptr [ %9, %while.cond.i.i.while.cond.i.i_crit_edge ], [ %7, %land.rhs.while.cond.i.i_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 62
  %8 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %mtd_get_master.exit.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i

mtd_get_master.exit.i:                            ; preds = %while.cond.i.i
  %suspended.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 64, i32 1, i32 152
  %10 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %suspended.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %mtd_get_master.exit.i.if.then_crit_edge

mtd_get_master.exit.i.if.then_crit_edge:          ; preds = %mtd_get_master.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end.i:                                         ; preds = %mtd_get_master.exit.i
  %_suspend.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i, i32 0, i32 45
  %11 = ptrtoint ptr %_suspend.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_suspend.i, align 8
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.end.i.if.end6.i_crit_edge, label %cond.end.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

cond.end.i:                                       ; preds = %if.end.i
  %call3.i = tail call i32 %12(ptr noundef nonnull %mtd.addr.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %cond.end.i.if.end6.i_crit_edge, label %cond.end.i.for.inc_crit_edge

cond.end.i.for.inc_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.end.i.if.end6.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %cond.end.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %13 = ptrtoint ptr %suspended.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load8.i = load i8, ptr %suspended.i, align 8
  %bf.set.i = or i8 %bf.load8.i, -128
  store i8 %bf.set.i, ptr %suspended.i, align 8
  br label %if.then

if.then:                                          ; preds = %if.end6.i, %mtd_get_master.exit.i.if.then_crit_edge
  %14 = ptrtoint ptr %mtds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mtds, align 4
  %arrayidx6 = getelementptr ptr, ptr %15, i32 %i.027
  %16 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx6, align 4
  br label %while.cond.i.i17

while.cond.i.i17:                                 ; preds = %while.cond.i.i17.while.cond.i.i17_crit_edge, %if.then
  %mtd.addr.0.i.i14 = phi ptr [ %17, %if.then ], [ %19, %while.cond.i.i17.while.cond.i.i17_crit_edge ]
  %parent.i.i15 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i14, i32 0, i32 62
  %18 = ptrtoint ptr %parent.i.i15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i.i15, align 4
  %tobool.not.i.i16 = icmp eq ptr %19, null
  br i1 %tobool.not.i.i16, label %mtd_get_master.exit.i21, label %while.cond.i.i17.while.cond.i.i17_crit_edge

while.cond.i.i17.while.cond.i.i17_crit_edge:      ; preds = %while.cond.i.i17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.i.i17

mtd_get_master.exit.i21:                          ; preds = %while.cond.i.i17
  %suspended.i18 = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i14, i32 0, i32 64, i32 1, i32 152
  %20 = ptrtoint ptr %suspended.i18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i19 = load i8, ptr %suspended.i18, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i19)
  %tobool.not.i20 = icmp sgt i8 %bf.load.i19, -1
  br i1 %tobool.not.i20, label %mtd_get_master.exit.i21.for.inc_crit_edge, label %if.end.i23

mtd_get_master.exit.i21.for.inc_crit_edge:        ; preds = %mtd_get_master.exit.i21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i23:                                       ; preds = %mtd_get_master.exit.i21
  %_resume.i = getelementptr inbounds %struct.mtd_info, ptr %mtd.addr.0.i.i14, i32 0, i32 46
  %21 = ptrtoint ptr %_resume.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_resume.i, align 4
  %tobool1.not.i22 = icmp eq ptr %22, null
  br i1 %tobool1.not.i22, label %if.end.i23.if.end4.i_crit_edge, label %if.then2.i

if.end.i23.if.end4.i_crit_edge:                   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %22(ptr noundef %mtd.addr.0.i.i14) #7
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i23.if.end4.i_crit_edge
  %23 = ptrtoint ptr %suspended.i18 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load6.i = load i8, ptr %suspended.i18, align 8
  %bf.clear.i = and i8 %bf.load6.i, 127
  store i8 %bf.clear.i, ptr %suspended.i18, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end4.i, %mtd_get_master.exit.i21.for.inc_crit_edge, %cond.end.i.for.inc_crit_edge
  %inc = add nuw i32 %i.027, 1
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %1, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @simple_map_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @do_map_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtd_concat_create(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_parse_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flash_probe_bt1_rom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flash_probe_gemini(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flash_probe_ixp4xx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_flash_probe_versatile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_set_vpp(ptr nocapture noundef readonly %map, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 7
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %set_vpp = getelementptr inbounds %struct.physmap_flash_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %set_vpp, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i, align 4
  %vpp_lock = getelementptr inbounds %struct.physmap_flash_info, ptr %8, i32 0, i32 4
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %vpp_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool7.not = icmp eq i32 %state, 0
  %vpp_refcnt14 = getelementptr inbounds %struct.physmap_flash_info, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %vpp_refcnt14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vpp_refcnt14, align 4
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  %inc = add i32 %10, 1
  %11 = ptrtoint ptr %vpp_refcnt14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %inc, ptr %vpp_refcnt14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp9 = icmp eq i32 %10, 0
  br i1 %cmp9, label %if.then8.if.end20.sink.split_crit_edge, label %if.then8.if.end20_crit_edge

if.then8.if.end20_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then8.if.end20.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.else:                                          ; preds = %if.end
  %dec = add i32 %10, -1
  %12 = ptrtoint ptr %vpp_refcnt14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %vpp_refcnt14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp15 = icmp eq i32 %dec, 0
  br i1 %cmp15, label %if.else.if.end20.sink.split_crit_edge, label %if.else.if.end20_crit_edge

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.else.if.end20.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20.sink.split

if.end20.sink.split:                              ; preds = %if.else.if.end20.sink.split_crit_edge, %if.then8.if.end20.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then8.if.end20.sink.split_crit_edge ], [ 0, %if.else.if.end20.sink.split_crit_edge ]
  %13 = ptrtoint ptr %set_vpp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_vpp, align 4
  tail call void %14(ptr noundef %2, i32 noundef %.sink) #7
  br label %if.end20

if.end20:                                         ; preds = %if.end20.sink.split, %if.else.if.end20_crit_edge, %if.then8.if.end20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %vpp_lock, i32 noundef %call4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_addr_gpios_read(ptr noalias nocapture writeonly sret(%union.map_word) align 4 %agg.result, ptr nocapture noundef readonly %map, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = getelementptr inbounds i8, ptr %agg.result, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 28)
  %2 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_priv_1, align 4
  %4 = inttoptr i32 %3 to ptr
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %win_order.i = getelementptr inbounds %struct.physmap_flash_info, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %win_order.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %win_order.i, align 4
  %shr.i = lshr i32 %ofs, %8
  %gpio_values.i = getelementptr inbounds %struct.physmap_flash_info, ptr %6, i32 0, i32 11
  %9 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_values.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %shr.i)
  %cmp.i = icmp eq i32 %10, %shr.i
  br i1 %cmp.i, label %entry.physmap_set_addr_gpios.exit_crit_edge, label %for.cond.preheader.i

entry.physmap_set_addr_gpios.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %physmap_set_addr_gpios.exit

for.cond.preheader.i:                             ; preds = %entry
  %gpios.i = getelementptr inbounds %struct.physmap_flash_info, ptr %6, i32 0, i32 10
  %11 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpios.i, align 4
  %ndescs27.i = getelementptr inbounds %struct.gpio_descs, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ndescs27.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ndescs27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp128.not.i = icmp eq i32 %14, 0
  br i1 %cmp128.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %15 = phi ptr [ %21, %for.inc.i.for.body.i_crit_edge ], [ %12, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.029.i
  %and.i = and i32 %shl.i, %shr.i
  %16 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_values.i, align 4
  %and4.i = and i32 %17, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and.i, %and4.i
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %15, i32 0, i32 2, i32 %i.029.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef %lnot.ext.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.029.i, 1
  %20 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndescs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %23
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %24 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %gpio_values.i, align 4
  br label %physmap_set_addr_gpios.exit

physmap_set_addr_gpios.exit:                      ; preds = %for.end.i, %entry.physmap_set_addr_gpios.exit_crit_edge
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %25 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt, align 4
  %27 = ptrtoint ptr %win_order.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %win_order.i, align 4
  %notmask = shl nsw i32 -1, %28
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %ofs
  %add.ptr = getelementptr i8, ptr %26, i32 %and
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #7, !srcloc !124
  %30 = tail call i16 @llvm.bswap.i16(i16 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  %conv = zext i16 %30 to i32
  %31 = ptrtoint ptr %agg.result to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %agg.result, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_addr_gpios_copy_from(ptr nocapture noundef readonly %map, ptr noundef %buf, i32 noundef %ofs, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not20 = icmp eq i32 %len, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %win_order = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 12
  %gpio_values.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 11
  %gpios.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 10
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %physmap_set_addr_gpios.exit.while.body_crit_edge, %while.body.lr.ph
  %buf.addr.023 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr5, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %ofs.addr.022 = phi i32 [ %ofs, %while.body.lr.ph ], [ %add, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %len.addr.021 = phi i32 [ %len, %while.body.lr.ph ], [ %sub4, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %win_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %win_order, align 4
  %shl = shl nuw i32 1, %6
  %sub = add i32 %shl, -1
  %and = and i32 %sub, %ofs.addr.022
  %sub3 = sub i32 %shl, %and
  %7 = tail call i32 @llvm.umin.i32(i32 %len.addr.021, i32 %sub3)
  %shr.i = lshr i32 %ofs.addr.022, %6
  %8 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_values.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp.i = icmp eq i32 %9, %shr.i
  br i1 %cmp.i, label %while.body.physmap_set_addr_gpios.exit_crit_edge, label %for.cond.preheader.i

while.body.physmap_set_addr_gpios.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %physmap_set_addr_gpios.exit

for.cond.preheader.i:                             ; preds = %while.body
  %10 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios.i, align 4
  %ndescs27.i = getelementptr inbounds %struct.gpio_descs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ndescs27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndescs27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp128.not.i = icmp eq i32 %13, 0
  br i1 %cmp128.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %14 = phi ptr [ %20, %for.inc.i.for.body.i_crit_edge ], [ %11, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.029.i
  %and.i = and i32 %shl.i, %shr.i
  %15 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_values.i, align 4
  %and4.i = and i32 %16, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and.i, %and4.i
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %14, i32 0, i32 2, i32 %i.029.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef %lnot.ext.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.029.i, 1
  %19 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndescs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %22
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %gpio_values.i, align 4
  br label %physmap_set_addr_gpios.exit

physmap_set_addr_gpios.exit:                      ; preds = %for.end.i, %while.body.physmap_set_addr_gpios.exit_crit_edge
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %and
  tail call void @mmiocpy(ptr noundef %buf.addr.023, ptr noundef %add.ptr, i32 noundef %7) #7
  %sub4 = sub i32 %len.addr.021, %7
  %add.ptr5 = getelementptr i8, ptr %buf.addr.023, i32 %7
  %add = add i32 %7, %ofs.addr.022
  %tobool.not = icmp eq i32 %sub4, 0
  br i1 %tobool.not, label %physmap_set_addr_gpios.exit.while.end_crit_edge, label %physmap_set_addr_gpios.exit.while.body_crit_edge

physmap_set_addr_gpios.exit.while.body_crit_edge: ; preds = %physmap_set_addr_gpios.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

physmap_set_addr_gpios.exit.while.end_crit_edge:  ; preds = %physmap_set_addr_gpios.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %physmap_set_addr_gpios.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_addr_gpios_write(ptr nocapture noundef readonly %map, [8 x i32] %mw.coerce, i32 noundef %ofs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %win_order.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %win_order.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %win_order.i, align 4
  %shr.i = lshr i32 %ofs, %6
  %gpio_values.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 11
  %7 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_values.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %shr.i)
  %cmp.i = icmp eq i32 %8, %shr.i
  br i1 %cmp.i, label %entry.physmap_set_addr_gpios.exit_crit_edge, label %for.cond.preheader.i

entry.physmap_set_addr_gpios.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %physmap_set_addr_gpios.exit

for.cond.preheader.i:                             ; preds = %entry
  %gpios.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios.i, align 4
  %ndescs27.i = getelementptr inbounds %struct.gpio_descs, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ndescs27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ndescs27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp128.not.i = icmp eq i32 %12, 0
  br i1 %cmp128.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %13 = phi ptr [ %19, %for.inc.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.029.i
  %and.i = and i32 %shl.i, %shr.i
  %14 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_values.i, align 4
  %and4.i = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and.i, %and4.i
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %13, i32 0, i32 2, i32 %i.029.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %lnot.ext.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.029.i, 1
  %18 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ndescs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %21
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %22 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %gpio_values.i, align 4
  br label %physmap_set_addr_gpios.exit

physmap_set_addr_gpios.exit:                      ; preds = %for.end.i, %entry.physmap_set_addr_gpios.exit_crit_edge
  %mw.coerce.fca.0.extract = extractvalue [8 x i32] %mw.coerce, 0
  %conv = trunc i32 %mw.coerce.fca.0.extract to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %23 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt, align 4
  %26 = ptrtoint ptr %win_order.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %win_order.i, align 4
  %notmask = shl nsw i32 -1, %27
  %sub = xor i32 %notmask, -1
  %and = and i32 %sub, %ofs
  %add.ptr = getelementptr i8, ptr %25, i32 %and
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %23) #7, !srcloc !127
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @physmap_addr_gpios_copy_to(ptr nocapture noundef readonly %map, i32 noundef %ofs, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not20 = icmp eq i32 %len, 0
  br i1 %tobool.not20, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %map_priv_1 = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 14
  %0 = ptrtoint ptr %map_priv_1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %map_priv_1, align 4
  %2 = inttoptr i32 %1 to ptr
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %win_order = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 12
  %gpio_values.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 11
  %gpios.i = getelementptr inbounds %struct.physmap_flash_info, ptr %4, i32 0, i32 10
  %virt = getelementptr inbounds %struct.map_info, ptr %map, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %physmap_set_addr_gpios.exit.while.body_crit_edge, %while.body.lr.ph
  %ofs.addr.023 = phi i32 [ %ofs, %while.body.lr.ph ], [ %add, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %buf.addr.022 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr5, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %len.addr.021 = phi i32 [ %len, %while.body.lr.ph ], [ %sub4, %physmap_set_addr_gpios.exit.while.body_crit_edge ]
  %5 = ptrtoint ptr %win_order to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %win_order, align 4
  %shl = shl nuw i32 1, %6
  %sub = add i32 %shl, -1
  %and = and i32 %sub, %ofs.addr.023
  %sub3 = sub i32 %shl, %and
  %7 = tail call i32 @llvm.umin.i32(i32 %len.addr.021, i32 %sub3)
  %shr.i = lshr i32 %ofs.addr.023, %6
  %8 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_values.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %shr.i)
  %cmp.i = icmp eq i32 %9, %shr.i
  br i1 %cmp.i, label %while.body.physmap_set_addr_gpios.exit_crit_edge, label %for.cond.preheader.i

while.body.physmap_set_addr_gpios.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %physmap_set_addr_gpios.exit

for.cond.preheader.i:                             ; preds = %while.body
  %10 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpios.i, align 4
  %ndescs27.i = getelementptr inbounds %struct.gpio_descs, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ndescs27.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ndescs27.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp128.not.i = icmp eq i32 %13, 0
  br i1 %cmp128.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %14 = phi ptr [ %20, %for.inc.i.for.body.i_crit_edge ], [ %11, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.029.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %shl.i = shl nuw i32 1, %i.029.i
  %and.i = and i32 %shl.i, %shr.i
  %15 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_values.i, align 4
  %and4.i = and i32 %16, %shl.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and4.i)
  %cmp5.i = icmp eq i32 %and.i, %and4.i
  br i1 %cmp5.i, label %for.body.i.for.inc.i_crit_edge, label %if.end7.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.gpio_descs, ptr %14, i32 0, i32 2, i32 %i.029.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef %lnot.ext.i) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end7.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.029.i, 1
  %19 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpios.i, align 4
  %ndescs.i = getelementptr inbounds %struct.gpio_descs, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %ndescs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ndescs.i, align 4
  %cmp1.i = icmp ult i32 %inc.i, %22
  br i1 %cmp1.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %23 = ptrtoint ptr %gpio_values.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %gpio_values.i, align 4
  br label %physmap_set_addr_gpios.exit

physmap_set_addr_gpios.exit:                      ; preds = %for.end.i, %while.body.physmap_set_addr_gpios.exit_crit_edge
  %24 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %and
  tail call void @mmiocpy(ptr noundef %add.ptr, ptr noundef %buf.addr.022, i32 noundef %7) #7
  %sub4 = sub i32 %len.addr.021, %7
  %add.ptr5 = getelementptr i8, ptr %buf.addr.022, i32 %7
  %add = add i32 %7, %ofs.addr.023
  %tobool.not = icmp eq i32 %sub4, 0
  br i1 %tobool.not, label %physmap_set_addr_gpios.exit.while.end_crit_edge, label %physmap_set_addr_gpios.exit.while.body_crit_edge

physmap_set_addr_gpios.exit.while.body_crit_edge: ; preds = %physmap_set_addr_gpios.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

physmap_set_addr_gpios.exit.while.end_crit_edge:  ; preds = %physmap_set_addr_gpios.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %physmap_set_addr_gpios.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtd_concat_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !51, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_physmap__190_677_physmap_init6, !1, !"__initcall__kmod_physmap__190_677_physmap_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/maps/physmap-core.c", i32 677, i32 1}
!2 = !{ptr @__exitcall_physmap_exit, !3, !"__exitcall_physmap_exit", i1 false, i1 false}
!3 = !{!"../drivers/mtd/maps/physmap-core.c", i32 678, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../drivers/mtd/maps/physmap-core.c", i32 680, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author193, !8, !"__UNIQUE_ID_author193", i1 false, i1 false}
!8 = !{!"../drivers/mtd/maps/physmap-core.c", i32 681, i32 1}
!9 = !{ptr @__UNIQUE_ID_author194, !10, !"__UNIQUE_ID_author194", i1 false, i1 false}
!10 = !{!"../drivers/mtd/maps/physmap-core.c", i32 682, i32 1}
!11 = !{ptr @__UNIQUE_ID_author195, !12, !"__UNIQUE_ID_author195", i1 false, i1 false}
!12 = !{!"../drivers/mtd/maps/physmap-core.c", i32 683, i32 1}
!13 = !{ptr @__UNIQUE_ID_description196, !14, !"__UNIQUE_ID_description196", i1 false, i1 false}
!14 = !{!"../drivers/mtd/maps/physmap-core.c", i32 684, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mtd/maps/physmap-core.c", i32 643, i32 11}
!17 = !{ptr @physmap_flash, !18, !"physmap_flash", i1 false, i1 false}
!18 = !{!"../drivers/mtd/maps/physmap-core.c", i32 642, i32 31}
!19 = !{ptr @physmap_flash_data, !20, !"physmap_flash_data", i1 false, i1 false}
!20 = !{!"../drivers/mtd/maps/physmap-core.c", i32 632, i32 34}
!21 = !{ptr @physmap_flash_resource, !22, !"physmap_flash_resource", i1 false, i1 false}
!22 = !{!"../drivers/mtd/maps/physmap-core.c", i32 636, i32 24}
!23 = !{ptr @physmap_flash_driver, !24, !"physmap_flash_driver", i1 false, i1 false}
!24 = !{!"../drivers/mtd/maps/physmap-core.c", i32 621, i32 31}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mtd/maps/physmap-core.c", i32 488, i32 57}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mtd/maps/physmap-core.c", i32 494, i32 3}
!29 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @physmap_flash_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @physmap_flash_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mtd/maps/physmap-core.c", i32 522, i32 3}
!37 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @physmap_flash_probe._entry.7, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @physmap_flash_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mtd/maps/physmap-core.c", i32 571, i32 4}
!42 = !{ptr @physmap_flash_probe._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @physmap_flash_probe._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @physmap_flash_probe.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/mtd/maps/physmap-core.c", i32 592, i32 2}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/mtd/maps/physmap-core.c", i32 356, i32 30}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mtd/maps/physmap-core.c", i32 358, i32 43}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mtd/maps/physmap-core.c", i32 360, i32 33}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mtd/maps/physmap-core.c", i32 362, i32 3}
!55 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @physmap_flash_of_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @physmap_flash_of_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mtd/maps/physmap-core.c", i32 366, i32 32}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/mtd/maps/physmap-core.c", i32 368, i32 37}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mtd/maps/physmap-core.c", i32 314, i32 2}
!64 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @of_select_probe_type._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @of_select_probe_type._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/mtd/maps/physmap-core.c", i32 317, i32 30}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mtd/maps/physmap-core.c", i32 321, i32 26}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/mtd/maps/physmap-core.c", i32 322, i32 16}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/mtd/maps/physmap-core.c", i32 323, i32 33}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/mtd/maps/physmap-core.c", i32 324, i32 16}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/mtd/maps/physmap-core.c", i32 325, i32 33}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/mtd/maps/physmap-core.c", i32 326, i32 16}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mtd/maps/physmap-core.c", i32 328, i32 3}
!84 = !{ptr @of_select_probe_type._entry.32, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @of_select_probe_type._entry_ptr.34, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/mtd/maps/physmap-core.c", i32 287, i32 40}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mtd/maps/physmap-core.c", i32 278, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/mtd/maps/physmap-core.c", i32 278, i32 17}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/mtd/maps/physmap-core.c", i32 278, i32 28}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/mtd/maps/physmap-core.c", i32 278, i32 38}
!96 = !{ptr @of_default_part_probes, !97, !"of_default_part_probes", i1 false, i1 false}
!97 = !{!"../drivers/mtd/maps/physmap-core.c", i32 277, i32 27}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/mtd/maps/physmap-core.c", i32 421, i32 28}
!100 = !{ptr @part_probe_types, !101, !"part_probe_types", i1 false, i1 false}
!101 = !{!"../drivers/mtd/maps/physmap-core.c", i32 420, i32 27}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/mtd/maps/physmap-core.c", i32 417, i32 30}
!104 = !{ptr @rom_probe_types, !105, !"rom_probe_types", i1 false, i1 false}
!105 = !{!"../drivers/mtd/maps/physmap-core.c", i32 416, i32 27}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../include/linux/mtd/mtd.h", i32 464, i32 31}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/mtd/maps/physmap-core.c", i32 263, i32 11}
!110 = !{ptr @of_flash_match, !111, !"of_flash_match", i1 false, i1 false}
!111 = !{!"../drivers/mtd/maps/physmap-core.c", i32 243, i32 34}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{!"auto-init"}
!122 = !{!"branch_weights", i32 1, i32 2000}
!123 = !{i32 0, i32 33}
!124 = !{i64 5424036}
!125 = !{i64 2153083748}
!126 = !{i64 2153086796}
!127 = !{i64 5423836}
