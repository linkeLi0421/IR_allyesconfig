; ModuleID = '/llk/IR_all_yes/drivers/pci/slot.c_pt.bc'
source_filename = "../drivers/pci/slot.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pci_slots_kset\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_slots_kset\09\09\09\09"
module asm "\09.long\09__crc_pci_slots_kset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_slots_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_slots_kset\22\09\09\09\09\09"
module asm "__kstrtabns_pci_slots_kset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_create_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_create_slot\09\09\09\09"
module asm "\09.long\09__crc_pci_create_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_create_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_create_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_create_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_destroy_slot\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_destroy_slot\09\09\09\09"
module asm "\09.long\09__crc_pci_destroy_slot\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_destroy_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_destroy_slot\22\09\09\09\09\09"
module asm "__kstrtabns_pci_destroy_slot:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_create_module_link\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_create_module_link\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_create_module_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_create_module_link:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_create_module_link\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_create_module_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pci_hp_remove_module_link\22, \22a\22\09"
module asm "\09.weak\09__crc_pci_hp_remove_module_link\09\09\09\09"
module asm "\09.long\09__crc_pci_hp_remove_module_link\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pci_hp_remove_module_link:\09\09\09\09\09"
module asm "\09.asciz \09\22pci_hp_remove_module_link\22\09\09\09\09\09"
module asm "__kstrtabns_pci_hp_remove_module_link:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.pci_slot_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.pci_slot = type { ptr, %struct.list_head, ptr, i8, %struct.kobject }
%struct.hotplug_slot = type { ptr, %struct.list_head, ptr, ptr, ptr }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, ptr }

