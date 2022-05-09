; ModuleID = '/llk/IR_all_yes/drivers/firmware/turris-mox-rwtm.c_pt.bc'
source_filename = "../drivers/firmware/turris-mox-rwtm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.armada_37xx_rwtm_tx_msg = type { i16, [16 x i32] }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mox_rwtm = type { ptr, %struct.mbox_client, ptr, ptr, %struct.hwrng, %struct.armada_37xx_rwtm_rx_msg, ptr, i32, %struct.mutex, %struct.completion, i32, i64, i32, i32, [6 x i8], [6 x i8], i32, [135 x i8], ptr, [34 x i32], i32 }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.armada_37xx_rwtm_rx_msg = type { i32, [16 x i32] }
%struct.mox_kobject = type { %struct.kobject, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_turris_mox_rwtm__230_586_turris_mox_rwtm_driver_init6 = internal global ptr @turris_mox_rwtm_driver_init, section ".initcall6.init", align 4
@turris_mox_rwtm_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @turris_mox_rwtm_probe, ptr @turris_mox_rwtm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @turris_mox_rwtm_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_turris_mox_rwtm_driver_exit = internal global ptr @turris_mox_rwtm_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file231 = internal constant [54 x i8] c"turris_mox_rwtm.file=drivers/firmware/turris-mox-rwtm\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [31 x i8] c"turris_mox_rwtm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [60 x i8] c"turris_mox_rwtm.description=Turris Mox rWTM firmware driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [54 x i8] c"turris_mox_rwtm.author=Marek Behun <kabel@kernel.org>\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"turris-mox-rwtm\00", [16 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cznic,turris-mox-rwtm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-3700-rwtm-firmware\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 489, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot create turris-mox-rwtm kobject!\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"turris_mox_rwtm_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/firmware/turris-mox-rwtm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr = internal global ptr @turris_mox_rwtm_probe._entry, section ".printk_index", align 4
@mox_rwtm_attrs = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @mox_attr_serial_number, ptr @mox_attr_board_version, ptr @mox_attr_ram_size, ptr @mox_attr_mac_address1, ptr @mox_attr_mac_address2, ptr @mox_attr_pubkey, ptr null], [36 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 495, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot create sysfs files!\0A\00", [36 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.8 = internal global ptr @turris_mox_rwtm_probe._entry.6, section ".printk_index", align 4
@turris_mox_rwtm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rwtm->busy\00", [20 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 511, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot request mailbox channel: %i\0A\00", [60 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.12 = internal global ptr @turris_mox_rwtm_probe._entry.10, section ".printk_index", align 4
@turris_mox_rwtm_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 519, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot read board information: %i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.16 = internal global ptr @turris_mox_rwtm_probe._entry.13, section ".printk_index", align 4
@turris_mox_rwtm_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 524, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Firmware does not support the GET_RANDOM command\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.20 = internal global ptr @turris_mox_rwtm_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"turris-mox-rwtm_hwrng\00", [42 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot register HWRNG: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.24 = internal global ptr @turris_mox_rwtm_probe._entry.22, section ".printk_index", align 4
@turris_mox_rwtm_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 541, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed creating debugfs entries: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.27 = internal global ptr @turris_mox_rwtm_probe._entry.25, section ".printk_index", align 4
@turris_mox_rwtm_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 545, ptr @.str.30, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"HWRNG successfully registered\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@turris_mox_rwtm_probe._entry_ptr.31 = internal global ptr @turris_mox_rwtm_probe._entry.28, section ".printk_index", align 4
@mox_kobj_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @mox_kobj_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@firmware_kobj = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@mox_attr_serial_number = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_number_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mox_attr_board_version = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mox_attr_ram_size = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ram_size_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mox_attr_mac_address1 = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mac_address1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mox_attr_mac_address2 = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mac_address2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@mox_attr_pubkey = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pubkey_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"serial_number\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%016llX\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"board_version\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%i\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ram_size\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_address1\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pM\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mac_address2\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pubkey\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 209, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Board does not have manufacturing information burned!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mox_get_board_info\00", [45 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr = internal global ptr @mox_get_board_info._entry, section ".printk_index", align 4
@mox_get_board_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 212, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Firmware does not support the BOARD_INFO command\0A\00", [46 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.47 = internal global ptr @mox_get_board_info._entry.45, section ".printk_index", align 4
@mox_get_board_info._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.3, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016Turris Mox serial number %016llX\0A\00", [60 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.50 = internal global ptr @mox_get_board_info._entry.48, section ".printk_index", align 4
@mox_get_board_info._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.3, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016           board version %i\0A\00", [33 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.53 = internal global ptr @mox_get_board_info._entry.51, section ".printk_index", align 4
@mox_get_board_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.3, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016           burned RAM size %i MiB\0A\00", [59 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.56 = internal global ptr @mox_get_board_info._entry.54, section ".printk_index", align 4
@mox_get_board_info._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.3, i32 244, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Board has no public key burned!\0A\00", [63 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.59 = internal global ptr @mox_get_board_info._entry.57, section ".printk_index", align 4
@mox_get_board_info._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.3, i32 247, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Firmware does not support the ECDSA_PUB_KEY command\0A\00", [43 x i8] zeroinitializer }, align 32
@mox_get_board_info._entry_ptr.62 = internal global ptr @mox_get_board_info._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%06x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x%08x\00", [59 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"do_sign\00", [24 x i8] zeroinitializer }, align 32
@do_sign_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @do_sign_read, ptr @do_sign_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @rwtm_debug_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 4294967235, i64 4294967258]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1073741824, i64 2147483648]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1073741824, i64 2147483648]
@___asan_gen_.70 = private unnamed_addr constant [23 x i8] c"turris_mox_rwtm_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 578, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 582, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant [22 x i8] c"turris_mox_rwtm_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 570, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 489, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"mox_rwtm_attrs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 162, i32 32 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 495, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 501, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 510, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 519, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 523, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 528, i32 21 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 535, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 541, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 545, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"mox_kobj_ktype\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 107, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"mox_attr_serial_number\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"mox_attr_board_version\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"mox_attr_ram_size\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [22 x i8] c"mox_attr_mac_address1\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"mox_attr_mac_address2\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [16 x i8] c"mox_attr_pubkey\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 141, i32 1 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 142, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 143, i32 1 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 144, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 145, i32 1 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 146, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 87, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 208, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 211, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 227, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 229, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 230, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 244, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 246, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 255, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 443, i32 37 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"do_sign_fops\00", align 1
@___asan_gen_.269 = private constant [38 x i8] c"../drivers/firmware/turris-mox-rwtm.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 426, i32 37 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_turris_mox_rwtm_driver_exit, ptr @__initcall__kmod_turris_mox_rwtm__230_586_turris_mox_rwtm_driver_init6, ptr @mox_get_board_info._entry, ptr @mox_get_board_info._entry.45, ptr @mox_get_board_info._entry.48, ptr @mox_get_board_info._entry.51, ptr @mox_get_board_info._entry.54, ptr @mox_get_board_info._entry.57, ptr @mox_get_board_info._entry.60, ptr @mox_get_board_info._entry_ptr, ptr @mox_get_board_info._entry_ptr.47, ptr @mox_get_board_info._entry_ptr.50, ptr @mox_get_board_info._entry_ptr.53, ptr @mox_get_board_info._entry_ptr.56, ptr @mox_get_board_info._entry_ptr.59, ptr @mox_get_board_info._entry_ptr.62, ptr @turris_mox_rwtm_driver_exit, ptr @turris_mox_rwtm_probe._entry, ptr @turris_mox_rwtm_probe._entry.10, ptr @turris_mox_rwtm_probe._entry.13, ptr @turris_mox_rwtm_probe._entry.17, ptr @turris_mox_rwtm_probe._entry.22, ptr @turris_mox_rwtm_probe._entry.25, ptr @turris_mox_rwtm_probe._entry.28, ptr @turris_mox_rwtm_probe._entry.6, ptr @turris_mox_rwtm_probe._entry_ptr, ptr @turris_mox_rwtm_probe._entry_ptr.12, ptr @turris_mox_rwtm_probe._entry_ptr.16, ptr @turris_mox_rwtm_probe._entry_ptr.20, ptr @turris_mox_rwtm_probe._entry_ptr.24, ptr @turris_mox_rwtm_probe._entry_ptr.27, ptr @turris_mox_rwtm_probe._entry_ptr.31, ptr @turris_mox_rwtm_probe._entry_ptr.8, ptr @turris_mox_rwtm_driver, ptr @.str, ptr @turris_mox_rwtm_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mox_rwtm_attrs, ptr @.str.7, ptr @turris_mox_rwtm_probe.__key, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.30, ptr @mox_kobj_ktype, ptr @mox_attr_serial_number, ptr @mox_attr_board_version, ptr @mox_attr_ram_size, ptr @mox_attr_mac_address1, ptr @mox_attr_mac_address2, ptr @mox_attr_pubkey, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @init_completion.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @do_sign_fops], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_rwtm_attrs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @turris_mox_rwtm_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_kobj_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_serial_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_board_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_ram_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_mac_address1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_mac_address2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_attr_pubkey to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_get_board_info._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_sign_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @turris_mox_rwtm_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @turris_mox_rwtm_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @turris_mox_rwtm_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @turris_mox_rwtm_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @turris_mox_rwtm_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %msg.i136 = alloca %struct.armada_37xx_rwtm_tx_msg, align 4
  %msg.i = alloca %struct.armada_37xx_rwtm_tx_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 680, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %buf_phys = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 7
  %call.i130 = tail call ptr @dmam_alloc_attrs(ptr noundef %dev1, i32 noundef 4096, ptr noundef %buf_phys, i32 noundef 3264, i32 noundef 0) #10
  %buf = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i130, ptr %buf, align 8
  %tobool5.not = icmp eq ptr %call.i130, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 140) #13
  %kobj.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %kobj.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %kobj.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.do.end_crit_edge, label %if.end.i

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %if.end7
  tail call void @kobject_init(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @mox_kobj_ktype) #10
  %4 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_kobj to i32))
  %6 = load ptr, ptr @firmware_kobj, align 4
  %call4.i = tail call i32 (ptr, ptr, ptr, ...) @kobject_add(ptr noundef %5, ptr noundef %6, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  %7 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %kobj.i, align 4
  br i1 %tobool5.not.i, label %if.end10, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef %8) #10
  br label %do.end

