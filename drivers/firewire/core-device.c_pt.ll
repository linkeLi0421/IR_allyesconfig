; ModuleID = '/llk/IR_all_yes/drivers/firewire/core-device.c_pt.bc'
source_filename = "../drivers/firewire/core-device.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fw_csr_iterator_init\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_csr_iterator_init\09\09\09\09"
module asm "\09.long\09__crc_fw_csr_iterator_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_csr_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_csr_iterator_init\22\09\09\09\09\09"
module asm "__kstrtabns_fw_csr_iterator_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_csr_iterator_next\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_csr_iterator_next\09\09\09\09"
module asm "\09.long\09__crc_fw_csr_iterator_next\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_csr_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_csr_iterator_next\22\09\09\09\09\09"
module asm "__kstrtabns_fw_csr_iterator_next:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_csr_string\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_csr_string\09\09\09\09"
module asm "\09.long\09__crc_fw_csr_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_csr_string:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_csr_string\22\09\09\09\09\09"
module asm "__kstrtabns_fw_csr_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_bus_type\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_bus_type\09\09\09\09"
module asm "\09.long\09__crc_fw_bus_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_bus_type\22\09\09\09\09\09"
module asm "__kstrtabns_fw_bus_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_device_enable_phys_dma\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_device_enable_phys_dma\09\09\09\09"
module asm "\09.long\09__crc_fw_device_enable_phys_dma\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_device_enable_phys_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_device_enable_phys_dma\22\09\09\09\09\09"
module asm "__kstrtabns_fw_device_enable_phys_dma:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fw_workqueue\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_workqueue\09\09\09\09"
module asm "\09.long\09__crc_fw_workqueue\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_workqueue\22\09\09\09\09\09"
module asm "__kstrtabns_fw_workqueue:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.config_rom_attribute = type { %struct.device_attribute, i32 }
%struct.fw_csr_iterator = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.fw_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ieee1394_device_id = type { i32, i32, i32, i32, i32, i32 }
%struct.fw_device = type { %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.device, %struct.mutex, %struct.list_head, ptr, i32, i32, i16, ptr, %struct.delayed_work, %struct.fw_attribute_group }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.fw_card_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fw_node = type { i16, i8, i8, i8, i8, %struct.refcount_struct, %struct.list_head, ptr, [0 x ptr] }
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }

@__kstrtab_fw_csr_iterator_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_csr_iterator_init = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_csr_iterator_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_csr_iterator_init to i32), ptr @__kstrtab_fw_csr_iterator_init, ptr @__kstrtabns_fw_csr_iterator_init }, section "___ksymtab+fw_csr_iterator_init", align 4
@__kstrtab_fw_csr_iterator_next = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_csr_iterator_next = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_csr_iterator_next = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_csr_iterator_next to i32), ptr @__kstrtab_fw_csr_iterator_next, ptr @__kstrtabns_fw_csr_iterator_next }, section "___ksymtab+fw_csr_iterator_next", align 4
@__kstrtab_fw_csr_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_csr_string = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_csr_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_csr_string to i32), ptr @__kstrtab_fw_csr_string, ptr @__kstrtabns_fw_csr_string }, section "___ksymtab+fw_csr_string", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"firewire\00", [23 x i8] zeroinitializer }, align 32
@fw_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fw_unit_match, ptr null, ptr @fw_unit_probe, ptr null, ptr @fw_unit_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_fw_bus_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_bus_type = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_bus_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_bus_type to i32), ptr @__kstrtab_fw_bus_type, ptr @__kstrtabns_fw_bus_type }, section "___ksymtab+fw_bus_type", align 4
@__kstrtab_fw_device_enable_phys_dma = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_device_enable_phys_dma = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_device_enable_phys_dma = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_device_enable_phys_dma to i32), ptr @__kstrtab_fw_device_enable_phys_dma, ptr @__kstrtabns_fw_device_enable_phys_dma }, section "___ksymtab+fw_device_enable_phys_dma", align 4
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fw_device_rwsem.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@fw_device_rwsem = dso_local global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @fw_device_rwsem, i64 56), ptr getelementptr (i8, ptr @fw_device_rwsem, i64 56) }, ptr @fw_device_rwsem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_device_rwsem\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fw_device_idr.xa_lock\00", [42 x i8] zeroinitializer }, align 32
@fw_device_idr = dso_local global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@fw_workqueue = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_fw_workqueue = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_workqueue = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_workqueue = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_workqueue to i32), ptr @__kstrtab_fw_workqueue, ptr @__kstrtabns_fw_workqueue }, section "___ksymtab+fw_workqueue", align 4
@fw_node_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&device->client_list_mutex\00", [37 x i8] zeroinitializer }, align 32
@fw_node_event.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&device->work)->work)\00", [54 x i8] zeroinitializer }, align 32
@fw_node_event.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&device->work)->timer\00", [40 x i8] zeroinitializer }, align 32
@fw_cdev_major = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@fw_unit_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr null, ptr @fw_unit_uevent, ptr null, ptr @fw_unit_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MODALIAS=%s\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ieee1394:ven%08Xmo%08Xsp%08Xver%08X\00", [60 x i8] zeroinitializer }, align 32
@fw_device_type = internal global { %struct.device_type, [40 x i8] } { %struct.device_type { ptr null, ptr null, ptr null, ptr null, ptr @fw_device_release, ptr null }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"giving up on node %x: reading config rom failed: %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fw%d\00", [27 x i8] zeroinitializer }, align 32
@fw_device_attributes = internal global { [5 x %struct.device_attribute], [52 x i8] } { [5 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_rom_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @guid_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @is_local_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @units_show, ptr null }, %struct.device_attribute zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to add device\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"created device %s: GUID %08x%08x, S%d00\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/firewire/core-device.c\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"skipped invalid ROM block %x at %llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"skipped unsupported ROM entry %x at %llx\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rediscovered device %s\0A\00", [40 x i8] zeroinitializer }, align 32
@config_rom_attributes = internal global { [8 x %struct.config_rom_attribute], [64 x i8] } { [8 x %struct.config_rom_attribute] [%struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_immediate, ptr null }, i32 3 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_immediate, ptr null }, i32 4 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_immediate, ptr null }, i32 18 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_immediate, ptr null }, i32 19 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_immediate, ptr null }, i32 23 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_text_leaf, ptr null }, i32 3 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_text_leaf, ptr null }, i32 23 }, %struct.config_rom_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_text_leaf, ptr null }, i32 4 }], [64 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vendor\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hardware_version\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"specifier_id\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vendor_name\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"model_name\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hardware_version_name\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%06x\0A\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"config_rom\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"guid\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"is_local\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"units\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"0x%08x%08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0x%06x:0x%06x \00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@fw_unit_attributes = internal global { [3 x %struct.device_attribute], [44 x i8] } { [3 x %struct.device_attribute] [%struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rom_index_show, ptr null }, %struct.device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rom_index\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"refreshed device %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"giving up on refresh of device %s: %s\0A\00", [57 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 18, i64 19, i64 23]
@__sancov_gen_cov_switch_values.53 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 18, i64 19, i64 23]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 18]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 8, i64 18, i64 19]
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 223, i32 10 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"fw_bus_type\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 222, i32 17 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"fw_device_rwsem\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 746, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"fw_device_idr\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 748, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"fw_workqueue\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 764, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1236, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1253, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [14 x i8] c"fw_cdev_major\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 749, i32 5 }
@___asan_gen_.136 = private unnamed_addr constant [13 x i8] c"fw_unit_type\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 679, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 216, i32 26 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 205, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"fw_device_type\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 839, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1006, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1040, i32 32 }
@___asan_gen_.154 = private unnamed_addr constant [21 x i8] c"fw_device_attributes\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 467, i32 32 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1050, i32 16 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1071, i32 19 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 591, i32 7 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 607, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 636, i32 12 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 907, i32 19 }
@___asan_gen_.175 = private unnamed_addr constant [22 x i8] c"config_rom_attributes\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 322, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 323, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 324, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 325, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 326, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 327, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 328, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 329, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 330, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 268, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 468, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 469, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 470, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 471, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 406, i32 33 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 418, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 440, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 713, i32 31 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"fw_unit_attributes\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 379, i32 32 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 380, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 381, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 375, i32 34 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1173, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [34 x i8] c"../drivers/firewire/core-device.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 1185, i32 18 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__ksymtab_fw_bus_type, ptr @__ksymtab_fw_csr_iterator_init, ptr @__ksymtab_fw_csr_iterator_next, ptr @__ksymtab_fw_csr_string, ptr @__ksymtab_fw_device_enable_phys_dma, ptr @__ksymtab_fw_workqueue, ptr @.str, ptr @fw_bus_type, ptr @.str.1, ptr @fw_device_rwsem, ptr @.str.2, ptr @.str.3, ptr @fw_device_idr, ptr @fw_workqueue, ptr @fw_node_event.__key, ptr @.str.4, ptr @fw_node_event.__key.5, ptr @.str.6, ptr @fw_node_event.__key.7, ptr @.str.8, ptr @fw_cdev_major, ptr @fw_unit_type, ptr @.str.9, ptr @.str.10, ptr @fw_device_type, ptr @.str.11, ptr @.str.12, ptr @fw_device_attributes, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @config_rom_attributes, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @fw_unit_attributes, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_rwsem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_workqueue to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_node_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_node_event.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_node_event.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_cdev_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_unit_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_type to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_attributes to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_rom_attributes to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_unit_attributes to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @fw_csr_iterator_init(ptr nocapture noundef writeonly %ci, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i32, ptr %p, i32 1
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %add.ptr, ptr %ci, align 4
  %1 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %p, align 4
  %shr = lshr i32 %2, 16
  %add.ptr3 = getelementptr i32, ptr %add.ptr, i32 %shr
  %end = getelementptr inbounds %struct.fw_csr_iterator, ptr %ci, i32 0, i32 1
  %3 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr3, ptr %end, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fw_csr_iterator_next(ptr nocapture noundef %ci, ptr nocapture noundef writeonly %key, ptr nocapture noundef writeonly %value) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shr = lshr i32 %3, 24
  %4 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shr, ptr %key, align 4
  %5 = load ptr, ptr %ci, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and = and i32 %7, 16777215
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %value, align 4
  %9 = load ptr, ptr %ci, align 4
  %incdec.ptr = getelementptr i32, ptr %9, i32 1
  store ptr %incdec.ptr, ptr %ci, align 4
  %end = getelementptr inbounds %struct.fw_csr_iterator, ptr %ci, i32 0, i32 1
  %10 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %end, align 4
  %cmp = icmp ult ptr %9, %11
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_csr_string(ptr noundef readonly %directory, i32 noundef %key, ptr noundef writeonly %buf, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i32, ptr %directory, i32 1
  %0 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %directory, align 4
  %shr.i.i = lshr i32 %1, 16
  %add.ptr3.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %shr.i.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %ci.sroa.0.0.i = phi ptr [ %add.ptr.i.i, %entry ], [ %incdec.ptr.i.i, %while.body.i.while.cond.i_crit_edge ]
  %last_key.0.i = phi i32 [ 0, %entry ], [ %shr.i6.i, %while.body.i.while.cond.i_crit_edge ]
  %cmp.i.not.i = icmp ult ptr %ci.sroa.0.0.i, %add.ptr3.i.i
  br i1 %cmp.i.not.i, label %while.body.i, label %while.cond.i.cleanup_crit_edge

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %2 = ptrtoint ptr %ci.sroa.0.0.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ci.sroa.0.0.i, align 4
  %incdec.ptr.i.i = getelementptr i32, ptr %ci.sroa.0.0.i, i32 1
  %shr.i6.i = lshr i32 %3, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %last_key.0.i, i32 %key)
  %cmp.i = icmp eq i32 %last_key.0.i, %key
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %shr.i6.i)
  %cmp1.i = icmp eq i32 %shr.i6.i, 129
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %search_leaf.exit, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i

search_leaf.exit:                                 ; preds = %while.body.i
  %and.i.le.i = and i32 %3, 16777215
  %add.ptr2.i = getelementptr i32, ptr %ci.sroa.0.0.i, i32 %and.i.le.i
  %tobool.not = icmp eq ptr %add.ptr2.i, null
  br i1 %tobool.not, label %search_leaf.exit.cleanup_crit_edge, label %if.end

search_leaf.exit.cleanup_crit_edge:               ; preds = %search_leaf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %search_leaf.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not.i = icmp eq i32 %size, 0
  %tobool1.not.i = icmp eq ptr %buf, null
  %or.cond.i3 = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %or.cond.i3, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %4 = ptrtoint ptr %add.ptr2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %5)
  %cmp.i4 = icmp ult i32 %5, 16777216
  %shr.i = lshr i32 %5, 16
  %cond.i = select i1 %cmp.i4, i32 %shr.i, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i)
  %cmp2.i = icmp ult i32 %cond.i, 2
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx5.i = getelementptr i32, ptr %add.ptr2.i, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.not.i = icmp eq i32 %7, 0
  br i1 %cmp6.not.i, label %lor.lhs.false7.i, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false7.i:                                 ; preds = %if.end4.i
  %arrayidx8.i = getelementptr i32, ptr %add.ptr2.i, i32 2
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp9.not.i = icmp eq i32 %9, 0
  br i1 %cmp9.not.i, label %if.end11.i, label %lor.lhs.false7.i.cleanup_crit_edge

lor.lhs.false7.i.cleanup_crit_edge:               ; preds = %lor.lhs.false7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11.i:                                       ; preds = %lor.lhs.false7.i
  %add.ptr.i = getelementptr i32, ptr %add.ptr2.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i)
  %cmp1249.i = icmp ne i32 %cond.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %size)
  %cmp1450.i = icmp ne i32 %size, 1
  %or.cond4851.i = and i1 %cmp1450.i, %cmp1249.i
  br i1 %or.cond4851.i, label %for.body.preheader.i, label %if.end11.i.for.end.i_crit_edge

if.end11.i.for.end.i_crit_edge:                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end11.i
  %sub.i = shl nuw nsw i32 %cond.i, 2
  %10 = add i32 %size, -2
  %11 = add nsw i32 %sub.i, -9
  %umin.i = tail call i32 @llvm.umin.i32(i32 %10, i32 %11) #13
  %12 = add nuw nsw i32 %umin.i, 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end23.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.052.i = phi i32 [ %inc.i, %if.end23.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %div47.i = lshr i32 %i.052.i, 2
  %arrayidx15.i = getelementptr i32, ptr %add.ptr.i, i32 %div47.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15.i, align 4
  %rem.i = shl i32 %i.052.i, 3
  %rem.not.i = and i32 %rem.i, 24
  %sub17.i = xor i32 %rem.not.i, 24
  %shr18.i = lshr i32 %14, %sub17.i
  %conv19.i = and i32 %shr18.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19.i)
  %cmp20.i = icmp eq i32 %conv19.i, 0
  br i1 %cmp20.i, label %for.body.i.for.end.i_crit_edge, label %if.end23.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

if.end23.i:                                       ; preds = %for.body.i
  %conv.i = trunc i32 %shr18.i to i8
  %arrayidx24.i = getelementptr i8, ptr %buf, i32 %i.052.i
  %15 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %arrayidx24.i, align 1
  %inc.i = add nuw i32 %i.052.i, 1
  %exitcond.not.i = icmp eq i32 %i.052.i, %umin.i
  br i1 %exitcond.not.i, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %if.end23.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge, %if.end11.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end11.i.for.end.i_crit_edge ], [ %i.052.i, %for.body.i.for.end.i_crit_edge ], [ %12, %if.end23.i.for.end.i_crit_edge ]
  %arrayidx25.i = getelementptr i8, ptr %buf, i32 %i.0.lcssa.i
  %16 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx25.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end.i, %lor.lhs.false7.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %search_leaf.exit.cleanup_crit_edge, %while.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %search_leaf.exit.cleanup_crit_edge ], [ %i.0.lcssa.i, %for.end.i ], [ -22, %if.end.cleanup_crit_edge ], [ -61, %if.end.i.cleanup_crit_edge ], [ -61, %lor.lhs.false7.i.cleanup_crit_edge ], [ -61, %if.end4.i.cleanup_crit_edge ], [ -2, %while.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_unit_match(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %drv) #2 align 64 {
entry:
  %id.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @fw_unit_type
  br i1 %cmp.i, label %land.rhs, label %entry.land.end_crit_edge

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %entry
  %id_table1.i = getelementptr inbounds %struct.fw_driver, ptr %drv, i32 0, i32 4
  %2 = ptrtoint ptr %id_table1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_table1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id.i) #13
  %4 = call ptr @memset(ptr %id.i, i32 0, i32 16)
  call fastcc void @get_modalias_ids(ptr noundef %dev, ptr noundef nonnull %id.i) #13
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not8.i = icmp eq i32 %6, 0
  br i1 %cmp.not8.i, label %land.rhs.unit_match.exit_crit_edge, label %for.body.lr.ph.i

land.rhs.unit_match.exit_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

for.body.lr.ph.i:                                 ; preds = %land.rhs
  %7 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %id.i, i32 1
  %9 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx1.i.i, align 4
  %arrayidx6.i.i = getelementptr inbounds i32, ptr %id.i, i32 2
  %11 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds i32, ptr %id.i, i32 3
  %13 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx11.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %15 = phi i32 [ %6, %for.body.lr.ph.i ], [ %25, %for.inc.i.for.body.i_crit_edge ]
  %id_table.09.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %vendor_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 1
  %16 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vendor_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %17)
  %cmp.i.i = icmp eq i32 %8, %17
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %model_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 2
  %18 = ptrtoint ptr %model_id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %model_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %19)
  %cmp2.i.i = icmp eq i32 %10, %19
  %or4.i.i = or i32 %spec.select.i.i, 2
  %match.1.i.i = select i1 %cmp2.i.i, i32 %or4.i.i, i32 %spec.select.i.i
  %specifier_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 3
  %20 = ptrtoint ptr %specifier_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %specifier_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp7.i.i = icmp eq i32 %12, %21
  %or9.i.i = or i32 %match.1.i.i, 4
  %match.2.i.i = select i1 %cmp7.i.i, i32 %or9.i.i, i32 %match.1.i.i
  %version.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 4
  %22 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %23)
  %cmp12.i.i = icmp eq i32 %14, %23
  %or14.i.i = or i32 %match.2.i.i, 8
  %match.3.i.i = select i1 %cmp12.i.i, i32 %or14.i.i, i32 %match.2.i.i
  %and.i.i = and i32 %match.3.i.i, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %15)
  %cmp17.i.i = icmp eq i32 %and.i.i, %15
  br i1 %cmp17.i.i, label %for.body.i.unit_match.exit_crit_edge, label %for.inc.i

for.body.i.unit_match.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ieee1394_device_id, ptr %id_table.09.i, i32 1
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %25, 0
  br i1 %cmp.not.i, label %for.inc.i.unit_match.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.unit_match.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