@pci_slots_kset = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_pci_slots_kset = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_slots_kset = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_slots_kset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_slots_kset to i32), ptr @__kstrtab_pci_slots_kset, ptr @__kstrtabns_pci_slots_kset }, section "___ksymtab_gpl+pci_slots_kset", align 4
@pci_slot_mutex = external dso_local global %struct.mutex, align 4
@pci_slot_ktype = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @pci_slot_release, ptr @pci_slot_sysfs_ops, ptr null, ptr @pci_slot_default_groups, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@pci_bus_sem = external dso_local global %struct.rw_semaphore, align 4
@pci_create_slot.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 73, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"slot\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pci_create_slot\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/pci/slot.c\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"dev %02x, created physical slot %s\0A\00", [60 x i8] zeroinitializer }, align 32
@__kstrtab_pci_create_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_create_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_create_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_create_slot to i32), ptr @__kstrtab_pci_create_slot, ptr @__kstrtabns_pci_create_slot }, section "___ksymtab_gpl+pci_create_slot", align 4
@pci_destroy_slot.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_destroy_slot\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dev %02x, dec refcount to %d\0A\00", [34 x i8] zeroinitializer }, align 32
@__kstrtab_pci_destroy_slot = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_destroy_slot = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_destroy_slot = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_destroy_slot to i32), ptr @__kstrtab_pci_destroy_slot, ptr @__kstrtabns_pci_destroy_slot }, section "___ksymtab_gpl+pci_destroy_slot", align 4
@module_kset = external dso_local local_unnamed_addr global ptr, align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"module\00", [25 x i8] zeroinitializer }, align 32
@pci_hp_create_module_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 347, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error creating sysfs link (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_hp_create_module_link\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pci_hp_create_module_link._entry_ptr = internal global ptr @pci_hp_create_module_link._entry, section ".printk_index", align 4
@__kstrtab_pci_hp_create_module_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_create_module_link = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_create_module_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_create_module_link to i32), ptr @__kstrtab_pci_hp_create_module_link, ptr @__kstrtabns_pci_hp_create_module_link }, section "___ksymtab_gpl+pci_hp_create_module_link", align 4
@__kstrtab_pci_hp_remove_module_link = external dso_local constant [0 x i8], align 1
@__kstrtabns_pci_hp_remove_module_link = external dso_local constant [0 x i8], align 1
@__ksymtab_pci_hp_remove_module_link = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pci_hp_remove_module_link to i32), ptr @__kstrtab_pci_hp_remove_module_link, ptr @__kstrtabns_pci_hp_remove_module_link }, section "___ksymtab_gpl+pci_hp_remove_module_link", align 4
@__initcall__kmod_slot__239_381_pci_slot_init4 = internal global ptr @pci_slot_init, section ".initcall4.init", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-%d\00", [26 x i8] zeroinitializer }, align 32
@pci_slot_sysfs_ops = internal constant { %struct.sysfs_ops, [24 x i8] } { %struct.sysfs_ops { ptr @pci_slot_attr_show, ptr @pci_slot_attr_store }, [24 x i8] zeroinitializer }, align 32
@pci_slot_default_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pci_slot_default_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pci_slot_release.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pci_slot_release\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"dev %02x, released physical slot %s\0A\00", [59 x i8] zeroinitializer }, align 32
@pci_slot_default_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pci_slot_default_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pci_slot_default_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @pci_slot_attr_address, ptr @pci_slot_attr_max_speed, ptr @pci_slot_attr_cur_speed, ptr null], [16 x i8] zeroinitializer }, align 32
@pci_slot_attr_address = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @address_read_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@pci_slot_attr_max_speed = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_speed_read_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@pci_slot_attr_cur_speed = internal global { %struct.pci_slot_attribute, [36 x i8] } { %struct.pci_slot_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cur_speed_read_file, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"address\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%04x:%02x\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%04x:%02x:%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max_bus_speed\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cur_bus_speed\00", [18 x i8] zeroinitializer }, align 32
@pci_bus_type = external dso_local global %struct.bus_type, align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"slots\00", [26 x i8] zeroinitializer }, align 32
@pci_slot_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013PCI: Slot initialization failure\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pci_slot_init\00", [18 x i8] zeroinitializer }, align 32
@pci_slot_init._entry_ptr = internal global ptr @pci_slot_init._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"pci_slots_kset\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 15, i32 14 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"pci_slot_ktype\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 101, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 280, i32 8 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 292, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 315, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 344, i32 49 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 346, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 139, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"pci_slot_sysfs_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 34, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"pci_slot_default_groups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 72, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [23 x i8] c"pci_slot_default_group\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 99, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant [23 x i8] c"pci_slot_default_attrs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 93, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"pci_slot_attr_address\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 86, i32 34 }
@___asan_gen_.93 = private unnamed_addr constant [24 x i8] c"pci_slot_attr_max_speed\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 88, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant [24 x i8] c"pci_slot_attr_cur_speed\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 90, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 87, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 42, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 46, i32 25 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 89, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 54, i32 25 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 91, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 372, i32 39 }
@___asan_gen_.120 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.127 = private constant [22 x i8] c"../drivers/pci/slot.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 375, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_slot__239_381_pci_slot_init4, ptr @__ksymtab_pci_create_slot, ptr @__ksymtab_pci_destroy_slot, ptr @__ksymtab_pci_hp_create_module_link, ptr @__ksymtab_pci_hp_remove_module_link, ptr @__ksymtab_pci_slots_kset, ptr @pci_hp_create_module_link._entry, ptr @pci_hp_create_module_link._entry_ptr, ptr @pci_slot_init._entry, ptr @pci_slot_init._entry_ptr, ptr @pci_slots_kset, ptr @pci_slot_ktype, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @pci_slot_sysfs_ops, ptr @pci_slot_default_groups, ptr @.str.13, ptr @.str.14, ptr @pci_slot_default_group, ptr @pci_slot_default_attrs, ptr @pci_slot_attr_address, ptr @pci_slot_attr_max_speed, ptr @pci_slot_attr_cur_speed, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slots_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_ktype to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_hp_create_module_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_sysfs_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_default_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_default_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_default_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_attr_address to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_attr_max_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_attr_cur_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_slot_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_dev_assign_slot(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_slot_mutex, i32 noundef 0) #7
  %bus = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %slots = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn17 = load ptr, ptr %slots, align 4
  %cmp.not19 = icmp eq ptr %.pn17, %slots
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %4, 3
  %and = and i32 %shr, 31
  %slot5 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn20 = phi ptr [ %.pn17, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %number = getelementptr i8, ptr %.pn20, i32 12
  %5 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %number, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp3 = icmp eq i32 %and, %conv
  br i1 %cmp3, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %slot.021 = getelementptr i8, ptr %.pn20, i32 -4
  %7 = ptrtoint ptr %slot5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %slot.021, ptr %slot5, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, %slots
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pci_create_slot(ptr noundef %parent, i32 noundef %slot_nr, ptr noundef %name, ptr noundef readnone %hotplug) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_slot_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slot_nr)
  %cmp = icmp eq i32 %slot_nr, -1
  br i1 %cmp, label %entry.placeholder_crit_edge, label %if.end