do.end:                                           ; preds = %if.then6.i, %if.end7.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end7.do.end_crit_edge ], [ -6, %if.then6.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %rwtm10.i = getelementptr inbounds %struct.mox_kobject, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %rwtm10.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %rwtm10.i, align 4
  %10 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kobj.i, align 4
  %call12 = tail call i32 @sysfs_create_files(ptr noundef %11, ptr noundef nonnull @mox_rwtm_attrs) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end17, label %if.end18

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #14
  br label %put_kobj

if.end18:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %busy = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %busy, ptr noundef nonnull @.str.9, ptr noundef nonnull @turris_mox_rwtm_probe.__key) #10
  %mbox_client = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %mbox_client to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %mbox_client, align 4
  %rx_callback = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mox_rwtm_rx_callback, ptr %rx_callback, align 4
  %call25 = tail call ptr @mbox_request_channel(ptr noundef %mbox_client, i32 noundef 0) #10
  %mbox = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %mbox to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %mbox, align 8
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.end18
  %cmp31.not = icmp eq ptr %call25, inttoptr (i32 -517 to ptr)
  br i1 %cmp31.not, label %if.then28.remove_files_crit_edge, label %do.end35

if.then28.remove_files_crit_edge:                 ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_files

do.end35:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %16) #14
  br label %remove_files

if.end37:                                         ; preds = %if.end18
  %cmd_done = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %cmd_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %cmd_done, align 4
  %wait.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %msg.i) #10
  %18 = call ptr @memset(ptr %msg.i, i32 255, i32 68)
  %reply1.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 2, ptr %msg.i, align 4
  %20 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mbox, align 8
  %call.i132 = call i32 @mbox_send_message(ptr noundef %21, ptr noundef nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %if.end37.do.end43_crit_edge, label %if.end.i134

if.end37.do.end43_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end.i134:                                      ; preds = %if.end37
  %call2.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i134.do.end43_crit_edge, label %if.end5.i

if.end.i134.do.end43_crit_edge:                   ; preds = %if.end.i134
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end5.i:                                        ; preds = %if.end.i134
  %22 = ptrtoint ptr %reply1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reply1.i, align 4
  %and.i.i = and i32 %23, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i)
  %cmp.not.i.i = icmp eq i32 %and.i.i, 2
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.end5.i.do.end43_crit_edge

if.end5.i.do.end43_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.else.i.i:                                      ; preds = %if.end5.i
  %and2.i.i = and i32 %23, -1073741824
  %24 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and2.i.i, label %if.else.i.i.do.end43_crit_edge [
    i32 1073741824, label %if.then4.i.i
    i32 -2147483648, label %if.else.i.i.do.end14.i_crit_edge
    i32 0, label %if.else14.i.i
  ]

if.else.i.i.do.end14.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

if.else.i.i.do.end43_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.then4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i.i = lshr i32 %23, 10
  %and5.i.i = and i32 %shr.i.i, 1048575
  %sub.i.i = sub nsw i32 0, %and5.i.i
  br label %mox_get_status.exit.i

if.else14.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr15.i.i = lshr i32 %23, 10
  %and16.i.i = and i32 %shr15.i.i, 1048575
  br label %mox_get_status.exit.i

mox_get_status.exit.i:                            ; preds = %if.else14.i.i, %if.then4.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then4.i.i ], [ %and16.i.i, %if.else14.i.i ]
  %25 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %retval.0.i.i, label %if.else16.i [
    i32 -61, label %do.end.i
    i32 -38, label %mox_get_status.exit.i.do.end14.i_crit_edge
  ]

mox_get_status.exit.i.do.end14.i_crit_edge:       ; preds = %mox_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14.i