unit_match.exit:                                  ; preds = %for.inc.i.unit_match.exit_crit_edge, %for.body.i.unit_match.exit_crit_edge, %land.rhs.unit_match.exit_crit_edge
  %retval.0.i = phi ptr [ null, %land.rhs.unit_match.exit_crit_edge ], [ %id_table.09.i, %for.body.i.unit_match.exit_crit_edge ], [ null, %for.inc.i.unit_match.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #13
  %cmp = icmp ne ptr %retval.0.i, null
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %unit_match.exit, %entry.land.end_crit_edge
  %26 = phi i32 [ 0, %entry.land.end_crit_edge ], [ %phi.cast, %unit_match.exit ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_unit_probe(ptr noundef %dev) #4 align 64 {
entry:
  %id.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %probe = getelementptr inbounds %struct.fw_driver, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe, align 4
  %id_table1.i = getelementptr inbounds %struct.fw_driver, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %id_table1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_table1.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id.i) #13
  %6 = call ptr @memset(ptr %id.i, i32 0, i32 16)
  call fastcc void @get_modalias_ids(ptr noundef %dev, ptr noundef nonnull %id.i) #13
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not8.i = icmp eq i32 %8, 0
  br i1 %cmp.not8.i, label %entry.unit_match.exit_crit_edge, label %for.body.lr.ph.i

entry.unit_match.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %9 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id.i, align 4
  %arrayidx1.i.i = getelementptr inbounds i32, ptr %id.i, i32 1
  %11 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx1.i.i, align 4
  %arrayidx6.i.i = getelementptr inbounds i32, ptr %id.i, i32 2
  %13 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx11.i.i = getelementptr inbounds i32, ptr %id.i, i32 3
  %15 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx11.i.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %17 = phi i32 [ %8, %for.body.lr.ph.i ], [ %27, %for.inc.i.for.body.i_crit_edge ]
  %id_table.09.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %vendor_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 1
  %18 = ptrtoint ptr %vendor_id.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vendor_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %19)
  %cmp.i.i = icmp eq i32 %10, %19
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %model_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 2
  %20 = ptrtoint ptr %model_id.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %21)
  %cmp2.i.i = icmp eq i32 %12, %21
  %or4.i.i = or i32 %spec.select.i.i, 2
  %match.1.i.i = select i1 %cmp2.i.i, i32 %or4.i.i, i32 %spec.select.i.i
  %specifier_id.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 3
  %22 = ptrtoint ptr %specifier_id.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %specifier_id.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %23)
  %cmp7.i.i = icmp eq i32 %14, %23
  %or9.i.i = or i32 %match.1.i.i, 4
  %match.2.i.i = select i1 %cmp7.i.i, i32 %or9.i.i, i32 %match.1.i.i
  %version.i.i = getelementptr inbounds %struct.ieee1394_device_id, ptr %id_table.09.i, i32 0, i32 4
  %24 = ptrtoint ptr %version.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %25)
  %cmp12.i.i = icmp eq i32 %16, %25
  %or14.i.i = or i32 %match.2.i.i, 8
  %match.3.i.i = select i1 %cmp12.i.i, i32 %or14.i.i, i32 %match.2.i.i
  %and.i.i = and i32 %match.3.i.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %17)
  %cmp17.i.i = icmp eq i32 %and.i.i, %17
  br i1 %cmp17.i.i, label %for.body.i.unit_match.exit_crit_edge, label %for.inc.i

for.body.i.unit_match.exit_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ieee1394_device_id, ptr %id_table.09.i, i32 1
  %26 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %27, 0
  br i1 %cmp.not.i, label %for.inc.i.unit_match.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.unit_match.exit_crit_edge:              ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unit_match.exit

unit_match.exit:                                  ; preds = %for.inc.i.unit_match.exit_crit_edge, %for.body.i.unit_match.exit_crit_edge, %entry.unit_match.exit_crit_edge
  %retval.0.i = phi ptr [ null, %entry.unit_match.exit_crit_edge ], [ %id_table.09.i, %for.body.i.unit_match.exit_crit_edge ], [ null, %for.inc.i.unit_match.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #13
  %call4 = tail call i32 %3(ptr noundef %dev, ptr noundef %retval.0.i) #13
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_unit_remove(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %remove = getelementptr inbounds %struct.fw_driver, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %remove, align 4
  tail call void %3(ptr noundef %dev) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_device_enable_phys_dma(ptr nocapture noundef readonly %device) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %generation1 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 3
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !120
  %card = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %enable_phys_dma = getelementptr inbounds %struct.fw_card_driver, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %enable_phys_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_phys_dma, align 4
  %node_id = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 2
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id, align 8
  %call = tail call i32 %7(ptr noundef %3, i32 noundef %9, i32 noundef %1) #13
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fw_device_get_by_devt(i32 noundef %devt) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %and = and i32 %devt, 1048575
  %call = tail call ptr @idr_find(ptr noundef nonnull @fw_device_idr, i32 noundef %and) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %device1.i = getelementptr inbounds %struct.fw_device, ptr %call, i32 0, i32 6
  %call.i = tail call ptr @get_device(ptr noundef %device1.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fw_device_set_broadcast_channel(ptr nocapture noundef %dev, ptr noundef %gen) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @fw_device_type
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -24
  %2 = ptrtoint ptr %gen to i32
  tail call fastcc void @set_broadcast_channel(ptr noundef %add.ptr.i, i32 noundef %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_broadcast_channel(ptr nocapture noundef %device, i32 noundef %generation) unnamed_addr #4 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 5
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #13
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !121
  %broadcast_channel_allocated = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 37
  %3 = ptrtoint ptr %broadcast_channel_allocated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %broadcast_channel_allocated, align 1, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %irmc = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 12
  %5 = ptrtoint ptr %irmc to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load = load i16, ptr %irmc, align 8
  %6 = and i16 %bf.load, 16896
  call void @__sanitizer_cov_trace_const_cmp2(i16 16896, i16 %6)
  %.not = icmp eq i16 %6, 16896
  br i1 %.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %7 = and i16 %bf.load, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp13 = icmp eq i16 %7, 0
  br i1 %cmp13, label %if.then14, label %if.end8.if.end26_crit_edge

if.end8.if.end26_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then14:                                        ; preds = %if.end8
  %node_id = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 2
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id, align 8
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 4
  %10 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_speed, align 8
  %call = call i32 @fw_run_transaction(ptr noundef %1, i32 noundef 4, i32 noundef %9, i32 noundef %generation, i32 noundef %11, i64 noundef 281474708275764, ptr noundef nonnull %data, i32 noundef 4) #13
  %12 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then14.if.end26_crit_edge [
    i32 0, label %sw.bb
    i32 7, label %if.then14.sw.bb21_crit_edge
  ]

if.then14.sw.bb21_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

sw.bb:                                            ; preds = %if.then14
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %tobool15.not = icmp sgt i32 %14, -1
  br i1 %tobool15.not, label %sw.bb.sw.bb21_crit_edge, label %sw.bb.if.end26.sink.split_crit_edge

sw.bb.if.end26.sink.split_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26.sink.split

sw.bb.sw.bb21_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb21

sw.bb21:                                          ; preds = %sw.bb.sw.bb21_crit_edge, %if.then14.sw.bb21_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %sw.bb21, %sw.bb.if.end26.sink.split_crit_edge
  %.sink = phi i16 [ 128, %sw.bb21 ], [ 256, %sw.bb.if.end26.sink.split_crit_edge ]
  %15 = ptrtoint ptr %irmc to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load18 = load i16, ptr %irmc, align 8
  %bf.clear19 = and i16 %bf.load18, -385
  %bf.set = or i16 %bf.clear19, %.sink
  store i16 %bf.set, ptr %irmc, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %if.then14.if.end26_crit_edge, %if.end8.if.end26_crit_edge
  %16 = ptrtoint ptr %irmc to i32
  call void @__asan_load2_noabort(i32 %16)
  %bf.load28 = load i16, ptr %irmc, align 8
  %17 = and i16 %bf.load28, 384
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %17)
  %cmp32 = icmp eq i16 %17, 256
  br i1 %cmp32, label %if.then33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1073741793, ptr %data, align 4
  %node_id34 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 2
  %19 = ptrtoint ptr %node_id34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node_id34, align 8
  %max_speed35 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 4
  %21 = ptrtoint ptr %max_speed35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_speed35, align 8
  %call36 = call i32 @fw_run_transaction(ptr noundef %1, i32 noundef 0, i32 noundef %20, i32 noundef %generation, i32 noundef %22, i64 noundef 281474708275764, ptr noundef nonnull %data, i32 noundef 4) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end26.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_node_event(ptr noundef %card, ptr noundef %node, i32 noundef %event) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.create_crit_edge
    i32 5, label %entry.sw.bb30_crit_edge
    i32 3, label %entry.sw.bb30_crit_edge156
    i32 1, label %sw.bb56
    i32 2, label %entry.sw.bb80_crit_edge
    i32 4, label %entry.sw.bb80_crit_edge157
  ]

entry.sw.bb80_crit_edge157:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb80

entry.sw.bb80_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb80

entry.sw.bb30_crit_edge156:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.bb30

entry.create_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %create

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

create:                                           ; preds = %sw.bb30.create_crit_edge, %entry.create_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2848, i32 noundef 1256) #16
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %create.sw.epilog_crit_edge, label %if.end

create.sw.epilog_crit_edge:                       ; preds = %create
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end:                                           ; preds = %create
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i, i32 noundef 4) #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %call7.i.i, align 8
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #13
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #13, !srcloc !123
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !124

if.end.if.end15.sink.split.i.i.i.i.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #13
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  %card2 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %card2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %card, ptr %card2, align 4
  %ref_count.i = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #13
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #13, !srcloc !123
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %fw_card_get.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !124

fw_card_get.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %fw_card_get.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fw_node_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !125

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fw_node_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_node_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %fw_card_get.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %fw_card_get.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #13
  br label %fw_node_get.exit

fw_node_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fw_node_get.exit_crit_edge
  %node4 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %node4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node, ptr %node4, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %node, align 4
  %conv = zext i16 %10 to i32
  %node_id5 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %node_id5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %node_id5, align 8
  %generation = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 5
  %12 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generation, align 8
  %generation6 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %generation6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %generation6, align 4
  %local_node = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 19
  %15 = ptrtoint ptr %local_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %local_node, align 8
  %cmp7 = icmp eq ptr %16, %node
  %is_local = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %is_local, align 8
  %bf.shl = select i1 %cmp7, i16 -32768, i16 0
  %bf.clear = and i16 %bf.load, 32767
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %is_local, align 8
  %client_list_mutex = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %client_list_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @fw_node_event.__key) #13
  %client_list = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %client_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %client_list, ptr %client_list, align 4
  %prev.i = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client_list, ptr %prev.i, align 8
  %data = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 7
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %data, align 4
  %workfn = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fw_device_init, ptr %workfn, align 4
  %work = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #13
  %22 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @fw_node_event.__key.5, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  %entry19 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %23 = ptrtoint ptr %entry19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry19, ptr %entry19, align 4
  %prev.i148 = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i148 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry19, ptr %prev.i148, align 8
  %func = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @fw_device_workfn, ptr %func, align 4
  %timer = getelementptr inbounds %struct.fw_device, ptr %call7.i.i, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.8, ptr noundef nonnull @fw_node_event.__key.7) #13
  %26 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i149 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef 50) #13
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge156
  %data31 = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 7
  %27 = ptrtoint ptr %data31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data31, align 4
  %cmp32 = icmp eq ptr %28, null
  br i1 %cmp32, label %sw.bb30.create_crit_edge, label %if.end35

sw.bb30.create_crit_edge:                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #15
  br label %create

if.end35:                                         ; preds = %sw.bb30
  %29 = ptrtoint ptr %node to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %node, align 4
  %conv37 = zext i16 %30 to i32
  %node_id38 = getelementptr inbounds %struct.fw_device, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %node_id38 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv37, ptr %node_id38, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !126
  %generation45 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 5
  %32 = ptrtoint ptr %generation45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %generation45, align 8
  %generation46 = getelementptr inbounds %struct.fw_device, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %generation46 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %generation46, align 4
  %call.i.i145 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %28, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr nonnull %28, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end35
  %35 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr nonnull elementtype(i32) %28, ptr nonnull %28, i32 1, i32 0, ptr nonnull elementtype(i32) %28) #13, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32 } %35, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %35, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult3.i.i.i)
  %cmp49 = icmp eq i32 %asmresult3.i.i.i, 1
  br i1 %cmp49, label %if.then51, label %atomic_cmpxchg.exit.sw.epilog_crit_edge

atomic_cmpxchg.exit.sw.epilog_crit_edge:          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then51:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %workfn52 = getelementptr inbounds %struct.fw_device, ptr %28, i32 0, i32 13
  %36 = ptrtoint ptr %workfn52 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @fw_device_refresh, ptr %workfn52, align 4
  %is_local53 = getelementptr inbounds %struct.fw_device, ptr %28, i32 0, i32 12
  %37 = ptrtoint ptr %is_local53 to i32
  call void @__asan_load2_noabort(i32 %37)
  %bf.load54 = load i16, ptr %is_local53, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load54)
  %tobool.not = icmp sgt i16 %bf.load54, -1
  %cond = select i1 %tobool.not, i32 50, i32 0
  %38 = load ptr, ptr @fw_workqueue, align 4
  %work.i150 = getelementptr inbounds %struct.fw_device, ptr %28, i32 0, i32 14
  %call.i.i151 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %work.i150, i32 noundef %cond) #13
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %data57 = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 7
  %39 = ptrtoint ptr %data57 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data57, align 4
  %cmp58 = icmp eq ptr %40, null
  br i1 %cmp58, label %sw.bb56.sw.epilog_crit_edge, label %if.end61

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end61:                                         ; preds = %sw.bb56
  %41 = ptrtoint ptr %node to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %node, align 4
  %conv63 = zext i16 %42 to i32
  %node_id64 = getelementptr inbounds %struct.fw_device, ptr %40, i32 0, i32 2
  %43 = ptrtoint ptr %node_id64 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv63, ptr %node_id64, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !130
  %generation71 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 5
  %44 = ptrtoint ptr %generation71 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %generation71, align 8
  %generation72 = getelementptr inbounds %struct.fw_device, ptr %40, i32 0, i32 3
  %46 = ptrtoint ptr %generation72 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %generation72, align 4
  %call.i.i146 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %40, i32 noundef 4) #13
  %47 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp75 = icmp eq i32 %48, 1
  br i1 %cmp75, label %if.then77, label %if.end61.sw.epilog_crit_edge

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then77:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %workfn78 = getelementptr inbounds %struct.fw_device, ptr %40, i32 0, i32 13
  %49 = ptrtoint ptr %workfn78 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @fw_device_update, ptr %workfn78, align 4
  %50 = load ptr, ptr @fw_workqueue, align 4
  %work.i152 = getelementptr inbounds %struct.fw_device, ptr %40, i32 0, i32 14
  %call.i.i153 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %50, ptr noundef %work.i152, i32 noundef 0) #13
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry.sw.bb80_crit_edge, %entry.sw.bb80_crit_edge157
  %data81 = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 7
  %51 = ptrtoint ptr %data81 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data81, align 4
  %tobool82.not = icmp eq ptr %52, null
  br i1 %tobool82.not, label %sw.bb80.sw.epilog_crit_edge, label %if.end84

sw.bb80.sw.epilog_crit_edge:                      ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end84:                                         ; preds = %sw.bb80
  %call.i.i147 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %52, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !131
  tail call void @llvm.prefetch.p0(ptr nonnull %52, i32 1, i32 3, i32 1) #13
  %53 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 2, ptr nonnull %52) #13, !srcloc !132
  %asmresult.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !133
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i)
  %cmp88 = icmp eq i32 %asmresult.i.i, 1
  br i1 %cmp88, label %if.then90, label %if.end84.sw.epilog_crit_edge

if.end84.sw.epilog_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  %workfn91 = getelementptr inbounds %struct.fw_device, ptr %52, i32 0, i32 13
  %54 = ptrtoint ptr %workfn91 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @fw_device_shutdown, ptr %workfn91, align 4
  %link = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 26
  %55 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %56, %link
  %cond94 = select i1 %cmp.i.not, i32 0, i32 200
  %57 = load ptr, ptr @fw_workqueue, align 4
  %work.i154 = getelementptr inbounds %struct.fw_device, ptr %52, i32 0, i32 14
  %call.i.i155 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %57, ptr noundef %work.i154, i32 noundef %cond94) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then90, %if.end84.sw.epilog_crit_edge, %sw.bb80.sw.epilog_crit_edge, %if.then77, %if.end61.sw.epilog_crit_edge, %sw.bb56.sw.epilog_crit_edge, %if.then51, %atomic_cmpxchg.exit.sw.epilog_crit_edge, %fw_node_get.exit, %create.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_init(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1072
  %card1 = getelementptr i8, ptr %work, i32 -1052
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %generation = getelementptr i8, ptr %work, i32 -1060
  %2 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generation, align 4
  %call = tail call fastcc i32 @read_config_rom(ptr noundef %add.ptr, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end15, label %if.then

if.then:                                          ; preds = %entry
  %config_rom_retries = getelementptr i8, ptr %work, i32 -12
  %4 = ptrtoint ptr %config_rom_retries to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_rom_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %5)
  %cmp2 = icmp slt i32 %5, 10
  br i1 %cmp2, label %land.lhs.true, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #13
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %config_rom_retries to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config_rom_retries, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %config_rom_retries, align 4
  %10 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i119 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 300) #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then.if.else_crit_edge
  %node = getelementptr i8, ptr %work, i32 -1068
  %11 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node, align 4
  %link_on = getelementptr inbounds %struct.fw_node, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %link_on to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %link_on, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %if.then7

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %node_id = getelementptr i8, ptr %work, i32 -1064
  %14 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_id, align 8
  %call8 = tail call ptr @fw_rcode_string(i32 noundef %call) #13
  tail call void (ptr, ptr, ...) @fw_notice(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %15, ptr noundef %call8) #13
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.else.if.end_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %node, align 4
  %root_node = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 20
  %18 = ptrtoint ptr %root_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root_node, align 4
  %cmp10 = icmp eq ptr %17, %19
  br i1 %cmp10, label %if.then11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fw_schedule_bm_work(ptr noundef %1, i32 noundef 0) #13
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %device13 = getelementptr i8, ptr %work, i32 -1048
  tail call void @fw_device_release(ptr noundef %device13)
  br label %cleanup

if.end15:                                         ; preds = %entry
  %device16 = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device16, align 4
  %call17 = tail call ptr @device_find_child(ptr noundef %21, ptr noundef %add.ptr, ptr noundef nonnull @lookup_existing_device) #13
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end21, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @put_device(ptr noundef nonnull %call17) #13
  %device20 = getelementptr i8, ptr %work, i32 -1048
  tail call void @fw_device_release(ptr noundef %device20)
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  %device22 = getelementptr i8, ptr %work, i32 -1048
  tail call void @device_initialize(ptr noundef %device22) #13
  %call.i = tail call ptr @get_device(ptr noundef %device22) #13
  tail call void @down_write(ptr noundef nonnull @fw_device_rwsem) #13
  %call24 = tail call i32 @idr_alloc(ptr noundef nonnull @fw_device_idr, ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1048576, i32 noundef 3264) #13
  tail call void @up_write(ptr noundef nonnull @fw_device_rwsem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end21.error_crit_edge, label %if.end27

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %error

if.end27:                                         ; preds = %if.end21
  %bus = getelementptr i8, ptr %work, i32 -896
  %22 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fw_bus_type, ptr %bus, align 8
  %type = getelementptr i8, ptr %work, i32 -900
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @fw_device_type, ptr %type, align 4
  %24 = ptrtoint ptr %device16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device16, align 4
  %parent = getelementptr i8, ptr %work, i32 -912
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %parent, align 8
  %27 = load i32, ptr @fw_cdev_major, align 4
  %shl = shl i32 %27, 20
  %or = or i32 %shl, %call24
  %devt = getelementptr i8, ptr %work, i32 -208
  %28 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %devt, align 8
  %call34 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %device22, ptr noundef nonnull @.str.12, i32 noundef %call24) #13
  %attribute_group = getelementptr i8, ptr %work, i32 100
  tail call fastcc void @init_fw_attribute_group(ptr noundef %device22, ptr noundef nonnull @fw_device_attributes, ptr noundef %attribute_group)
  %call37 = tail call i32 @device_add(ptr noundef %device22) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.then39