entry.placeholder_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %placeholder

if.end:                                           ; preds = %entry
  %slots.i = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end
  %.pn.in.i = phi ptr [ %slots.i, %if.end ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %slots.i
  br i1 %cmp.not.i, label %for.cond.i.placeholder_crit_edge, label %for.body.i

for.cond.i.placeholder_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %placeholder

for.body.i:                                       ; preds = %for.cond.i
  %number.i = getelementptr i8, ptr %.pn.i, i32 12
  %1 = ptrtoint ptr %number.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %number.i, align 4
  %conv.i = zext i8 %2 to i32
  %cmp2.i = icmp eq i32 %conv.i, %slot_nr
  br i1 %cmp2.i, label %get_slot.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

get_slot.exit:                                    ; preds = %for.body.i
  %slot.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %kobj.i = getelementptr i8, ptr %.pn.i, i32 16
  %call.i = tail call ptr @kobject_get(ptr noundef %kobj.i) #7
  %tobool.not = icmp eq ptr %slot.0.le.i, null
  br i1 %tobool.not, label %get_slot.exit.placeholder_crit_edge, label %if.then1

get_slot.exit.placeholder_crit_edge:              ; preds = %get_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %placeholder

if.then1:                                         ; preds = %get_slot.exit
  %tobool2.not = icmp eq ptr %hotplug, null
  br i1 %tobool2.not, label %if.then1.out_crit_edge, label %if.then3

if.then1.out_crit_edge:                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then3:                                         ; preds = %if.then1
  %hotplug4 = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %hotplug4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hotplug4, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %lor.lhs.false, label %if.then3.if.then9_crit_edge

if.then3.if.then9_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.then3
  %5 = ptrtoint ptr %kobj.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kobj.i, align 4
  %call1.i = tail call i32 @strcmp(ptr noundef %6, ptr noundef %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp eq i32 %call1.i, 0
  br i1 %cmp.i, label %lor.lhs.false.out_crit_edge, label %if.end.i

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end.i:                                         ; preds = %lor.lhs.false
  %call2.i = tail call fastcc ptr @make_slot_name(ptr noundef %name) #7
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then9_crit_edge, label %rename_slot.exit

if.end.i.if.then9_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

rename_slot.exit:                                 ; preds = %if.end.i
  %call5.i = tail call i32 @kobject_rename(ptr noundef %kobj.i, ptr noundef nonnull %call2.i) #7
  tail call void @kfree(ptr noundef nonnull %call2.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool8.not = icmp eq i32 %call5.i, 0
  br i1 %tobool8.not, label %rename_slot.exit.out_crit_edge, label %rename_slot.exit.if.then9_crit_edge

rename_slot.exit.if.then9_crit_edge:              ; preds = %rename_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

rename_slot.exit.out_crit_edge:                   ; preds = %rename_slot.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.then9:                                         ; preds = %rename_slot.exit.if.then9_crit_edge, %if.end.i.if.then9_crit_edge, %if.then3.if.then9_crit_edge
  %err.0 = phi i32 [ -16, %if.then3.if.then9_crit_edge ], [ %call5.i, %rename_slot.exit.if.then9_crit_edge ], [ -12, %if.end.i.if.then9_crit_edge ]
  tail call void @kobject_put(ptr noundef %kobj.i) #7
  br label %err53

placeholder:                                      ; preds = %get_slot.exit.placeholder_crit_edge, %for.cond.i.placeholder_crit_edge, %entry.placeholder_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 156) #11
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %placeholder.err53_crit_edge, label %if.end16

placeholder.err53_crit_edge:                      ; preds = %placeholder
  call void @__sanitizer_cov_trace_pc() #9
  br label %err53

if.end16:                                         ; preds = %placeholder
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %parent, ptr %call7.i.i, align 8
  %conv = trunc i32 %slot_nr to i8
  %number = getelementptr inbounds %struct.pci_slot, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %number to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %number, align 8
  %10 = load ptr, ptr @pci_slots_kset, align 4
  %kobj17 = getelementptr inbounds %struct.pci_slot, ptr %call7.i.i, i32 0, i32 4
  %kset = getelementptr inbounds %struct.pci_slot, ptr %call7.i.i, i32 0, i32 4, i32 3
  %11 = ptrtoint ptr %kset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %kset, align 4
  %call18 = tail call fastcc ptr @make_slot_name(ptr noundef %name)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err53

if.end21:                                         ; preds = %if.end16
  %list = getelementptr inbounds %struct.pci_slot, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.pci_slot, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 8
  %slots = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 5
  %14 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slots, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %slots, ptr noundef %15) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end21.list_add.exit_crit_edge

if.end21.list_add.exit_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %list, ptr %prev1.i.i, align 4
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %list, align 4
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %slots, ptr %prev.i, align 8
  %19 = ptrtoint ptr %slots to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %slots, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end21.list_add.exit_crit_edge
  %call24 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj17, ptr noundef nonnull @pci_slot_ktype, ptr noundef null, ptr noundef nonnull @.str, ptr noundef nonnull %call18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kobject_put(ptr noundef %kobj17) #7
  br label %err53

if.end28:                                         ; preds = %list_add.exit
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #7
  %devices = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 3
  %20 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %20)
  %dev.099 = load ptr, ptr %devices, align 4
  %cmp30.not100 = icmp eq ptr %dev.099, %devices
  br i1 %cmp30.not100, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %dev.0101 = phi ptr [ %dev.0, %for.inc.for.body_crit_edge ], [ %dev.099, %if.end28.for.body_crit_edge ]
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.0101, i32 0, i32 6
  %21 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %22, 3
  %and = and i32 %shr, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %slot_nr)
  %cmp32 = icmp eq i32 %and, %slot_nr
  br i1 %cmp32, label %if.then34, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then34:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %slot35 = getelementptr inbounds %struct.pci_dev, ptr %dev.0101, i32 0, i32 5
  %23 = ptrtoint ptr %slot35 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %slot35, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then34, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %dev.0101 to i32
  call void @__asan_load4_noabort(i32 %24)
  %dev.0 = load ptr, ptr %dev.0101, align 4
  %cmp30.not = icmp eq ptr %dev.0, %devices
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_create_slot.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_create_slot, %out)) #7
          to label %if.then49 [label %out], !srcloc !84

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev50 = getelementptr inbounds %struct.pci_bus, ptr %parent, i32 0, i32 21
  %25 = ptrtoint ptr %kobj17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %kobj17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_create_slot.__UNIQUE_ID_ddebug237, ptr noundef %dev50, ptr noundef nonnull @.str.4, i32 noundef %slot_nr, ptr noundef %26) #7
  br label %out