do.end.i:                                         ; preds = %mox_get_status.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %27, ptr noundef nonnull @.str.43) #14
  br label %if.end57.i

do.end14.i:                                       ; preds = %mox_get_status.exit.i.do.end14.i_crit_edge, %if.else.i.i.do.end14.i_crit_edge
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %29, ptr noundef nonnull @.str.46) #14
  br label %if.end57.i

if.else16.i:                                      ; preds = %mox_get_status.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp17.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp17.i, label %if.else16.i.do.end43_crit_edge, label %if.else19.i

if.else16.i.do.end43_crit_edge:                   ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.else19.i:                                      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #12
  %status.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1
  %arrayidx.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %conv.i = zext i32 %31 to i64
  %serial_number.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 11
  %shl.i = shl nuw i64 %conv.i, 32
  %32 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %status.i, align 4
  %conv23.i = zext i32 %33 to i64
  %or.i = or i64 %shl.i, %conv23.i
  %34 = ptrtoint ptr %serial_number.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 %or.i, ptr %serial_number.i, align 8
  %arrayidx26.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 2
  %35 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx26.i, align 4
  %board_version.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %board_version.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %board_version.i, align 8
  %arrayidx28.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 3
  %38 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx28.i, align 4
  %ram_size.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 13
  %40 = ptrtoint ptr %ram_size.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %ram_size.i, align 4
  %mac_address1.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 14
  %arrayidx30.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 4
  %41 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx30.i, align 4
  %arrayidx32.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 5
  %43 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx32.i, align 4
  %shr.i180.i = lshr i32 %42, 8
  %conv.i.i = trunc i32 %shr.i180.i to i8
  %45 = ptrtoint ptr %mac_address1.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv.i.i, ptr %mac_address1.i, align 1
  %conv1.i.i = trunc i32 %42 to i8
  %arrayidx2.i.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 14, i32 1
  %46 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv1.i.i, ptr %arrayidx2.i.i, align 1
  %shr3.i.i = lshr i32 %44, 24
  %conv4.i.i = trunc i32 %shr3.i.i to i8
  %arrayidx5.i.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 14, i32 2
  %47 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %shr6.i.i = lshr i32 %44, 16
  %conv7.i.i = trunc i32 %shr6.i.i to i8
  %arrayidx8.i.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 14, i32 3
  %48 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  %shr9.i.i = lshr i32 %44, 8
  %conv10.i.i = trunc i32 %shr9.i.i to i8
  %arrayidx11.i.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 14, i32 4
  %49 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv10.i.i, ptr %arrayidx11.i.i, align 1
  %conv12.i.i = trunc i32 %44 to i8
  %arrayidx13.i.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 14, i32 5
  %50 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv12.i.i, ptr %arrayidx13.i.i, align 1
  %mac_address2.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 15
  %arrayidx35.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 6
  %51 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx35.i, align 4
  %arrayidx37.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 7
  %53 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx37.i, align 4
  %shr.i181.i = lshr i32 %52, 8
  %conv.i182.i = trunc i32 %shr.i181.i to i8
  %55 = ptrtoint ptr %mac_address2.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv.i182.i, ptr %mac_address2.i, align 1
  %conv1.i183.i = trunc i32 %52 to i8
  %arrayidx2.i184.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 15, i32 1
  %56 = ptrtoint ptr %arrayidx2.i184.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv1.i183.i, ptr %arrayidx2.i184.i, align 1
  %shr3.i185.i = lshr i32 %54, 24
  %conv4.i186.i = trunc i32 %shr3.i185.i to i8
  %arrayidx5.i187.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 15, i32 2
  %57 = ptrtoint ptr %arrayidx5.i187.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv4.i186.i, ptr %arrayidx5.i187.i, align 1
  %shr6.i188.i = lshr i32 %54, 16
  %conv7.i189.i = trunc i32 %shr6.i188.i to i8
  %arrayidx8.i190.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 15, i32 3
  %58 = ptrtoint ptr %arrayidx8.i190.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv7.i189.i, ptr %arrayidx8.i190.i, align 1
  %shr9.i191.i = lshr i32 %54, 8
  %conv10.i192.i = trunc i32 %shr9.i191.i to i8
  %arrayidx11.i193.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 15, i32 4
  %59 = ptrtoint ptr %arrayidx11.i193.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv10.i192.i, ptr %arrayidx11.i193.i, align 1
  %conv12.i194.i = trunc i32 %54 to i8
  %arrayidx13.i195.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 15, i32 5
  %60 = ptrtoint ptr %arrayidx13.i195.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv12.i194.i, ptr %arrayidx13.i195.i, align 1
  %has_board_info.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 10
  %61 = ptrtoint ptr %has_board_info.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %has_board_info.i, align 4
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i64 noundef %or.i) #14
  %62 = ptrtoint ptr %board_version.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %board_version.i, align 8
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %63) #14
  %64 = ptrtoint ptr %ram_size.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ram_size.i, align 4
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %65) #14
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else19.i, %do.end14.i, %do.end.i
  %66 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 3, ptr %msg.i, align 4
  %67 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mbox, align 8
  %call60.i = call i32 @mbox_send_message(ptr noundef %68, ptr noundef nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %if.end57.i.do.end43_crit_edge, label %if.end64.i

if.end57.i.do.end43_crit_edge:                    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end64.i:                                       ; preds = %if.end57.i
  %call66.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %if.end64.i.do.end43_crit_edge, label %if.end70.i

if.end64.i.do.end43_crit_edge:                    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.end70.i:                                       ; preds = %if.end64.i
  %69 = ptrtoint ptr %reply1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %reply1.i, align 4
  %and.i196.i = and i32 %70, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i196.i)
  %cmp.not.i197.i = icmp eq i32 %and.i196.i, 3
  br i1 %cmp.not.i197.i, label %if.else.i199.i, label %if.end70.i.do.end43_crit_edge

if.end70.i.do.end43_crit_edge:                    ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.else.i199.i:                                   ; preds = %if.end70.i
  %and2.i198.i = and i32 %70, -1073741824
  %71 = zext i32 %and2.i198.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and2.i198.i, label %if.else.i199.i.do.end43_crit_edge [
    i32 1073741824, label %if.then4.i203.i
    i32 -2147483648, label %if.else.i199.i.do.end86.i_crit_edge
    i32 0, label %if.else14.i207.i
  ]

if.else.i199.i.do.end86.i_crit_edge:              ; preds = %if.else.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

if.else.i199.i.do.end43_crit_edge:                ; preds = %if.else.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.then4.i203.i:                                  ; preds = %if.else.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr.i200.i = lshr i32 %70, 10
  %and5.i201.i = and i32 %shr.i200.i, 1048575
  %sub.i202.i = sub nsw i32 0, %and5.i201.i
  br label %mox_get_status.exit209.i

if.else14.i207.i:                                 ; preds = %if.else.i199.i
  call void @__sanitizer_cov_trace_pc() #12
  %shr15.i205.i = lshr i32 %70, 10
  %and16.i206.i = and i32 %shr15.i205.i, 1048575
  br label %mox_get_status.exit209.i