if.then39:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @fw_err(ptr noundef %1, ptr noundef nonnull @.str.13) #13
  tail call void @down_write(ptr noundef nonnull @fw_device_rwsem) #13
  %call61 = tail call ptr @idr_remove(ptr noundef nonnull @fw_device_idr, i32 noundef %call24) #13
  tail call void @up_write(ptr noundef nonnull @fw_device_rwsem) #13
  br label %error

if.end40:                                         ; preds = %if.end27
  tail call fastcc void @create_units(ptr noundef %add.ptr)
  %call.i.i118 = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end40
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 0, i32 1, ptr elementtype(i32) %add.ptr) #13, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32 } %29, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i)
  %cmp43 = icmp eq i32 %asmresult3.i.i.i, 2
  br i1 %cmp43, label %if.then44, label %if.else45

if.then44:                                        ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  %workfn = getelementptr i8, ptr %work, i32 -4
  %30 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fw_device_shutdown, ptr %workfn, align 4
  %31 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i121 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work, i32 noundef 200) #13
  br label %if.end55

if.else45:                                        ; preds = %atomic_cmpxchg.exit
  %init_name.i = getelementptr i8, ptr %work, i32 -904
  %32 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end.i, label %if.else45.dev_name.exit_crit_edge

if.else45.dev_name.exit_crit_edge:                ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #15
  %34 = ptrtoint ptr %device22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device22, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.else45.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %35, %if.end.i ], [ %33, %if.else45.dev_name.exit_crit_edge ]
  %config_rom = getelementptr i8, ptr %work, i32 -20
  %36 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %37, i32 3
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx, align 4
  %arrayidx49 = getelementptr i32, ptr %37, i32 4
  %40 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx49, align 4
  %max_speed = getelementptr i8, ptr %work, i32 -1056
  %42 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_speed, align 8
  %shl50 = shl nuw i32 1, %43
  tail call void (ptr, ptr, ...) @fw_notice(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef %retval.0.i, i32 noundef %39, i32 noundef %41, i32 noundef %shl50) #13
  %config_rom_retries51 = getelementptr i8, ptr %work, i32 -12
  %44 = ptrtoint ptr %config_rom_retries51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %config_rom_retries51, align 4
  %45 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %generation, align 4
  tail call fastcc void @set_broadcast_channel(ptr noundef %add.ptr, i32 noundef %46)
  %47 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %config_rom, align 4
  %arrayidx54 = getelementptr i32, ptr %48, i32 3
  tail call void @add_device_randomness(ptr noundef %arrayidx54, i32 noundef 8) #13
  br label %if.end55

if.end55:                                         ; preds = %dev_name.exit, %if.then44
  %node56 = getelementptr i8, ptr %work, i32 -1068
  %49 = ptrtoint ptr %node56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %node56, align 4
  %root_node57 = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 20
  %51 = ptrtoint ptr %root_node57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %root_node57, align 4
  %cmp58 = icmp eq ptr %50, %52
  br i1 %cmp58, label %if.then59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then59:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fw_schedule_bm_work(ptr noundef %1, i32 noundef 0) #13
  br label %cleanup

error:                                            ; preds = %if.then39, %if.end21.error_crit_edge
  tail call void @put_device(ptr noundef %device22) #13
  tail call void @put_device(ptr noundef %device22) #13
  br label %cleanup

cleanup:                                          ; preds = %error, %if.then59, %if.end55.cleanup_crit_edge, %if.then19, %if.end12, %if.then5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_workfn(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %workfn = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %workfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workfn, align 4
  tail call void %1(ptr noundef %work) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_refresh(ptr noundef %work) #4 align 64 {
entry:
  %q.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1072
  %card1 = getelementptr i8, ptr %work, i32 -1052
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %node_id2 = getelementptr i8, ptr %work, i32 -1064
  %2 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node_id2, align 8
  %generation = getelementptr i8, ptr %work, i32 -1060
  %4 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %generation, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q.i) #13
  %6 = ptrtoint ptr %q.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %q.i, align 4, !annotation !121
  %max_speed.i.i = getelementptr i8, ptr %work, i32 -1056
  %config_rom.i = getelementptr i8, ptr %work, i32 -20
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end5.i
  %inc.i = add nuw nsw i32 %i.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 6
  br i1 %exitcond.not.i, label %if.then3, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.020.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %mul.i.i = shl i32 %i.020.i, 2
  %conv.i.i = sext i32 %mul.i.i to i64
  %add.i.i = add nsw i64 %conv.i.i, 281474708276224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %7 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card1, align 4
  %9 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node_id2, align 8
  %11 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_speed.i.i, align 8
  %call.i.i83 = call i32 @fw_run_transaction(ptr noundef %8, i32 noundef 4, i32 noundef %10, i32 noundef %5, i32 noundef %12, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %13 = zext i32 %call.i.i83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %call.i.i83, label %for.body.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.i
    i32 0, label %for.body.i.if.end.i_crit_edge
  ]

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

for.body.i.reread_config_rom.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.i:                                       ; preds = %for.body.i
  call void @msleep(i32 noundef 10) #13
  %14 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card1, align 4
  %16 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node_id2, align 8
  %18 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_speed.i.i, align 8
  %call.i.1.i = call i32 @fw_run_transaction(ptr noundef %15, i32 noundef 4, i32 noundef %17, i32 noundef %5, i32 noundef %19, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %20 = zext i32 %call.i.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %call.i.1.i, label %if.end.i.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.1.i
    i32 0, label %if.end.i.i.if.end.i_crit_edge
  ]

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.1.i:                                     ; preds = %if.end.i.i
  call void @msleep(i32 noundef 20) #13
  %21 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card1, align 4
  %23 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node_id2, align 8
  %25 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_speed.i.i, align 8
  %call.i.2.i = call i32 @fw_run_transaction(ptr noundef %22, i32 noundef 4, i32 noundef %24, i32 noundef %5, i32 noundef %26, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %27 = zext i32 %call.i.2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %call.i.2.i, label %if.end.i.1.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.2.i
    i32 0, label %if.end.i.1.i.if.end.i_crit_edge
  ]

if.end.i.1.i.if.end.i_crit_edge:                  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.1.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.2.i:                                     ; preds = %if.end.i.1.i
  call void @msleep(i32 noundef 30) #13
  %28 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card1, align 4
  %30 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node_id2, align 8
  %32 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_speed.i.i, align 8
  %call.i.3.i = call i32 @fw_run_transaction(ptr noundef %29, i32 noundef 4, i32 noundef %31, i32 noundef %5, i32 noundef %33, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %34 = zext i32 %call.i.3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %call.i.3.i, label %if.end.i.2.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.3.i
    i32 0, label %if.end.i.2.i.if.end.i_crit_edge
  ]

if.end.i.2.i.if.end.i_crit_edge:                  ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.2.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.3.i:                                     ; preds = %if.end.i.2.i
  call void @msleep(i32 noundef 40) #13
  %35 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card1, align 4
  %37 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node_id2, align 8
  %39 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %max_speed.i.i, align 8
  %call.i.4.i = call i32 @fw_run_transaction(ptr noundef %36, i32 noundef 4, i32 noundef %38, i32 noundef %5, i32 noundef %40, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %41 = zext i32 %call.i.4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %call.i.4.i, label %if.end.i.3.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.4.i
    i32 0, label %if.end.i.3.i.if.end.i_crit_edge
  ]

if.end.i.3.i.if.end.i_crit_edge:                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.3.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.4.i:                                     ; preds = %if.end.i.3.i
  call void @msleep(i32 noundef 50) #13
  %42 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %card1, align 4
  %44 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %node_id2, align 8
  %46 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %max_speed.i.i, align 8
  %call.i.5.i = call i32 @fw_run_transaction(ptr noundef %43, i32 noundef 4, i32 noundef %45, i32 noundef %5, i32 noundef %47, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %48 = zext i32 %call.i.5.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %call.i.5.i, label %if.end.i.4.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.5.i
    i32 0, label %if.end.i.4.i.if.end.i_crit_edge
  ]

if.end.i.4.i.if.end.i_crit_edge:                  ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.4.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.5.i:                                     ; preds = %if.end.i.4.i
  call void @msleep(i32 noundef 60) #13
  %49 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card1, align 4
  %51 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node_id2, align 8
  %53 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %max_speed.i.i, align 8
  %call.i.6.i = call i32 @fw_run_transaction(ptr noundef %50, i32 noundef 4, i32 noundef %52, i32 noundef %5, i32 noundef %54, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %55 = zext i32 %call.i.6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %call.i.6.i, label %if.end.i.5.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.6.i
    i32 0, label %if.end.i.5.i.if.end.i_crit_edge
  ]

if.end.i.5.i.if.end.i_crit_edge:                  ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.5.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.6.i:                                     ; preds = %if.end.i.5.i
  call void @msleep(i32 noundef 70) #13
  %56 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %card1, align 4
  %58 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %node_id2, align 8
  %60 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %max_speed.i.i, align 8
  %call.i.7.i = call i32 @fw_run_transaction(ptr noundef %57, i32 noundef 4, i32 noundef %59, i32 noundef %5, i32 noundef %61, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %62 = zext i32 %call.i.7.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %call.i.7.i, label %if.end.i.6.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.7.i
    i32 0, label %if.end.i.6.i.if.end.i_crit_edge
  ]

if.end.i.6.i.if.end.i_crit_edge:                  ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.6.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.7.i:                                     ; preds = %if.end.i.6.i
  call void @msleep(i32 noundef 80) #13
  %63 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %card1, align 4
  %65 = ptrtoint ptr %node_id2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %node_id2, align 8
  %67 = ptrtoint ptr %max_speed.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %max_speed.i.i, align 8
  %call.i.8.i = call i32 @fw_run_transaction(ptr noundef %64, i32 noundef 4, i32 noundef %66, i32 noundef %5, i32 noundef %68, i64 noundef %add.i.i, ptr noundef nonnull %q.i, i32 noundef 4) #13
  %69 = zext i32 %call.i.8.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %call.i.8.i, label %if.end.i.7.i.reread_config_rom.exit.thread_crit_edge [
    i32 18, label %if.end.i.8.i
    i32 0, label %if.end.i.7.i.if.end.i_crit_edge
  ]

if.end.i.7.i.if.end.i_crit_edge:                  ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i.7.i.reread_config_rom.exit.thread_crit_edge: ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end.i.8.i:                                     ; preds = %if.end.i.7.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 90) #13
  br label %reread_config_rom.exit.thread

if.end.i:                                         ; preds = %if.end.i.7.i.if.end.i_crit_edge, %if.end.i.6.i.if.end.i_crit_edge, %if.end.i.5.i.if.end.i_crit_edge, %if.end.i.4.i.if.end.i_crit_edge, %if.end.i.3.i.if.end.i_crit_edge, %if.end.i.2.i.if.end.i_crit_edge, %if.end.i.1.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.020.i)
  %cmp2.i = icmp eq i32 %i.020.i, 0
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %70 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp3.i = icmp eq i32 %71, 0
  br i1 %cmp3.i, label %land.lhs.true.i.reread_config_rom.exit.thread_crit_edge, label %land.lhs.true.i.if.end5.i_crit_edge

land.lhs.true.i.if.end5.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i

land.lhs.true.i.reread_config_rom.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %reread_config_rom.exit.thread

if.end5.i:                                        ; preds = %land.lhs.true.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %72 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %q.i, align 4
  %74 = ptrtoint ptr %config_rom.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config_rom.i, align 4
  %arrayidx.i = getelementptr i32, ptr %75, i32 %i.020.i
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %77)
  %cmp6.not.i = icmp eq i32 %73, %77
  br i1 %cmp6.not.i, label %for.cond.i, label %if.end8

reread_config_rom.exit.thread:                    ; preds = %land.lhs.true.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.8.i, %if.end.i.7.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.6.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.5.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.4.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.3.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.2.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.1.i.reread_config_rom.exit.thread_crit_edge, %if.end.i.i.reread_config_rom.exit.thread_crit_edge, %for.body.i.reread_config_rom.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ 18, %if.end.i.8.i ], [ 18, %land.lhs.true.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.i83, %for.body.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.1.i, %if.end.i.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.2.i, %if.end.i.1.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.3.i, %if.end.i.2.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.4.i, %if.end.i.3.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.5.i, %if.end.i.4.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.6.i, %if.end.i.5.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.7.i, %if.end.i.6.i.reread_config_rom.exit.thread_crit_edge ], [ %call.i.8.i, %if.end.i.7.i.reread_config_rom.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q.i) #13
  br label %failed_config_rom

if.then3:                                         ; preds = %for.cond.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q.i) #13
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.then3
  %78 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 0, i32 1, ptr elementtype(i32) %add.ptr) #13, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32 } %78, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %78, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i)
  %cmp5 = icmp eq i32 %asmresult3.i.i.i, 2
  br i1 %cmp5, label %atomic_cmpxchg.exit.gone_crit_edge, label %if.end7

atomic_cmpxchg.exit.gone_crit_edge:               ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %gone

if.end7:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @fw_device_cdev_update(ptr noundef %add.ptr) #13
  %device1.i = getelementptr i8, ptr %work, i32 -1048
  %call.i = call i32 @device_for_each_child(ptr noundef %device1.i, ptr noundef null, ptr noundef nonnull @update_unit) #13
  %config_rom_retries = getelementptr i8, ptr %work, i32 -12
  %79 = ptrtoint ptr %config_rom_retries to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %config_rom_retries, align 4
  br label %out

if.end8:                                          ; preds = %if.end5.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q.i) #13
  %device9 = getelementptr i8, ptr %work, i32 -1048
  %call10 = call i32 @device_for_each_child(ptr noundef %device9, ptr noundef null, ptr noundef nonnull @shutdown_unit) #13
  %80 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %generation, align 4
  %call12 = call fastcc i32 @read_config_rom(ptr noundef %add.ptr, i32 noundef %81)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end8.failed_config_rom_crit_edge

if.end8.failed_config_rom_crit_edge:              ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %failed_config_rom

if.end15:                                         ; preds = %if.end8
  call void @fw_device_cdev_update(ptr noundef %add.ptr) #13
  call fastcc void @create_units(ptr noundef %add.ptr)
  %call17 = call i32 @kobject_uevent(ptr noundef %device9, i32 noundef 2) #13
  %call.i.i75 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i78

do.body.i.i.i78:                                  ; preds = %do.body.i.i.i78.do.body.i.i.i78_crit_edge, %if.end15
  %82 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 0, i32 1, ptr elementtype(i32) %add.ptr) #13, !srcloc !128
  %asmresult.i.i.i76 = extractvalue { i32, i32 } %82, 0
  %tobool.not.i.i.i77 = icmp eq i32 %asmresult.i.i.i76, 0
  br i1 %tobool.not.i.i.i77, label %atomic_cmpxchg.exit80, label %do.body.i.i.i78.do.body.i.i.i78_crit_edge

do.body.i.i.i78.do.body.i.i.i78_crit_edge:        ; preds = %do.body.i.i.i78
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i78

atomic_cmpxchg.exit80:                            ; preds = %do.body.i.i.i78
  %asmresult3.i.i.i79 = extractvalue { i32, i32 } %82, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i79)
  %cmp20 = icmp eq i32 %asmresult3.i.i.i79, 2
  br i1 %cmp20, label %atomic_cmpxchg.exit80.gone_crit_edge, label %if.end22

atomic_cmpxchg.exit80.gone_crit_edge:             ; preds = %atomic_cmpxchg.exit80
  call void @__sanitizer_cov_trace_pc() #15
  br label %gone

if.end22:                                         ; preds = %atomic_cmpxchg.exit80
  %init_name.i = getelementptr i8, ptr %work, i32 -904
  %83 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %84, null
  br i1 %tobool.not.i, label %if.end.i84, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i84:                                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %85 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %device9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i84, %if.end22.dev_name.exit_crit_edge
  %retval.0.i85 = phi ptr [ %86, %if.end.i84 ], [ %84, %if.end22.dev_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @fw_notice(ptr noundef %1, ptr noundef nonnull @.str.40, ptr noundef %retval.0.i85) #13
  %config_rom_retries25 = getelementptr i8, ptr %work, i32 -12
  %87 = ptrtoint ptr %config_rom_retries25 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %config_rom_retries25, align 4
  br label %out

failed_config_rom:                                ; preds = %if.end8.failed_config_rom_crit_edge, %reread_config_rom.exit.thread
  %ret.0 = phi i32 [ %call12, %if.end8.failed_config_rom_crit_edge ], [ %retval.0.i.ph, %reread_config_rom.exit.thread ]
  %config_rom_retries26 = getelementptr i8, ptr %work, i32 -12
  %88 = ptrtoint ptr %config_rom_retries26 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %config_rom_retries26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %89)
  %cmp27 = icmp slt i32 %89, 10
  br i1 %cmp27, label %land.lhs.true, label %failed_config_rom.if.end33_crit_edge

failed_config_rom.if.end33_crit_edge:             ; preds = %failed_config_rom
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

land.lhs.true:                                    ; preds = %failed_config_rom
  %call.i.i81 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef 4) #13
  %90 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp30 = icmp eq i32 %91, 0
  br i1 %cmp30, label %if.then31, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end33

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %92 = ptrtoint ptr %config_rom_retries26 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %config_rom_retries26, align 4
  %inc = add i32 %93, 1
  store i32 %inc, ptr %config_rom_retries26, align 4
  %94 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i86 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %94, ptr noundef %work, i32 noundef 300) #13
  br label %cleanup

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %failed_config_rom.if.end33_crit_edge
  %init_name.i87 = getelementptr i8, ptr %work, i32 -904
  %95 = ptrtoint ptr %init_name.i87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i87, align 8
  %tobool.not.i88 = icmp eq ptr %96, null
  br i1 %tobool.not.i88, label %if.end.i89, label %if.end33.dev_name.exit91_crit_edge

if.end33.dev_name.exit91_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit91

if.end.i89:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #15
  %device34 = getelementptr i8, ptr %work, i32 -1048
  %97 = ptrtoint ptr %device34 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device34, align 4
  br label %dev_name.exit91

dev_name.exit91:                                  ; preds = %if.end.i89, %if.end33.dev_name.exit91_crit_edge
  %retval.0.i90 = phi ptr [ %98, %if.end.i89 ], [ %96, %if.end33.dev_name.exit91_crit_edge ]
  %call36 = call ptr @fw_rcode_string(i32 noundef %ret.0) #13
  call void (ptr, ptr, ...) @fw_notice(ptr noundef %1, ptr noundef nonnull @.str.41, ptr noundef %retval.0.i90, ptr noundef %call36) #13
  br label %gone

gone:                                             ; preds = %dev_name.exit91, %atomic_cmpxchg.exit80.gone_crit_edge, %atomic_cmpxchg.exit.gone_crit_edge
  %call.i.i82 = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  %99 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %99)
  store volatile i32 2, ptr %add.ptr, align 4
  %workfn = getelementptr i8, ptr %work, i32 -4
  %100 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @fw_device_shutdown, ptr %workfn, align 4
  %101 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i93 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %101, ptr noundef %work, i32 noundef 200) #13
  br label %out