out:                                              ; preds = %err53, %if.then49, %for.end, %rename_slot.exit.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.then1.out_crit_edge
  %slot_name.0 = phi ptr [ %slot_name.1, %err53 ], [ %call18, %if.then49 ], [ null, %rename_slot.exit.out_crit_edge ], [ null, %if.then1.out_crit_edge ], [ null, %lor.lhs.false.out_crit_edge ], [ %call18, %for.end ]
  %slot.0 = phi ptr [ %27, %err53 ], [ %call7.i.i, %if.then49 ], [ %slot.0.le.i, %rename_slot.exit.out_crit_edge ], [ %slot.0.le.i, %if.then1.out_crit_edge ], [ %slot.0.le.i, %lor.lhs.false.out_crit_edge ], [ %call7.i.i, %for.end ]
  tail call void @kfree(ptr noundef %slot_name.0) #7
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret ptr %slot.0

err53:                                            ; preds = %if.then26, %if.then20, %placeholder.err53_crit_edge, %if.then9
  %slot_name.1 = phi ptr [ %call18, %if.then26 ], [ null, %if.then20 ], [ null, %if.then9 ], [ null, %placeholder.err53_crit_edge ]
  %err.1 = phi i32 [ %call24, %if.then26 ], [ -12, %if.then20 ], [ %err.0, %if.then9 ], [ -12, %placeholder.err53_crit_edge ]
  %27 = inttoptr i32 %err.1 to ptr
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @make_slot_name(ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup14_crit_edge, label %if.end

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strlen(ptr noundef %name) #12
  %0 = load ptr, ptr @pci_slots_kset, align 4
  %call237 = tail call ptr @kset_find_obj(ptr noundef %0, ptr noundef nonnull %call) #7
  %tobool3.not38 = icmp eq ptr %call237, null
  br i1 %tobool3.not38, label %if.end.cleanup14_crit_edge, label %if.end5.preheader

if.end.cleanup14_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

if.end5.preheader:                                ; preds = %if.end
  %add = add i32 %call1, 2
  br label %if.end5

if.end5:                                          ; preds = %cleanup.if.end5_crit_edge, %if.end5.preheader
  %call243 = phi ptr [ %call2, %cleanup.if.end5_crit_edge ], [ %call237, %if.end5.preheader ]
  %dup.042 = phi i32 [ %inc12, %cleanup.if.end5_crit_edge ], [ 1, %if.end5.preheader ]
  %max.041 = phi i32 [ %max.1, %cleanup.if.end5_crit_edge ], [ 1, %if.end5.preheader ]
  %len.040 = phi i32 [ %len.1, %cleanup.if.end5_crit_edge ], [ %add, %if.end5.preheader ]
  %new_name.039 = phi ptr [ %new_name.1, %cleanup.if.end5_crit_edge ], [ %call, %if.end5.preheader ]
  tail call void @kobject_put(ptr noundef nonnull %call243) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %dup.042, i32 %max.041)
  %cmp = icmp eq i32 %dup.042, %max.041
  br i1 %cmp, label %if.then6, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  %inc = add i32 %len.040, 1
  %mul = mul i32 %dup.042, 10
  tail call void @kfree(ptr noundef %new_name.039) #7
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %inc, i32 noundef 3264) #13
  %tobool8.not = icmp eq ptr %call9.i, null
  br i1 %tobool8.not, label %if.then6.cleanup14_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.cleanup14_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup:                                          ; preds = %if.then6.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %new_name.1 = phi ptr [ %call9.i, %if.then6.cleanup_crit_edge ], [ %new_name.039, %if.end5.cleanup_crit_edge ]
  %len.1 = phi i32 [ %inc, %if.then6.cleanup_crit_edge ], [ %len.040, %if.end5.cleanup_crit_edge ]
  %max.1 = phi i32 [ %mul, %if.then6.cleanup_crit_edge ], [ %max.041, %if.end5.cleanup_crit_edge ]
  %inc12 = add i32 %dup.042, 1
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %new_name.1, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %dup.042)
  %1 = load ptr, ptr @pci_slots_kset, align 4
  %call2 = tail call ptr @kset_find_obj(ptr noundef %1, ptr noundef %new_name.1) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %cleanup.cleanup14_crit_edge, label %cleanup.if.end5_crit_edge

