; ModuleID = '/llk/IR_all_yes/drivers/bus/moxtet.c_pt.bc'
source_filename = "../drivers/bus/moxtet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__moxtet_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc___moxtet_register_driver\09\09\09\09"
module asm "\09.long\09__crc___moxtet_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___moxtet_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22__moxtet_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns___moxtet_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+moxtet_device_read\22, \22a\22\09"
module asm "\09.weak\09__crc_moxtet_device_read\09\09\09\09"
module asm "\09.long\09__crc_moxtet_device_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_moxtet_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22moxtet_device_read\22\09\09\09\09\09"
module asm "__kstrtabns_moxtet_device_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+moxtet_device_write\22, \22a\22\09"
module asm "\09.weak\09__crc_moxtet_device_write\09\09\09\09"
module asm "\09.long\09__crc_moxtet_device_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_moxtet_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22moxtet_device_write\22\09\09\09\09\09"
module asm "__kstrtabns_moxtet_device_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+moxtet_device_written\22, \22a\22\09"
module asm "\09.weak\09__crc_moxtet_device_written\09\09\09\09"
module asm "\09.long\09__crc_moxtet_device_written\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_moxtet_device_written:\09\09\09\09\09"
module asm "\09.asciz \09\22moxtet_device_written\22\09\09\09\09\09"
module asm "__kstrtabns_moxtet_device_written:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.72 = type { ptr, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.moxtet_driver = type { ptr, %struct.device_driver }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.moxtet_device = type { %struct.device, ptr, i32, i32 }
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
%struct.moxtet = type { ptr, %struct.mutex, [10 x i8], i32, [10 x i8], i32, %struct.anon.71, ptr }
%struct.anon.71 = type { ptr, %struct.irq_chip, i32, i32, [16 x %struct.moxtet_irqpos] }
%struct.moxtet_irqpos = type { i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
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
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@moxtet_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr @moxtet_dev_groups, ptr null, ptr @moxtet_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab___moxtet_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns___moxtet_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab___moxtet_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__moxtet_register_driver to i32), ptr @__kstrtab___moxtet_register_driver, ptr @__kstrtabns___moxtet_register_driver }, section "___ksymtab_gpl+__moxtet_register_driver", align 4
@__kstrtab_moxtet_device_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_moxtet_device_read = external dso_local constant [0 x i8], align 1
@__ksymtab_moxtet_device_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @moxtet_device_read to i32), ptr @__kstrtab_moxtet_device_read, ptr @__kstrtabns_moxtet_device_read }, section "___ksymtab_gpl+moxtet_device_read", align 4
@__kstrtab_moxtet_device_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_moxtet_device_write = external dso_local constant [0 x i8], align 1
@__ksymtab_moxtet_device_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @moxtet_device_write to i32), ptr @__kstrtab_moxtet_device_write, ptr @__kstrtabns_moxtet_device_write }, section "___ksymtab_gpl+moxtet_device_write", align 4
@__kstrtab_moxtet_device_written = external dso_local constant [0 x i8], align 1
@__kstrtabns_moxtet_device_written = external dso_local constant [0 x i8], align 1
@__ksymtab_moxtet_device_written = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @moxtet_device_written to i32), ptr @__kstrtab_moxtet_device_written, ptr @__kstrtabns_moxtet_device_written }, section "___ksymtab_gpl+moxtet_device_written", align 4
@__initcall__kmod_moxtet__235_873_moxtet_init2s = internal global ptr @moxtet_init, section ".initcall2s.init", align 4
@moxtet_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @moxtet_probe, ptr @moxtet_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @moxtet_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_moxtet_exit = internal global ptr @moxtet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author236 = internal constant [45 x i8] c"moxtet.author=Marek Behun <kabel@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [64 x i8] c"moxtet.description=CZ.NIC's Turris Mox module configuration bus\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [31 x i8] c"moxtet.file=drivers/bus/moxtet\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [22 x i8] c"moxtet.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"moxtet\00", [25 x i8] zeroinitializer }, align 32
@moxtet_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @moxtet_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@moxtet_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @moxtet_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@moxtet_dev_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_module_id, ptr @dev_attr_module_name, ptr @dev_attr_module_description, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_module_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @module_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_module_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @module_name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_module_description = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @module_description_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"module_id\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"module_name\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@mox_module_table = internal constant { [7 x %struct.anon.72], [48 x i8] } { [7 x %struct.anon.72] [%struct.anon.72 zeroinitializer, %struct.anon.72 { ptr @.str.6, i32 -1, i32 0, ptr @.str.7 }, %struct.anon.72 { ptr @.str.8, i32 0, i32 1, ptr @.str.9 }, %struct.anon.72 { ptr @.str.10, i32 12, i32 1, ptr @.str.11 }, %struct.anon.72 { ptr @.str.12, i32 8, i32 1, ptr @.str.13 }, %struct.anon.72 { ptr @.str.14, i32 4, i32 2, ptr @.str.15 }, %struct.anon.72 { ptr @.str.16, i32 -1, i32 0, ptr @.str.17 }], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sfp\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"MOX D (SFP cage)\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pci\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MOX B (Mini-PCIe)\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"topaz\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MOX C (4 port switch)\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"peridot\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"MOX E (8 port switch)\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usb3\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MOX F (USB 3.0)\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-bridge\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MOX G (Mini-PCIe bridge)\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"module_description\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@moxtet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.22, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013moxtet bus registration failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"moxtet_init\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/bus/moxtet.c\00", [43 x i8] zeroinitializer }, align 32
@moxtet_init._entry_ptr = internal global ptr @moxtet_init._entry, section ".printk_index", align 4
@moxtet_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.21, ptr @.str.22, i32 862, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013moxtet spi driver registration failed: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@moxtet_init._entry_ptr.25 = internal global ptr @moxtet_init._entry.23, section ".printk_index", align 4
@moxtet_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cznic,moxtet\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@moxtet_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&moxtet->lock\00", [18 x i8] zeroinitializer }, align 32
@moxtet_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.22, i32 793, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No IRQ resource found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moxtet_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@moxtet_probe._entry_ptr = internal global ptr @moxtet_probe._entry, section ".printk_index", align 4
@moxtet_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.28, ptr @.str.22, i32 813, ptr @.str.33, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed creating debugfs entries: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@moxtet_probe._entry_ptr.34 = internal global ptr @moxtet_probe._entry.31, section ".printk_index", align 4
@moxtet_find_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.22, i32 345, ptr @.str.37, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Found MOX A (eMMC CPU) module\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"moxtet_find_topology\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr = internal global ptr @moxtet_find_topology._entry, section ".printk_index", align 4
@moxtet_find_topology._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.22, i32 347, ptr @.str.37, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Found MOX A (CPU) module\0A\00", [38 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr.40 = internal global ptr @moxtet_find_topology._entry.38, section ".printk_index", align 4
@moxtet_find_topology._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.36, ptr @.str.22, i32 350, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid Turris MOX A CPU module 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr.43 = internal global ptr @moxtet_find_topology._entry.41, section ".printk_index", align 4
@moxtet_find_topology._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.36, ptr @.str.22, i32 369, ptr @.str.37, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Found %s module\0A\00", [47 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr.46 = internal global ptr @moxtet_find_topology._entry.44, section ".printk_index", align 4
@moxtet_find_topology._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.36, ptr @.str.22, i32 374, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"  Cannot set IRQ for module %s\0A\00", [32 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr.49 = internal global ptr @moxtet_find_topology._entry.47, section ".printk_index", align 4
@moxtet_find_topology._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.36, ptr @.str.22, i32 378, ptr @.str.33, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unknown Moxtet module found (ID 0x%02x)\0A\00", [55 x i8] zeroinitializer }, align 32
@moxtet_find_topology._entry_ptr.52 = internal global ptr @moxtet_find_topology._entry.50, section ".printk_index", align 4
@moxtet_irq_domain = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @moxtet_irq_domain_map, ptr null, ptr @moxtet_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@moxtet_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.22, i32 746, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not add IRQ domain\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"moxtet_irq_setup\00", [47 x i8] zeroinitializer }, align 32
@moxtet_irq_setup._entry_ptr = internal global ptr @moxtet_irq_setup._entry, section ".printk_index", align 4
@moxtet_irq_chip = internal constant { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @moxtet_irq_mask, ptr null, ptr @moxtet_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @moxtet_irq_print_chip, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@moxtet_irq_domain_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.22, i32 603, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid hw irq number\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"moxtet_irq_domain_map\00", [42 x i8] zeroinitializer }, align 32
@moxtet_irq_domain_map._entry_ptr = internal global ptr @moxtet_irq_domain_map._entry, section ".printk_index", align 4
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" moxtet-%s.%i#%i\00", [47 x i8] zeroinitializer }, align 32
@moxtet_irq_thread_fn.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.22, ptr @.str.59, i8 0, i8 -79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"moxtet_irq_thread_fn\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%i irq\0A\00", [24 x i8] zeroinitializer }, align 32
@of_register_moxtet_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.22, i32 275, ptr @.str.33, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to create Moxtet device for %pOF\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"of_register_moxtet_devices\00", [37 x i8] zeroinitializer }, align 32
@of_register_moxtet_devices._entry_ptr = internal global ptr @of_register_moxtet_devices._entry, section ".printk_index", align 4
@of_register_moxtet_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.22, i32 213, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Moxtet device alloc error for %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"of_register_moxtet_device\00", [38 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry_ptr = internal global ptr @of_register_moxtet_device._entry, section ".printk_index", align 4
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.22, i32 220, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOF has no valid 'reg' property (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry_ptr.67 = internal global ptr @of_register_moxtet_device._entry.65, section ".printk_index", align 4
@of_register_moxtet_device._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.63, ptr @.str.22, i32 228, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%pOF Moxtet address 0x%x out of range\0A\00", [57 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry_ptr.70 = internal global ptr @of_register_moxtet_device._entry.68, section ".printk_index", align 4
@of_register_moxtet_device._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.63, ptr @.str.22, i32 237, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%pOF Moxtet address 0x%x is empty\0A\00", [61 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry_ptr.73 = internal global ptr @of_register_moxtet_device._entry.71, section ".printk_index", align 4
@of_register_moxtet_device._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.63, ptr @.str.22, i32 248, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Moxtet device register error for %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@of_register_moxtet_device._entry_ptr.76 = internal global ptr @of_register_moxtet_device._entry.74, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@moxtet_add_device.add_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.77, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @moxtet_add_device.add_mutex, i64 52), ptr getelementptr (i8, ptr @moxtet_add_device.add_mutex, i64 52) }, ptr @moxtet_add_device.add_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.78, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"add_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"add_mutex\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"moxtet-%s.%u\00", [19 x i8] zeroinitializer }, align 32
@moxtet_add_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.22, i32 184, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't add %s, status %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"moxtet_add_device\00", [46 x i8] zeroinitializer }, align 32
@moxtet_add_device._entry_ptr = internal global ptr @moxtet_add_device._entry, section ".printk_index", align 4
@moxtet_register_devices_from_topology._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.22, i32 291, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Moxtet device %u alloc error\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"moxtet_register_devices_from_topology\00", [58 x i8] zeroinitializer }, align 32
@moxtet_register_devices_from_topology._entry_ptr = internal global ptr @moxtet_register_devices_from_topology._entry, section ".printk_index", align 4
@moxtet_register_devices_from_topology._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.22, i32 303, ptr @.str.29, ptr @.str.30 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Moxtet device %u register error: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@moxtet_register_devices_from_topology._entry_ptr.86 = internal global ptr @moxtet_register_devices_from_topology._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@input_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @input_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @moxtet_debug_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@output_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @output_read, ptr @output_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @moxtet_debug_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@hex_asc = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967280]
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"moxtet_bus_type\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 105, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"moxtet_spi_driver\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 841, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 106, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"moxtet_dev_groups\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 81, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"moxtet_dev_group\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 77, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [17 x i8] c"moxtet_dev_attrs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 70, i32 26 }
@___asan_gen_.108 = private unnamed_addr constant [19 x i8] c"dev_attr_module_id\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [21 x i8] c"dev_attr_module_name\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [28 x i8] c"dev_attr_module_description\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 64, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 65, i32 1 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"mox_module_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 30, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 51, i32 10 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 33, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 33, i32 20 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 34, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 34, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 35, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 35, i32 34 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 36, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 36, i32 41 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 37, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 37, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 38, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 38, i32 27 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 66, i32 1 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 856, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 862, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant [14 x i8] c"moxtet_dt_ids\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 835, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 786, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 793, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 812, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 345, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 347, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 349, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 368, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 372, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 376, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant [18 x i8] c"moxtet_irq_domain\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 635, i32 36 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 746, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant [16 x i8] c"moxtet_irq_chip\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 666, i32 30 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 603, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 662, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 709, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 273, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 212, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 217, i32 33 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 219, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 227, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 236, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 247, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [10 x i8] c"add_mutex\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 165, i32 9 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 171, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 183, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 290, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 301, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 564, i32 37 }
@___asan_gen_.387 = private unnamed_addr constant [11 x i8] c"input_fops\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 483, i32 37 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 569, i32 37 }
@___asan_gen_.393 = private unnamed_addr constant [12 x i8] c"output_fops\00", align 1
@___asan_gen_.394 = private constant [24 x i8] c"../drivers/bus/moxtet.c\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.394, i32 547, i32 37 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_moxtet_exit, ptr @__initcall__kmod_moxtet__235_873_moxtet_init2s, ptr @__ksymtab___moxtet_register_driver, ptr @__ksymtab_moxtet_device_read, ptr @__ksymtab_moxtet_device_write, ptr @__ksymtab_moxtet_device_written, ptr @moxtet_add_device._entry, ptr @moxtet_add_device._entry_ptr, ptr @moxtet_exit, ptr @moxtet_find_topology._entry, ptr @moxtet_find_topology._entry.38, ptr @moxtet_find_topology._entry.41, ptr @moxtet_find_topology._entry.44, ptr @moxtet_find_topology._entry.47, ptr @moxtet_find_topology._entry.50, ptr @moxtet_find_topology._entry_ptr, ptr @moxtet_find_topology._entry_ptr.40, ptr @moxtet_find_topology._entry_ptr.43, ptr @moxtet_find_topology._entry_ptr.46, ptr @moxtet_find_topology._entry_ptr.49, ptr @moxtet_find_topology._entry_ptr.52, ptr @moxtet_init._entry, ptr @moxtet_init._entry.23, ptr @moxtet_init._entry_ptr, ptr @moxtet_init._entry_ptr.25, ptr @moxtet_irq_domain_map._entry, ptr @moxtet_irq_domain_map._entry_ptr, ptr @moxtet_irq_setup._entry, ptr @moxtet_irq_setup._entry_ptr, ptr @moxtet_probe._entry, ptr @moxtet_probe._entry.31, ptr @moxtet_probe._entry_ptr, ptr @moxtet_probe._entry_ptr.34, ptr @moxtet_register_devices_from_topology._entry, ptr @moxtet_register_devices_from_topology._entry.84, ptr @moxtet_register_devices_from_topology._entry_ptr, ptr @moxtet_register_devices_from_topology._entry_ptr.86, ptr @of_register_moxtet_device._entry, ptr @of_register_moxtet_device._entry.65, ptr @of_register_moxtet_device._entry.68, ptr @of_register_moxtet_device._entry.71, ptr @of_register_moxtet_device._entry.74, ptr @of_register_moxtet_device._entry_ptr, ptr @of_register_moxtet_device._entry_ptr.67, ptr @of_register_moxtet_device._entry_ptr.70, ptr @of_register_moxtet_device._entry_ptr.73, ptr @of_register_moxtet_device._entry_ptr.76, ptr @of_register_moxtet_devices._entry, ptr @of_register_moxtet_devices._entry_ptr, ptr @moxtet_bus_type, ptr @moxtet_spi_driver, ptr @.str, ptr @moxtet_dev_groups, ptr @moxtet_dev_group, ptr @moxtet_dev_attrs, ptr @dev_attr_module_id, ptr @dev_attr_module_name, ptr @dev_attr_module_description, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @mox_module_table, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @moxtet_dt_ids, ptr @moxtet_probe.__key, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @moxtet_irq_domain, ptr @.str.53, ptr @.str.54, ptr @moxtet_irq_chip, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @moxtet_add_device.add_mutex, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @input_fops, ptr @.str.88, ptr @output_fops], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_dev_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_module_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_module_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_module_description to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mox_module_table to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_find_topology._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_irq_domain to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_irq_domain_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_device._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_device._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_device._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_register_moxtet_device._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_add_device.add_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_add_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_register_devices_from_topology._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @moxtet_register_devices_from_topology._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @output_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__moxtet_register_driver(ptr noundef %owner, ptr noundef %mdrv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.moxtet_driver, ptr %mdrv, i32 0, i32 1
  %owner1 = getelementptr inbounds %struct.moxtet_driver, ptr %mdrv, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %owner1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %owner, ptr %owner1, align 4
  %bus = getelementptr inbounds %struct.moxtet_driver, ptr %mdrv, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @moxtet_bus_type, ptr %bus, align 4
  %call = tail call i32 @driver_register(ptr noundef %driver) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @moxtet_device_read(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %moxtet1 = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %moxtet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moxtet1, align 8
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #13
  %idx = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 3
  %2 = call ptr @memset(ptr %buf, i32 255, i32 10)
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %idx, align 8
  %count = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ult i32 %4, %6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #13
  %7 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %8 = call ptr @memset(ptr %7, i32 0, i32 84)
  %tx.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx.i, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %10 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %buf, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %add.i = add i32 %6, 1
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %len.i, align 4
  %lock.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #13
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.moxtet_spi_read.exit_crit_edge

if.end.moxtet_spi_read.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %moxtet_spi_read.exit

moxtet_spi_read.exit:                             ; preds = %if.end.i.i.i.i.i.i, %if.end.moxtet_spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #13
  call void @mutex_unlock(ptr noundef %lock.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %moxtet_spi_read.exit.cleanup_crit_edge, label %if.end5

moxtet_spi_read.exit.cleanup_crit_edge:           ; preds = %moxtet_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %moxtet_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %idx, align 8
  %add = add i32 %25, 1
  %arrayidx = getelementptr [10 x i8], ptr %buf, i32 0, i32 %add
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  %28 = lshr i8 %27, 4
  %29 = zext i8 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %moxtet_spi_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %moxtet_spi_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @moxtet_device_write(ptr nocapture noundef readonly %dev, i8 noundef zeroext %val) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %moxtet1 = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %moxtet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moxtet1, align 8
  %idx = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %count = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %tx = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %sub = sub i32 %7, %9
  %arrayidx = getelementptr %struct.moxtet, ptr %1, i32 0, i32 4, i32 %sub
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %val, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = load i32, ptr %count, align 4
  %add = add i32 %13, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #13
  %14 = getelementptr inbounds i8, ptr %t.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 92)
  %16 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #13
  %18 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_write.exit_crit_edge

if.end.spi_write.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %spi_write.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @moxtet_device_written(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %moxtet1 = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %moxtet1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moxtet1, align 8
  %idx = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idx, align 8
  %count = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not = icmp ugt i32 %5, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %sub = sub i32 %5, %3
  %arrayidx = getelementptr %struct.moxtet, ptr %1, i32 0, i32 4, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @moxtet_bus_type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %call) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @moxtet_spi_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %call2) #16
  tail call void @bus_unregister(ptr noundef nonnull @moxtet_bus_type) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call, %do.end ], [ %call2, %do.end7 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @moxtet_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @moxtet_spi_driver, i32 0, i32 4)) #13
  tail call void @bus_unregister(ptr noundef nonnull @moxtet_bus_type) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_match(ptr noundef %dev, ptr noundef readonly %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %of_match_table.i = getelementptr inbounds %struct.device_driver, ptr %drv, i32 0, i32 6
  %0 = ptrtoint ptr %of_match_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_match_table.i, align 4
  %call.i = tail call ptr @of_match_device(ptr noundef %1, ptr noundef %dev) #13
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %drv, null
  %add.ptr.i = getelementptr i8, ptr %drv, i32 -4
  %retval.0.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i
  %2 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %retval.0.i, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool7.not18 = icmp eq i32 %5, 0
  br i1 %tobool7.not18, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %incdec.ptr = getelementptr i32, ptr %t.019, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %incdec.ptr, align 4
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %10 = phi i32 [ %5, %for.body.lr.ph ], [ %9, %for.cond.for.body_crit_edge ]
  %t.019 = phi ptr [ %3, %for.body.lr.ph ], [ %incdec.ptr, %for.cond.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %7)
  %cmp = icmp eq i32 %10, %7
  br i1 %cmp, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %if.then.i, label %entry.mox_module_name.exit_crit_edge

entry.mox_module_name.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mox_module_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  br label %mox_module_name.exit

mox_module_name.exit:                             ; preds = %if.then.i, %entry.mox_module_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ @.str.5, %entry.mox_module_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, ptr noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @module_description_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %a, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp ult i32 %2, 6
  br i1 %3, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %desc = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi ptr [ %5, %cond.true ], [ @.str.19, %entry.cond.end_crit_edge ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.4, ptr noundef %cond)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_probe(ptr noundef %spi) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %irq.i.i.i = alloca i32, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %buf.i = alloca [10 x i8], align 1
  %cnts.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @spi_setup(ptr noundef %spi) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 312, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @moxtet_probe.__key) #13
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call7 = tail call i32 @of_irq_get(ptr noundef %5, i32 noundef 0) #13
  %dev_irq = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %dev_irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call7, ptr %dev_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call7)
  %cmp9 = icmp eq i32 %call7, -517
  br i1 %cmp9, label %if.end3.cleanup_crit_edge, label %if.end11

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp13 = icmp slt i32 %call7, 1
  br i1 %cmp13, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.27) #16
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf.i) #13
  %9 = call ptr @memset(ptr %buf.i, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cnts.i) #13
  %10 = call ptr @memset(ptr %cnts.i, i32 0, i32 24)
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #13
  %13 = call ptr @memset(ptr %t.i.i, i32 0, i32 96)
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %rx_buf.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 10, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #13
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #13
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end19.spi_read.exit.i_crit_edge