out:                                              ; preds = %gone, %dev_name.exit, %if.end7
  %root_node = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 20
  %102 = ptrtoint ptr %root_node to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %root_node, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %103, align 4
  %conv = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp39 = icmp eq i32 %3, %conv
  br i1 %cmp39, label %if.then41, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then41:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  call void @fw_schedule_bm_work(ptr noundef %1, i32 noundef 0) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %out.cleanup_crit_edge, %if.then31
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_update(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1072
  tail call void @fw_device_cdev_update(ptr noundef %add.ptr) #13
  %device1 = getelementptr i8, ptr %work, i32 -1048
  %call = tail call i32 @device_for_each_child(ptr noundef %device1, ptr noundef null, ptr noundef nonnull @update_unit) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_shutdown(ptr noundef %work) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1072
  %device1 = getelementptr i8, ptr %work, i32 -1048
  %devt = getelementptr i8, ptr %work, i32 -208
  %0 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devt, align 8
  %and = and i32 %1, 1048575
  %call = tail call i64 @get_jiffies_64() #13
  %card = getelementptr i8, ptr %work, i32 -1052
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %reset_jiffies = getelementptr inbounds %struct.fw_card, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %reset_jiffies to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %reset_jiffies, align 8
  %add.neg = add i64 %call, -200
  %sub = sub i64 %add.neg, %5
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp = icmp slt i64 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %link = getelementptr inbounds %struct.fw_card, ptr %3, i32 0, i32 26
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %7, %link
  br i1 %cmp.i.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %8 = load ptr, ptr @fw_workqueue, align 4
  %call.i.i21 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef 200) #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %add.ptr, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr, ptr %add.ptr, i32 2, i32 3, ptr elementtype(i32) %add.ptr) #13, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %9, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i)
  %cmp5.not = icmp eq i32 %asmresult3.i.i.i, 2
  br i1 %cmp5.not, label %if.end7, label %atomic_cmpxchg.exit.cleanup_crit_edge