cleanup.if.end5_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

cleanup.cleanup14_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup14

cleanup14:                                        ; preds = %cleanup.cleanup14_crit_edge, %if.then6.cleanup14_crit_edge, %if.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup14_crit_edge ], [ %call, %if.end.cleanup14_crit_edge ], [ %new_name.1, %cleanup.cleanup14_crit_edge ], [ null, %if.then6.cleanup14_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_destroy_slot(ptr noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_destroy_slot.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_destroy_slot, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %dev = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 21
  %number = getelementptr inbounds %struct.pci_slot, ptr %slot, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %kref = getelementptr inbounds %struct.pci_slot, ptr %slot, i32 0, i32 4, i32 6
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %kref, i32 noundef 4) #7
  %4 = ptrtoint ptr %kref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %kref, align 4
  %sub = add i32 %5, -1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_destroy_slot.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv, i32 noundef %sub) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pci_slot_mutex, i32 noundef 0) #7
  %kobj5 = getelementptr inbounds %struct.pci_slot, ptr %slot, i32 0, i32 4
  tail call void @kobject_put(ptr noundef %kobj5) #7
  tail call void @mutex_unlock(ptr noundef nonnull @pci_slot_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_hp_create_module_link(ptr noundef %pci_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hotplug, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @module_kset to i32))
  %4 = load ptr, ptr @module_kset, align 4
  %mod_name = getelementptr inbounds %struct.hotplug_slot, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %mod_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mod_name, align 4
  %call = tail call ptr @kset_find_obj(ptr noundef %4, ptr noundef %6) #7
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %kobj5 = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 4
  %call6 = tail call i32 @sysfs_create_link(ptr noundef %kobj5, ptr noundef nonnull %call, ptr noundef nonnull @.str.7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.if.end9_crit_edge, label %do.end

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %pci_slot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pci_slot, align 4
  %dev = getelementptr inbounds %struct.pci_bus, ptr %8, i32 0, i32 21
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call6) #14
  br label %if.end9