mox_get_status.exit209.i:                         ; preds = %if.else14.i207.i, %if.then4.i203.i
  %retval.0.i208.i = phi i32 [ %sub.i202.i, %if.then4.i203.i ], [ %and16.i206.i, %if.else14.i207.i ]
  %72 = zext i32 %retval.0.i208.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %retval.0.i208.i, label %if.else88.i [
    i32 -61, label %do.end78.i
    i32 -38, label %mox_get_status.exit209.i.do.end86.i_crit_edge
  ]

mox_get_status.exit209.i.do.end86.i_crit_edge:    ; preds = %mox_get_status.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end86.i

do.end78.i:                                       ; preds = %mox_get_status.exit209.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %74, ptr noundef nonnull @.str.58) #14
  br label %mox_get_board_info.exit

do.end86.i:                                       ; preds = %mox_get_status.exit209.i.do.end86.i_crit_edge, %if.else.i199.i.do.end86.i_crit_edge
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %76, ptr noundef nonnull @.str.61) #14
  br label %mox_get_board_info.exit

if.else88.i:                                      ; preds = %mox_get_status.exit209.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i208.i)
  %cmp89.i = icmp slt i32 %retval.0.i208.i, 0
  br i1 %cmp89.i, label %if.else88.i.do.end43_crit_edge, label %if.else92.i

if.else88.i.do.end43_crit_edge:                   ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43

if.else92.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #12
  %status93.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1
  %has_pubkey.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 16
  %77 = ptrtoint ptr %has_pubkey.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %has_pubkey.i, align 4
  %pubkey.i = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 17
  %78 = ptrtoint ptr %status93.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status93.i, align 4
  %arrayidx97.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %80 = ptrtoint ptr %arrayidx97.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx97.i, align 4
  %arrayidx98.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 2
  %82 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx98.i, align 4
  %arrayidx99.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 3
  %84 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx99.i, align 4
  %arrayidx100.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 4
  %86 = ptrtoint ptr %arrayidx100.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx100.i, align 4
  %arrayidx101.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 5
  %88 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx101.i, align 4
  %arrayidx102.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 6
  %90 = ptrtoint ptr %arrayidx102.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx102.i, align 4
  %arrayidx103.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 7
  %92 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx103.i, align 4
  %arrayidx104.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 8
  %94 = ptrtoint ptr %arrayidx104.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx104.i, align 4
  %arrayidx105.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 9
  %96 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx105.i, align 4
  %arrayidx106.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 10
  %98 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx106.i, align 4
  %arrayidx107.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 11
  %100 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx107.i, align 4
  %arrayidx108.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 12
  %102 = ptrtoint ptr %arrayidx108.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx108.i, align 4
  %arrayidx109.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 13
  %104 = ptrtoint ptr %arrayidx109.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx109.i, align 4
  %arrayidx110.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 14
  %106 = ptrtoint ptr %arrayidx110.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx110.i, align 4
  %arrayidx111.i = getelementptr %struct.mox_rwtm, ptr %call.i, i32 0, i32 5, i32 1, i32 15
  %108 = ptrtoint ptr %arrayidx111.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx111.i, align 4
  %call112.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pubkey.i, ptr noundef nonnull @.str.63, i32 noundef %retval.0.i208.i, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109) #10
  br label %mox_get_board_info.exit

mox_get_board_info.exit:                          ; preds = %if.else92.i, %do.end86.i, %do.end78.i
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg.i) #10
  br label %if.end44

do.end43:                                         ; preds = %if.else88.i.do.end43_crit_edge, %if.else.i199.i.do.end43_crit_edge, %if.end70.i.do.end43_crit_edge, %if.end64.i.do.end43_crit_edge, %if.end57.i.do.end43_crit_edge, %if.else16.i.do.end43_crit_edge, %if.else.i.i.do.end43_crit_edge, %if.end5.i.do.end43_crit_edge, %if.end.i134.do.end43_crit_edge, %if.end37.do.end43_crit_edge
  %retval.0.i135.ph = phi i32 [ -5, %if.end70.i.do.end43_crit_edge ], [ -5, %if.else.i199.i.do.end43_crit_edge ], [ -5, %if.end5.i.do.end43_crit_edge ], [ -5, %if.else.i.i.do.end43_crit_edge ], [ %retval.0.i208.i, %if.else88.i.do.end43_crit_edge ], [ %call66.i, %if.end64.i.do.end43_crit_edge ], [ %call60.i, %if.end57.i.do.end43_crit_edge ], [ %retval.0.i.i, %if.else16.i.do.end43_crit_edge ], [ %call2.i, %if.end.i134.do.end43_crit_edge ], [ %call.i132, %if.end37.do.end43_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg.i) #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %retval.0.i135.ph) #14
  br label %if.end44

if.end44:                                         ; preds = %do.end43, %mox_get_board_info.exit
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %msg.i136) #10
  %110 = call ptr @memset(ptr %msg.i136, i32 255, i32 68)
  %111 = ptrtoint ptr %msg.i136 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 1, ptr %msg.i136, align 4
  %args.i = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg.i136, i32 0, i32 1
  %112 = ptrtoint ptr %args.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %args.i, align 4
  %113 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %buf_phys, align 4
  %arrayidx2.i = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg.i136, i32 0, i32 1, i32 1
  %115 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg.i136, i32 0, i32 1, i32 2
  %116 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 4, ptr %arrayidx4.i, align 4
  %117 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mbox, align 8
  %call.i138 = call i32 @mbox_send_message(ptr noundef %118, ptr noundef nonnull %msg.i136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %cmp.i139 = icmp slt i32 %call.i138, 0
  br i1 %cmp.i139, label %if.end44.check_get_random_support.exit.thread_crit_edge, label %if.end.i141

if.end44.check_get_random_support.exit.thread_crit_edge: ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_get_random_support.exit.thread

if.end.i141:                                      ; preds = %if.end44
  %call5.i = call i32 @wait_for_completion_timeout(ptr noundef %cmd_done, i32 noundef 50) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i141.check_get_random_support.exit.thread_crit_edge, label %if.end8.i144

if.end.i141.check_get_random_support.exit.thread_crit_edge: ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_get_random_support.exit.thread

if.end8.i144:                                     ; preds = %if.end.i141
  %119 = ptrtoint ptr %reply1.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %reply1.i, align 4
  %and.i.i142 = and i32 %120, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i142)
  %cmp.not.i.i143 = icmp eq i32 %and.i.i142, 1
  br i1 %cmp.not.i.i143, label %if.else.i.i146, label %if.end8.i144.check_get_random_support.exit.thread_crit_edge

if.end8.i144.check_get_random_support.exit.thread_crit_edge: ; preds = %if.end8.i144
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_get_random_support.exit.thread

if.else.i.i146:                                   ; preds = %if.end8.i144
  %and2.i.i145 = and i32 %120, -1073741824
  %121 = zext i32 %and2.i.i145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %and2.i.i145, label %if.then13.i.i [
    i32 1073741824, label %check_get_random_support.exit
    i32 -2147483648, label %if.else.i.i146.check_get_random_support.exit.thread_crit_edge
    i32 0, label %check_get_random_support.exit.thread166
  ]