if.end19.spi_read.exit.i_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %spi_read.exit.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_read.exit.i

spi_read.exit.i:                                  ; preds = %if.end.i.i.i.i.i.i.i, %if.end19.spi_read.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %spi_read.exit.i.moxtet_find_topology.exit.thread_crit_edge, label %if.end.i

spi_read.exit.i.moxtet_find_topology.exit.thread_crit_edge: ; preds = %spi_read.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_find_topology.exit.thread

if.end.i:                                         ; preds = %spi_read.exit.i
  %26 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf.i, align 1
  %28 = zext i8 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i8 %27, label %do.end19.i [
    i8 0, label %if.end.i.if.end24.i_crit_edge
    i8 16, label %do.end14.i
  ]

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

do.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24.i

do.end19.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv.i = zext i8 %27 to i32
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.42, i32 noundef %conv.i) #16
  br label %moxtet_find_topology.exit.thread

if.end24.i:                                       ; preds = %do.end14.i, %if.end.i.if.end24.i_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.39, %do.end14.i ], [ @.str.35, %if.end.i.if.end24.i_crit_edge ]
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull %.str.39.sink.i) #16
  %count.i = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %count.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end24.i
  %i.094.i = phi i32 [ 1, %if.end24.i ], [ %inc65.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx27.i = getelementptr [10 x i8], ptr %buf.i, i32 0, i32 %i.094.i
  %34 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %35)
  %cmp29.i = icmp eq i8 %35, -1
  br i1 %cmp29.i, label %for.body.i.if.end23_crit_edge, label %if.end32.i