if.end9:                                          ; preds = %do.end, %if.end4.if.end9_crit_edge
  tail call void @kobject_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pci_hp_remove_module_link(ptr noundef %pci_slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %kobj = getelementptr inbounds %struct.pci_slot, ptr %pci_slot, i32 0, i32 4
  tail call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef nonnull @.str.7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_slot_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @bus_get_kset(ptr noundef nonnull @pci_bus_type) #7
  %kobj = getelementptr inbounds %struct.kset, ptr %call, i32 0, i32 2
  %call1 = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str.21, ptr noundef null, ptr noundef %kobj) #7
  store ptr %call1, ptr @pci_slots_kset, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_rename(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pci_slot_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %kobj, i32 -20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pci_slot_release.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pci_slot_release, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !84

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev5 = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 21
  %number = getelementptr i8, ptr %kobj, i32 -4
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %number, align 4
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %kobj to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kobj, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pci_slot_release.__UNIQUE_ID_ddebug236, ptr noundef %dev5, ptr noundef nonnull @.str.14, i32 noundef %conv, ptr noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @down_read(ptr noundef nonnull @pci_bus_sem) #7
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %devices = getelementptr inbounds %struct.pci_bus, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %8)
  %dev.039 = load ptr, ptr %devices, align 4
  %cmp.not41 = icmp eq ptr %dev.039, %devices
  br i1 %cmp.not41, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %number16 = getelementptr i8, ptr %kobj, i32 -4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev.042 = phi ptr [ %dev.039, %for.body.lr.ph ], [ %dev.0, %for.inc.for.body_crit_edge ]
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %dev.042, i32 0, i32 6
  %9 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %10, 3
  %and = and i32 %shr, 31
  %11 = ptrtoint ptr %number16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %number16, align 4
  %conv17 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv17)
  %cmp18 = icmp eq i32 %and, %conv17
  br i1 %cmp18, label %if.then20, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %slot21 = getelementptr inbounds %struct.pci_dev, ptr %dev.042, i32 0, i32 5
  %13 = ptrtoint ptr %slot21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %slot21, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %dev.042 to i32
  call void @__asan_load4_noabort(i32 %14)
  %dev.0 = load ptr, ptr %dev.042, align 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr, align 4
  %devices12 = getelementptr inbounds %struct.pci_bus, ptr %16, i32 0, i32 3
  %cmp.not = icmp eq ptr %dev.0, %devices12
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @pci_bus_sem) #7
  %list = getelementptr i8, ptr %kobj, i32 -16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr i8, ptr %kobj, i32 -12
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %23 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %kobj, i32 -12
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_slot_attr_show(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %show = getelementptr inbounds %struct.pci_slot_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %show, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %kobj, i32 -20
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -5, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pci_slot_attr_store(ptr noundef %kobj, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %store = getelementptr inbounds %struct.pci_slot_attribute, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %store to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %store, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %kobj, i32 -20
  %call = tail call i32 %1(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %len) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -5, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @address_read_file(ptr nocapture noundef readonly %slot, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.pci_slot, ptr %slot, i32 0, i32 3
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %number, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %cmp = icmp eq i8 %1, -1
  %2 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slot, align 4
  %domain_nr.i = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %domain_nr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %domain_nr.i, align 8
  %number3 = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %number3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %number3, align 4
  %conv4 = zext i8 %7 to i32
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %5, i32 noundef %conv4) #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv12 = zext i8 %1 to i32
  %call13 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %5, i32 noundef %conv4, i32 noundef %conv12) #7
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %call13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_speed_read_file(ptr nocapture noundef readonly %slot, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %max_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %max_bus_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_bus_speed, align 2
  %conv = zext i8 %3 to i32
  %call.i = tail call ptr @pci_speed_string(i32 noundef %conv) #7
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef %call.i) #7
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_speed_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cur_speed_read_file(ptr nocapture noundef readonly %slot, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slot, align 4
  %cur_bus_speed = getelementptr inbounds %struct.pci_bus, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cur_bus_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cur_bus_speed, align 1
  %conv = zext i8 %3 to i32
  %call.i = tail call ptr @pci_speed_string(i32 noundef %conv) #7
  %call1.i = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.19, ptr noundef %call.i) #7
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bus_get_kset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74}
!llvm.module.flags = !{!75, !76, !77, !78, !79, !80, !81, !82}
!llvm.ident = !{!83}