if.else.i.i146.check_get_random_support.exit.thread_crit_edge: ; preds = %if.else.i.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_get_random_support.exit.thread

if.then13.i.i:                                    ; preds = %if.else.i.i146
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_get_random_support.exit.thread

check_get_random_support.exit.thread166:          ; preds = %if.else.i.i146
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg.i136) #10
  br label %if.end51

check_get_random_support.exit.thread:             ; preds = %if.then13.i.i, %if.else.i.i146.check_get_random_support.exit.thread_crit_edge, %if.end8.i144.check_get_random_support.exit.thread_crit_edge, %if.end.i141.check_get_random_support.exit.thread_crit_edge, %if.end44.check_get_random_support.exit.thread_crit_edge
  %retval.0.i154.ph = phi i32 [ -38, %if.else.i.i146.check_get_random_support.exit.thread_crit_edge ], [ -5, %if.end8.i144.check_get_random_support.exit.thread_crit_edge ], [ -5, %if.then13.i.i ], [ %call5.i, %if.end.i141.check_get_random_support.exit.thread_crit_edge ], [ %call.i138, %if.end44.check_get_random_support.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg.i136) #10
  br label %do.end50

check_get_random_support.exit:                    ; preds = %if.else.i.i146
  %shr.i.i147 = lshr i32 %120, 10
  %and5.i.i148 = and i32 %shr.i.i147, 1048575
  %sub.i.i149 = sub nsw i32 0, %and5.i.i148
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg.i136) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i.i148)
  %cmp46.not = icmp eq i32 %and5.i.i148, 0
  br i1 %cmp46.not, label %check_get_random_support.exit.if.end51_crit_edge, label %check_get_random_support.exit.do.end50_crit_edge

check_get_random_support.exit.do.end50_crit_edge: ; preds = %check_get_random_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

check_get_random_support.exit.if.end51_crit_edge: ; preds = %check_get_random_support.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

do.end50:                                         ; preds = %check_get_random_support.exit.do.end50_crit_edge, %check_get_random_support.exit.thread
  %retval.0.i154165 = phi i32 [ %retval.0.i154.ph, %check_get_random_support.exit.thread ], [ %sub.i.i149, %check_get_random_support.exit.do.end50_crit_edge ]
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.18) #14
  br label %free_channel

if.end51:                                         ; preds = %check_get_random_support.exit.if.end51_crit_edge, %check_get_random_support.exit.thread166
  %hwrng = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 4
  %122 = ptrtoint ptr %hwrng to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @.str.21, ptr %hwrng, align 8
  %read = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 4, i32 5
  %123 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @mox_hwrng_read, ptr %read, align 4
  %124 = ptrtoint ptr %call.i to i32
  %priv = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 4, i32 6
  %125 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %priv, align 8
  %quality = getelementptr inbounds %struct.mox_rwtm, ptr %call.i, i32 0, i32 4, i32 7
  %126 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 1024, ptr %quality, align 4
  %call56 = call i32 @devm_hwrng_register(ptr noundef %dev1, ptr noundef %hwrng) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end62

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call56) #14
  br label %free_channel

if.end62:                                         ; preds = %if.end51
  %call63 = call fastcc i32 @rwtm_register_debugfs(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %do.end68, label %do.end72

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call63) #14
  br label %free_channel

do.end72:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.29) #14
  br label %cleanup

free_channel:                                     ; preds = %do.end68, %do.end61, %do.end50
  %ret.0 = phi i32 [ %retval.0.i154165, %do.end50 ], [ %call56, %do.end61 ], [ %call63, %do.end68 ]
  %127 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mbox, align 8
  call void @mbox_free_channel(ptr noundef %128) #10
  br label %remove_files

remove_files:                                     ; preds = %free_channel, %do.end35, %if.then28.remove_files_crit_edge
  %ret.1 = phi i32 [ %16, %do.end35 ], [ -517, %if.then28.remove_files_crit_edge ], [ %ret.0, %free_channel ]
  %129 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %kobj.i, align 4
  call void @sysfs_remove_files(ptr noundef %130, ptr noundef nonnull @mox_rwtm_attrs) #10
  br label %put_kobj

put_kobj:                                         ; preds = %remove_files, %do.end17
  %ret.2 = phi i32 [ %call12, %do.end17 ], [ %ret.1, %remove_files ]
  %131 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %kobj.i, align 4
  call void @kobject_put(ptr noundef %132) #10
  br label %cleanup