for.body.i.if.end23_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

if.end32.i:                                       ; preds = %for.body.i
  %36 = and i8 %35, 15
  %and.i = zext i8 %36 to i32
  %sub.i = add nsw i32 %i.094.i, -1
  %arrayidx36.i = getelementptr %struct.moxtet, ptr %call.i, i32 0, i32 2, i32 %sub.i
  %37 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx36.i, align 1
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %39, 1
  store i32 %inc.i, ptr %count.i, align 4
  %40 = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %40)
  %41 = icmp ult i32 %40, 6
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  br i1 %41, label %do.end42.i, label %do.end62.i

do.end42.i:                                       ; preds = %if.end32.i
  %desc.i = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %and.i, i32 3
  %44 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %43, ptr noundef nonnull @.str.45, ptr noundef %45) #16
  %arrayidx46.i = getelementptr [6 x i32], ptr %cnts.i, i32 0, i32 %and.i
  %46 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx46.i, align 4
  %inc47.i = add i32 %47, 1
  store i32 %inc47.i, ptr %arrayidx46.i, align 4
  %call48.i = call fastcc i32 @moxtet_set_irq(ptr noundef %call.i, i32 noundef %sub.i, i32 noundef %and.i, i32 noundef %47) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %do.end54.i, label %do.end42.i.for.inc.i_crit_edge

do.end42.i.for.inc.i_crit_edge:                   ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

do.end54.i:                                       ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.48, ptr noundef %45) #16
  br label %for.inc.i

do.end62.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.51, i32 noundef %and.i) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end62.i, %do.end54.i, %do.end42.i.for.inc.i_crit_edge
  %inc65.i = add nuw nsw i32 %i.094.i, 1
  %exitcond.not.i = icmp eq i32 %inc65.i, 10
  br i1 %exitcond.not.i, label %for.inc.i.if.end23_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.if.end23_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end23

moxtet_find_topology.exit.thread:                 ; preds = %do.end19.i, %spi_read.exit.i.moxtet_find_topology.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i.i, %spi_read.exit.i.moxtet_find_topology.exit.thread_crit_edge ], [ -19, %do.end19.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cnts.i) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i) #13
  br label %cleanup

if.end23:                                         ; preds = %for.inc.i.if.end23_crit_edge, %for.body.i.if.end23_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cnts.i) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf.i) #13
  %exists = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 6, i32 3
  %50 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %exists, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool24.not = icmp eq i32 %51, 0
  br i1 %tobool24.not, label %if.end23.if.end30_crit_edge, label %if.then25

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then25:                                        ; preds = %if.end23
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %53, i32 0, i32 27
  %54 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %55, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %55, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = call ptr @irq_domain_create_simple(ptr noundef %spec.select.i.i.i, i32 noundef 16, i32 noundef 0, ptr noundef nonnull @moxtet_irq_domain, ptr noundef %call.i) #13
  %irq.i = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 6
  %56 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call1.i.i, ptr %irq.i, align 4
  %cmp.i65 = icmp eq ptr %call1.i.i, null
  br i1 %cmp.i65, label %moxtet_irq_setup.exit.thread, label %if.then25.for.body.i67_crit_edge

if.then25.for.body.i67_crit_edge:                 ; preds = %if.then25
  br label %for.body.i67

moxtet_irq_setup.exit.thread:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.53) #16
  br label %cleanup

for.body.i67:                                     ; preds = %for.inc.i70.for.body.i67_crit_edge, %if.then25.for.body.i67_crit_edge
  %i.034.i = phi i32 [ %inc.i68, %for.inc.i70.for.body.i67_crit_edge ], [ 0, %if.then25.for.body.i67_crit_edge ]
  %59 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %exists, align 4
  %shl.i = shl nuw nsw i32 1, %i.034.i
  %and.i66 = and i32 %60, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i66)
  %tobool.not.i = icmp eq i32 %and.i66, 0
  br i1 %tobool.not.i, label %for.body.i67.for.inc.i70_crit_edge, label %if.then6.i

for.body.i67.for.inc.i70_crit_edge:               ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i70

if.then6.i:                                       ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %irq.i, align 4
  %call.i.i = call i32 @irq_create_mapping_affinity(ptr noundef %62, i32 noundef %i.034.i, ptr noundef null) #13
  br label %for.inc.i70

for.inc.i70:                                      ; preds = %if.then6.i, %for.body.i67.for.inc.i70_crit_edge
  %inc.i68 = add nuw nsw i32 %i.034.i, 1
  %exitcond.not.i69 = icmp eq i32 %inc.i68, 16
  br i1 %exitcond.not.i69, label %for.end.i, label %for.inc.i70.for.body.i67_crit_edge

for.inc.i70.for.body.i67_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i67