!0 = !{ptr @__ksymtab_pci_slots_kset, !1, !"__ksymtab_pci_slots_kset", i1 false, i1 false}
!1 = !{!"../drivers/pci/slot.c", i32 16, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/slot.c", i32 280, i32 8}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pci/slot.c", i32 292, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @pci_create_slot.__UNIQUE_ID_ddebug237, !5, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!10 = !{ptr @__ksymtab_pci_create_slot, !11, !"__ksymtab_pci_create_slot", i1 false, i1 false}
!11 = !{!"../drivers/pci/slot.c", i32 303, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pci/slot.c", i32 315, i32 2}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pci_destroy_slot.__UNIQUE_ID_ddebug238, !13, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!16 = !{ptr @__ksymtab_pci_destroy_slot, !17, !"__ksymtab_pci_destroy_slot", i1 false, i1 false}
!17 = !{!"../drivers/pci/slot.c", i32 322, i32 1}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pci/slot.c", i32 344, i32 49}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/slot.c", i32 346, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pci_hp_create_module_link._entry, !21, !"_entry", i1 false, i1 false}
!26 = !{ptr @pci_hp_create_module_link._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__ksymtab_pci_hp_create_module_link, !28, !"__ksymtab_pci_hp_create_module_link", i1 false, i1 false}
!28 = !{!"../drivers/pci/slot.c", i32 350, i32 1}
!29 = !{ptr @__ksymtab_pci_hp_remove_module_link, !30, !"__ksymtab_pci_hp_remove_module_link", i1 false, i1 false}
!30 = !{!"../drivers/pci/slot.c", i32 364, i32 1}
!31 = !{ptr @__initcall__kmod_slot__239_381_pci_slot_init4, !32, !"__initcall__kmod_slot__239_381_pci_slot_init4", i1 false, i1 false}
!32 = !{!"../drivers/pci/slot.c", i32 381, i32 1}
!33 = !{ptr @pci_slots_kset, !34, !"pci_slots_kset", i1 false, i1 false}
!34 = !{!"../drivers/pci/slot.c", i32 15, i32 14}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pci/slot.c", i32 139, i32 21}
!37 = !{ptr @pci_slot_ktype, !38, !"pci_slot_ktype", i1 false, i1 false}
!38 = !{!"../drivers/pci/slot.c", i32 101, i32 25}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pci/slot.c", i32 72, i32 2}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pci_slot_release.__UNIQUE_ID_ddebug236, !40, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!43 = !{ptr @pci_slot_sysfs_ops, !44, !"pci_slot_sysfs_ops", i1 false, i1 false}
!44 = !{!"../drivers/pci/slot.c", i32 34, i32 31}
!45 = !{ptr @pci_slot_default_groups, !46, !"pci_slot_default_groups", i1 false, i1 false}
!46 = !{!"../drivers/pci/slot.c", i32 99, i32 1}
!47 = !{ptr @pci_slot_default_group, !46, !"pci_slot_default_group", i1 false, i1 false}
!48 = !{ptr @pci_slot_default_attrs, !49, !"pci_slot_default_attrs", i1 false, i1 false}
!49 = !{!"../drivers/pci/slot.c", i32 93, i32 26}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pci/slot.c", i32 87, i32 2}
!52 = !{ptr @pci_slot_attr_address, !53, !"pci_slot_attr_address", i1 false, i1 false}
!53 = !{!"../drivers/pci/slot.c", i32 86, i32 34}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pci/slot.c", i32 42, i32 26}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pci/slot.c", i32 46, i32 25}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/slot.c", i32 89, i32 2}
!60 = !{ptr @pci_slot_attr_max_speed, !61, !"pci_slot_attr_max_speed", i1 false, i1 false}
!61 = !{!"../drivers/pci/slot.c", i32 88, i32 34}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/slot.c", i32 54, i32 25}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pci/slot.c", i32 91, i32 2}
!66 = !{ptr @pci_slot_attr_cur_speed, !67, !"pci_slot_attr_cur_speed", i1 false, i1 false}
!67 = !{!"../drivers/pci/slot.c", i32 90, i32 34}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pci/slot.c", i32 372, i32 39}
!70 = !{ptr @.str.22, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pci/slot.c", i32 375, i32 3}
!72 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pci_slot_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @pci_slot_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{i32 1, !"wchar_size", i32 2}
!76 = !{i32 1, !"min_enum_size", i32 4}
!77 = !{i32 8, !"branch-target-enforcement", i32 0}
!78 = !{i32 8, !"sign-return-address", i32 0}
!79 = !{i32 8, !"sign-return-address-all", i32 0}
!80 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!81 = !{i32 7, !"uwtable", i32 1}
!82 = !{i32 7, !"frame-pointer", i32 2}
!83 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!84 = !{i64 2148333089, i64 2148333094, i64 2148333107, i64 2148333151, i64 2148333185, i64 2148333206}