cleanup:                                          ; preds = %put_kobj, %do.end72, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %ret.2, %put_kobj ], [ 0, %do.end72 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @turris_mox_rwtm_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_root.i, align 8
  tail call void @debugfs_remove(ptr noundef %3) #10
  %kobj.i = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj.i, align 4
  tail call void @sysfs_remove_files(ptr noundef %5, ptr noundef nonnull @mox_rwtm_attrs) #10
  %6 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kobj.i, align 4
  tail call void @kobject_put(ptr noundef %7) #10
  %mbox = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mbox, align 8
  tail call void @mbox_free_channel(ptr noundef %9) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_files(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mox_rwtm_rx_callback(ptr nocapture noundef readonly %cl, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %reply = getelementptr inbounds %struct.mox_rwtm, ptr %3, i32 0, i32 5
  %4 = call ptr @memcpy(ptr %reply, ptr %data, i32 68)
  %cmd_done = getelementptr inbounds %struct.mox_rwtm, ptr %3, i32 0, i32 9
  tail call void @complete(ptr noundef %cmd_done) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mox_hwrng_read(ptr nocapture noundef readonly %rng, ptr nocapture noundef writeonly %data, i32 noundef %max, i1 noundef zeroext %wait) #2 align 64 {
entry:
  %msg = alloca %struct.armada_37xx_rwtm_tx_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  %2 = inttoptr i32 %1 to ptr
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %msg) #10
  %3 = call ptr @memset(ptr %msg, i32 255, i32 68)
  %4 = tail call i32 @llvm.umin.i32(i32 %max, i32 4096)
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %msg, align 4
  %args = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %args, align 4
  %buf_phys = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 7
  %7 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %buf_phys, align 4
  %arrayidx2 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %arrayidx2, align 4
  %add = add nuw nsw i32 %4, 3
  %and = and i32 %add, 16380
  %arrayidx4 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %arrayidx4, align 4
  %busy9 = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 8
  br i1 %wait, label %if.else, label %if.then5

if.then5:                                         ; preds = %entry
  %call = tail call i32 @mutex_trylock(ptr noundef %busy9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %if.then5.cleanup_crit_edge, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %busy9, i32 noundef 0) #10
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5.if.end10_crit_edge
  %mbox = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbox, align 8
  %call11 = call i32 @mbox_send_message(ptr noundef %12, ptr noundef nonnull %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.unlock_mutex_crit_edge, label %if.end14

if.end10.unlock_mutex_crit_edge:                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

if.end14:                                         ; preds = %if.end10
  %cmd_done = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 9
  %call15 = call i32 @wait_for_completion_interruptible(ptr noundef %cmd_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.unlock_mutex_crit_edge, label %if.end18

if.end14.unlock_mutex_crit_edge:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

if.end18:                                         ; preds = %if.end14
  %reply = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 5
  %13 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reply, align 4
  %and.i = and i32 %14, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 1
  br i1 %cmp.not.i, label %if.else.i, label %if.end18.unlock_mutex_crit_edge

if.end18.unlock_mutex_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

if.else.i:                                        ; preds = %if.end18
  %and2.i = and i32 %14, -1073741824
  %15 = zext i32 %and2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %and2.i, label %if.then13.i [
    i32 1073741824, label %mox_get_status.exit
    i32 -2147483648, label %if.else.i.unlock_mutex_crit_edge
    i32 0, label %if.else.i.if.end23_crit_edge
  ]

if.else.i.if.end23_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.else.i.unlock_mutex_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

mox_get_status.exit:                              ; preds = %if.else.i
  %shr.i = lshr i32 %14, 10
  %and5.i = and i32 %shr.i, 1048575
  %sub.i = sub nsw i32 0, %and5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp21.not = icmp eq i32 %and5.i, 0
  br i1 %cmp21.not, label %mox_get_status.exit.if.end23_crit_edge, label %mox_get_status.exit.unlock_mutex_crit_edge

mox_get_status.exit.unlock_mutex_crit_edge:       ; preds = %mox_get_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_mutex

mox_get_status.exit.if.end23_crit_edge:           ; preds = %mox_get_status.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %mox_get_status.exit.if.end23_crit_edge, %if.else.i.if.end23_crit_edge
  %buf = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 6
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 8
  %18 = call ptr @memcpy(ptr %data, ptr %17, i32 %4)
  br label %unlock_mutex

unlock_mutex:                                     ; preds = %if.end23, %mox_get_status.exit.unlock_mutex_crit_edge, %if.then13.i, %if.else.i.unlock_mutex_crit_edge, %if.end18.unlock_mutex_crit_edge, %if.end14.unlock_mutex_crit_edge, %if.end10.unlock_mutex_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.unlock_mutex_crit_edge ], [ %call15, %if.end14.unlock_mutex_crit_edge ], [ %sub.i, %mox_get_status.exit.unlock_mutex_crit_edge ], [ %4, %if.end23 ], [ -38, %if.else.i.unlock_mutex_crit_edge ], [ -5, %if.end18.unlock_mutex_crit_edge ], [ -5, %if.then13.i ]
  %busy24 = getelementptr inbounds %struct.mox_rwtm, ptr %2, i32 0, i32 8
  call void @mutex_unlock(ptr noundef %busy24) #10
  br label %cleanup

cleanup:                                          ; preds = %unlock_mutex, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock_mutex ], [ -16, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rwtm_register_debugfs(ptr noundef %rwtm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.64, i16 noundef zeroext 384, ptr noundef %call, ptr noundef %rwtm, ptr noundef nonnull @do_sign_fops) #10
  %cmp.i16 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i16, label %err_remove, label %if.end7

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %debugfs_root = getelementptr inbounds %struct.mox_rwtm, ptr %rwtm, i32 0, i32 18
  %1 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %debugfs_root, align 8
  br label %cleanup

err_remove:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @debugfs_remove(ptr noundef %call) #10
  %2 = ptrtoint ptr %call4 to i32
  br label %cleanup

cleanup:                                          ; preds = %err_remove, %if.end7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %2, %err_remove ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_files(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_add(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mox_kobj_release(ptr nocapture noundef readonly %kobj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %kobj1 = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %kobj1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %kobj1, align 4
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_number_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_board_info = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_board_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %serial_number = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %serial_number to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %serial_number, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.33, i64 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_version_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_board_info = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_board_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %board_version = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %board_version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board_version, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ram_size_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_board_info = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_board_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ram_size = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %ram_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ram_size, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_address1_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_board_info = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_board_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mac_address1 = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 14
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef %mac_address1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mac_address2_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_board_info = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %has_board_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_board_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %mac_address2 = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 15
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef %mac_address2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pubkey_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rwtm.i = getelementptr inbounds %struct.mox_kobject, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %rwtm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rwtm.i, align 4
  %has_pubkey = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %has_pubkey to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %has_pubkey, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pubkey = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 17
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, ptr noundef %pubkey)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_sign_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %ppos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ppos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %3)
  %cmp.not = icmp eq i64 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 136, i32 %len)
  %cmp1 = icmp ult i32 %len, 136
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %last_sig_done = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %last_sig_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_sig_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %last_sig = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 19
  %call = tail call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef %last_sig, i32 noundef 136) #10
  %6 = ptrtoint ptr %last_sig_done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %last_sig_done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end5 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @do_sign_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %msg = alloca %struct.armada_37xx_rwtm_tx_msg, align 4
  %dummy = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reply1 = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %msg) #10
  %2 = call ptr @memset(ptr %msg, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy) #10
  %3 = ptrtoint ptr %dummy to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %dummy, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %len)
  %cmp.not = icmp eq i32 %len, 64
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %last_sig_done = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %last_sig_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_sig_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %busy = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 8
  %call = tail call i32 @mutex_trylock(ptr noundef %busy) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %buf7 = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf7, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %7, align 1
  %9 = load ptr, ptr %buf7, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 4
  %call9 = call i32 @simple_write_to_buffer(ptr noundef %add.ptr, i32 noundef 64, ptr noundef nonnull %dummy, ptr noundef %buf, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end6.cleanup.sink.split_crit_edge, label %if.end12

if.end6.cleanup.sink.split_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 5, ptr %msg, align 4
  %args = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1
  %11 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %args, align 4
  %buf_phys = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %buf_phys to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_phys, align 4
  %arrayidx16 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx16, align 4
  %add = add i32 %13, 68
  %arrayidx19 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %arrayidx19, align 4
  %add21 = add i32 %13, 136
  %arrayidx23 = getelementptr inbounds %struct.armada_37xx_rwtm_tx_msg, ptr %msg, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add21, ptr %arrayidx23, align 4
  %mbox = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mbox, align 8
  %call24 = call i32 @mbox_send_message(ptr noundef %18, ptr noundef nonnull %msg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end12.cleanup.sink.split_crit_edge, label %if.end27

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.end12
  %cmd_done = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 9
  %call28 = call i32 @wait_for_completion_interruptible(ptr noundef %cmd_done) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup.sink.split_crit_edge, label %if.end31

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end27
  %19 = ptrtoint ptr %reply1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reply1, align 4
  %shr = lshr i32 %20, 10
  %and = and i32 %shr, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %20)
  %cmp35.not = icmp ult i32 %20, 1073741824
  br i1 %cmp35.not, label %if.end37, label %if.end31.cleanup.sink.split_crit_edge

if.end31.cleanup.sink.split_crit_edge:            ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %last_sig = getelementptr inbounds %struct.mox_rwtm, ptr %1, i32 0, i32 19
  %21 = ptrtoint ptr %buf7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %buf7, align 8
  %add.ptr39 = getelementptr i8, ptr %22, i32 68
  %23 = call ptr @memcpy(ptr %last_sig, ptr %add.ptr39, i32 136)
  call fastcc void @cpu_to_be32_array(ptr noundef %last_sig, ptr noundef %last_sig)
  %24 = ptrtoint ptr %last_sig_done to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %last_sig_done, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end37, %if.end31.cleanup.sink.split_crit_edge, %if.end27.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %if.end6.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ 64, %if.end37 ], [ %call9, %if.end6.cleanup.sink.split_crit_edge ], [ %call24, %if.end12.cleanup.sink.split_crit_edge ], [ %call28, %if.end27.cleanup.sink.split_crit_edge ], [ %and, %if.end31.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %busy) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy) #10
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %msg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rwtm_debug_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpu_to_be32_array(ptr nocapture noundef writeonly %dst, ptr nocapture noundef readonly %src) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dst, align 4
  %arrayidx.1 = getelementptr i32, ptr %src, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr i32, ptr %dst, i32 1
  %5 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx1.1, align 4
  %arrayidx.2 = getelementptr i32, ptr %src, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr i32, ptr %dst, i32 2
  %8 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx1.2, align 4
  %arrayidx.3 = getelementptr i32, ptr %src, i32 3
  %9 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr i32, ptr %dst, i32 3
  %11 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx1.3, align 4
  %arrayidx.4 = getelementptr i32, ptr %src, i32 4
  %12 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.4, align 4
  %arrayidx1.4 = getelementptr i32, ptr %dst, i32 4
  %14 = ptrtoint ptr %arrayidx1.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx1.4, align 4
  %arrayidx.5 = getelementptr i32, ptr %src, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5, align 4
  %arrayidx1.5 = getelementptr i32, ptr %dst, i32 5
  %17 = ptrtoint ptr %arrayidx1.5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx1.5, align 4
  %arrayidx.6 = getelementptr i32, ptr %src, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.6, align 4
  %arrayidx1.6 = getelementptr i32, ptr %dst, i32 6
  %20 = ptrtoint ptr %arrayidx1.6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx1.6, align 4
  %arrayidx.7 = getelementptr i32, ptr %src, i32 7
  %21 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7, align 4
  %arrayidx1.7 = getelementptr i32, ptr %dst, i32 7
  %23 = ptrtoint ptr %arrayidx1.7 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx1.7, align 4
  %arrayidx.8 = getelementptr i32, ptr %src, i32 8
  %24 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.8, align 4
  %arrayidx1.8 = getelementptr i32, ptr %dst, i32 8
  %26 = ptrtoint ptr %arrayidx1.8 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx1.8, align 4
  %arrayidx.9 = getelementptr i32, ptr %src, i32 9
  %27 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.9, align 4
  %arrayidx1.9 = getelementptr i32, ptr %dst, i32 9
  %29 = ptrtoint ptr %arrayidx1.9 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %arrayidx1.9, align 4
  %arrayidx.10 = getelementptr i32, ptr %src, i32 10
  %30 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.10, align 4
  %arrayidx1.10 = getelementptr i32, ptr %dst, i32 10
  %32 = ptrtoint ptr %arrayidx1.10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx1.10, align 4
  %arrayidx.11 = getelementptr i32, ptr %src, i32 11
  %33 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.11, align 4
  %arrayidx1.11 = getelementptr i32, ptr %dst, i32 11
  %35 = ptrtoint ptr %arrayidx1.11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %arrayidx1.11, align 4
  %arrayidx.12 = getelementptr i32, ptr %src, i32 12
  %36 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.12, align 4
  %arrayidx1.12 = getelementptr i32, ptr %dst, i32 12
  %38 = ptrtoint ptr %arrayidx1.12 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx1.12, align 4
  %arrayidx.13 = getelementptr i32, ptr %src, i32 13
  %39 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.13, align 4
  %arrayidx1.13 = getelementptr i32, ptr %dst, i32 13
  %41 = ptrtoint ptr %arrayidx1.13 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx1.13, align 4
  %arrayidx.14 = getelementptr i32, ptr %src, i32 14
  %42 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.14, align 4
  %arrayidx1.14 = getelementptr i32, ptr %dst, i32 14
  %44 = ptrtoint ptr %arrayidx1.14 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx1.14, align 4
  %arrayidx.15 = getelementptr i32, ptr %src, i32 15
  %45 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.15, align 4
  %arrayidx1.15 = getelementptr i32, ptr %dst, i32 15
  %47 = ptrtoint ptr %arrayidx1.15 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %arrayidx1.15, align 4
  %arrayidx.16 = getelementptr i32, ptr %src, i32 16
  %48 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.16, align 4
  %arrayidx1.16 = getelementptr i32, ptr %dst, i32 16
  %50 = ptrtoint ptr %arrayidx1.16 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx1.16, align 4
  %arrayidx.17 = getelementptr i32, ptr %src, i32 17
  %51 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.17, align 4
  %arrayidx1.17 = getelementptr i32, ptr %dst, i32 17
  %53 = ptrtoint ptr %arrayidx1.17 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %arrayidx1.17, align 4
  %arrayidx.18 = getelementptr i32, ptr %src, i32 18
  %54 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.18, align 4
  %arrayidx1.18 = getelementptr i32, ptr %dst, i32 18
  %56 = ptrtoint ptr %arrayidx1.18 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %arrayidx1.18, align 4
  %arrayidx.19 = getelementptr i32, ptr %src, i32 19
  %57 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.19, align 4
  %arrayidx1.19 = getelementptr i32, ptr %dst, i32 19
  %59 = ptrtoint ptr %arrayidx1.19 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %arrayidx1.19, align 4
  %arrayidx.20 = getelementptr i32, ptr %src, i32 20
  %60 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.20, align 4
  %arrayidx1.20 = getelementptr i32, ptr %dst, i32 20
  %62 = ptrtoint ptr %arrayidx1.20 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx1.20, align 4
  %arrayidx.21 = getelementptr i32, ptr %src, i32 21
  %63 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.21, align 4
  %arrayidx1.21 = getelementptr i32, ptr %dst, i32 21
  %65 = ptrtoint ptr %arrayidx1.21 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx1.21, align 4
  %arrayidx.22 = getelementptr i32, ptr %src, i32 22
  %66 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.22, align 4
  %arrayidx1.22 = getelementptr i32, ptr %dst, i32 22
  %68 = ptrtoint ptr %arrayidx1.22 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %arrayidx1.22, align 4
  %arrayidx.23 = getelementptr i32, ptr %src, i32 23
  %69 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.23, align 4
  %arrayidx1.23 = getelementptr i32, ptr %dst, i32 23
  %71 = ptrtoint ptr %arrayidx1.23 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx1.23, align 4
  %arrayidx.24 = getelementptr i32, ptr %src, i32 24
  %72 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.24, align 4
  %arrayidx1.24 = getelementptr i32, ptr %dst, i32 24
  %74 = ptrtoint ptr %arrayidx1.24 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %arrayidx1.24, align 4
  %arrayidx.25 = getelementptr i32, ptr %src, i32 25
  %75 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.25, align 4
  %arrayidx1.25 = getelementptr i32, ptr %dst, i32 25
  %77 = ptrtoint ptr %arrayidx1.25 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx1.25, align 4
  %arrayidx.26 = getelementptr i32, ptr %src, i32 26
  %78 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.26, align 4
  %arrayidx1.26 = getelementptr i32, ptr %dst, i32 26
  %80 = ptrtoint ptr %arrayidx1.26 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx1.26, align 4
  %arrayidx.27 = getelementptr i32, ptr %src, i32 27
  %81 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.27, align 4
  %arrayidx1.27 = getelementptr i32, ptr %dst, i32 27
  %83 = ptrtoint ptr %arrayidx1.27 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %82, ptr %arrayidx1.27, align 4
  %arrayidx.28 = getelementptr i32, ptr %src, i32 28
  %84 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.28, align 4
  %arrayidx1.28 = getelementptr i32, ptr %dst, i32 28
  %86 = ptrtoint ptr %arrayidx1.28 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %arrayidx1.28, align 4
  %arrayidx.29 = getelementptr i32, ptr %src, i32 29
  %87 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.29, align 4
  %arrayidx1.29 = getelementptr i32, ptr %dst, i32 29
  %89 = ptrtoint ptr %arrayidx1.29 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %arrayidx1.29, align 4
  %arrayidx.30 = getelementptr i32, ptr %src, i32 30
  %90 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.30, align 4
  %arrayidx1.30 = getelementptr i32, ptr %dst, i32 30
  %92 = ptrtoint ptr %arrayidx1.30 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %arrayidx1.30, align 4
  %arrayidx.31 = getelementptr i32, ptr %src, i32 31
  %93 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx.31, align 4
  %arrayidx1.31 = getelementptr i32, ptr %dst, i32 31
  %95 = ptrtoint ptr %arrayidx1.31 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %arrayidx1.31, align 4
  %arrayidx.32 = getelementptr i32, ptr %src, i32 32
  %96 = ptrtoint ptr %arrayidx.32 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.32, align 4
  %arrayidx1.32 = getelementptr i32, ptr %dst, i32 32
  %98 = ptrtoint ptr %arrayidx1.32 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %arrayidx1.32, align 4
  %arrayidx.33 = getelementptr i32, ptr %src, i32 33
  %99 = ptrtoint ptr %arrayidx.33 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.33, align 4
  %arrayidx1.33 = getelementptr i32, ptr %dst, i32 33
  %101 = ptrtoint ptr %arrayidx1.33 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx1.33, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly inlinehint nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_turris_mox_rwtm__230_586_turris_mox_rwtm_driver_init6, !1, !"__initcall__kmod_turris_mox_rwtm__230_586_turris_mox_rwtm_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 586, i32 1}