for.end.i:                                        ; preds = %for.inc.i70
  %chip.i = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 6, i32 1
  %63 = call ptr @memcpy(ptr %chip.i, ptr @moxtet_irq_chip, i32 136)
  %masked.i = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 6, i32 2
  %64 = ptrtoint ptr %masked.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 -1, ptr %masked.i, align 4
  %65 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dev_irq, align 4
  %call13.i = call i32 @request_threaded_irq(i32 noundef %66, ptr noundef null, ptr noundef nonnull @moxtet_irq_thread_fn, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef %call.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %for.end.i.for.body.i.i_crit_edge, label %for.end.i.if.end30_crit_edge

for.end.i.if.end30_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

for.end.i.for.body.i.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.end.i.for.body.i.i_crit_edge
  %i.010.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.end.i.for.body.i.i_crit_edge ]
  %67 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %exists, align 4
  %shl.i.i = shl nuw nsw i32 1, %i.010.i.i
  %and.i.i = and i32 %68, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %69 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i.i) #13
  %71 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %irq.i.i.i, align 4, !annotation !209
  %call.i.i.i71 = call ptr @__irq_resolve_mapping(ptr noundef %70, i32 noundef %i.010.i.i, ptr noundef nonnull %irq.i.i.i) #13
  %tobool.not.i.i33.i = icmp eq ptr %call.i.i.i71, null
  br i1 %tobool.not.i.i33.i, label %if.then.i.i.irq_find_mapping.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.i.i.irq_find_mapping.exit.i.i_crit_edge:  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %72 = ptrtoint ptr %irq.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %irq.i.i.i, align 4
  br label %irq_find_mapping.exit.i.i

irq_find_mapping.exit.i.i:                        ; preds = %if.then.i.i.i, %if.then.i.i.irq_find_mapping.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %73, %if.then.i.i.i ], [ 0, %if.then.i.i.irq_find_mapping.exit.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i.i) #13
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %irq_find_mapping.exit.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 16
  br i1 %exitcond.not.i.i, label %moxtet_irq_setup.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

moxtet_irq_setup.exit:                            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %74 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %irq.i, align 4
  call void @irq_domain_remove(ptr noundef %75) #13
  br label %cleanup

if.end30:                                         ; preds = %for.end.i.if.end30_crit_edge, %if.end23.if.end30_crit_edge
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %of_node.i73 = getelementptr inbounds %struct.device, ptr %77, i32 0, i32 27
  %78 = ptrtoint ptr %of_node.i73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %of_node.i73, align 8
  %tobool.not.i74 = icmp eq ptr %79, null
  br i1 %tobool.not.i74, label %if.end30.of_register_moxtet_devices.exit_crit_edge, label %if.end.i76

if.end30.of_register_moxtet_devices.exit_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_register_moxtet_devices.exit

if.end.i76:                                       ; preds = %if.end30
  %call.i75 = call ptr @of_get_next_available_child(ptr noundef nonnull %79, ptr noundef null) #13
  %cmp.not30.i = icmp eq ptr %call.i75, null
  br i1 %cmp.not30.i, label %if.end.i76.of_register_moxtet_devices.exit_crit_edge, label %if.end.i76.for.body.i78_crit_edge

if.end.i76.for.body.i78_crit_edge:                ; preds = %if.end.i76
  br label %for.body.i78

if.end.i76.of_register_moxtet_devices.exit_crit_edge: ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_register_moxtet_devices.exit

for.body.i78:                                     ; preds = %for.inc.i82.for.body.i78_crit_edge, %if.end.i76.for.body.i78_crit_edge
  %nc.031.i = phi ptr [ %call15.i, %for.inc.i82.for.body.i78_crit_edge ], [ %call.i75, %if.end.i76.for.body.i78_crit_edge ]
  %_flags.i.i = getelementptr inbounds %struct.device_node, ptr %nc.031.i, i32 0, i32 10
  %call.i.i77 = call i32 @_test_and_set_bit(i32 noundef 3, ptr noundef %_flags.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool5.not.i = icmp eq i32 %call.i.i77, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %for.body.i78.for.inc.i82_crit_edge

for.body.i78.for.inc.i82_crit_edge:               ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i82

if.end7.i:                                        ; preds = %for.body.i78
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #13
  %80 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 -1, ptr %val.i.i, align 4, !annotation !209
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  %call.i.i.i79 = call ptr @get_device(ptr noundef %82) #13
  %tobool.not.i.i.i80 = icmp eq ptr %call.i.i.i79, null
  br i1 %tobool.not.i.i.i80, label %if.end7.i.of_register_moxtet_device.exit.thread.i_crit_edge, label %if.end.i.i.i

if.end7.i.of_register_moxtet_device.exit.thread.i_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_register_moxtet_device.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.end7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %83 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %83, i32 noundef 3520, i32 noundef 944) #17
  %tobool3.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool3.not.i.i.i, label %if.then4.i.i.i, label %if.end.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %84 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %call.i, align 4
  call void @put_device(ptr noundef %85) #13
  br label %of_register_moxtet_device.exit.thread.i

of_register_moxtet_device.exit.thread.i:          ; preds = %if.then4.i.i.i, %if.end7.i.of_register_moxtet_device.exit.thread.i_crit_edge
  %86 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.62, ptr noundef nonnull %nc.031.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #13
  br label %do.end.i81

if.end.i.i:                                       ; preds = %if.end.i.i.i
  %moxtet7.i.i.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %moxtet7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i, ptr %moxtet7.i.i.i, align 8
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  %parent.i.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i.i, i32 0, i32 1
  %91 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %parent.i.i.i, align 8
  %bus.i.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %bus.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @moxtet_bus_type, ptr %bus.i.i.i, align 8
  %release.i.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i.i, i32 0, i32 35
  %93 = ptrtoint ptr %release.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr @moxtet_dev_release, ptr %release.i.i.i, align 4
  call void @device_initialize(ptr noundef nonnull %call7.i.i.i.i.i) #13
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %nc.031.i, ptr noundef nonnull @.str.64, ptr noundef nonnull %val.i.i, i32 noundef 1, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool4.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool4.not.i.i, label %if.end10.i.i, label %do.end8.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.66, ptr noundef nonnull %nc.031.i, i32 noundef %call.i.i.i.i) #16
  br label %err_put.i.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %96 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val.i.i, align 4
  %idx.i.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %idx.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %97)
  %cmp.i.i = icmp ugt i32 %97, 9
  br i1 %cmp.i.i, label %do.end15.i.i, label %if.end18.i.i

do.end15.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %99 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.69, ptr noundef nonnull %nc.031.i, i32 noundef %97) #16
  br label %err_put.i.i

if.end18.i.i:                                     ; preds = %if.end10.i.i
  %arrayidx.i.i = getelementptr %struct.moxtet, ptr %call.i, i32 0, i32 2, i32 %97
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %102 to i32
  %id.i.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i.i, i32 0, i32 2
  %103 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %conv.i.i, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool21.not.i.i = icmp eq i8 %102, 0
  br i1 %tobool21.not.i.i, label %do.end25.i.i, label %if.end28.i.i

do.end25.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %104 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.72, ptr noundef nonnull %nc.031.i, i32 noundef %97) #16
  br label %err_put.i.i

if.end28.i.i:                                     ; preds = %if.end18.i.i
  %call29.i.i = call ptr @of_node_get(ptr noundef nonnull %nc.031.i) #13
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i.i, i32 0, i32 27
  %106 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %nc.031.i, ptr %of_node.i.i, align 8
  %call31.i.i = call fastcc i32 @moxtet_add_device(ptr noundef nonnull %call7.i.i.i.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end28.i.i.of_register_moxtet_device.exit.i_crit_edge, label %do.end36.i.i

if.end28.i.i.of_register_moxtet_device.exit.i_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_register_moxtet_device.exit.i

do.end36.i.i:                                     ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %107 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.75, ptr noundef nonnull %nc.031.i) #16
  call void @of_node_put(ptr noundef nonnull %nc.031.i) #13
  br label %err_put.i.i

err_put.i.i:                                      ; preds = %do.end36.i.i, %do.end25.i.i, %do.end15.i.i, %do.end8.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i.i, %do.end8.i.i ], [ -22, %do.end15.i.i ], [ %call31.i.i, %do.end36.i.i ], [ -19, %do.end25.i.i ]
  call void @put_device(ptr noundef nonnull %call7.i.i.i.i.i) #13
  %109 = inttoptr i32 %ret.0.i.i to ptr
  br label %of_register_moxtet_device.exit.i

of_register_moxtet_device.exit.i:                 ; preds = %err_put.i.i, %if.end28.i.i.of_register_moxtet_device.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %109, %err_put.i.i ], [ %call7.i.i.i.i.i, %if.end28.i.i.of_register_moxtet_device.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #13
  %cmp.i26.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i26.i, label %of_register_moxtet_device.exit.i.do.end.i81_crit_edge, label %of_register_moxtet_device.exit.i.for.inc.i82_crit_edge

of_register_moxtet_device.exit.i.for.inc.i82_crit_edge: ; preds = %of_register_moxtet_device.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i82

of_register_moxtet_device.exit.i.do.end.i81_crit_edge: ; preds = %of_register_moxtet_device.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i81

do.end.i81:                                       ; preds = %of_register_moxtet_device.exit.i.do.end.i81_crit_edge, %of_register_moxtet_device.exit.thread.i
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.60, ptr noundef nonnull %nc.031.i) #16
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i.i) #13
  br label %for.inc.i82

for.inc.i82:                                      ; preds = %do.end.i81, %of_register_moxtet_device.exit.i.for.inc.i82_crit_edge, %for.body.i78.for.inc.i82_crit_edge
  %112 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %call.i, align 4
  %of_node14.i = getelementptr inbounds %struct.device, ptr %113, i32 0, i32 27
  %114 = ptrtoint ptr %of_node14.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %of_node14.i, align 8
  %call15.i = call ptr @of_get_next_available_child(ptr noundef %115, ptr noundef nonnull %nc.031.i) #13
  %cmp.not.i = icmp eq ptr %call15.i, null
  br i1 %cmp.not.i, label %for.inc.i82.of_register_moxtet_devices.exit_crit_edge, label %for.inc.i82.for.body.i78_crit_edge

for.inc.i82.for.body.i78_crit_edge:               ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i78