atomic_cmpxchg.exit.cleanup_crit_edge:            ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fw_device_cdev_remove(ptr noundef %add.ptr) #13
  %call9 = tail call i32 @device_for_each_child(ptr noundef %device1, ptr noundef null, ptr noundef nonnull @shutdown_unit) #13
  tail call void @device_unregister(ptr noundef %device1) #13
  tail call void @down_write(ptr noundef nonnull @fw_device_rwsem) #13
  %call11 = tail call ptr @idr_remove(ptr noundef nonnull @fw_device_idr, i32 noundef %and) #13
  tail call void @up_write(ptr noundef nonnull @fw_device_rwsem) #13
  tail call void @put_device(ptr noundef %device1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %atomic_cmpxchg.exit.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_unit_uevent(ptr nocapture noundef readonly %dev, ptr noundef %env) #4 align 64 {
entry:
  %id.i = alloca [4 x i32], align 4
  %modalias = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %modalias) #13
  %0 = call ptr @memset(ptr %modalias, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id.i) #13
  %1 = call ptr @memset(ptr %id.i, i32 0, i32 16)
  call fastcc void @get_modalias_ids(ptr noundef %dev, ptr noundef nonnull %id.i) #13
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %arrayidx1.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %modalias, i32 noundef 64, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #13
  %call3 = call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.9, ptr noundef nonnull %modalias) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 0, i32 -12
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %modalias) #13
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_unit_release(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  tail call void @put_device(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %dev) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_modalias_ids(ptr nocapture noundef readonly %unit, ptr nocapture noundef writeonly %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %config_rom = getelementptr i8, ptr %1, i32 1028
  %2 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 5
  %add.ptr.i.i3 = getelementptr i32, ptr %3, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %shr.i.i = lshr i32 %5, 16
  %add.ptr3.i.i = getelementptr i32, ptr %add.ptr.i.i3, i32 %shr.i.i
  %cmp.i.not19.i = icmp ult ptr %add.ptr.i.i3, %add.ptr3.i.i
  br i1 %cmp.i.not19.i, label %while.body.lr.ph.i, label %entry.get_ids.exit_crit_edge

entry.get_ids.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ids.exit

while.body.lr.ph.i:                               ; preds = %entry
  %incdec.ptr.i18.i = getelementptr i32, ptr %3, i32 7
  %arrayidx6.i = getelementptr i32, ptr %id, i32 3
  %arrayidx4.i = getelementptr i32, ptr %id, i32 2
  %arrayidx2.i = getelementptr i32, ptr %id, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %incdec.ptr.i21.i = phi ptr [ %incdec.ptr.i18.i, %while.body.lr.ph.i ], [ %incdec.ptr.i.i, %sw.epilog.i.while.body.i_crit_edge ]
  %.in.i = phi ptr [ %add.ptr.i.i3, %while.body.lr.ph.i ], [ %incdec.ptr.i21.i, %sw.epilog.i.while.body.i_crit_edge ]
  %6 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %.in.i, align 4
  %and.i20.i = and i32 %7, 16777215
  %shr.i10.i = lshr i32 %7, 24
  %trunc.i = trunc i32 %shr.i10.i to i8
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %trunc.i, label %while.body.i.sw.epilog.i_crit_edge [
    i8 3, label %while.body.i.sw.epilog.sink.split.i_crit_edge
    i8 23, label %sw.bb1.i
    i8 18, label %sw.bb3.i
    i8 19, label %sw.bb5.i
  ]

while.body.i.sw.epilog.sink.split.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.bb3.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.bb5.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %while.body.i.sw.epilog.sink.split.i_crit_edge
  %arrayidx6.sink.i = phi ptr [ %arrayidx6.i, %sw.bb5.i ], [ %arrayidx4.i, %sw.bb3.i ], [ %arrayidx2.i, %sw.bb1.i ], [ %id, %while.body.i.sw.epilog.sink.split.i_crit_edge ]
  %9 = ptrtoint ptr %arrayidx6.sink.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and.i20.i, ptr %arrayidx6.sink.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %while.body.i.sw.epilog.i_crit_edge
  %incdec.ptr.i.i = getelementptr i32, ptr %incdec.ptr.i21.i, i32 1
  %cmp.i.not.i = icmp ult ptr %incdec.ptr.i21.i, %add.ptr3.i.i
  br i1 %cmp.i.not.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.get_ids.exit_crit_edge

sw.epilog.i.get_ids.exit_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ids.exit

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

get_ids.exit:                                     ; preds = %sw.epilog.i.get_ids.exit_crit_edge, %entry.get_ids.exit_crit_edge
  %directory = getelementptr inbounds %struct.fw_unit, ptr %unit, i32 0, i32 1
  %10 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %directory, align 8
  %add.ptr.i.i4 = getelementptr i32, ptr %11, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %shr.i.i5 = lshr i32 %13, 16
  %add.ptr3.i.i6 = getelementptr i32, ptr %add.ptr.i.i4, i32 %shr.i.i5
  %cmp.i.not19.i7 = icmp ult ptr %add.ptr.i.i4, %add.ptr3.i.i6
  br i1 %cmp.i.not19.i7, label %while.body.lr.ph.i12, label %get_ids.exit.get_ids.exit27_crit_edge

get_ids.exit.get_ids.exit27_crit_edge:            ; preds = %get_ids.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ids.exit27

while.body.lr.ph.i12:                             ; preds = %get_ids.exit
  %incdec.ptr.i18.i8 = getelementptr i32, ptr %11, i32 2
  %arrayidx6.i9 = getelementptr i32, ptr %id, i32 3
  %arrayidx4.i10 = getelementptr i32, ptr %id, i32 2
  %arrayidx2.i11 = getelementptr i32, ptr %id, i32 1
  br label %while.body.i18

while.body.i18:                                   ; preds = %sw.epilog.i26.while.body.i18_crit_edge, %while.body.lr.ph.i12
  %incdec.ptr.i21.i13 = phi ptr [ %incdec.ptr.i18.i8, %while.body.lr.ph.i12 ], [ %incdec.ptr.i.i24, %sw.epilog.i26.while.body.i18_crit_edge ]
  %.in.i14 = phi ptr [ %add.ptr.i.i4, %while.body.lr.ph.i12 ], [ %incdec.ptr.i21.i13, %sw.epilog.i26.while.body.i18_crit_edge ]
  %14 = ptrtoint ptr %.in.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %.in.i14, align 4
  %and.i20.i15 = and i32 %15, 16777215
  %shr.i10.i16 = lshr i32 %15, 24
  %trunc.i17 = trunc i32 %shr.i10.i16 to i8
  %16 = zext i8 %trunc.i17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %trunc.i17, label %while.body.i18.sw.epilog.i26_crit_edge [
    i8 3, label %while.body.i18.sw.epilog.sink.split.i23_crit_edge
    i8 23, label %sw.bb1.i19
    i8 18, label %sw.bb3.i20
    i8 19, label %sw.bb5.i21
  ]

while.body.i18.sw.epilog.sink.split.i23_crit_edge: ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i23

while.body.i18.sw.epilog.i26_crit_edge:           ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i26

sw.bb1.i19:                                       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i23

sw.bb3.i20:                                       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i23

sw.bb5.i21:                                       ; preds = %while.body.i18
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.sink.split.i23

sw.epilog.sink.split.i23:                         ; preds = %sw.bb5.i21, %sw.bb3.i20, %sw.bb1.i19, %while.body.i18.sw.epilog.sink.split.i23_crit_edge
  %arrayidx6.sink.i22 = phi ptr [ %arrayidx6.i9, %sw.bb5.i21 ], [ %arrayidx4.i10, %sw.bb3.i20 ], [ %arrayidx2.i11, %sw.bb1.i19 ], [ %id, %while.body.i18.sw.epilog.sink.split.i23_crit_edge ]
  %17 = ptrtoint ptr %arrayidx6.sink.i22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and.i20.i15, ptr %arrayidx6.sink.i22, align 4
  br label %sw.epilog.i26

sw.epilog.i26:                                    ; preds = %sw.epilog.sink.split.i23, %while.body.i18.sw.epilog.i26_crit_edge
  %incdec.ptr.i.i24 = getelementptr i32, ptr %incdec.ptr.i21.i13, i32 1
  %cmp.i.not.i25 = icmp ult ptr %incdec.ptr.i21.i13, %add.ptr3.i.i6
  br i1 %cmp.i.not.i25, label %sw.epilog.i26.while.body.i18_crit_edge, label %sw.epilog.i26.get_ids.exit27_crit_edge

sw.epilog.i26.get_ids.exit27_crit_edge:           ; preds = %sw.epilog.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %get_ids.exit27

sw.epilog.i26.while.body.i18_crit_edge:           ; preds = %sw.epilog.i26
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i18

get_ids.exit27:                                   ; preds = %sw.epilog.i26.get_ids.exit27_crit_edge, %get_ids.exit.get_ids.exit27_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_device_release(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -24
  %card1 = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %lock = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 18
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #13
  %node = getelementptr i8, ptr %dev, i32 -20
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %data = getelementptr inbounds %struct.fw_node, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %data, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #13
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %ref_count.i = getelementptr inbounds %struct.fw_node, ptr %6, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #13
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #13, !srcloc !136
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fw_node_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !125

if.end5.i.i.i.i.fw_node_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_node_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #13
  br label %fw_node_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @kfree(ptr noundef %6) #13
  br label %fw_node_put.exit

fw_node_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fw_node_put.exit_crit_edge
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %8 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config_rom, align 4
  tail call void @kfree(ptr noundef %9) #13
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !135
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #13, !srcloc !136
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %fw_node_put.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !125

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #13
  br label %fw_card_put.exit

if.then.i.i:                                      ; preds = %fw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !137
  tail call void @fw_card_release(ptr noundef %kref.i) #13
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_card_release(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @read_config_rom(ptr nocapture noundef %device, i32 noundef %generation) unnamed_addr #4 align 64 {
entry:
  %dummy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 5
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 2048) #16
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i32, ptr %call7.i, i32 256
  %3 = call ptr @memset(ptr %call7.i, i32 0, i32 1024)
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 4
  %4 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %max_speed, align 8
  %node_id.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0326 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx3 = getelementptr i32, ptr %call7.i, i32 %i.0326
  %mul.i = shl i32 %i.0326, 2
  %conv.i = sext i32 %mul.i to i64
  %add.i = add nsw i64 %conv.i, 281474708276224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %5 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card1, align 4
  %7 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %node_id.i, align 8
  %9 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_speed, align 8
  %call.i = tail call i32 @fw_run_transaction(ptr noundef %6, i32 noundef 4, i32 noundef %8, i32 noundef %generation, i32 noundef %10, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %11 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %call.i, label %for.body.out_crit_edge [
    i32 18, label %if.end.i
    i32 0, label %for.body.if.end7_crit_edge
  ]

for.body.if.end7_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i:                                         ; preds = %for.body
  tail call void @msleep(i32 noundef 10) #13
  %12 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card1, align 4
  %14 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node_id.i, align 8
  %16 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %max_speed, align 8
  %call.i.1 = tail call i32 @fw_run_transaction(ptr noundef %13, i32 noundef 4, i32 noundef %15, i32 noundef %generation, i32 noundef %17, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %18 = zext i32 %call.i.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call.i.1, label %if.end.i.out_crit_edge [
    i32 18, label %if.end.i.1
    i32 0, label %if.end.i.if.end7_crit_edge
  ]

if.end.i.if.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.1:                                       ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #13
  %19 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card1, align 4
  %21 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %node_id.i, align 8
  %23 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_speed, align 8
  %call.i.2 = tail call i32 @fw_run_transaction(ptr noundef %20, i32 noundef 4, i32 noundef %22, i32 noundef %generation, i32 noundef %24, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %25 = zext i32 %call.i.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %call.i.2, label %if.end.i.1.out_crit_edge [
    i32 18, label %if.end.i.2
    i32 0, label %if.end.i.1.if.end7_crit_edge
  ]

if.end.i.1.if.end7_crit_edge:                     ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.1.out_crit_edge:                         ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.2:                                       ; preds = %if.end.i.1
  tail call void @msleep(i32 noundef 30) #13
  %26 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card1, align 4
  %28 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_id.i, align 8
  %30 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed, align 8
  %call.i.3 = tail call i32 @fw_run_transaction(ptr noundef %27, i32 noundef 4, i32 noundef %29, i32 noundef %generation, i32 noundef %31, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %32 = zext i32 %call.i.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %call.i.3, label %if.end.i.2.out_crit_edge [
    i32 18, label %if.end.i.3
    i32 0, label %if.end.i.2.if.end7_crit_edge
  ]

if.end.i.2.if.end7_crit_edge:                     ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.2.out_crit_edge:                         ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.3:                                       ; preds = %if.end.i.2
  tail call void @msleep(i32 noundef 40) #13
  %33 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %card1, align 4
  %35 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node_id.i, align 8
  %37 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_speed, align 8
  %call.i.4 = tail call i32 @fw_run_transaction(ptr noundef %34, i32 noundef 4, i32 noundef %36, i32 noundef %generation, i32 noundef %38, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %39 = zext i32 %call.i.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %call.i.4, label %if.end.i.3.out_crit_edge [
    i32 18, label %if.end.i.4
    i32 0, label %if.end.i.3.if.end7_crit_edge
  ]

if.end.i.3.if.end7_crit_edge:                     ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.3.out_crit_edge:                         ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.4:                                       ; preds = %if.end.i.3
  tail call void @msleep(i32 noundef 50) #13
  %40 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card1, align 4
  %42 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %node_id.i, align 8
  %44 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_speed, align 8
  %call.i.5 = tail call i32 @fw_run_transaction(ptr noundef %41, i32 noundef 4, i32 noundef %43, i32 noundef %generation, i32 noundef %45, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %46 = zext i32 %call.i.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %call.i.5, label %if.end.i.4.out_crit_edge [
    i32 18, label %if.end.i.5
    i32 0, label %if.end.i.4.if.end7_crit_edge
  ]

if.end.i.4.if.end7_crit_edge:                     ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.4.out_crit_edge:                         ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.5:                                       ; preds = %if.end.i.4
  tail call void @msleep(i32 noundef 60) #13
  %47 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %card1, align 4
  %49 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %node_id.i, align 8
  %51 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max_speed, align 8
  %call.i.6 = tail call i32 @fw_run_transaction(ptr noundef %48, i32 noundef 4, i32 noundef %50, i32 noundef %generation, i32 noundef %52, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %53 = zext i32 %call.i.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %call.i.6, label %if.end.i.5.out_crit_edge [
    i32 18, label %if.end.i.6
    i32 0, label %if.end.i.5.if.end7_crit_edge
  ]

if.end.i.5.if.end7_crit_edge:                     ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.5.out_crit_edge:                         ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.6:                                       ; preds = %if.end.i.5
  tail call void @msleep(i32 noundef 70) #13
  %54 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card1, align 4
  %56 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %node_id.i, align 8
  %58 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %max_speed, align 8
  %call.i.7 = tail call i32 @fw_run_transaction(ptr noundef %55, i32 noundef 4, i32 noundef %57, i32 noundef %generation, i32 noundef %59, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %60 = zext i32 %call.i.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %call.i.7, label %if.end.i.6.out_crit_edge [
    i32 18, label %if.end.i.7
    i32 0, label %if.end.i.6.if.end7_crit_edge
  ]

if.end.i.6.if.end7_crit_edge:                     ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.6.out_crit_edge:                         ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.7:                                       ; preds = %if.end.i.6
  tail call void @msleep(i32 noundef 80) #13
  %61 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %card1, align 4
  %63 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %node_id.i, align 8
  %65 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %max_speed, align 8
  %call.i.8 = tail call i32 @fw_run_transaction(ptr noundef %62, i32 noundef 4, i32 noundef %64, i32 noundef %generation, i32 noundef %66, i64 noundef %add.i, ptr noundef %arrayidx3, i32 noundef 4) #13
  %67 = zext i32 %call.i.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %call.i.8, label %if.end.i.7.out_crit_edge [
    i32 18, label %if.end.i.8
    i32 0, label %if.end.i.7.if.end7_crit_edge
  ]

if.end.i.7.if.end7_crit_edge:                     ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end7

if.end.i.7.out_crit_edge:                         ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.8:                                       ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @msleep(i32 noundef 90) #13
  br label %out

if.end7:                                          ; preds = %if.end.i.7.if.end7_crit_edge, %if.end.i.6.if.end7_crit_edge, %if.end.i.5.if.end7_crit_edge, %if.end.i.4.if.end7_crit_edge, %if.end.i.3.if.end7_crit_edge, %if.end.i.2.if.end7_crit_edge, %if.end.i.1.if.end7_crit_edge, %if.end.i.if.end7_crit_edge, %for.body.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0326)
  %cmp8 = icmp eq i32 %i.0326, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end7
  %68 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp10 = icmp eq i32 %69, 0
  br i1 %cmp10, label %land.lhs.true.out_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end7.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0326, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  %node = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 1
  %70 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %node, align 4
  %max_speed13 = getelementptr inbounds %struct.fw_node, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %max_speed13 to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load = load i8, ptr %max_speed13, align 4
  %bf.lshr = lshr i8 %bf.load, 1
  %bf.clear = and i8 %bf.lshr, 3
  %conv = zext i8 %bf.clear to i32
  %73 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv, ptr %max_speed, align 8
  %arrayidx15 = getelementptr i32, ptr %call7.i, i32 2
  %74 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx15, align 8
  %and = and i32 %75, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp17 = icmp ult i32 %and, %conv
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear)
  %cmp20 = icmp eq i8 %bf.clear, 3
  %or.cond = or i1 %cmp20, %cmp17
  br i1 %or.cond, label %for.end.if.then24_crit_edge, label %lor.lhs.false22

for.end.if.then24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false22:                                  ; preds = %for.end
  %beta_repeaters_present = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 24
  %76 = ptrtoint ptr %beta_repeaters_present to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %beta_repeaters_present, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not = icmp eq i8 %77, 0
  br i1 %tobool.not, label %lor.lhs.false22.if.end40_crit_edge, label %lor.lhs.false22.if.then24_crit_edge

lor.lhs.false22.if.then24_crit_edge:              ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then24

lor.lhs.false22.if.end40_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then24:                                        ; preds = %lor.lhs.false22.if.then24_crit_edge, %for.end.if.then24_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #13
  %78 = ptrtoint ptr %dummy to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %dummy, align 4, !annotation !121
  br i1 %cmp20, label %if.then28, label %if.end30thread-pre-split

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %link_speed = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 16
  %79 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %link_speed, align 4
  %81 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %max_speed, align 8
  br label %if.end30

if.end30thread-pre-split:                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  %82 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr.pr = load i32, ptr %max_speed, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.end30thread-pre-split, %if.then28
  %.pr = phi i32 [ %.pr.pr, %if.end30thread-pre-split ], [ %80, %if.then28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp32.not327 = icmp eq i32 %.pr, 0
  br i1 %cmp32.not327, label %if.end30.while.end_crit_edge, label %if.end30.while.body_crit_edge

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  br label %while.body

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %if.end38.while.body_crit_edge, %if.end30.while.body_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %83 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %card1, align 4
  %85 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %node_id.i, align 8
  %87 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %max_speed, align 8
  %call.i273 = call i32 @fw_run_transaction(ptr noundef %84, i32 noundef 4, i32 noundef %86, i32 noundef %generation, i32 noundef %88, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %89 = zext i32 %call.i273 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %call.i273, label %while.body.if.end38_crit_edge [
    i32 18, label %if.end.i278
    i32 0, label %while.body.while.end_crit_edge
  ]

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.if.end38_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278:                                      ; preds = %while.body
  call void @msleep(i32 noundef 10) #13
  %90 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %card1, align 4
  %92 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %node_id.i, align 8
  %94 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max_speed, align 8
  %call.i273.1 = call i32 @fw_run_transaction(ptr noundef %91, i32 noundef 4, i32 noundef %93, i32 noundef %generation, i32 noundef %95, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %96 = zext i32 %call.i273.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %call.i273.1, label %if.end.i278.if.end38_crit_edge [
    i32 18, label %if.end.i278.1
    i32 0, label %if.end.i278.while.end_crit_edge
  ]

if.end.i278.while.end_crit_edge:                  ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.if.end38_crit_edge:                   ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.1:                                    ; preds = %if.end.i278
  call void @msleep(i32 noundef 20) #13
  %97 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %card1, align 4
  %99 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %node_id.i, align 8
  %101 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %max_speed, align 8
  %call.i273.2 = call i32 @fw_run_transaction(ptr noundef %98, i32 noundef 4, i32 noundef %100, i32 noundef %generation, i32 noundef %102, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %103 = zext i32 %call.i273.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %call.i273.2, label %if.end.i278.1.if.end38_crit_edge [
    i32 18, label %if.end.i278.2
    i32 0, label %if.end.i278.1.while.end_crit_edge
  ]

if.end.i278.1.while.end_crit_edge:                ; preds = %if.end.i278.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.1.if.end38_crit_edge:                 ; preds = %if.end.i278.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.2:                                    ; preds = %if.end.i278.1
  call void @msleep(i32 noundef 30) #13
  %104 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %card1, align 4
  %106 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %node_id.i, align 8
  %108 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %max_speed, align 8
  %call.i273.3 = call i32 @fw_run_transaction(ptr noundef %105, i32 noundef 4, i32 noundef %107, i32 noundef %generation, i32 noundef %109, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %110 = zext i32 %call.i273.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call.i273.3, label %if.end.i278.2.if.end38_crit_edge [
    i32 18, label %if.end.i278.3
    i32 0, label %if.end.i278.2.while.end_crit_edge
  ]

if.end.i278.2.while.end_crit_edge:                ; preds = %if.end.i278.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.2.if.end38_crit_edge:                 ; preds = %if.end.i278.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.3:                                    ; preds = %if.end.i278.2
  call void @msleep(i32 noundef 40) #13
  %111 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %card1, align 4
  %113 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %node_id.i, align 8
  %115 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %max_speed, align 8
  %call.i273.4 = call i32 @fw_run_transaction(ptr noundef %112, i32 noundef 4, i32 noundef %114, i32 noundef %generation, i32 noundef %116, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %117 = zext i32 %call.i273.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call.i273.4, label %if.end.i278.3.if.end38_crit_edge [
    i32 18, label %if.end.i278.4
    i32 0, label %if.end.i278.3.while.end_crit_edge
  ]

if.end.i278.3.while.end_crit_edge:                ; preds = %if.end.i278.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.3.if.end38_crit_edge:                 ; preds = %if.end.i278.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.4:                                    ; preds = %if.end.i278.3
  call void @msleep(i32 noundef 50) #13
  %118 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %card1, align 4
  %120 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %node_id.i, align 8
  %122 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %max_speed, align 8
  %call.i273.5 = call i32 @fw_run_transaction(ptr noundef %119, i32 noundef 4, i32 noundef %121, i32 noundef %generation, i32 noundef %123, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %124 = zext i32 %call.i273.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call.i273.5, label %if.end.i278.4.if.end38_crit_edge [
    i32 18, label %if.end.i278.5
    i32 0, label %if.end.i278.4.while.end_crit_edge
  ]

if.end.i278.4.while.end_crit_edge:                ; preds = %if.end.i278.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.4.if.end38_crit_edge:                 ; preds = %if.end.i278.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.5:                                    ; preds = %if.end.i278.4
  call void @msleep(i32 noundef 60) #13
  %125 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %card1, align 4
  %127 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %node_id.i, align 8
  %129 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_speed, align 8
  %call.i273.6 = call i32 @fw_run_transaction(ptr noundef %126, i32 noundef 4, i32 noundef %128, i32 noundef %generation, i32 noundef %130, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %131 = zext i32 %call.i273.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %131, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call.i273.6, label %if.end.i278.5.if.end38_crit_edge [
    i32 18, label %if.end.i278.6
    i32 0, label %if.end.i278.5.while.end_crit_edge
  ]

if.end.i278.5.while.end_crit_edge:                ; preds = %if.end.i278.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.5.if.end38_crit_edge:                 ; preds = %if.end.i278.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.6:                                    ; preds = %if.end.i278.5
  call void @msleep(i32 noundef 70) #13
  %132 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %card1, align 4
  %134 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %node_id.i, align 8
  %136 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %max_speed, align 8
  %call.i273.7 = call i32 @fw_run_transaction(ptr noundef %133, i32 noundef 4, i32 noundef %135, i32 noundef %generation, i32 noundef %137, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %138 = zext i32 %call.i273.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %138, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call.i273.7, label %if.end.i278.6.if.end38_crit_edge [
    i32 18, label %if.end.i278.7
    i32 0, label %if.end.i278.6.while.end_crit_edge
  ]

if.end.i278.6.while.end_crit_edge:                ; preds = %if.end.i278.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.6.if.end38_crit_edge:                 ; preds = %if.end.i278.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.7:                                    ; preds = %if.end.i278.6
  call void @msleep(i32 noundef 80) #13
  %139 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %card1, align 4
  %141 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %node_id.i, align 8
  %143 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_speed, align 8
  %call.i273.8 = call i32 @fw_run_transaction(ptr noundef %140, i32 noundef 4, i32 noundef %142, i32 noundef %generation, i32 noundef %144, i64 noundef 281474708276224, ptr noundef nonnull %dummy, i32 noundef 4) #13
  %145 = zext i32 %call.i273.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %call.i273.8, label %if.end.i278.7.if.end38_crit_edge [
    i32 18, label %if.end.i278.8
    i32 0, label %if.end.i278.7.while.end_crit_edge
  ]

if.end.i278.7.while.end_crit_edge:                ; preds = %if.end.i278.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.end.i278.7.if.end38_crit_edge:                 ; preds = %if.end.i278.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.end.i278.8:                                    ; preds = %if.end.i278.7
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 90) #13
  br label %if.end38

if.end38:                                         ; preds = %if.end.i278.8, %if.end.i278.7.if.end38_crit_edge, %if.end.i278.6.if.end38_crit_edge, %if.end.i278.5.if.end38_crit_edge, %if.end.i278.4.if.end38_crit_edge, %if.end.i278.3.if.end38_crit_edge, %if.end.i278.2.if.end38_crit_edge, %if.end.i278.1.if.end38_crit_edge, %if.end.i278.if.end38_crit_edge, %while.body.if.end38_crit_edge
  %146 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %max_speed, align 8
  %dec = add i32 %147, -1
  store i32 %dec, ptr %max_speed, align 8
  %cmp32.not = icmp eq i32 %dec, 0
  br i1 %cmp32.not, label %if.end38.while.end_crit_edge, label %if.end38.while.body_crit_edge

if.end38.while.body_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end38.while.end_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end38.while.end_crit_edge, %if.end.i278.7.while.end_crit_edge, %if.end.i278.6.while.end_crit_edge, %if.end.i278.5.while.end_crit_edge, %if.end.i278.4.while.end_crit_edge, %if.end.i278.3.while.end_crit_edge, %if.end.i278.2.while.end_crit_edge, %if.end.i278.1.while.end_crit_edge, %if.end.i278.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end30.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #13
  br label %if.end40

if.end40:                                         ; preds = %while.end, %lor.lhs.false22.if.end40_crit_edge
  %148 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 -1073741819, ptr %arrayidx, align 8
  br label %while.body46

while.body46:                                     ; preds = %for.end132.while.body46_crit_edge, %if.end40
  %length.0334 = phi i32 [ 5, %if.end40 ], [ %285, %for.end132.while.body46_crit_edge ]
  %sp.0333 = phi i32 [ 1, %if.end40 ], [ %sp.1.lcssa, %for.end132.while.body46_crit_edge ]
  %dec47 = add i32 %sp.0333, -1
  %arrayidx48 = getelementptr i32, ptr %arrayidx, i32 %dec47
  %149 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx48, align 4
  %and49 = and i32 %150, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %and49)
  %cmp50 = icmp ugt i32 %and49, 255
  br i1 %cmp50, label %do.end, label %if.end75, !prof !124

do.end:                                           ; preds = %while.body46
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 591, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end75:                                         ; preds = %while.body46
  %arrayidx76 = getelementptr i32, ptr %call7.i, i32 %and49
  %mul.i280 = shl nuw nsw i32 %and49, 2
  %conv.i281312 = zext i32 %mul.i280 to i64
  %add.i282 = add nuw nsw i64 %conv.i281312, 281474708276224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %151 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %card1, align 4
  %153 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %node_id.i, align 8
  %155 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %max_speed, align 8
  %call.i287 = call i32 @fw_run_transaction(ptr noundef %152, i32 noundef 4, i32 noundef %154, i32 noundef %generation, i32 noundef %156, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %157 = zext i32 %call.i287 to i64
  call void @__sanitizer_cov_trace_switch(i64 %157, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call.i287, label %if.end75.out_crit_edge [
    i32 18, label %if.end.i292
    i32 0, label %if.end75.if.end81_crit_edge
  ]

if.end75.if.end81_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end75.out_crit_edge:                           ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292:                                      ; preds = %if.end75
  call void @msleep(i32 noundef 10) #13
  %158 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %card1, align 4
  %160 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %node_id.i, align 8
  %162 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_speed, align 8
  %call.i287.1 = call i32 @fw_run_transaction(ptr noundef %159, i32 noundef 4, i32 noundef %161, i32 noundef %generation, i32 noundef %163, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %164 = zext i32 %call.i287.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call.i287.1, label %if.end.i292.out_crit_edge [
    i32 18, label %if.end.i292.1
    i32 0, label %if.end.i292.if.end81_crit_edge
  ]

if.end.i292.if.end81_crit_edge:                   ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.out_crit_edge:                        ; preds = %if.end.i292
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.1:                                    ; preds = %if.end.i292
  call void @msleep(i32 noundef 20) #13
  %165 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %card1, align 4
  %167 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %node_id.i, align 8
  %169 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %max_speed, align 8
  %call.i287.2 = call i32 @fw_run_transaction(ptr noundef %166, i32 noundef 4, i32 noundef %168, i32 noundef %generation, i32 noundef %170, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %171 = zext i32 %call.i287.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %call.i287.2, label %if.end.i292.1.out_crit_edge [
    i32 18, label %if.end.i292.2
    i32 0, label %if.end.i292.1.if.end81_crit_edge
  ]

if.end.i292.1.if.end81_crit_edge:                 ; preds = %if.end.i292.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.1.out_crit_edge:                      ; preds = %if.end.i292.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.2:                                    ; preds = %if.end.i292.1
  call void @msleep(i32 noundef 30) #13
  %172 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %card1, align 4
  %174 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %node_id.i, align 8
  %176 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_speed, align 8
  %call.i287.3 = call i32 @fw_run_transaction(ptr noundef %173, i32 noundef 4, i32 noundef %175, i32 noundef %generation, i32 noundef %177, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %178 = zext i32 %call.i287.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %call.i287.3, label %if.end.i292.2.out_crit_edge [
    i32 18, label %if.end.i292.3
    i32 0, label %if.end.i292.2.if.end81_crit_edge
  ]

if.end.i292.2.if.end81_crit_edge:                 ; preds = %if.end.i292.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.2.out_crit_edge:                      ; preds = %if.end.i292.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.3:                                    ; preds = %if.end.i292.2
  call void @msleep(i32 noundef 40) #13
  %179 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %card1, align 4
  %181 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %node_id.i, align 8
  %183 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %max_speed, align 8
  %call.i287.4 = call i32 @fw_run_transaction(ptr noundef %180, i32 noundef 4, i32 noundef %182, i32 noundef %generation, i32 noundef %184, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %185 = zext i32 %call.i287.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %call.i287.4, label %if.end.i292.3.out_crit_edge [
    i32 18, label %if.end.i292.4
    i32 0, label %if.end.i292.3.if.end81_crit_edge
  ]

if.end.i292.3.if.end81_crit_edge:                 ; preds = %if.end.i292.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.3.out_crit_edge:                      ; preds = %if.end.i292.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.4:                                    ; preds = %if.end.i292.3
  call void @msleep(i32 noundef 50) #13
  %186 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %card1, align 4
  %188 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %node_id.i, align 8
  %190 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %max_speed, align 8
  %call.i287.5 = call i32 @fw_run_transaction(ptr noundef %187, i32 noundef 4, i32 noundef %189, i32 noundef %generation, i32 noundef %191, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %192 = zext i32 %call.i287.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %192, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %call.i287.5, label %if.end.i292.4.out_crit_edge [
    i32 18, label %if.end.i292.5
    i32 0, label %if.end.i292.4.if.end81_crit_edge
  ]

if.end.i292.4.if.end81_crit_edge:                 ; preds = %if.end.i292.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.4.out_crit_edge:                      ; preds = %if.end.i292.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.5:                                    ; preds = %if.end.i292.4
  call void @msleep(i32 noundef 60) #13
  %193 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %card1, align 4
  %195 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %node_id.i, align 8
  %197 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %max_speed, align 8
  %call.i287.6 = call i32 @fw_run_transaction(ptr noundef %194, i32 noundef 4, i32 noundef %196, i32 noundef %generation, i32 noundef %198, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %199 = zext i32 %call.i287.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %199, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %call.i287.6, label %if.end.i292.5.out_crit_edge [
    i32 18, label %if.end.i292.6
    i32 0, label %if.end.i292.5.if.end81_crit_edge
  ]

if.end.i292.5.if.end81_crit_edge:                 ; preds = %if.end.i292.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.5.out_crit_edge:                      ; preds = %if.end.i292.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.6:                                    ; preds = %if.end.i292.5
  call void @msleep(i32 noundef 70) #13
  %200 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %card1, align 4
  %202 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %node_id.i, align 8
  %204 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %max_speed, align 8
  %call.i287.7 = call i32 @fw_run_transaction(ptr noundef %201, i32 noundef 4, i32 noundef %203, i32 noundef %generation, i32 noundef %205, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %206 = zext i32 %call.i287.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %206, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %call.i287.7, label %if.end.i292.6.out_crit_edge [
    i32 18, label %if.end.i292.7
    i32 0, label %if.end.i292.6.if.end81_crit_edge
  ]

if.end.i292.6.if.end81_crit_edge:                 ; preds = %if.end.i292.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.6.out_crit_edge:                      ; preds = %if.end.i292.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.7:                                    ; preds = %if.end.i292.6
  call void @msleep(i32 noundef 80) #13
  %207 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %card1, align 4
  %209 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %node_id.i, align 8
  %211 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %max_speed, align 8
  %call.i287.8 = call i32 @fw_run_transaction(ptr noundef %208, i32 noundef 4, i32 noundef %210, i32 noundef %generation, i32 noundef %212, i64 noundef %add.i282, ptr noundef %arrayidx76, i32 noundef 4) #13
  %213 = zext i32 %call.i287.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %213, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %call.i287.8, label %if.end.i292.7.out_crit_edge [
    i32 18, label %if.end.i292.8
    i32 0, label %if.end.i292.7.if.end81_crit_edge
  ]

if.end.i292.7.if.end81_crit_edge:                 ; preds = %if.end.i292.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end81

if.end.i292.7.out_crit_edge:                      ; preds = %if.end.i292.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i292.8:                                    ; preds = %if.end.i292.7
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 90) #13
  br label %out

if.end81:                                         ; preds = %if.end.i292.7.if.end81_crit_edge, %if.end.i292.6.if.end81_crit_edge, %if.end.i292.5.if.end81_crit_edge, %if.end.i292.4.if.end81_crit_edge, %if.end.i292.3.if.end81_crit_edge, %if.end.i292.2.if.end81_crit_edge, %if.end.i292.1.if.end81_crit_edge, %if.end.i292.if.end81_crit_edge, %if.end75.if.end81_crit_edge
  %214 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx76, align 4
  %shr = lshr i32 %215, 16
  %add = add nuw nsw i32 %shr, %and49
  %add83 = add nuw nsw i32 %add, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp84 = icmp ugt i32 %add, 255
  br i1 %cmp84, label %if.end91.thread, label %if.end91

if.end91.thread:                                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #15
  %or89 = or i64 %conv.i281312, 281474708276224
  call void (ptr, ptr, ...) @fw_err(ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %215, i64 noundef %or89) #13
  %216 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %arrayidx76, align 4
  %i.1328344 = add nuw nsw i32 %and49, 1
  br label %for.end132

if.end91:                                         ; preds = %if.end81
  %i.1328 = add nuw nsw i32 %and49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %215)
  %cmp94329.not = icmp ult i32 %215, 65536
  br i1 %cmp94329.not, label %if.end91.for.end132_crit_edge, label %for.body96.lr.ph

if.end91.for.end132_crit_edge:                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end132

for.body96.lr.ph:                                 ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %150)
  %cmp104.not = icmp ugt i32 %150, -1073741825
  br label %for.body96

for.body96:                                       ; preds = %for.inc130.for.body96_crit_edge, %for.body96.lr.ph
  %i.1331 = phi i32 [ %i.1328, %for.body96.lr.ph ], [ %i.1, %for.inc130.for.body96_crit_edge ]
  %sp.1330 = phi i32 [ %dec47, %for.body96.lr.ph ], [ %sp.2, %for.inc130.for.body96_crit_edge ]
  %arrayidx97 = getelementptr i32, ptr %call7.i, i32 %i.1331
  %mul.i294 = shl i32 %i.1331, 2
  %conv.i295 = sext i32 %mul.i294 to i64
  %add.i296 = add nsw i64 %conv.i295, 281474708276224
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !134
  %217 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %card1, align 4
  %219 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %node_id.i, align 8
  %221 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %max_speed, align 8
  %call.i301 = call i32 @fw_run_transaction(ptr noundef %218, i32 noundef 4, i32 noundef %220, i32 noundef %generation, i32 noundef %222, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %223 = zext i32 %call.i301 to i64
  call void @__sanitizer_cov_trace_switch(i64 %223, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %call.i301, label %for.body96.out_crit_edge [
    i32 18, label %if.end.i306
    i32 0, label %for.body96.if.end102_crit_edge
  ]

for.body96.if.end102_crit_edge:                   ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

for.body96.out_crit_edge:                         ; preds = %for.body96
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306:                                      ; preds = %for.body96
  call void @msleep(i32 noundef 10) #13
  %224 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %card1, align 4
  %226 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %node_id.i, align 8
  %228 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %max_speed, align 8
  %call.i301.1 = call i32 @fw_run_transaction(ptr noundef %225, i32 noundef 4, i32 noundef %227, i32 noundef %generation, i32 noundef %229, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %230 = zext i32 %call.i301.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %230, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %call.i301.1, label %if.end.i306.out_crit_edge [
    i32 18, label %if.end.i306.1
    i32 0, label %if.end.i306.if.end102_crit_edge
  ]

if.end.i306.if.end102_crit_edge:                  ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.out_crit_edge:                        ; preds = %if.end.i306
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.1:                                    ; preds = %if.end.i306
  call void @msleep(i32 noundef 20) #13
  %231 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %card1, align 4
  %233 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %node_id.i, align 8
  %235 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %max_speed, align 8
  %call.i301.2 = call i32 @fw_run_transaction(ptr noundef %232, i32 noundef 4, i32 noundef %234, i32 noundef %generation, i32 noundef %236, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %237 = zext i32 %call.i301.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %call.i301.2, label %if.end.i306.1.out_crit_edge [
    i32 18, label %if.end.i306.2
    i32 0, label %if.end.i306.1.if.end102_crit_edge
  ]

if.end.i306.1.if.end102_crit_edge:                ; preds = %if.end.i306.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.1.out_crit_edge:                      ; preds = %if.end.i306.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.2:                                    ; preds = %if.end.i306.1
  call void @msleep(i32 noundef 30) #13
  %238 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %card1, align 4
  %240 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %node_id.i, align 8
  %242 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %max_speed, align 8
  %call.i301.3 = call i32 @fw_run_transaction(ptr noundef %239, i32 noundef 4, i32 noundef %241, i32 noundef %generation, i32 noundef %243, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %244 = zext i32 %call.i301.3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %244, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %call.i301.3, label %if.end.i306.2.out_crit_edge [
    i32 18, label %if.end.i306.3
    i32 0, label %if.end.i306.2.if.end102_crit_edge
  ]

if.end.i306.2.if.end102_crit_edge:                ; preds = %if.end.i306.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.2.out_crit_edge:                      ; preds = %if.end.i306.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.3:                                    ; preds = %if.end.i306.2
  call void @msleep(i32 noundef 40) #13
  %245 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %card1, align 4
  %247 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %node_id.i, align 8
  %249 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %max_speed, align 8
  %call.i301.4 = call i32 @fw_run_transaction(ptr noundef %246, i32 noundef 4, i32 noundef %248, i32 noundef %generation, i32 noundef %250, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %251 = zext i32 %call.i301.4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %251, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %call.i301.4, label %if.end.i306.3.out_crit_edge [
    i32 18, label %if.end.i306.4
    i32 0, label %if.end.i306.3.if.end102_crit_edge
  ]

if.end.i306.3.if.end102_crit_edge:                ; preds = %if.end.i306.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.3.out_crit_edge:                      ; preds = %if.end.i306.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.4:                                    ; preds = %if.end.i306.3
  call void @msleep(i32 noundef 50) #13
  %252 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %card1, align 4
  %254 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %node_id.i, align 8
  %256 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %max_speed, align 8
  %call.i301.5 = call i32 @fw_run_transaction(ptr noundef %253, i32 noundef 4, i32 noundef %255, i32 noundef %generation, i32 noundef %257, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %258 = zext i32 %call.i301.5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %258, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %call.i301.5, label %if.end.i306.4.out_crit_edge [
    i32 18, label %if.end.i306.5
    i32 0, label %if.end.i306.4.if.end102_crit_edge
  ]

if.end.i306.4.if.end102_crit_edge:                ; preds = %if.end.i306.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.4.out_crit_edge:                      ; preds = %if.end.i306.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.5:                                    ; preds = %if.end.i306.4
  call void @msleep(i32 noundef 60) #13
  %259 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %card1, align 4
  %261 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %node_id.i, align 8
  %263 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %max_speed, align 8
  %call.i301.6 = call i32 @fw_run_transaction(ptr noundef %260, i32 noundef 4, i32 noundef %262, i32 noundef %generation, i32 noundef %264, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %265 = zext i32 %call.i301.6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %265, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %call.i301.6, label %if.end.i306.5.out_crit_edge [
    i32 18, label %if.end.i306.6
    i32 0, label %if.end.i306.5.if.end102_crit_edge
  ]

if.end.i306.5.if.end102_crit_edge:                ; preds = %if.end.i306.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.5.out_crit_edge:                      ; preds = %if.end.i306.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.6:                                    ; preds = %if.end.i306.5
  call void @msleep(i32 noundef 70) #13
  %266 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %card1, align 4
  %268 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %node_id.i, align 8
  %270 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %max_speed, align 8
  %call.i301.7 = call i32 @fw_run_transaction(ptr noundef %267, i32 noundef 4, i32 noundef %269, i32 noundef %generation, i32 noundef %271, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %272 = zext i32 %call.i301.7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %272, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %call.i301.7, label %if.end.i306.6.out_crit_edge [
    i32 18, label %if.end.i306.7
    i32 0, label %if.end.i306.6.if.end102_crit_edge
  ]

if.end.i306.6.if.end102_crit_edge:                ; preds = %if.end.i306.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.6.out_crit_edge:                      ; preds = %if.end.i306.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.7:                                    ; preds = %if.end.i306.6
  call void @msleep(i32 noundef 80) #13
  %273 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %card1, align 4
  %275 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %node_id.i, align 8
  %277 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %max_speed, align 8
  %call.i301.8 = call i32 @fw_run_transaction(ptr noundef %274, i32 noundef 4, i32 noundef %276, i32 noundef %generation, i32 noundef %278, i64 noundef %add.i296, ptr noundef %arrayidx97, i32 noundef 4) #13
  %279 = zext i32 %call.i301.8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %279, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %call.i301.8, label %if.end.i306.7.out_crit_edge [
    i32 18, label %if.end.i306.8
    i32 0, label %if.end.i306.7.if.end102_crit_edge
  ]

if.end.i306.7.if.end102_crit_edge:                ; preds = %if.end.i306.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end102

if.end.i306.7.out_crit_edge:                      ; preds = %if.end.i306.7
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i306.8:                                    ; preds = %if.end.i306.7
  call void @__sanitizer_cov_trace_pc() #15
  call void @msleep(i32 noundef 90) #13
  br label %out

if.end102:                                        ; preds = %if.end.i306.7.if.end102_crit_edge, %if.end.i306.6.if.end102_crit_edge, %if.end.i306.5.if.end102_crit_edge, %if.end.i306.4.if.end102_crit_edge, %if.end.i306.3.if.end102_crit_edge, %if.end.i306.2.if.end102_crit_edge, %if.end.i306.1.if.end102_crit_edge, %if.end.i306.if.end102_crit_edge, %for.body96.if.end102_crit_edge
  br i1 %cmp104.not, label %lor.lhs.false106, label %if.end102.for.inc130_crit_edge

if.end102.for.inc130_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc130

lor.lhs.false106:                                 ; preds = %if.end102
  %280 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %arrayidx97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %281)
  %cmp109 = icmp sgt i32 %281, -1
  br i1 %cmp109, label %lor.lhs.false106.for.inc130_crit_edge, label %if.end112

lor.lhs.false106.for.inc130_crit_edge:            ; preds = %lor.lhs.false106
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc130

if.end112:                                        ; preds = %lor.lhs.false106
  %and114 = and i32 %281, 16777215
  %add115 = add nuw i32 %and114, %i.1331
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add115)
  %cmp116 = icmp ugt i32 %add115, 255
  br i1 %cmp116, label %if.then118, label %if.end125

if.then118:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %282 = zext i32 %mul.i294 to i64
  %or123 = or i64 %282, 281474708276224
  call void (ptr, ptr, ...) @fw_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %281, i64 noundef %or123) #13
  %283 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 0, ptr %arrayidx97, align 4
  br label %for.inc130

if.end125:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #15
  %add127 = add i32 %281, %i.1331
  %inc128 = add i32 %sp.1330, 1
  %arrayidx129 = getelementptr i32, ptr %arrayidx, i32 %sp.1330
  %284 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store4_noabort(i32 %284)
  store i32 %add127, ptr %arrayidx129, align 4
  br label %for.inc130

for.inc130:                                       ; preds = %if.end125, %if.then118, %lor.lhs.false106.for.inc130_crit_edge, %if.end102.for.inc130_crit_edge
  %sp.2 = phi i32 [ %sp.1330, %if.end102.for.inc130_crit_edge ], [ %sp.1330, %lor.lhs.false106.for.inc130_crit_edge ], [ %sp.1330, %if.then118 ], [ %inc128, %if.end125 ]
  %i.1 = add nuw nsw i32 %i.1331, 1
  %exitcond342.not = icmp eq i32 %i.1331, %add
  br i1 %exitcond342.not, label %for.inc130.for.end132_crit_edge, label %for.inc130.for.body96_crit_edge

for.inc130.for.body96_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body96

for.inc130.for.end132_crit_edge:                  ; preds = %for.inc130
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end132

for.end132:                                       ; preds = %for.inc130.for.end132_crit_edge, %if.end91.for.end132_crit_edge, %if.end91.thread
  %sp.1.lcssa = phi i32 [ %dec47, %if.end91.for.end132_crit_edge ], [ %dec47, %if.end91.thread ], [ %sp.2, %for.inc130.for.end132_crit_edge ]
  %i.1.lcssa = phi i32 [ %i.1328, %if.end91.for.end132_crit_edge ], [ %i.1328344, %if.end91.thread ], [ %add83, %for.inc130.for.end132_crit_edge ]
  %285 = call i32 @llvm.smax.i32(i32 %length.0334, i32 %i.1.lcssa)
  %cmp44.not = icmp eq i32 %sp.1.lcssa, 0
  br i1 %cmp44.not, label %while.end137, label %for.end132.while.body46_crit_edge

for.end132.while.body46_crit_edge:                ; preds = %for.end132
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body46

while.end137:                                     ; preds = %for.end132
  %config_rom = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 9
  %286 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %config_rom, align 4
  %mul138 = shl i32 %285, 2
  %call139 = call ptr @kmemdup(ptr noundef nonnull %call7.i, i32 noundef %mul138, i32 noundef 3264) #13
  %cmp140 = icmp eq ptr %call139, null
  br i1 %cmp140, label %while.end137.out_crit_edge, label %if.end143

while.end137.out_crit_edge:                       ; preds = %while.end137
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end143:                                        ; preds = %while.end137
  call void @__sanitizer_cov_trace_pc() #15
  call void @down_write(ptr noundef nonnull @fw_device_rwsem) #13
  %288 = ptrtoint ptr %config_rom to i32
  call void @__asan_store4_noabort(i32 %288)
  store ptr %call139, ptr %config_rom, align 4
  %config_rom_length = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 10
  %289 = ptrtoint ptr %config_rom_length to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %285, ptr %config_rom_length, align 8
  call void @up_write(ptr noundef nonnull @fw_device_rwsem) #13
  call void @kfree(ptr noundef %287) #13
  %290 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx15, align 8
  %max_rec = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 12
  %292 = trunc i32 %291 to i16
  %293 = ptrtoint ptr %max_rec to i32
  call void @__asan_load2_noabort(i32 %293)
  %bf.load148 = load i16, ptr %max_rec, align 8
  %294 = lshr i16 %292, 1
  %bf.shl = and i16 %294, 30720
  %bf.clear149 = and i16 %bf.load148, -32257
  %bf.set = or i16 %bf.shl, %bf.clear149
  %sh.diff = lshr i32 %291, 20
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl155 = and i16 %tr.sh.diff, 1024
  %bf.set157 = or i16 %bf.set, %bf.shl155
  %sh.diff267 = lshr i32 %291, 22
  %tr.sh.diff268 = trunc i32 %sh.diff267 to i16
  %bf.shl164 = and i16 %tr.sh.diff268, 512
  %bf.set166 = or i16 %bf.set157, %bf.shl164
  store i16 %bf.set166, ptr %max_rec, align 8
  br label %out

out:                                              ; preds = %if.end143, %while.end137.out_crit_edge, %if.end.i306.8, %if.end.i306.7.out_crit_edge, %if.end.i306.6.out_crit_edge, %if.end.i306.5.out_crit_edge, %if.end.i306.4.out_crit_edge, %if.end.i306.3.out_crit_edge, %if.end.i306.2.out_crit_edge, %if.end.i306.1.out_crit_edge, %if.end.i306.out_crit_edge, %for.body96.out_crit_edge, %if.end.i292.8, %if.end.i292.7.out_crit_edge, %if.end.i292.6.out_crit_edge, %if.end.i292.5.out_crit_edge, %if.end.i292.4.out_crit_edge, %if.end.i292.3.out_crit_edge, %if.end.i292.2.out_crit_edge, %if.end.i292.1.out_crit_edge, %if.end.i292.out_crit_edge, %if.end75.out_crit_edge, %do.end, %land.lhs.true.out_crit_edge, %if.end.i.8, %if.end.i.7.out_crit_edge, %if.end.i.6.out_crit_edge, %if.end.i.5.out_crit_edge, %if.end.i.4.out_crit_edge, %if.end.i.3.out_crit_edge, %if.end.i.2.out_crit_edge, %if.end.i.1.out_crit_edge, %if.end.i.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ -6, %do.end ], [ 0, %if.end143 ], [ -12, %while.end137.out_crit_edge ], [ 18, %if.end.i306.8 ], [ 18, %if.end.i292.8 ], [ 18, %if.end.i.8 ], [ %call.i301, %for.body96.out_crit_edge ], [ %call.i301.1, %if.end.i306.out_crit_edge ], [ %call.i301.2, %if.end.i306.1.out_crit_edge ], [ %call.i301.3, %if.end.i306.2.out_crit_edge ], [ %call.i301.4, %if.end.i306.3.out_crit_edge ], [ %call.i301.5, %if.end.i306.4.out_crit_edge ], [ %call.i301.6, %if.end.i306.5.out_crit_edge ], [ %call.i301.7, %if.end.i306.6.out_crit_edge ], [ %call.i301.8, %if.end.i306.7.out_crit_edge ], [ %call.i287, %if.end75.out_crit_edge ], [ %call.i287.1, %if.end.i292.out_crit_edge ], [ %call.i287.2, %if.end.i292.1.out_crit_edge ], [ %call.i287.3, %if.end.i292.2.out_crit_edge ], [ %call.i287.4, %if.end.i292.3.out_crit_edge ], [ %call.i287.5, %if.end.i292.4.out_crit_edge ], [ %call.i287.6, %if.end.i292.5.out_crit_edge ], [ %call.i287.7, %if.end.i292.6.out_crit_edge ], [ %call.i287.8, %if.end.i292.7.out_crit_edge ], [ 18, %land.lhs.true.out_crit_edge ], [ %call.i, %for.body.out_crit_edge ], [ %call.i.1, %if.end.i.out_crit_edge ], [ %call.i.2, %if.end.i.1.out_crit_edge ], [ %call.i.3, %if.end.i.2.out_crit_edge ], [ %call.i.4, %if.end.i.3.out_crit_edge ], [ %call.i.5, %if.end.i.4.out_crit_edge ], [ %call.i.6, %if.end.i.5.out_crit_edge ], [ %call.i.7, %if.end.i.6.out_crit_edge ], [ %call.i.8, %if.end.i.7.out_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_rcode_string(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_schedule_bm_work(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_find_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lookup_existing_device(ptr noundef %dev, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -24
  %card1 = getelementptr inbounds %struct.fw_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %3, @fw_device_type
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %lock = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #13
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %4 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config_rom, align 4
  %config_rom3 = getelementptr inbounds %struct.fw_device, ptr %data, i32 0, i32 9
  %6 = ptrtoint ptr %config_rom3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config_rom3, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(24) %5, ptr noundef dereferenceable(24) %7, i32 24) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp = icmp eq i32 %bcmp, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end26_crit_edge

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

land.lhs.true:                                    ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !127
  tail call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %land.lhs.true
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 2, i32 1, ptr elementtype(i32) %add.ptr.i) #13, !srcloc !128
  %asmresult.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %atomic_cmpxchg.exit, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i

atomic_cmpxchg.exit:                              ; preds = %do.body.i.i.i
  %asmresult3.i.i.i = extractvalue { i32, i32 } %8, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !129
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult3.i.i.i)
  %cmp6 = icmp eq i32 %asmresult3.i.i.i, 2
  br i1 %cmp6, label %if.then7, label %atomic_cmpxchg.exit.if.end26_crit_edge

atomic_cmpxchg.exit.if.end26_crit_edge:           ; preds = %atomic_cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then7:                                         ; preds = %atomic_cmpxchg.exit
  %node = getelementptr inbounds %struct.fw_device, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %node8 = getelementptr i8, ptr %dev, i32 -20
  %11 = ptrtoint ptr %node8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node8, align 4
  store ptr %12, ptr %node, align 4
  %data11 = getelementptr inbounds %struct.fw_node, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %data11, align 4
  store ptr %10, ptr %node8, align 4
  %data14 = getelementptr inbounds %struct.fw_node, ptr %10, i32 0, i32 7
  %14 = ptrtoint ptr %data14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %data14, align 4
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %data, i32 0, i32 4
  %15 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %max_speed, align 8
  %max_speed15 = getelementptr i8, ptr %dev, i32 -8
  %17 = ptrtoint ptr %max_speed15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_speed15, align 8
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %10, align 4
  %conv = zext i16 %19 to i32
  %node_id16 = getelementptr i8, ptr %dev, i32 -16
  %20 = ptrtoint ptr %node_id16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv, ptr %node_id16, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !138
  %generation = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %generation, align 8
  %generation20 = getelementptr i8, ptr %dev, i32 -12
  %23 = ptrtoint ptr %generation20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %generation20, align 4
  %config_rom_retries = getelementptr i8, ptr %dev, i32 1036
  %24 = ptrtoint ptr %config_rom_retries to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %config_rom_retries, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then7.dev_name.exit_crit_edge

if.then7.dev_name.exit_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %if.then7.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @fw_notice(ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i) #13
  %workfn = getelementptr i8, ptr %dev, i32 1044
  %29 = ptrtoint ptr %workfn to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @fw_device_update, ptr %workfn, align 4
  %30 = load ptr, ptr @fw_workqueue, align 4
  %work.i = getelementptr i8, ptr %dev, i32 1048
  %call.i.i57 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %30, ptr noundef %work.i, i32 noundef 0) #13
  %root_node = getelementptr inbounds %struct.fw_card, ptr %1, i32 0, i32 20
  %31 = ptrtoint ptr %root_node to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root_node, align 4
  %cmp22 = icmp eq ptr %10, %32
  br i1 %cmp22, label %if.then24, label %dev_name.exit.if.end26_crit_edge

dev_name.exit.if.end26_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end26

if.then24:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @fw_schedule_bm_work(ptr noundef %1, i32 noundef 0) #13
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %dev_name.exit.if.end26_crit_edge, %atomic_cmpxchg.exit.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %match.0 = phi i32 [ 0, %atomic_cmpxchg.exit.if.end26_crit_edge ], [ 0, %if.end.if.end26_crit_edge ], [ 1, %if.then24 ], [ 1, %dev_name.exit.if.end26_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #13
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %match.0, %if.end26 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_fw_attribute_group(ptr noundef %dev, ptr noundef %attrs, ptr noundef %group) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %cmp.not50 = icmp eq ptr %1, null
  br i1 %cmp.not50, label %entry.for.cond6.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond6.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.body.for.cond6.preheader_crit_edge, %entry.for.cond6.preheader_crit_edge
  %j.0.lcssa = phi i32 [ 0, %entry.for.cond6.preheader_crit_edge ], [ %inc, %for.body.for.cond6.preheader_crit_edge ]
  %2 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 0, i32 0, i32 1), align 4
  %call = tail call i32 %2(ptr noundef %dev, ptr noundef nonnull @config_rom_attributes, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %for.cond6.preheader.for.inc16_crit_edge, label %if.end

for.cond6.preheader.for.inc16_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %arrayidx52 = phi ptr [ %arrayidx, %for.body.for.body_crit_edge ], [ %attrs, %entry.for.body_crit_edge ]
  %j.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx5 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.051
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx52, ptr %arrayidx5, align 4
  %inc = add i32 %j.051, 1
  %arrayidx = getelementptr %struct.device_attribute, ptr %attrs, i32 %inc
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %for.body.for.cond6.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.cond6.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond6.preheader

if.end:                                           ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %inc14 = add i32 %j.0.lcssa, 1
  %arrayidx15 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.0.lcssa
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @config_rom_attributes, ptr %arrayidx15, align 4
  br label %for.inc16

for.inc16:                                        ; preds = %if.end, %for.cond6.preheader.for.inc16_crit_edge
  %j.2 = phi i32 [ %j.0.lcssa, %for.cond6.preheader.for.inc16_crit_edge ], [ %inc14, %if.end ]
  %7 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 1, i32 0, i32 1), align 4
  %call.1 = tail call i32 %7(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 1), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp11.1 = icmp slt i32 %call.1, 0
  br i1 %cmp11.1, label %for.inc16.for.inc16.1_crit_edge, label %if.end.1

for.inc16.for.inc16.1_crit_edge:                  ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.1

if.end.1:                                         ; preds = %for.inc16
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.1 = add i32 %j.2, 1
  %arrayidx15.1 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2
  %8 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 1), ptr %arrayidx15.1, align 4
  br label %for.inc16.1

for.inc16.1:                                      ; preds = %if.end.1, %for.inc16.for.inc16.1_crit_edge
  %j.2.1 = phi i32 [ %j.2, %for.inc16.for.inc16.1_crit_edge ], [ %inc14.1, %if.end.1 ]
  %9 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 2, i32 0, i32 1), align 4
  %call.2 = tail call i32 %9(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 2), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp11.2 = icmp slt i32 %call.2, 0
  br i1 %cmp11.2, label %for.inc16.1.for.inc16.2_crit_edge, label %if.end.2

for.inc16.1.for.inc16.2_crit_edge:                ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.2

if.end.2:                                         ; preds = %for.inc16.1
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.2 = add i32 %j.2.1, 1
  %arrayidx15.2 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.1
  %10 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 2), ptr %arrayidx15.2, align 4
  br label %for.inc16.2

for.inc16.2:                                      ; preds = %if.end.2, %for.inc16.1.for.inc16.2_crit_edge
  %j.2.2 = phi i32 [ %j.2.1, %for.inc16.1.for.inc16.2_crit_edge ], [ %inc14.2, %if.end.2 ]
  %11 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 3, i32 0, i32 1), align 4
  %call.3 = tail call i32 %11(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 3), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp11.3 = icmp slt i32 %call.3, 0
  br i1 %cmp11.3, label %for.inc16.2.for.inc16.3_crit_edge, label %if.end.3

for.inc16.2.for.inc16.3_crit_edge:                ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.3

if.end.3:                                         ; preds = %for.inc16.2
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.3 = add i32 %j.2.2, 1
  %arrayidx15.3 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.2
  %12 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 3), ptr %arrayidx15.3, align 4
  br label %for.inc16.3

for.inc16.3:                                      ; preds = %if.end.3, %for.inc16.2.for.inc16.3_crit_edge
  %j.2.3 = phi i32 [ %j.2.2, %for.inc16.2.for.inc16.3_crit_edge ], [ %inc14.3, %if.end.3 ]
  %13 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 4, i32 0, i32 1), align 4
  %call.4 = tail call i32 %13(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 4), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp11.4 = icmp slt i32 %call.4, 0
  br i1 %cmp11.4, label %for.inc16.3.for.inc16.4_crit_edge, label %if.end.4

for.inc16.3.for.inc16.4_crit_edge:                ; preds = %for.inc16.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.4

if.end.4:                                         ; preds = %for.inc16.3
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.4 = add i32 %j.2.3, 1
  %arrayidx15.4 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.3
  %14 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 4), ptr %arrayidx15.4, align 4
  br label %for.inc16.4

for.inc16.4:                                      ; preds = %if.end.4, %for.inc16.3.for.inc16.4_crit_edge
  %j.2.4 = phi i32 [ %j.2.3, %for.inc16.3.for.inc16.4_crit_edge ], [ %inc14.4, %if.end.4 ]
  %15 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 5, i32 0, i32 1), align 4
  %call.5 = tail call i32 %15(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 5), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5)
  %cmp11.5 = icmp slt i32 %call.5, 0
  br i1 %cmp11.5, label %for.inc16.4.for.inc16.5_crit_edge, label %if.end.5

for.inc16.4.for.inc16.5_crit_edge:                ; preds = %for.inc16.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.5

if.end.5:                                         ; preds = %for.inc16.4
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.5 = add i32 %j.2.4, 1
  %arrayidx15.5 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.4
  %16 = ptrtoint ptr %arrayidx15.5 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 5), ptr %arrayidx15.5, align 4
  br label %for.inc16.5

for.inc16.5:                                      ; preds = %if.end.5, %for.inc16.4.for.inc16.5_crit_edge
  %j.2.5 = phi i32 [ %j.2.4, %for.inc16.4.for.inc16.5_crit_edge ], [ %inc14.5, %if.end.5 ]
  %17 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 6, i32 0, i32 1), align 4
  %call.6 = tail call i32 %17(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 6), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6)
  %cmp11.6 = icmp slt i32 %call.6, 0
  br i1 %cmp11.6, label %for.inc16.5.for.inc16.6_crit_edge, label %if.end.6

for.inc16.5.for.inc16.6_crit_edge:                ; preds = %for.inc16.5
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.6

if.end.6:                                         ; preds = %for.inc16.5
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.6 = add i32 %j.2.5, 1
  %arrayidx15.6 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.5
  %18 = ptrtoint ptr %arrayidx15.6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 6), ptr %arrayidx15.6, align 4
  br label %for.inc16.6

for.inc16.6:                                      ; preds = %if.end.6, %for.inc16.5.for.inc16.6_crit_edge
  %j.2.6 = phi i32 [ %j.2.5, %for.inc16.5.for.inc16.6_crit_edge ], [ %inc14.6, %if.end.6 ]
  %19 = load ptr, ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 7, i32 0, i32 1), align 4
  %call.7 = tail call i32 %19(ptr noundef %dev, ptr noundef getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 7), ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7)
  %cmp11.7 = icmp slt i32 %call.7, 0
  br i1 %cmp11.7, label %for.inc16.6.for.inc16.7_crit_edge, label %if.end.7

for.inc16.6.for.inc16.7_crit_edge:                ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc16.7

if.end.7:                                         ; preds = %for.inc16.6
  call void @__sanitizer_cov_trace_pc() #15
  %inc14.7 = add i32 %j.2.6, 1
  %arrayidx15.7 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.6
  %20 = ptrtoint ptr %arrayidx15.7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr getelementptr inbounds ([8 x %struct.config_rom_attribute], ptr @config_rom_attributes, i32 0, i32 7), ptr %arrayidx15.7, align 4
  br label %for.inc16.7

for.inc16.7:                                      ; preds = %if.end.7, %for.inc16.6.for.inc16.7_crit_edge
  %j.2.7 = phi i32 [ %j.2.6, %for.inc16.6.for.inc16.7_crit_edge ], [ %inc14.7, %if.end.7 ]
  %attrs19 = getelementptr inbounds %struct.fw_attribute_group, ptr %group, i32 0, i32 2
  %arrayidx20 = getelementptr %struct.fw_attribute_group, ptr %group, i32 0, i32 2, i32 %j.2.7
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %arrayidx20, align 4
  %group21 = getelementptr inbounds %struct.fw_attribute_group, ptr %group, i32 0, i32 1
  %22 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %group21, ptr %group, align 4
  %arrayidx24 = getelementptr [2 x ptr], ptr %group, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx24, align 4
  %attrs27 = getelementptr inbounds %struct.fw_attribute_group, ptr %group, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %attrs27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %attrs19, ptr %attrs27, align 4
  %groups30 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 34
  %25 = ptrtoint ptr %groups30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %group, ptr %groups30, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @create_units(ptr noundef %device) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %config_rom = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 9
  %0 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 5
  %add.ptr.i = getelementptr i32, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %3, 16
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i, i32 %shr.i
  %cmp.i.not4144 = icmp ult ptr %add.ptr.i, %add.ptr3.i
  br i1 %cmp.i.not4144, label %while.body.lr.ph.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph.lr.ph:                           ; preds = %entry
  %incdec.ptr.i4043 = getelementptr i32, ptr %1, i32 7
  %device8 = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 6, i32 3
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.outer.backedge.while.body.lr.ph_crit_edge, %while.body.lr.ph.lr.ph
  %incdec.ptr.i4046 = phi ptr [ %incdec.ptr.i4043, %while.body.lr.ph.lr.ph ], [ %incdec.ptr.i40, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %.in = phi ptr [ %add.ptr.i, %while.body.lr.ph.lr.ph ], [ %incdec.ptr.i42, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  %i.0.ph45 = phi i32 [ 0, %while.body.lr.ph.lr.ph ], [ %inc, %while.cond.outer.backedge.while.body.lr.ph_crit_edge ]
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %incdec.ptr.i42 = phi ptr [ %incdec.ptr.i4046, %while.body.lr.ph ], [ %incdec.ptr.i, %while.cond.backedge.while.body_crit_edge ]
  %.in47 = phi ptr [ %.in, %while.body.lr.ph ], [ %incdec.ptr.i42, %while.cond.backedge.while.body_crit_edge ]
  %4 = ptrtoint ptr %.in47 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %.in47, align 4
  %shr.i33.mask = and i32 %5, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -788529152, i32 %shr.i33.mask)
  %cmp.not = icmp eq i32 %shr.i33.mask, -788529152
  br i1 %cmp.not, label %if.end, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %incdec.ptr.i = getelementptr i32, ptr %incdec.ptr.i42, i32 1
  %cmp.i.not = icmp ult ptr %incdec.ptr.i42, %add.ptr3.i
  br i1 %cmp.i.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1016) #16
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.while.cond.backedge_crit_edge, label %if.end4

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

if.end4:                                          ; preds = %if.end
  %and.i.le = and i32 %5, 16777215
  %add.ptr = getelementptr i32, ptr %incdec.ptr.i42, i32 -1
  %add.ptr5 = getelementptr i32, ptr %add.ptr, i32 %and.i.le
  %directory = getelementptr inbounds %struct.fw_unit, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %directory to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr5, ptr %directory, align 8
  %bus = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fw_bus_type, ptr %bus, align 8
  %type = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @fw_unit_type, ptr %type, align 4
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %device8, ptr %parent, align 8
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.dev_name.exit_crit_edge

if.end4.dev_name.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %device8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %device8, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end4.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %14, %if.end.i ], [ %12, %if.end4.dev_name.exit_crit_edge ]
  %inc = add i32 %i.0.ph45, 1
  %call13 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.36, ptr noundef %retval.0.i, i32 noundef %i.0.ph45) #13
  %attribute_group = getelementptr inbounds %struct.fw_unit, ptr %call7.i.i, i32 0, i32 2
  tail call fastcc void @init_fw_attribute_group(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @fw_unit_attributes, ptr noundef %attribute_group)
  %call16 = tail call i32 @device_register(ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %skip_unit, label %if.end19

if.end19:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  %call.i = tail call ptr @get_device(ptr noundef %device8) #13
  br label %while.cond.outer.backedge

skip_unit:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %while.cond.outer.backedge

while.cond.outer.backedge:                        ; preds = %skip_unit, %if.end19
  %incdec.ptr.i40 = getelementptr i32, ptr %incdec.ptr.i42, i32 1
  %cmp.i.not41 = icmp ult ptr %incdec.ptr.i42, %add.ptr3.i
  br i1 %cmp.i.not41, label %while.cond.outer.backedge.while.body.lr.ph_crit_edge, label %while.cond.outer.backedge.while.end_crit_edge

while.cond.outer.backedge.while.end_crit_edge:    ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.outer.backedge.while.body.lr.ph_crit_edge: ; preds = %while.cond.outer.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.lr.ph

while.end:                                        ; preds = %while.cond.outer.backedge.while.end_crit_edge, %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_device_randomness(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_immediate(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @fw_unit_type
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %directory = getelementptr inbounds %struct.fw_unit, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %directory, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %4 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config_rom, align 4
  %add.ptr3 = getelementptr i32, ptr %5, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dir.0 = phi ptr [ %3, %if.then ], [ %add.ptr3, %if.else ]
  %add.ptr.i13 = getelementptr i32, ptr %dir.0, i32 1
  %6 = ptrtoint ptr %dir.0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir.0, align 4
  %shr.i = lshr i32 %7, 16
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i13, i32 %shr.i
  %key5 = getelementptr inbounds %struct.config_rom_attribute, ptr %dattr, i32 0, i32 1
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %if.end
  %ci.sroa.0.0 = phi ptr [ %add.ptr.i13, %if.end ], [ %incdec.ptr.i, %while.body.while.cond_crit_edge ]
  %cmp.i16.not = icmp ult ptr %ci.sroa.0.0, %add.ptr3.i
  br i1 %cmp.i16.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body:                                       ; preds = %while.cond
  %8 = ptrtoint ptr %ci.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ci.sroa.0.0, align 4
  %incdec.ptr.i = getelementptr i32, ptr %ci.sroa.0.0, i32 1
  %shr.i14 = lshr i32 %9, 24
  %10 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %key5, align 4
  %cmp = icmp eq i32 %11, %shr.i14
  br i1 %cmp, label %if.then6, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %and.i.le = and i32 %9, 16777215
  %tobool7.not = icmp eq ptr %buf, null
  %cond = select i1 %tobool7.not, i32 0, i32 4096
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %cond, ptr noundef nonnull @.str.27, i32 noundef %and.i.le)
  br label %while.end

while.end:                                        ; preds = %if.then6, %while.cond.while.end_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then6 ], [ -2, %while.cond.while.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_text_leaf(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dattr, ptr noundef %buf) #4 align 64 {
entry:
  %dummy_buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %dummy_buf) #13
  %0 = ptrtoint ptr %dummy_buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %dummy_buf, align 1, !annotation !121
  %1 = getelementptr inbounds [2 x i8], ptr %dummy_buf, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !121
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %4, @fw_unit_type
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %directory = getelementptr inbounds %struct.fw_unit, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %directory, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %7 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config_rom, align 4
  %add.ptr3 = getelementptr i32, ptr %8, i32 5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dir.0 = phi ptr [ %6, %if.then ], [ %add.ptr3, %if.else ]
  %tobool.not = icmp eq ptr %buf, null
  %dummy_buf.buf = select i1 %tobool.not, ptr %dummy_buf, ptr %buf
  %key = getelementptr inbounds %struct.config_rom_attribute, ptr %dattr, i32 0, i32 1
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  %add.ptr.i.i.i = getelementptr i32, ptr %dir.0, i32 1
  %11 = ptrtoint ptr %dir.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir.0, align 4
  %shr.i.i.i = lshr i32 %12, 16
  %add.ptr3.i.i.i = getelementptr i32, ptr %add.ptr.i.i.i, i32 %shr.i.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %if.end
  %ci.sroa.0.0.i.i = phi ptr [ %add.ptr.i.i.i, %if.end ], [ %incdec.ptr.i.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %last_key.0.i.i = phi i32 [ 0, %if.end ], [ %shr.i6.i.i, %while.body.i.i.while.cond.i.i_crit_edge ]
  %cmp.i.not.i.i = icmp ult ptr %ci.sroa.0.0.i.i, %add.ptr3.i.i.i
  br i1 %cmp.i.not.i.i, label %while.body.i.i, label %while.cond.i.i.if.end16_crit_edge

while.cond.i.i.if.end16_crit_edge:                ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

while.body.i.i:                                   ; preds = %while.cond.i.i
  %13 = ptrtoint ptr %ci.sroa.0.0.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ci.sroa.0.0.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %ci.sroa.0.0.i.i, i32 1
  %shr.i6.i.i = lshr i32 %14, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %last_key.0.i.i, i32 %10)
  %cmp.i.i = icmp eq i32 %last_key.0.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %shr.i6.i.i)
  %cmp1.i.i = icmp eq i32 %shr.i6.i.i, 129
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %search_leaf.exit.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.i.i

search_leaf.exit.i:                               ; preds = %while.body.i.i
  %and.i.le.i.i = and i32 %14, 16777215
  %add.ptr2.i.i = getelementptr i32, ptr %ci.sroa.0.0.i.i, i32 %and.i.le.i.i
  %tobool.not.i = icmp eq ptr %add.ptr2.i.i, null
  br i1 %tobool.not.i, label %search_leaf.exit.i.if.end16_crit_edge, label %if.end.i

search_leaf.exit.i.if.end16_crit_edge:            ; preds = %search_leaf.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end.i:                                         ; preds = %search_leaf.exit.i
  %15 = ptrtoint ptr %add.ptr2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %16)
  %cmp.i4.i = icmp ult i32 %16, 16777216
  %shr.i.i = lshr i32 %16, 16
  %cond.i.i = select i1 %cmp.i4.i, i32 %shr.i.i, i32 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i.i)
  %cmp2.i.i = icmp ult i32 %cond.i.i, 2
  br i1 %cmp2.i.i, label %if.end.i.if.end16_crit_edge, label %if.end4.i.i

if.end.i.if.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end4.i.i:                                      ; preds = %if.end.i
  %arrayidx5.i.i = getelementptr i32, ptr %add.ptr2.i.i, i32 1
  %17 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not.i.i = icmp eq i32 %18, 0
  br i1 %cmp6.not.i.i, label %lor.lhs.false7.i.i, label %if.end4.i.i.if.end16_crit_edge

if.end4.i.i.if.end16_crit_edge:                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

lor.lhs.false7.i.i:                               ; preds = %if.end4.i.i
  %arrayidx8.i.i = getelementptr i32, ptr %add.ptr2.i.i, i32 2
  %19 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp9.not.i.i = icmp eq i32 %20, 0
  br i1 %cmp9.not.i.i, label %if.end11.i.i, label %lor.lhs.false7.i.i.if.end16_crit_edge

lor.lhs.false7.i.i.if.end16_crit_edge:            ; preds = %lor.lhs.false7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end11.i.i:                                     ; preds = %lor.lhs.false7.i.i
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr2.i.i, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cond.i.i)
  %cmp1249.i.i = icmp eq i32 %cond.i.i, 2
  %21 = or i1 %tobool.not, %cmp1249.i.i
  br i1 %21, label %fw_csr_string.exit.thread, label %for.body.preheader.i.i

fw_csr_string.exit.thread:                        ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %22 = ptrtoint ptr %dummy_buf.buf to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %dummy_buf.buf, align 1
  br label %while.cond.preheader

for.body.preheader.i.i:                           ; preds = %if.end11.i.i
  %sub.i.i = shl nuw nsw i32 %cond.i.i, 2
  %23 = add nsw i32 %sub.i.i, -9
  %umin.i.i = tail call i32 @llvm.umin.i32(i32 %23, i32 4093) #13
  %24 = add nuw nsw i32 %umin.i.i, 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end23.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.052.i.i = phi i32 [ %inc.i.i, %if.end23.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %div47.i.i = lshr i32 %i.052.i.i, 2
  %arrayidx15.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %div47.i.i
  %25 = ptrtoint ptr %arrayidx15.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx15.i.i, align 4
  %rem.i.i = shl i32 %i.052.i.i, 3
  %rem.not.i.i = and i32 %rem.i.i, 24
  %sub17.i.i = xor i32 %rem.not.i.i, 24
  %shr18.i.i = lshr i32 %26, %sub17.i.i
  %conv19.i.i = and i32 %shr18.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19.i.i)
  %cmp20.i.i = icmp eq i32 %conv19.i.i, 0
  br i1 %cmp20.i.i, label %for.body.i.i.fw_csr_string.exit_crit_edge, label %if.end23.i.i

for.body.i.i.fw_csr_string.exit_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_csr_string.exit

if.end23.i.i:                                     ; preds = %for.body.i.i
  %conv.i.i = trunc i32 %shr18.i.i to i8
  %arrayidx24.i.i = getelementptr i8, ptr %dummy_buf.buf, i32 %i.052.i.i
  %27 = ptrtoint ptr %arrayidx24.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv.i.i, ptr %arrayidx24.i.i, align 1
  %inc.i.i = add nuw nsw i32 %i.052.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %i.052.i.i, %umin.i.i
  br i1 %exitcond.not.i.i, label %if.end23.i.i.fw_csr_string.exit_crit_edge, label %if.end23.i.i.for.body.i.i_crit_edge

if.end23.i.i.for.body.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

if.end23.i.i.fw_csr_string.exit_crit_edge:        ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %fw_csr_string.exit

fw_csr_string.exit:                               ; preds = %if.end23.i.i.fw_csr_string.exit_crit_edge, %for.body.i.i.fw_csr_string.exit_crit_edge
  %i.0.lcssa.i.i = phi i32 [ %i.052.i.i, %for.body.i.i.fw_csr_string.exit_crit_edge ], [ %24, %if.end23.i.i.fw_csr_string.exit_crit_edge ]
  %arrayidx25.i.i = getelementptr i8, ptr %dummy_buf.buf, i32 %i.0.lcssa.i.i
  %28 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx25.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa.i.i)
  %cmp = icmp sgt i32 %i.0.lcssa.i.i, -1
  br i1 %cmp, label %fw_csr_string.exit.while.cond.preheader_crit_edge, label %fw_csr_string.exit.if.end16_crit_edge

fw_csr_string.exit.if.end16_crit_edge:            ; preds = %fw_csr_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

fw_csr_string.exit.while.cond.preheader_crit_edge: ; preds = %fw_csr_string.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %fw_csr_string.exit.while.cond.preheader_crit_edge, %fw_csr_string.exit.thread
  %ret.0.ph = phi i32 [ %i.0.lcssa.i.i, %fw_csr_string.exit.while.cond.preheader_crit_edge ], [ 0, %fw_csr_string.exit.thread ]
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %while.cond.preheader
  %ret.0 = phi i32 [ %sub, %land.rhs.while.cond_crit_edge ], [ %ret.0.ph, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp9.not = icmp eq i32 %ret.0, 0
  br i1 %cmp9.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %sub = add nsw i32 %ret.0, -1
  %arrayidx = getelementptr i8, ptr %dummy_buf.buf, i32 %sub
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %30 to i32
  %arrayidx10 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx10, align 1
  %33 = and i8 %32, 32
  %cmp12.not = icmp eq i8 %33, 0
  br i1 %cmp12.not, label %land.rhs.while.end_crit_edge, label %land.rhs.while.cond_crit_edge

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  %add.ptr14 = getelementptr i8, ptr %dummy_buf.buf, i32 %ret.0
  %34 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 2)
  store i16 2560, ptr %add.ptr14, align 1
  %inc = add nuw i32 %ret.0, 1
  br label %if.end16

if.end16:                                         ; preds = %while.end, %fw_csr_string.exit.if.end16_crit_edge, %lor.lhs.false7.i.i.if.end16_crit_edge, %if.end4.i.i.if.end16_crit_edge, %if.end.i.if.end16_crit_edge, %search_leaf.exit.i.if.end16_crit_edge, %while.cond.i.i.if.end16_crit_edge
  %ret.1 = phi i32 [ %inc, %while.end ], [ %i.0.lcssa.i.i, %fw_csr_string.exit.if.end16_crit_edge ], [ -61, %if.end4.i.i.if.end16_crit_edge ], [ -61, %lor.lhs.false7.i.i.if.end16_crit_edge ], [ -61, %if.end.i.if.end16_crit_edge ], [ -2, %search_leaf.exit.i.if.end16_crit_edge ], [ -2, %while.cond.i.i.if.end16_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %dummy_buf) #13
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_rom_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %config_rom_length = getelementptr i8, ptr %dev, i32 1032
  %0 = ptrtoint ptr %config_rom_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_rom_length, align 8
  %mul = shl i32 %1, 2
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %2 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config_rom, align 4
  %4 = call ptr @memcpy(ptr %buf, ptr %3, i32 %mul)
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @guid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %0 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr i32, ptr %1, i32 4
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %3, i32 noundef %5)
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @is_local_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %is_local = getelementptr i8, ptr %dev, i32 1040
  %0 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %is_local, align 8
  %bf.lshr = lshr i16 %bf.load, 15
  %bf.cast = zext i16 %bf.lshr to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %bf.cast)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @units_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #13
  %config_rom = getelementptr i8, ptr %dev, i32 1028
  %0 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config_rom, align 4
  %arrayidx = getelementptr i32, ptr %1, i32 5
  %add.ptr.i18 = getelementptr i32, ptr %1, i32 6
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %3, 16
  %add.ptr3.i = getelementptr i32, ptr %add.ptr.i18, i32 %shr.i
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %units_sprintf.exit.while.cond.outer_crit_edge, %entry
  %ci.sroa.0.0.ph = phi ptr [ %incdec.ptr.i, %units_sprintf.exit.while.cond.outer_crit_edge ], [ %add.ptr.i18, %entry ]
  %i.0.ph = phi i32 [ %add, %units_sprintf.exit.while.cond.outer_crit_edge ], [ 0, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.outer
  %ci.sroa.0.0 = phi ptr [ %incdec.ptr.i, %while.body.while.cond_crit_edge ], [ %ci.sroa.0.0.ph, %while.cond.outer ]
  %cmp.i.not = icmp ult ptr %ci.sroa.0.0, %add.ptr3.i
  br i1 %cmp.i.not, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr.i = getelementptr i32, ptr %ci.sroa.0.0, i32 1
  %4 = ptrtoint ptr %ci.sroa.0.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ci.sroa.0.0, align 4
  %shr.i19.mask = and i32 %5, -16777216
  %cmp.not = icmp eq i32 %shr.i19.mask, -788529152
  br i1 %cmp.not, label %if.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond

if.end:                                           ; preds = %while.body
  %and.i.le = and i32 %5, 16777215
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %i.0.ph
  %add.ptr3 = getelementptr i32, ptr %ci.sroa.0.0, i32 %and.i.le
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr3, i32 1
  %6 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr3, align 4
  %shr.i.i = lshr i32 %7, 16
  %add.ptr3.i.i = getelementptr i32, ptr %add.ptr.i.i, i32 %shr.i.i
  %cmp.i.not10.i = icmp ult ptr %add.ptr.i.i, %add.ptr3.i.i
  br i1 %cmp.i.not10.i, label %while.body.preheader.i, label %if.end.units_sprintf.exit_crit_edge

if.end.units_sprintf.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %units_sprintf.exit

while.body.preheader.i:                           ; preds = %if.end
  %incdec.ptr.i9.i = getelementptr i32, ptr %add.ptr3, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %sw.epilog.i.while.body.i_crit_edge, %while.body.preheader.i
  %incdec.ptr.i14.i = phi ptr [ %incdec.ptr.i.i, %sw.epilog.i.while.body.i_crit_edge ], [ %incdec.ptr.i9.i, %while.body.preheader.i ]
  %.in.i = phi ptr [ %incdec.ptr.i14.i, %sw.epilog.i.while.body.i_crit_edge ], [ %add.ptr.i.i, %while.body.preheader.i ]
  %version.012.i = phi i32 [ %version.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %specifier_id.011.i = phi i32 [ %specifier_id.1.i, %sw.epilog.i.while.body.i_crit_edge ], [ 0, %while.body.preheader.i ]
  %8 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %.in.i, align 4
  %and.i13.i = and i32 %9, 16777215
  %shr.i3.i = lshr i32 %9, 24
  %trunc.i = trunc i32 %shr.i3.i to i8
  %10 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %trunc.i, label %while.body.i.sw.epilog.i_crit_edge [
    i8 18, label %sw.bb.i
    i8 19, label %sw.bb1.i
  ]

while.body.i.sw.epilog.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i, %while.body.i.sw.epilog.i_crit_edge
  %specifier_id.1.i = phi i32 [ %specifier_id.011.i, %while.body.i.sw.epilog.i_crit_edge ], [ %specifier_id.011.i, %sw.bb1.i ], [ %and.i13.i, %sw.bb.i ]
  %version.1.i = phi i32 [ %version.012.i, %while.body.i.sw.epilog.i_crit_edge ], [ %and.i13.i, %sw.bb1.i ], [ %version.012.i, %sw.bb.i ]
  %incdec.ptr.i.i = getelementptr i32, ptr %incdec.ptr.i14.i, i32 1
  %cmp.i.not.i = icmp ult ptr %incdec.ptr.i14.i, %add.ptr3.i.i
  br i1 %cmp.i.not.i, label %sw.epilog.i.while.body.i_crit_edge, label %sw.epilog.i.units_sprintf.exit_crit_edge

sw.epilog.i.units_sprintf.exit_crit_edge:         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %units_sprintf.exit

sw.epilog.i.while.body.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

units_sprintf.exit:                               ; preds = %sw.epilog.i.units_sprintf.exit_crit_edge, %if.end.units_sprintf.exit_crit_edge
  %specifier_id.0.lcssa.i = phi i32 [ 0, %if.end.units_sprintf.exit_crit_edge ], [ %specifier_id.1.i, %sw.epilog.i.units_sprintf.exit_crit_edge ]
  %version.0.lcssa.i = phi i32 [ 0, %if.end.units_sprintf.exit_crit_edge ], [ %version.1.i, %sw.epilog.i.units_sprintf.exit_crit_edge ]
  %call2.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx2, ptr noundef nonnull @.str.35, i32 noundef %specifier_id.0.lcssa.i, i32 noundef %version.0.lcssa.i) #13
  %add = add i32 %call2.i, %i.0.ph
  %cmp5 = icmp ugt i32 %add, 4077
  br i1 %cmp5, label %while.end.thread, label %units_sprintf.exit.while.cond.outer_crit_edge

units_sprintf.exit.while.cond.outer_crit_edge:    ; preds = %units_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.outer

while.end.thread:                                 ; preds = %units_sprintf.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  br label %if.then9

while.end:                                        ; preds = %while.cond
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0.ph)
  %tobool8.not = icmp eq i32 %i.0.ph, 0
  br i1 %tobool8.not, label %while.end.if.end11_crit_edge, label %while.end.if.then9_crit_edge

while.end.if.then9_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then9

while.end.if.end11_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11

if.then9:                                         ; preds = %while.end.if.then9_crit_edge, %while.end.thread
  %i.126 = phi i32 [ %add, %while.end.thread ], [ %i.0.ph, %while.end.if.then9_crit_edge ]
  %sub = add i32 %i.126, -1
  %arrayidx10 = getelementptr i8, ptr %buf, i32 %sub
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 10, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %while.end.if.end11_crit_edge
  %i.127 = phi i32 [ %i.126, %if.then9 ], [ 0, %while.end.if.end11_crit_edge ]
  ret i32 %i.127
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  %id.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id.i) #13
  %0 = call ptr @memset(ptr %id.i, i32 0, i32 16)
  call fastcc void @get_modalias_ids(ptr noundef %dev, ptr noundef nonnull %id.i) #13
  %1 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id.i, align 4
  %arrayidx1.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx1.i, align 4
  %arrayidx2.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx3.i = getelementptr inbounds [4 x i32], ptr %id.i, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx3.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id.i) #13
  %add.ptr = getelementptr i8, ptr %buf, i32 %call.i
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 2560, ptr %add.ptr, align 1
  %add = add i32 %call.i, 1
  ret i32 %add
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rom_index_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %directory = getelementptr inbounds %struct.fw_unit, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %directory, align 8
  %config_rom = getelementptr i8, ptr %1, i32 1028
  %4 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config_rom, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.39, i32 noundef %sub.ptr.div)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shutdown_unit(ptr noundef %device, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_unregister(ptr noundef %device) #13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_device_cdev_update(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_unit(ptr noundef %dev, ptr nocapture noundef readnone %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver1, align 4
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp ne ptr %3, @fw_unit_type
  %cmp.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %land.lhs.true3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true3:                                   ; preds = %entry
  %update = getelementptr inbounds %struct.fw_driver, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %update, align 4
  %cmp4.not = icmp eq ptr %5, null
  br i1 %cmp4.not, label %land.lhs.true3.if.end_crit_edge, label %if.then

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #13
  %6 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %update, align 4
  tail call void %7(ptr noundef %dev) #13
  tail call void @mutex_unlock(ptr noundef %mutex.i) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_device_cdev_remove(ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !20, !21, !23, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109}
!llvm.module.flags = !{!111, !112, !113, !114, !115, !116, !117, !118}
!llvm.ident = !{!119}

!0 = !{ptr @__ksymtab_fw_csr_iterator_init, !1, !"__ksymtab_fw_csr_iterator_init", i1 false, i1 false}
!1 = !{!"../drivers/firewire/core-device.c", i32 39, i32 1}
!2 = !{ptr @__ksymtab_fw_csr_iterator_next, !3, !"__ksymtab_fw_csr_iterator_next", i1 false, i1 false}
!3 = !{!"../drivers/firewire/core-device.c", i32 48, i32 1}
!4 = !{ptr @__ksymtab_fw_csr_string, !5, !"__ksymtab_fw_csr_string", i1 false, i1 false}
!5 = !{!"../drivers/firewire/core-device.c", i32 118, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firewire/core-device.c", i32 223, i32 10}
!8 = !{ptr @fw_bus_type, !9, !"fw_bus_type", i1 false, i1 false}
!9 = !{!"../drivers/firewire/core-device.c", i32 222, i32 17}
!10 = !{ptr @__ksymtab_fw_bus_type, !11, !"__ksymtab_fw_bus_type", i1 false, i1 false}
!11 = !{!"../drivers/firewire/core-device.c", i32 228, i32 1}
!12 = !{ptr @__ksymtab_fw_device_enable_phys_dma, !13, !"__ksymtab_fw_device_enable_phys_dma", i1 false, i1 false}
!13 = !{!"../drivers/firewire/core-device.c", i32 241, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firewire/core-device.c", i32 746, i32 1}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @fw_device_rwsem, !15, !"fw_device_rwsem", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/firewire/core-device.c", i32 748, i32 1}
!20 = !{ptr @fw_device_idr, !19, !"fw_device_idr", i1 false, i1 false}
!21 = !{ptr @__ksymtab_fw_workqueue, !22, !"__ksymtab_fw_workqueue", i1 false, i1 false}
!22 = !{!"../drivers/firewire/core-device.c", i32 765, i32 1}
!23 = !{ptr @fw_node_event.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/firewire/core-device.c", i32 1236, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @fw_node_event.__key.5, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/firewire/core-device.c", i32 1253, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @fw_node_event.__key.7, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fw_cdev_major, !32, !"fw_cdev_major", i1 false, i1 false}
!32 = !{!"../drivers/firewire/core-device.c", i32 749, i32 5}
!33 = !{ptr @fw_workqueue, !34, !"fw_workqueue", i1 false, i1 false}
!34 = !{!"../drivers/firewire/core-device.c", i32 764, i32 26}
!35 = !{ptr @fw_unit_type, !36, !"fw_unit_type", i1 false, i1 false}
!36 = !{!"../drivers/firewire/core-device.c", i32 679, i32 27}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/firewire/core-device.c", i32 216, i32 26}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/firewire/core-device.c", i32 205, i32 4}
!41 = !{ptr @fw_device_type, !42, !"fw_device_type", i1 false, i1 false}
!42 = !{!"../drivers/firewire/core-device.c", i32 839, i32 27}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/firewire/core-device.c", i32 1006, i32 21}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/firewire/core-device.c", i32 1040, i32 32}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/firewire/core-device.c", i32 1050, i32 16}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/firewire/core-device.c", i32 1071, i32 19}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/firewire/core-device.c", i32 591, i32 7}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/firewire/core-device.c", i32 607, i32 17}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/firewire/core-device.c", i32 636, i32 12}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/firewire/core-device.c", i32 907, i32 19}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/firewire/core-device.c", i32 323, i32 2}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/firewire/core-device.c", i32 324, i32 2}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/firewire/core-device.c", i32 325, i32 2}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/firewire/core-device.c", i32 326, i32 2}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/firewire/core-device.c", i32 327, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/firewire/core-device.c", i32 328, i32 2}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/firewire/core-device.c", i32 329, i32 2}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/firewire/core-device.c", i32 330, i32 2}
!75 = !{ptr @config_rom_attributes, !76, !"config_rom_attributes", i1 false, i1 false}
!76 = !{!"../drivers/firewire/core-device.c", i32 322, i32 36}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/firewire/core-device.c", i32 268, i32 12}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/firewire/core-device.c", i32 310, i32 21}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/firewire/core-device.c", i32 468, i32 2}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/firewire/core-device.c", i32 469, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/firewire/core-device.c", i32 470, i32 2}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/firewire/core-device.c", i32 471, i32 2}
!89 = !{ptr @fw_device_attributes, !90, !"fw_device_attributes", i1 false, i1 false}
!90 = !{!"../drivers/firewire/core-device.c", i32 467, i32 32}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/firewire/core-device.c", i32 406, i32 33}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/firewire/core-device.c", i32 418, i32 22}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/firewire/core-device.c", i32 440, i32 22}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/firewire/core-device.c", i32 713, i32 31}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/firewire/core-device.c", i32 380, i32 2}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/firewire/core-device.c", i32 381, i32 2}
!103 = !{ptr @fw_unit_attributes, !104, !"fw_unit_attributes", i1 false, i1 false}
!104 = !{!"../drivers/firewire/core-device.c", i32 379, i32 32}
!105 = !{ptr @.str.39, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/firewire/core-device.c", i32 375, i32 34}
!107 = !{ptr @.str.40, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/firewire/core-device.c", i32 1173, i32 18}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/firewire/core-device.c", i32 1185, i32 18}
!111 = !{i32 1, !"wchar_size", i32 2}
!112 = !{i32 1, !"min_enum_size", i32 4}
!113 = !{i32 8, !"branch-target-enforcement", i32 0}
!114 = !{i32 8, !"sign-return-address", i32 0}
!115 = !{i32 8, !"sign-return-address-all", i32 0}
!116 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!117 = !{i32 7, !"uwtable", i32 1}
!118 = !{i32 7, !"frame-pointer", i32 2}
!119 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!120 = !{i64 2153978957}
!121 = !{!"auto-init"}
!122 = !{i8 0, i8 2}
!123 = !{i64 2148359304, i64 2148359336, i64 2148359365, i64 2148359399, i64 2148359430, i64 2148359453}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{!"branch_weights", i32 2000, i32 1}
!126 = !{i64 2154028185}
!127 = !{i64 2148459597}
!128 = !{i64 843287, i64 843311, i64 843332, i64 843349, i64 843366}
!129 = !{i64 2148459823}
!130 = !{i64 2154028376}
!131 = !{i64 2148617614}
!132 = !{i64 864542, i64 864559, i64 864583, i64 864609, i64 864627}
!133 = !{i64 2148617984}
!134 = !{i64 2153999565}
!135 = !{i64 2148447305}
!136 = !{i64 2148361769, i64 2148361801, i64 2148361830, i64 2148361864, i64 2148361895, i64 2148361918}
!137 = !{i64 2149592410}
!138 = !{i64 2154015423}