!2 = !{ptr @__exitcall_turris_mox_rwtm_driver_exit, !1, !"__exitcall_turris_mox_rwtm_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file231, !4, !"__UNIQUE_ID_file231", i1 false, i1 false}
!4 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 588, i32 1}
!5 = !{ptr @__UNIQUE_ID_license232, !4, !"__UNIQUE_ID_license232", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description233, !7, !"__UNIQUE_ID_description233", i1 false, i1 false}
!7 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 589, i32 1}
!8 = !{ptr @__UNIQUE_ID_author234, !9, !"__UNIQUE_ID_author234", i1 false, i1 false}
!9 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 590, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 582, i32 12}
!12 = !{ptr @turris_mox_rwtm_driver, !13, !"turris_mox_rwtm_driver", i1 false, i1 false}
!13 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 578, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 489, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @turris_mox_rwtm_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @turris_mox_rwtm_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 495, i32 3}
!24 = !{ptr @turris_mox_rwtm_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @turris_mox_rwtm_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @turris_mox_rwtm_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 501, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 510, i32 4}
!31 = !{ptr @turris_mox_rwtm_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @turris_mox_rwtm_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 519, i32 3}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @turris_mox_rwtm_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @turris_mox_rwtm_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 523, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @turris_mox_rwtm_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @turris_mox_rwtm_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 528, i32 21}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 535, i32 3}
!47 = !{ptr @turris_mox_rwtm_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @turris_mox_rwtm_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 541, i32 3}
!51 = !{ptr @turris_mox_rwtm_probe._entry.25, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @turris_mox_rwtm_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 545, i32 2}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @turris_mox_rwtm_probe._entry.28, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @turris_mox_rwtm_probe._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @mox_kobj_ktype, !59, !"mox_kobj_ktype", i1 false, i1 false}
!59 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 107, i32 25}
!60 = !{ptr @mox_rwtm_attrs, !61, !"mox_rwtm_attrs", i1 false, i1 false}
!61 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 162, i32 32}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 141, i32 1}
!64 = !{ptr @mox_attr_serial_number, !63, !"mox_attr_serial_number", i1 false, i1 false}
!65 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 142, i32 1}
!68 = !{ptr @mox_attr_board_version, !67, !"mox_attr_board_version", i1 false, i1 false}
!69 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 143, i32 1}
!72 = !{ptr @mox_attr_ram_size, !71, !"mox_attr_ram_size", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 144, i32 1}
!75 = !{ptr @mox_attr_mac_address1, !74, !"mox_attr_mac_address1", i1 false, i1 false}
!76 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 145, i32 1}
!79 = !{ptr @mox_attr_mac_address2, !78, !"mox_attr_mac_address2", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 146, i32 1}
!82 = !{ptr @mox_attr_pubkey, !81, !"mox_attr_pubkey", i1 false, i1 false}
!83 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @init_completion.__key, !85, !"__key", i1 false, i1 false}
!85 = !{!"../include/linux/completion.h", i32 87, i32 2}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 208, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @mox_get_board_info._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @mox_get_board_info._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 211, i32 3}
!94 = !{ptr @mox_get_board_info._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @mox_get_board_info._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 227, i32 3}
!98 = !{ptr @mox_get_board_info._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mox_get_board_info._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 229, i32 3}
!102 = !{ptr @mox_get_board_info._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @mox_get_board_info._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 230, i32 3}
!106 = !{ptr @mox_get_board_info._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @mox_get_board_info._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 244, i32 3}
!110 = !{ptr @mox_get_board_info._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @mox_get_board_info._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 246, i32 3}
!114 = !{ptr @mox_get_board_info._entry.60, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @mox_get_board_info._entry_ptr.62, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 255, i32 4}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 443, i32 37}
!120 = !{ptr @do_sign_fops, !121, !"do_sign_fops", i1 false, i1 false}
!121 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 426, i32 37}
!122 = !{ptr @turris_mox_rwtm_match, !123, !"turris_mox_rwtm_match", i1 false, i1 false}
!123 = !{!"../drivers/firmware/turris-mox-rwtm.c", i32 570, i32 34}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