for.inc.i82.of_register_moxtet_devices.exit_crit_edge: ; preds = %for.inc.i82
  call void @__sanitizer_cov_trace_pc() #15
  br label %of_register_moxtet_devices.exit

of_register_moxtet_devices.exit:                  ; preds = %for.inc.i82.of_register_moxtet_devices.exit_crit_edge, %if.end.i76.of_register_moxtet_devices.exit_crit_edge, %if.end30.of_register_moxtet_devices.exit_crit_edge
  %116 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp30.i = icmp sgt i32 %117, 0
  br i1 %cmp30.i, label %of_register_moxtet_devices.exit.for.body.i86_crit_edge, label %of_register_moxtet_devices.exit.moxtet_register_devices_from_topology.exit_crit_edge

of_register_moxtet_devices.exit.moxtet_register_devices_from_topology.exit_crit_edge: ; preds = %of_register_moxtet_devices.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_register_devices_from_topology.exit

of_register_moxtet_devices.exit.for.body.i86_crit_edge: ; preds = %of_register_moxtet_devices.exit
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.inc.i94.for.body.i86_crit_edge, %of_register_moxtet_devices.exit.for.body.i86_crit_edge
  %i.031.i = phi i32 [ %inc.i92, %for.inc.i94.for.body.i86_crit_edge ], [ 0, %of_register_moxtet_devices.exit.for.body.i86_crit_edge ]
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i, align 4
  %call.i.i84 = call ptr @get_device(ptr noundef %119) #13
  %tobool.not.i.i85 = icmp eq ptr %call.i.i84, null
  br i1 %tobool.not.i.i85, label %for.body.i86.do.end.i88_crit_edge, label %if.end.i.i87

for.body.i86.do.end.i88_crit_edge:                ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i88

if.end.i.i87:                                     ; preds = %for.body.i86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %120 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %120, i32 noundef 3520, i32 noundef 944) #17
  %tobool3.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool3.not.i.i, label %if.then4.i.i, label %if.end.i90

if.then4.i.i:                                     ; preds = %if.end.i.i87
  call void @__sanitizer_cov_trace_pc() #15
  %121 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %call.i, align 4
  call void @put_device(ptr noundef %122) #13
  br label %do.end.i88

do.end.i88:                                       ; preds = %if.then4.i.i, %for.body.i86.do.end.i88_crit_edge
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.82, i32 noundef %i.031.i) #16
  br label %for.inc.i94

if.end.i90:                                       ; preds = %if.end.i.i87
  %moxtet7.i.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i, i32 0, i32 1
  %125 = ptrtoint ptr %moxtet7.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i, ptr %moxtet7.i.i, align 8
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %parent.i.i, align 8
  %bus.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 5
  %129 = ptrtoint ptr %bus.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @moxtet_bus_type, ptr %bus.i.i, align 8
  %release.i.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i.i, i32 0, i32 35
  %130 = ptrtoint ptr %release.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr @moxtet_dev_release, ptr %release.i.i, align 4
  call void @device_initialize(ptr noundef nonnull %call7.i.i.i.i) #13
  %idx.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i, i32 0, i32 3
  %131 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %i.031.i, ptr %idx.i, align 8
  %arrayidx.i = getelementptr %struct.moxtet, ptr %call.i, i32 0, i32 2, i32 %i.031.i
  %132 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx.i, align 1
  %conv.i89 = zext i8 %133 to i32
  %id.i = getelementptr inbounds %struct.moxtet_device, ptr %call7.i.i.i.i, i32 0, i32 2
  %134 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv.i89, ptr %id.i, align 4
  %call2.i = call fastcc i32 @moxtet_add_device(ptr noundef nonnull %call7.i.i.i.i) #13
  %135 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call2.i, label %if.then6.i91 [
    i32 0, label %if.end.i90.for.inc.i94_crit_edge
    i32 -16, label %if.end.i90.for.inc.i94_crit_edge110
  ]

if.end.i90.for.inc.i94_crit_edge110:              ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i94

if.end.i90.for.inc.i94_crit_edge:                 ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i94

if.then6.i91:                                     ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #15
  call void @put_device(ptr noundef nonnull %call7.i.i.i.i) #13
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.85, i32 noundef %i.031.i, i32 noundef %call2.i) #16
  br label %for.inc.i94

for.inc.i94:                                      ; preds = %if.then6.i91, %if.end.i90.for.inc.i94_crit_edge, %if.end.i90.for.inc.i94_crit_edge110, %do.end.i88
  %inc.i92 = add nuw nsw i32 %i.031.i, 1
  %138 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %count.i, align 4
  %cmp.i93 = icmp slt i32 %inc.i92, %139
  br i1 %cmp.i93, label %for.inc.i94.for.body.i86_crit_edge, label %for.inc.i94.moxtet_register_devices_from_topology.exit_crit_edge

for.inc.i94.moxtet_register_devices_from_topology.exit_crit_edge: ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_register_devices_from_topology.exit

for.inc.i94.for.body.i86_crit_edge:               ; preds = %for.inc.i94
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i86

moxtet_register_devices_from_topology.exit:       ; preds = %for.inc.i94.moxtet_register_devices_from_topology.exit_crit_edge, %of_register_moxtet_devices.exit.moxtet_register_devices_from_topology.exit_crit_edge
  %call.i96 = call ptr @debugfs_create_dir(ptr noundef nonnull @.str, ptr noundef null) #13
  %cmp.i.i97 = icmp ugt ptr %call.i96, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i97, label %moxtet_register_devices_from_topology.exit.moxtet_register_debugfs.exit_crit_edge, label %if.end.i98

moxtet_register_devices_from_topology.exit.moxtet_register_debugfs.exit_crit_edge: ; preds = %moxtet_register_devices_from_topology.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_register_debugfs.exit

if.end.i98:                                       ; preds = %moxtet_register_devices_from_topology.exit
  %call4.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.87, i16 noundef zeroext 292, ptr noundef %call.i96, ptr noundef %call.i, ptr noundef nonnull @input_fops) #13
  %cmp.i23.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23.i, label %if.end.i98.err_remove.i_crit_edge, label %if.end7.i99

if.end.i98.err_remove.i_crit_edge:                ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove.i

if.end7.i99:                                      ; preds = %if.end.i98
  %call8.i = call ptr @debugfs_create_file_unsafe(ptr noundef nonnull @.str.88, i16 noundef zeroext 420, ptr noundef %call.i96, ptr noundef %call.i, ptr noundef nonnull @output_fops) #13
  %cmp.i24.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24.i, label %if.end7.i99.err_remove.i_crit_edge, label %moxtet_register_debugfs.exit.thread

if.end7.i99.err_remove.i_crit_edge:               ; preds = %if.end7.i99
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_remove.i

moxtet_register_debugfs.exit.thread:              ; preds = %if.end7.i99
  call void @__sanitizer_cov_trace_pc() #15
  %debugfs_root.i = getelementptr inbounds %struct.moxtet, ptr %call.i, i32 0, i32 7
  %140 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i96, ptr %debugfs_root.i, align 4
  br label %cleanup

err_remove.i:                                     ; preds = %if.end7.i99.err_remove.i_crit_edge, %if.end.i98.err_remove.i_crit_edge
  %entry1.0.i = phi ptr [ %call4.i, %if.end.i98.err_remove.i_crit_edge ], [ %call8.i, %if.end7.i99.err_remove.i_crit_edge ]
  call void @debugfs_remove(ptr noundef %call.i96) #13
  br label %moxtet_register_debugfs.exit

moxtet_register_debugfs.exit:                     ; preds = %err_remove.i, %moxtet_register_devices_from_topology.exit.moxtet_register_debugfs.exit_crit_edge
  %retval.0.i100.in = phi ptr [ %entry1.0.i, %err_remove.i ], [ %call.i96, %moxtet_register_devices_from_topology.exit.moxtet_register_debugfs.exit_crit_edge ]
  %cmp32 = icmp slt ptr %retval.0.i100.in, null
  br i1 %cmp32, label %do.end36, label %moxtet_register_debugfs.exit.cleanup_crit_edge

moxtet_register_debugfs.exit.cleanup_crit_edge:   ; preds = %moxtet_register_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end36:                                         ; preds = %moxtet_register_debugfs.exit
  call void @__sanitizer_cov_trace_pc() #15
  %retval.0.i100 = ptrtoint ptr %retval.0.i100.in to i32
  %141 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %142, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i100) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %moxtet_register_debugfs.exit.cleanup_crit_edge, %moxtet_register_debugfs.exit.thread, %moxtet_irq_setup.exit, %moxtet_irq_setup.exit.thread, %moxtet_find_topology.exit.thread, %do.end17, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -6, %do.end17 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -517, %if.end3.cleanup_crit_edge ], [ %call13.i, %moxtet_irq_setup.exit ], [ 0, %do.end36 ], [ 0, %moxtet_register_debugfs.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %moxtet_find_topology.exit.thread ], [ -12, %moxtet_irq_setup.exit.thread ], [ 0, %moxtet_register_debugfs.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_remove(ptr nocapture noundef readonly %spi) #0 align 64 {
entry:
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev_irq = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #13
  %exists.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 3
  %irq1.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %exists.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exists.i, align 4
  %shl.i = shl nuw nsw i32 1, %i.010.i
  %and.i = and i32 %5, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %6 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #13
  %8 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !209
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %7, i32 noundef %i.010.i, ptr noundef nonnull %irq.i.i) #13
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.irq_find_mapping.exit.i_crit_edge, label %if.then.i.i

if.then.i.irq_find_mapping.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i.i, align 4
  br label %irq_find_mapping.exit.i

irq_find_mapping.exit.i:                          ; preds = %if.then.i.i, %if.then.i.irq_find_mapping.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %10, %if.then.i.i ], [ 0, %if.then.i.irq_find_mapping.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #13
  call void @irq_dispose_mapping(i32 noundef %retval.0.i.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %irq_find_mapping.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %moxtet_irq_free.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

moxtet_irq_free.exit:                             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %irq1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq1.i, align 4
  call void @irq_domain_remove(ptr noundef %12) #13
  %debugfs_root.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_root.i, align 4
  call void @debugfs_remove(ptr noundef %14) #13
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call2 = call i32 @device_for_each_child(ptr noundef %16, ptr noundef null, ptr noundef nonnull @__unregister) #13
  %lock = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  call void @mutex_destroy(ptr noundef %lock) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @moxtet_set_irq(ptr nocapture noundef %moxtet, i32 noundef %idx, i32 noundef %id, i32 noundef %nsame) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq_base = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %id, i32 1
  %0 = ptrtoint ptr %hwirq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq_base, align 4
  %nirqs = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %id, i32 2
  %2 = ptrtoint ptr %nirqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nirqs, align 4
  %mul = mul i32 %3, %nsame
  %add = add i32 %mul, %1
  %add4 = add i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add4)
  %cmp = icmp sgt i32 %add4, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = and i32 %id, 268435455
  %5 = add nsw i32 %4, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp727 = icmp ult i32 %5, 4
  br i1 %cmp727, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv = trunc i32 %idx to i8
  %exists = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 6, i32 3
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %add8 = add i32 %i.028, %add
  %arrayidx9 = getelementptr %struct.moxtet, ptr %moxtet, i32 0, i32 6, i32 4, i32 %add8
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %arrayidx9, align 1
  %conv11 = trunc i32 %i.028 to i8
  %bit = getelementptr %struct.moxtet, ptr %moxtet, i32 0, i32 6, i32 4, i32 %add8, i32 1
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11, ptr %bit, align 1
  %shl = shl nuw i32 1, %add8
  %8 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exists, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %exists, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_irq_thread_fn(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %set = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set) #13
  %0 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %set, align 4, !annotation !209
  %call = call fastcc i32 @moxtet_irq_read(ptr noundef %data, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %entry
  %irq1 = getelementptr inbounds %struct.moxtet, ptr %data, i32 0, i32 6
  %masked = getelementptr inbounds %struct.moxtet, ptr %data, i32 0, i32 6, i32 2
  %1 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %masked, align 4
  %neg = xor i32 %2, -1
  %3 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %set, align 4
  %and = and i32 %4, %neg
  store i32 %and, ptr %set, align 4
  br label %do.body

do.body:                                          ; preds = %if.end16.do.body_crit_edge, %if.end
  %nhandled.0 = phi i32 [ 0, %if.end ], [ %nhandled.1.lcssa, %if.end16.do.body_crit_edge ]
  %call2 = call i32 @_find_next_bit_be(ptr noundef nonnull %set, i32 noundef 16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call2)
  %cmp337 = icmp slt i32 %call2, 16
  br i1 %cmp337, label %do.body.for.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %do.body.for.body_crit_edge
  %nhandled.140 = phi i32 [ %inc, %do.end.for.body_crit_edge ], [ %nhandled.0, %do.body.for.body_crit_edge ]
  %i.038 = phi i32 [ %call12, %do.end.for.body_crit_edge ], [ %call2, %do.body.for.body_crit_edge ]
  %5 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #13
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq.i, align 4, !annotation !209
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %6, i32 noundef %i.038, ptr noundef nonnull %irq.i) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i35 = phi i32 [ %9, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #13
  call void @handle_nested_irq(i32 noundef %retval.0.i35) #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @moxtet_irq_thread_fn.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@moxtet_irq_thread_fn, %if.then10)) #13
          to label %do.end [label %if.then10], !srcloc !210

if.then10:                                        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @moxtet_irq_thread_fn.__UNIQUE_ID_ddebug234, ptr noundef %11, ptr noundef nonnull @.str.59, i32 noundef %i.038) #13
  br label %do.end

do.end:                                           ; preds = %if.then10, %irq_find_mapping.exit
  %inc = add i32 %nhandled.140, 1
  %add = add nsw i32 %i.038, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %set, i32 noundef 16, i32 noundef %add) #13
  %cmp3 = icmp slt i32 %call12, 16
  br i1 %cmp3, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %do.body.for.end_crit_edge
  %nhandled.1.lcssa = phi i32 [ %nhandled.0, %do.body.for.end_crit_edge ], [ %inc, %do.end.for.end_crit_edge ]
  %call13 = call fastcc i32 @moxtet_irq_read(ptr noundef %data, ptr noundef nonnull %set)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.end.out_crit_edge, label %if.end16

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %for.end
  %12 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masked, align 4
  %neg19 = xor i32 %13, -1
  %14 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %set, align 4
  %and20 = and i32 %15, %neg19
  store i32 %and20, ptr %set, align 4
  %tobool22.not = icmp eq i32 %and20, 0
  br i1 %tobool22.not, label %if.end16.out_crit_edge, label %if.end16.do.body_crit_edge

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

out:                                              ; preds = %if.end16.out_crit_edge, %for.end.out_crit_edge, %entry.out_crit_edge
  %nhandled.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %nhandled.1.lcssa, %for.end.out_crit_edge ], [ %nhandled.1.lcssa, %if.end16.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nhandled.2)
  %cmp24 = icmp sgt i32 %nhandled.2, 0
  %cond = zext i1 %cmp24 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set) #13
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %hw)
  %cmp = icmp ugt i32 %hw, 15
  br i1 %cmp, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %exists = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exists, align 4
  %shl = shl nuw nsw i32 1, %hw
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55) #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #13
  %chip = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 1
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef %chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_irq_domain_xlate(ptr nocapture noundef readonly %d, ptr nocapture noundef readnone %ctrlr, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef writeonly %out_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intsize)
  %cmp = icmp eq i32 %intsize, 0
  br i1 %cmp, label %do.end, label %if.end21, !prof !211

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 622, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end21:                                         ; preds = %entry
  %2 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intspec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp22 = icmp sgt i32 %3, 15
  br i1 %cmp22, label %if.end21.cleanup_crit_edge, label %lor.lhs.false

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end21
  %exists = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %exists to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %exists, align 4
  %shl = shl nuw nsw i32 1, %3
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end26

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end26:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %3, ptr %out_hwirq, align 4
  %7 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %out_type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %lor.lhs.false.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end26 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @moxtet_irq_mask(ptr nocapture noundef readonly %d) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %masked = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masked, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %masked, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @moxtet_irq_unmask(ptr nocapture noundef readonly %d) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %masked = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masked, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %masked, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxtet_irq_print_chip(ptr nocapture noundef readonly %d, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.moxtet, ptr %1, i32 0, i32 6, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx1 = getelementptr %struct.moxtet, ptr %1, i32 0, i32 2, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %7 to i32
  %8 = add nsw i32 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %9 = icmp ult i32 %8, 6
  br i1 %9, label %if.then.i, label %entry.mox_module_name.exit_crit_edge

entry.mox_module_name.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mox_module_name.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %conv
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  br label %mox_module_name.exit

mox_module_name.exit:                             ; preds = %if.then.i, %entry.mox_module_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.then.i ], [ @.str.5, %entry.mox_module_name.exit_crit_edge ]
  %bit = getelementptr %struct.moxtet, ptr %1, i32 0, i32 6, i32 4, i32 %3, i32 1
  %12 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bit, align 1
  %conv5 = zext i8 %13 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %p, ptr noundef nonnull @.str.57, ptr noundef %retval.0.i, i32 noundef %idxprom, i32 noundef %conv5) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @moxtet_irq_read(ptr noundef %moxtet, ptr noundef %map) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %position = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 6, i32 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #13
  %1 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %2 = call ptr @memset(ptr %1, i32 0, i32 84)
  %tx.i = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 4
  %3 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %tx.i, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %4 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %buf, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 3
  %5 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count.i, align 4
  %add.i = add i32 %6, 1
  %7 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add.i, ptr %len.i, align 4
  %lock.i = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %8 = ptrtoint ptr %moxtet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %moxtet, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #13
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %11 = call ptr @memset(ptr %10, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %14 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.moxtet_spi_read.exit_crit_edge

entry.moxtet_spi_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %moxtet_spi_read.exit

moxtet_spi_read.exit:                             ; preds = %if.end.i.i.i.i.i.i, %entry.moxtet_spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %9, ptr noundef nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #13
  call void @mutex_unlock(ptr noundef %lock.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %moxtet_spi_read.exit.cleanup_crit_edge, label %if.end

moxtet_spi_read.exit.cleanup_crit_edge:           ; preds = %moxtet_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %moxtet_spi_read.exit
  %20 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %map, align 4
  %exists = getelementptr inbounds %struct.moxtet, ptr %moxtet, i32 0, i32 6, i32 3
  %call3 = call i32 @_find_next_bit_be(ptr noundef %exists, i32 noundef 16, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call3)
  %cmp429 = icmp slt i32 %call3, 16
  br i1 %cmp429, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.030 = phi i32 [ %call15, %for.inc.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.moxtet_irqpos, ptr %position, i32 %i.030
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %22 to i32
  %add = add nuw nsw i32 %conv, 1
  %arrayidx5 = getelementptr [10 x i8], ptr %buf, i32 0, i32 %add
  %23 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %24 to i32
  %bit = getelementptr %struct.moxtet_irqpos, ptr %position, i32 %i.030, i32 1
  %25 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bit, align 1
  %conv8 = zext i8 %26 to i32
  %shl = shl i32 16, %conv8
  %and = and i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  call void @_set_bit(i32 noundef %i.030, ptr noundef %map) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.body.for.inc_crit_edge
  %add14 = add nsw i32 %i.030, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef %exists, i32 noundef 16, i32 noundef %add14) #13
  %cmp4 = icmp slt i32 %call15, 16
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %moxtet_spi_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %moxtet_spi_read.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %buf) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @moxtet_add_device(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp = icmp ugt i32 %1, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp1 = icmp ugt i32 %3, 15
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = add nsw i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %5 = icmp ult i32 %4, 6
  br i1 %5, label %if.then.i, label %if.end.mox_module_name.exit_crit_edge

if.end.mox_module_name.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %mox_module_name.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr [7 x %struct.anon.72], ptr @mox_module_table, i32 0, i32 %3
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  br label %mox_module_name.exit

mox_module_name.exit:                             ; preds = %if.then.i, %if.end.mox_module_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.then.i ], [ @.str.5, %if.end.mox_module_name.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.79, ptr noundef %retval.0.i, i32 noundef %1) #13
  tail call void @mutex_lock_nested(ptr noundef nonnull @moxtet_add_device.add_mutex, i32 noundef 0) #13
  %call6 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @moxtet_bus_type, ptr noundef null, ptr noundef %dev, ptr noundef nonnull @moxtet_dev_check) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %mox_module_name.exit.done_crit_edge

mox_module_name.exit.done_crit_edge:              ; preds = %mox_module_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

if.end8:                                          ; preds = %mox_module_name.exit
  %call10 = tail call i32 @device_add(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %done

do.end:                                           ; preds = %if.end8
  %moxtet = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %8 = ptrtoint ptr %moxtet to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %moxtet, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i29 = phi ptr [ %15, %if.end.i ], [ %13, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.80, ptr noundef %retval.0.i29, i32 noundef %call10) #16
  br label %done

done:                                             ; preds = %dev_name.exit, %if.end8.done_crit_edge, %mox_module_name.exit.done_crit_edge
  %ret.0 = phi i32 [ %call6, %mox_module_name.exit.done_crit_edge ], [ %call10, %dev_name.exit ], [ %call10, %if.end8.done_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @moxtet_add_device.add_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %done ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @moxtet_dev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %moxtet = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %moxtet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moxtet, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @put_device(ptr noundef %3) #13
  tail call void @kfree(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @moxtet_dev_check(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %moxtet = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %moxtet to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %moxtet, align 8
  %moxtet1 = getelementptr inbounds %struct.moxtet_device, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %moxtet1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %moxtet1, align 8
  %cmp = icmp eq ptr %1, %3
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %id2 = getelementptr inbounds %struct.moxtet_device, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %id2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true4, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %idx = getelementptr inbounds %struct.moxtet_device, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %idx, align 8
  %idx5 = getelementptr inbounds %struct.moxtet_device, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %idx5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %idx5, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp6 = icmp eq i32 %9, %11
  br i1 %cmp6, label %land.lhs.true4.cleanup_crit_edge, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true4.cleanup_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true4.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %land.lhs.true4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file_unsafe(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca %struct.spi_transfer, align 4
  %bin = alloca [10 x i8], align 1
  %hex = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bin) #13
  %2 = call ptr @memset(ptr %bin, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %hex) #13
  %3 = call ptr @memset(ptr %hex, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #13
  %4 = getelementptr inbounds i8, ptr %xfer.i, i32 12
  %5 = call ptr @memset(ptr %4, i32 0, i32 84)
  %tx.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx.i, ptr %xfer.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 1
  %7 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bin, ptr %rx_buf.i, align 4
  %len.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %count.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count.i, align 4
  %add.i = add i32 %9, 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %len.i, align 4
  %lock.i = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #13
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
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.moxtet_spi_read.exit_crit_edge

entry.moxtet_spi_read.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %moxtet_spi_read.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %moxtet_spi_read.exit

moxtet_spi_read.exit:                             ; preds = %if.end.i.i.i.i.i.i, %entry.moxtet_spi_read.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #13
  call void @mutex_unlock(ptr noundef %lock.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %moxtet_spi_read.exit.cleanup_crit_edge, label %if.end

moxtet_spi_read.exit.cleanup_crit_edge:           ; preds = %moxtet_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %moxtet_spi_read.exit
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count.i, align 4
  %add = add i32 %24, 1
  %call3 = call ptr @bin2hex(ptr noundef nonnull %hex, ptr noundef nonnull %bin, i32 noundef %add) #13
  %mul = shl i32 %add, 1
  %arrayidx = getelementptr [21 x i8], ptr %hex, i32 0, i32 %mul
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 10, ptr %arrayidx, align 1
  %add6 = or i32 %mul, 1
  %call7 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull %hex, i32 noundef %add6) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %moxtet_spi_read.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ %call.i.i, %moxtet_spi_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %hex) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bin) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @moxtet_debug_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %private_data, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #13
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bin2hex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_read(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr noundef %ppos) #0 align 64 {
entry:
  %hex = alloca [21 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %hex) #13
  %lock = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  %2 = call ptr @memset(ptr %hex, i32 255, i32 21)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %count = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp14 = icmp sgt i32 %4, 0
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi i32 [ %16, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.015 = phi ptr [ %incdec.ptr4.i, %for.body.for.body_crit_edge ], [ %hex, %entry.for.body_crit_edge ]
  %sub = sub i32 %5, %i.016
  %arrayidx = getelementptr %struct.moxtet, ptr %1, i32 0, i32 4, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %7 to i32
  %8 = lshr i32 %conv.i, 4
  %arrayidx.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %incdec.ptr.i = getelementptr i8, ptr %p.015, i32 1
  %11 = ptrtoint ptr %p.015 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %p.015, align 1
  %and2.i = and i32 %conv.i, 15
  %arrayidx3.i = getelementptr [0 x i8], ptr @hex_asc, i32 0, i32 %and2.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i, align 1
  %incdec.ptr4.i = getelementptr i8, ptr %p.015, i32 2
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %incdec.ptr.i, align 1
  %inc = add nuw nsw i32 %i.016, 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %cmp = icmp sgt i32 %16, %inc
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %p.0.lcssa = phi ptr [ %hex, %entry.for.end_crit_edge ], [ %incdec.ptr4.i, %for.body.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %incdec.ptr = getelementptr i8, ptr %p.0.lcssa, i32 1
  %17 = ptrtoint ptr %p.0.lcssa to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 10, ptr %p.0.lcssa, align 1
  %sub.ptr.lhs.cast = ptrtoint ptr %incdec.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %hex to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call5 = call i32 @simple_read_from_buffer(ptr noundef %buf, i32 noundef %len, ptr noundef %ppos, ptr noundef nonnull %hex, i32 noundef %sub.ptr.sub) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %hex) #13
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @output_write(ptr nocapture noundef readonly %file, ptr noundef %buf, i32 noundef %len, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %bin = alloca [10 x i8], align 1
  %hex = alloca [21 x i8], align 1
  %dummy = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %bin) #13
  %2 = call ptr @memset(ptr %bin, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %hex) #13
  %3 = call ptr @memset(ptr %hex, i32 255, i32 21)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy) #13
  %4 = ptrtoint ptr %dummy to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %dummy, align 8
  %count = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  %mul = shl i32 %6, 1
  %add = or i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp = icmp ult i32 %add, %len
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %len)
  %cmp3 = icmp ugt i32 %mul, %len
  %or.cond = or i1 %cmp3, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %hex, i32 noundef 21, ptr noundef nonnull %dummy, ptr noundef %buf, i32 noundef %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %rem = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp7.not = icmp eq i32 %rem, 0
  br i1 %cmp7.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end6
  %sub = add i32 %len, -1
  %arrayidx = getelementptr [21 x i8], ptr %hex, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %8)
  %cmp8.not = icmp eq i8 %8, 10
  br i1 %cmp8.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %call15 = call i32 @hex2bin(ptr noundef nonnull %bin, ptr noundef nonnull %hex, i32 noundef %10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %lock = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2163 = icmp sgt i32 %12, 0
  br i1 %cmp2163, label %if.end19.for.body_crit_edge, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end19.for.body_crit_edge
  %13 = phi i32 [ %18, %for.body.for.body_crit_edge ], [ %12, %if.end19.for.body_crit_edge ]
  %i.064 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end19.for.body_crit_edge ]
  %arrayidx23 = getelementptr [10 x i8], ptr %bin, i32 0, i32 %i.064
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx23, align 1
  %sub25 = sub i32 %13, %i.064
  %arrayidx26 = getelementptr %struct.moxtet, ptr %1, i32 0, i32 4, i32 %sub25
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx26, align 1
  %inc = add nuw nsw i32 %i.064, 1
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 4
  %cmp21 = icmp sgt i32 %18, %inc
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end19.for.end_crit_edge
  %.lcssa = phi i32 [ %12, %if.end19.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %tx28 = getelementptr inbounds %struct.moxtet, ptr %1, i32 0, i32 4
  %add31 = add i32 %.lcssa, 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #13
  %21 = getelementptr inbounds i8, ptr %t.i, i32 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 92)
  %23 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %tx28, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %24 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add31, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #13
  %25 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #13
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end.spi_write.exit_crit_edge

for.end.spi_write.exit_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  %31 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %32 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %for.end.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %20, ptr noundef nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #13
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #13
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp34 = icmp slt i32 %call.i.i, 0
  %call32.len = select i1 %cmp34, i32 %call.i.i, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %if.end11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32.len, %spi_write.exit ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy) #13
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %hex) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %bin) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__unregister(ptr noundef %dev, ptr nocapture noundef readnone %null) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #13
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @device_unregister(ptr noundef %dev) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !86, !87, !88, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !131, !132, !133, !134, !136, !138, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !186, !188, !189, !190, !192, !194, !196, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__ksymtab___moxtet_register_driver, !1, !"__ksymtab___moxtet_register_driver", i1 false, i1 false}
!1 = !{!"../drivers/bus/moxtet.c", i32 118, i32 1}
!2 = !{ptr @__ksymtab_moxtet_device_read, !3, !"__ksymtab_moxtet_device_read", i1 false, i1 false}
!3 = !{!"../drivers/bus/moxtet.c", i32 419, i32 1}
!4 = !{ptr @__ksymtab_moxtet_device_write, !5, !"__ksymtab_moxtet_device_write", i1 false, i1 false}
!5 = !{!"../drivers/bus/moxtet.c", i32 441, i32 1}
!6 = !{ptr @__ksymtab_moxtet_device_written, !7, !"__ksymtab_moxtet_device_written", i1 false, i1 false}
!7 = !{!"../drivers/bus/moxtet.c", i32 453, i32 1}
!8 = !{ptr @__initcall__kmod_moxtet__235_873_moxtet_init2s, !9, !"__initcall__kmod_moxtet__235_873_moxtet_init2s", i1 false, i1 false}
!9 = !{!"../drivers/bus/moxtet.c", i32 873, i32 1}
!10 = !{ptr @__exitcall_moxtet_exit, !11, !"__exitcall_moxtet_exit", i1 false, i1 false}
!11 = !{!"../drivers/bus/moxtet.c", i32 880, i32 1}
!12 = !{ptr @__UNIQUE_ID_author236, !13, !"__UNIQUE_ID_author236", i1 false, i1 false}
!13 = !{!"../drivers/bus/moxtet.c", i32 882, i32 1}
!14 = !{ptr @__UNIQUE_ID_description237, !15, !"__UNIQUE_ID_description237", i1 false, i1 false}
!15 = !{!"../drivers/bus/moxtet.c", i32 883, i32 1}
!16 = !{ptr @__UNIQUE_ID_file238, !17, !"__UNIQUE_ID_file238", i1 false, i1 false}
!17 = !{!"../drivers/bus/moxtet.c", i32 884, i32 1}
!18 = !{ptr @__UNIQUE_ID_license239, !17, !"__UNIQUE_ID_license239", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/bus/moxtet.c", i32 106, i32 11}
!21 = !{ptr @moxtet_bus_type, !22, !"moxtet_bus_type", i1 false, i1 false}
!22 = !{!"../drivers/bus/moxtet.c", i32 105, i32 24}
!23 = !{ptr @moxtet_dev_groups, !24, !"moxtet_dev_groups", i1 false, i1 false}
!24 = !{!"../drivers/bus/moxtet.c", i32 81, i32 38}
!25 = !{ptr @moxtet_dev_group, !26, !"moxtet_dev_group", i1 false, i1 false}
!26 = !{!"../drivers/bus/moxtet.c", i32 77, i32 37}
!27 = !{ptr @moxtet_dev_attrs, !28, !"moxtet_dev_attrs", i1 false, i1 false}
!28 = !{!"../drivers/bus/moxtet.c", i32 70, i32 26}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/bus/moxtet.c", i32 64, i32 1}
!31 = !{ptr @dev_attr_module_id, !30, !"dev_attr_module_id", i1 false, i1 false}
!32 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/bus/moxtet.c", i32 65, i32 1}
!35 = !{ptr @dev_attr_module_name, !34, !"dev_attr_module_name", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/bus/moxtet.c", i32 51, i32 10}
!39 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/bus/moxtet.c", i32 33, i32 4}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/bus/moxtet.c", i32 33, i32 20}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/bus/moxtet.c", i32 34, i32 4}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/bus/moxtet.c", i32 34, i32 31}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/bus/moxtet.c", i32 35, i32 4}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/bus/moxtet.c", i32 35, i32 34}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/bus/moxtet.c", i32 36, i32 4}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/bus/moxtet.c", i32 36, i32 41}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/bus/moxtet.c", i32 37, i32 4}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/bus/moxtet.c", i32 37, i32 32}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/bus/moxtet.c", i32 38, i32 4}
!61 = !{ptr @.str.17, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/bus/moxtet.c", i32 38, i32 27}
!63 = !{ptr @mox_module_table, !64, !"mox_module_table", i1 false, i1 false}
!64 = !{!"../drivers/bus/moxtet.c", i32 30, i32 3}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/bus/moxtet.c", i32 66, i32 1}
!67 = !{ptr @dev_attr_module_description, !66, !"dev_attr_module_description", i1 false, i1 false}
!68 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/bus/moxtet.c", i32 856, i32 3}
!71 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @moxtet_init._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @moxtet_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/bus/moxtet.c", i32 862, i32 3}
!77 = !{ptr @moxtet_init._entry.23, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @moxtet_init._entry_ptr.25, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @moxtet_spi_driver, !80, !"moxtet_spi_driver", i1 false, i1 false}
!80 = !{!"../drivers/bus/moxtet.c", i32 841, i32 26}
!81 = !{ptr @moxtet_probe.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/bus/moxtet.c", i32 786, i32 2}
!83 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/bus/moxtet.c", i32 793, i32 3}
!86 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @moxtet_probe._entry, !85, !"_entry", i1 false, i1 false}
!90 = !{ptr @moxtet_probe._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/bus/moxtet.c", i32 812, i32 3}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @moxtet_probe._entry.31, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @moxtet_probe._entry_ptr.34, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.35, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/bus/moxtet.c", i32 345, i32 3}
!98 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @moxtet_find_topology._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @moxtet_find_topology._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/bus/moxtet.c", i32 347, i32 3}
!104 = !{ptr @moxtet_find_topology._entry.38, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @moxtet_find_topology._entry_ptr.40, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/bus/moxtet.c", i32 349, i32 3}
!108 = !{ptr @moxtet_find_topology._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @moxtet_find_topology._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/bus/moxtet.c", i32 368, i32 4}
!112 = !{ptr @moxtet_find_topology._entry.44, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @moxtet_find_topology._entry_ptr.46, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/bus/moxtet.c", i32 372, i32 5}
!116 = !{ptr @moxtet_find_topology._entry.47, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @moxtet_find_topology._entry_ptr.49, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/bus/moxtet.c", i32 376, i32 4}
!120 = !{ptr @moxtet_find_topology._entry.50, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @moxtet_find_topology._entry_ptr.52, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/bus/moxtet.c", i32 746, i32 3}
!124 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @moxtet_irq_setup._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @moxtet_irq_setup._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @moxtet_irq_domain, !128, !"moxtet_irq_domain", i1 false, i1 false}
!128 = !{!"../drivers/bus/moxtet.c", i32 635, i32 36}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/bus/moxtet.c", i32 603, i32 3}
!131 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @moxtet_irq_domain_map._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @moxtet_irq_domain_map._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @moxtet_irq_chip, !135, !"moxtet_irq_chip", i1 false, i1 false}
!135 = !{!"../drivers/bus/moxtet.c", i32 666, i32 30}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/bus/moxtet.c", i32 662, i32 16}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/bus/moxtet.c", i32 709, i32 4}
!140 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @moxtet_irq_thread_fn.__UNIQUE_ID_ddebug234, !139, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/bus/moxtet.c", i32 273, i32 4}
!144 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @of_register_moxtet_devices._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @of_register_moxtet_devices._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/bus/moxtet.c", i32 212, i32 3}
!149 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @of_register_moxtet_device._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @of_register_moxtet_device._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/bus/moxtet.c", i32 217, i32 33}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/bus/moxtet.c", i32 219, i32 3}
!156 = !{ptr @of_register_moxtet_device._entry.65, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @of_register_moxtet_device._entry_ptr.67, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/bus/moxtet.c", i32 227, i32 3}
!160 = !{ptr @of_register_moxtet_device._entry.68, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @of_register_moxtet_device._entry_ptr.70, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.72, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/bus/moxtet.c", i32 236, i32 3}
!164 = !{ptr @of_register_moxtet_device._entry.71, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @of_register_moxtet_device._entry_ptr.73, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/bus/moxtet.c", i32 247, i32 3}
!168 = !{ptr @of_register_moxtet_device._entry.74, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @of_register_moxtet_device._entry_ptr.76, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/bus/moxtet.c", i32 165, i32 9}
!172 = !{ptr @.str.78, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @moxtet_add_device.add_mutex, !171, !"add_mutex", i1 false, i1 false}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/bus/moxtet.c", i32 171, i32 26}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/bus/moxtet.c", i32 183, i32 3}
!178 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @moxtet_add_device._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @moxtet_add_device._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.82, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/bus/moxtet.c", i32 290, i32 4}
!183 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @moxtet_register_devices_from_topology._entry, !182, !"_entry", i1 false, i1 false}
!185 = !{ptr @moxtet_register_devices_from_topology._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/bus/moxtet.c", i32 301, i32 4}
!188 = !{ptr @moxtet_register_devices_from_topology._entry.84, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @moxtet_register_devices_from_topology._entry_ptr.86, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/bus/moxtet.c", i32 564, i32 37}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/bus/moxtet.c", i32 569, i32 37}
!194 = !{ptr @input_fops, !195, !"input_fops", i1 false, i1 false}
!195 = !{!"../drivers/bus/moxtet.c", i32 483, i32 37}
!196 = !{ptr @output_fops, !197, !"output_fops", i1 false, i1 false}
!197 = !{!"../drivers/bus/moxtet.c", i32 547, i32 37}
!198 = !{ptr @moxtet_dt_ids, !199, !"moxtet_dt_ids", i1 false, i1 false}
!199 = !{!"../drivers/bus/moxtet.c", i32 835, i32 34}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"auto-init"}
!210 = !{i64 2148989982, i64 2148989987, i64 2148990000, i64 2148990044, i64 2148990078, i64 2148990099}
!211 = !{!"branch_weights", i32 1, i32 2000}
