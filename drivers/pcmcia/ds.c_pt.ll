; ModuleID = '/llk/IR_all_yes/drivers/pcmcia/ds.c_pt.bc'
source_filename = "../drivers/pcmcia/ds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pcmcia_register_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_register_driver\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_register_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_register_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_register_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcmcia_unregister_driver\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_unregister_driver\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_unregister_driver\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_unregister_driver\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_unregister_driver:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pcmcia_dev_present\22, \22a\22\09"
module asm "\09.weak\09__crc_pcmcia_dev_present\09\09\09\09"
module asm "\09.long\09__crc_pcmcia_dev_present\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcmcia_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22pcmcia_dev_present\22\09\09\09\09\09"
module asm "__kstrtabns_pcmcia_dev_present:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class_interface = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.driver_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
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
%struct.pcmcia_socket = type { ptr, %struct.socket_state_t, i32, i32, i16, i16, %struct.pccard_mem_map, ptr, [2 x %struct.io_window_t], [4 x %struct.pccard_mem_map], %struct.list_head, i32, ptr, %struct.list_head, %struct.completion, i32, i32, i32, i32, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.completion, i32, i32, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, %struct.list_head, i8, i8, %struct.atomic_t, i32, %struct.device, ptr, i32 }
%struct.socket_state_t = type { i32, i32, i8, i8, i8 }
%struct.pccard_mem_map = type { i8, i8, i16, i32, i32, ptr }
%struct.io_window_t = type { i32, i32, ptr }
%struct.pcmcia_dynid = type { %struct.list_head, %struct.pcmcia_device_id }
%struct.cistpl_config_t = type { i8, i32, [4 x i32], i8 }
%struct.cistpl_longlink_mfc_t = type { i8, [8 x %struct.anon.73] }
%struct.anon.73 = type { i8, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.cistpl_manfid_t = type { i16, i16 }
%struct.cistpl_funcid_t = type { i8, i8 }
%struct.cistpl_vers_1_t = type { i8, i8, i8, [4 x i8], [254 x i8] }
%struct.config_t = type { %struct.kref, i32, [2 x %struct.resource], [4 x %struct.resource] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__UNIQUE_ID_author236 = internal constant [58 x i8] c"pcmcia.author=David Hinds <dahinds@users.sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description237 = internal constant [42 x i8] c"pcmcia.description=PCMCIA Driver Services\00", section ".modinfo", align 1
@__UNIQUE_ID_file238 = internal constant [34 x i8] c"pcmcia.file=drivers/pcmcia/pcmcia\00", section ".modinfo", align 1
@__UNIQUE_ID_license239 = internal constant [19 x i8] c"pcmcia.license=GPL\00", section ".modinfo", align 1
@pcmcia_bus_type = dso_local global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr null, ptr @pcmcia_dev_groups, ptr null, ptr @pcmcia_bus_match, ptr @pcmcia_bus_uevent, ptr @pcmcia_device_probe, ptr null, ptr @pcmcia_device_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pcmcia_bus_pm_ops, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@pcmcia_register_driver.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&driver->dynids.lock\00", [43 x i8] zeroinitializer }, align 32
@pcmcia_register_driver.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pcmcia\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcmcia_register_driver\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drivers/pcmcia/ds.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"registering driver %s\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_pcmcia_register_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_register_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_register_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_register_driver to i32), ptr @__kstrtab_pcmcia_register_driver, ptr @__kstrtabns_pcmcia_register_driver }, section "___ksymtab+pcmcia_register_driver", align 4
@pcmcia_unregister_driver.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.6, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pcmcia_unregister_driver\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unregistering driver %s\0A\00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_pcmcia_unregister_driver = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_unregister_driver = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_unregister_driver = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_unregister_driver to i32), ptr @__kstrtab_pcmcia_unregister_driver, ptr @__kstrtabns_pcmcia_unregister_driver }, section "___ksymtab+pcmcia_unregister_driver", align 4
@__kstrtab_pcmcia_dev_present = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcmcia_dev_present = external dso_local constant [0 x i8], align 1
@__ksymtab_pcmcia_dev_present = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcmcia_dev_present to i32), ptr @__kstrtab_pcmcia_dev_present, ptr @__kstrtabns_pcmcia_dev_present }, section "___ksymtab+pcmcia_dev_present", align 4
@pcmcia_dev_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @pcmcia_dev_group, ptr null], [24 x i8] zeroinitializer }, align 32
@pcmcia_bus_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pcmcia_dev_suspend, ptr @pcmcia_dev_resume, ptr @pcmcia_dev_suspend, ptr @pcmcia_dev_resume, ptr @pcmcia_dev_suspend, ptr @pcmcia_dev_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_pcmcia__277_1437_init_pcmcia_bus5 = internal global ptr @init_pcmcia_bus, section ".initcall5.init", align 4
@pcmcia_bus_interface = internal global %struct.class_interface { %struct.list_head zeroinitializer, ptr @pcmcia_socket_class, ptr @pcmcia_bus_add_socket, ptr @pcmcia_bus_remove_socket }, section ".ref.data", align 4
@__exitcall_exit_pcmcia_bus = internal global ptr @exit_pcmcia_bus, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias278 = internal constant [16 x i8] c"pcmcia.alias=ds\00", section ".modinfo", align 1
@pcmcia_check_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017pcmcia: %s lacks a requisite callback function\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_check_driver\00", [44 x i8] zeroinitializer }, align 32
@pcmcia_check_driver._entry_ptr = internal global ptr @pcmcia_check_driver._entry, section ".printk_index", align 4
@pcmcia_check_driver._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017pcmcia: %s: invalid hash for product string \22%s\22: is 0x%x, should be 0x%x\0A\00", [51 x i8] zeroinitializer }, align 32
@pcmcia_check_driver._entry_ptr.11 = internal global ptr @pcmcia_check_driver._entry.9, section ".printk_index", align 4
@pcmcia_check_driver._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\017pcmcia: see Documentation/pcmcia/devicetable.rst for details\0A\00", [32 x i8] zeroinitializer }, align 32
@pcmcia_check_driver._entry_ptr.14 = internal global ptr @pcmcia_check_driver._entry.12, section ".printk_index", align 4
@driver_attr_new_id = internal global { %struct.driver_attribute, [36 x i8] } { %struct.driver_attribute { %struct.attribute { ptr @.str.15, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @new_id_store }, [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"new_id\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%hx %hx %hx %hhx %hhx %hhx %x %x %x %x\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@pcmcia_dev_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pcmcia_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pcmcia_dev_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @dev_attr_resources, ptr @dev_attr_pm_state, ptr @dev_attr_function, ptr @dev_attr_func_id, ptr @dev_attr_manf_id, ptr @dev_attr_card_id, ptr @dev_attr_prod_id1, ptr @dev_attr_prod_id2, ptr @dev_attr_prod_id3, ptr @dev_attr_prod_id4, ptr @dev_attr_modalias, ptr @dev_attr_allow_func_id_match, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_resources = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @resources_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_pm_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pm_state_show, ptr @pm_state_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_function = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @function_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_func_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @func_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_manf_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manf_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_card_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @card_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prod_id1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @prod_id1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prod_id2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @prod_id2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prod_id3 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @prod_id3_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_prod_id4 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @prod_id4_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_allow_func_id_match = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @allow_func_id_match_store }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resources\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pr\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pm_state\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"on\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@pcmcia_dev_suspend.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 1, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_dev_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"suspending\0A\00", [20 x i8] zeroinitializer }, align 32
@pcmcia_dev_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 1155, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"pcmcia: device %s (driver %s) did not want to go to sleep (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pcmcia_dev_suspend._entry_ptr = internal global ptr @pcmcia_dev_suspend._entry, section ".printk_index", align 4
@pcmcia_dev_suspend.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.29, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"releasing configuration\0A\00", [39 x i8] zeroinitializer }, align 32
@pcmcia_dev_resume.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 1, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmcia_dev_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"resuming\0A\00", [22 x i8] zeroinitializer }, align 32
@pcmcia_dev_resume.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.30, ptr @.str.3, ptr @.str.32, i8 1, i8 43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"requesting configuration\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"func_id\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"manf_id\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"card_id\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prod_id1\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prod_id2\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prod_id3\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prod_id4\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"pcmcia:m%04Xc%04Xf%02Xfn%02Xpfn%02Xpa%08Xpb%08Xpc%08Xpd%08X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"allow_func_id_match\00", [44 x i8] zeroinitializer }, align 32
@pcmcia_bus_match.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcmcia_bus_match\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"trying to match to %s\0A\00", [41 x i8] zeroinitializer }, align 32
@pcmcia_bus_match.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"matched to %s\0A\00", [17 x i8] zeroinitializer }, align 32
@pcmcia_bus_match.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 -27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pcmcia_bus_match.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.47, ptr @.str.3, ptr @.str.49, i8 0, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@pcmcia_devmatch.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -46, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcmcia_devmatch\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"this is a pseudo-multi-function device\0A\00", [56 x i8] zeroinitializer }, align 32
@pcmcia_devmatch.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 -38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"skipping FUNC_ID match until userspace ACK\0A\00", [52 x i8] zeroinitializer }, align 32
@pcmcia_devmatch.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device needs a fake CIS\0A\00", [39 x i8] zeroinitializer }, align 32
@pcmcia_load_firmware.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 -69, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmcia_load_firmware\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"trying to load CIS file %s\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmcia_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 753, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pcmcia: CIS override is too big\0A\00", [63 x i8] zeroinitializer }, align 32
@pcmcia_load_firmware._entry_ptr = internal global ptr @pcmcia_load_firmware._entry, section ".printk_index", align 4
@pcmcia_load_firmware._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.54, ptr @.str.3, i32 760, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pcmcia: CIS override failed\0A\00", [35 x i8] zeroinitializer }, align 32
@pcmcia_load_firmware._entry_ptr.59 = internal global ptr @pcmcia_load_firmware._entry.57, section ".printk_index", align 4
@pcmcia_device_query.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_device_query\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mem device geometry probably means FUNCID_MEMORY\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SOCKET_NO=%u\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DEVICE_NO=%02X\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"MODALIAS=pcmcia:m%04Xc%04Xf%02Xfn%02Xpfn%02Xpa%08Xpb%08Xpc%08Xpd%08X\00", [59 x i8] zeroinitializer }, align 32
@pcmcia_device_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcmcia_device_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"trying to bind to %s\0A\00", [42 x i8] zeroinitializer }, align 32
@pcmcia_device_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"base %x, regs %x\00", [47 x i8] zeroinitializer }, align 32
@pcmcia_device_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.3, i32 285, ptr @.str.69, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pcmcia: could not parse base and rmask0 of CIS\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pcmcia_device_probe._entry_ptr = internal global ptr @pcmcia_device_probe._entry, section ".printk_index", align 4
@pcmcia_device_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.70, i8 0, i8 73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"binding to %s failed with %d\0A\00", [34 x i8] zeroinitializer }, align 32
@pcmcia_device_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.71, i8 0, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s bound: Vpp %d.%d, idx %x, IRQ %d\00", [60 x i8] zeroinitializer }, align 32
@pcmcia_device_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.65, ptr @.str.3, ptr @.str.72, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"resources: ioport %pR %pR iomem %pR %pR %pR\00", [52 x i8] zeroinitializer }, align 32
@pcmcia_device_remove.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcmcia_device_remove\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"removing device\0A\00", [47 x i8] zeroinitializer }, align 32
@pcmcia_device_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 381, ptr @.str.69, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pcmcia: driver %s did not release config properly\0A\00", [45 x i8] zeroinitializer }, align 32
@pcmcia_device_remove._entry_ptr = internal global ptr @pcmcia_device_remove._entry, section ".printk_index", align 4
@pcmcia_device_remove._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.73, ptr @.str.3, i32 387, ptr @.str.69, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"pcmcia: driver %s did not release window properly\0A\00", [45 x i8] zeroinitializer }, align 32
@pcmcia_device_remove._entry_ptr.78 = internal global ptr @pcmcia_device_remove._entry.76, section ".printk_index", align 4
@pcmcia_card_remove.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_card_remove\00", [45 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcmcia_card_remove(%d) %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pcmcia_card_remove.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.79, ptr @.str.3, ptr @.str.82, i8 0, i8 86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unregistering device\0A\00", [42 x i8] zeroinitializer }, align 32
@init_pcmcia_bus._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014pcmcia: bus_register error: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init_pcmcia_bus\00", [16 x i8] zeroinitializer }, align 32
@init_pcmcia_bus._entry_ptr = internal global ptr @init_pcmcia_bus._entry, section ".printk_index", align 4
@init_pcmcia_bus._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.3, i32 1430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014pcmcia: class_interface_register error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_pcmcia_bus._entry_ptr.87 = internal global ptr @init_pcmcia_bus._entry.85, section ".printk_index", align 4
@pcmcia_socket_class = external dso_local global %struct.class, align 4
@pcmcia_bus_add_socket._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1346, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"PCMCIA obtaining reference to socket failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pcmcia_bus_add_socket\00", [42 x i8] zeroinitializer }, align 32
@pcmcia_bus_add_socket._entry_ptr = internal global ptr @pcmcia_bus_add_socket._entry, section ".printk_index", align 4
@pccard_cis_attr = external dso_local constant %struct.bin_attribute, align 4
@pcmcia_bus_add_socket._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1352, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCMCIA registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@pcmcia_bus_add_socket._entry_ptr.92 = internal global ptr @pcmcia_bus_add_socket._entry.90, section ".printk_index", align 4
@pcmcia_bus_callback = internal global { %struct.pcmcia_callback, [32 x i8] } { %struct.pcmcia_callback { ptr null, ptr @pcmcia_bus_add, ptr @pcmcia_bus_remove, ptr @pcmcia_requery, ptr @pccard_validate_cis, ptr @pcmcia_bus_suspend, ptr @pcmcia_bus_early_resume, ptr @pcmcia_bus_resume }, [32 x i8] zeroinitializer }, align 32
@pcmcia_bus_add_socket._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1364, ptr @.str.27, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@pcmcia_bus_add_socket._entry_ptr.94 = internal global ptr @pcmcia_bus_add_socket._entry.93, section ".printk_index", align 4
@pcmcia_card_add.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.95, ptr @.str.3, ptr @.str.96, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pcmcia_card_add\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"no resources available, delaying card_add\0A\00", [53 x i8] zeroinitializer }, align 32
@pcmcia_card_add.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.95, ptr @.str.3, ptr @.str.97, i8 0, i8 -102, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"validating mem resources failed, delaying card_add\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmcia_card_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.95, ptr @.str.3, i32 634, ptr @.str.69, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"no CIS, assuming an anonymous memory card.\0A\00", [52 x i8] zeroinitializer }, align 32
@pcmcia_card_add._entry_ptr = internal global ptr @pcmcia_card_add._entry, section ".printk_index", align 4
@.str.99 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\00", [30 x i8] zeroinitializer }, align 32
@pcmcia_card_add.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.95, ptr @.str.3, ptr @.str.100, i8 0, i8 -96, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"invalid CIS or invalid resources\0A\00", [62 x i8] zeroinitializer }, align 32
@pcmcia_device_add.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.102, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmcia_device_add\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"adding device to %d, function %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d.%d\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcmcia%s\00", [23 x i8] zeroinitializer }, align 32
@pcmcia_device_add.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.105, i8 0, i8 -126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"devname is %s\0A\00", [17 x i8] zeroinitializer }, align 32
@pcmcia_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.3, i32 543, ptr @.str.107, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IRQ setup failed -- device might not work\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@pcmcia_device_add._entry_ptr = internal global ptr @pcmcia_device_add._entry, section ".printk_index", align 4
@pcmcia_device_add.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.101, ptr @.str.3, ptr @.str.108, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"creating config_t\0A\00", [45 x i8] zeroinitializer }, align 32
@pcmcia_device_add._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.101, ptr @.str.3, i32 572, ptr @.str.111, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"pcmcia: registering new device %s (IRQ: %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@pcmcia_device_add._entry_ptr.112 = internal global ptr @pcmcia_device_add._entry.109, section ".printk_index", align 4
@pcmcia_release_dev.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.113, ptr @.str.3, ptr @.str.114, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_release_dev\00", [45 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"releasing device\0A\00", [46 x i8] zeroinitializer }, align 32
@pcmcia_release_function.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmcia_release_function\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"releasing config_t\0A\00", [44 x i8] zeroinitializer }, align 32
@pcmcia_requery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.3, i32 722, ptr @.str.107, ptr @.str.28 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rescanning the bus failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pcmcia_requery\00", [17 x i8] zeroinitializer }, align 32
@pcmcia_requery._entry_ptr = internal global ptr @pcmcia_requery._entry, section ".printk_index", align 4
@pcmcia_requery_callback.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.119, ptr @.str.3, ptr @.str.120, i8 0, i8 -91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmcia_requery_callback\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"update device information\0A\00", [37 x i8] zeroinitializer }, align 32
@pcmcia_bus_suspend.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.121, ptr @.str.3, ptr @.str.122, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pcmcia_bus_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"suspending socket %d\0A\00", [42 x i8] zeroinitializer }, align 32
@pcmcia_bus_early_resume.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.123, ptr @.str.3, ptr @.str.124, i8 1, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pcmcia_bus_early_resume\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cis mismatch - different card\0A\00", [33 x i8] zeroinitializer }, align 32
@pcmcia_bus_resume.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.125, ptr @.str.3, ptr @.str.126, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcmcia_bus_resume\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"resuming socket %d\0A\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"pcmcia_bus_type\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1407, i32 17 }
@___asan_gen_.130 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 182, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 185, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 205, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"pcmcia_dev_groups\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"pcmcia_bus_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1403, i32 32 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 50, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 62, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 66, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"driver_attr_new_id\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 133, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 105, i32 23 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"pcmcia_dev_group\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1124, i32 1 }
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"pcmcia_dev_attrs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1109, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant [19 x i8] c"dev_attr_resources\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"dev_attr_pm_state\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"dev_attr_function\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"dev_attr_func_id\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"dev_attr_manf_id\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"dev_attr_card_id\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [18 x i8] c"dev_attr_prod_id1\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [18 x i8] c"dev_attr_prod_id2\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"dev_attr_prod_id3\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"dev_attr_prod_id4\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"dev_attr_allow_func_id_match\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1040, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1036, i32 32 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1068, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1047, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1049, i32 26 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1061, i32 43 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1063, i32 45 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1142, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1153, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1164, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1187, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1196, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1027, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1025, i32 41 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1013, i32 1 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1014, i32 1 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1015, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1016, i32 1 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1017, i32 1 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1018, i32 1 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1019, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1090, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1083, i32 25 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1107, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 909, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 911, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 843, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 873, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 880, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 748, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 753, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 760, i32 4 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 438, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 948, i32 26 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 951, i32 26 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 954, i32 26 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 267, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 281, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 284, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 292, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 296, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 298, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 362, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 379, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 385, i32 4 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 326, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 346, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1424, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1429, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1346, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1352, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c"pcmcia_bus_callback\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1327, i32 31 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1364, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 610, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 617, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 634, i32 4 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 635, i32 26 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 641, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 489, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 516, i32 28 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 519, i32 41 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 522, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 542, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 547, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 571, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 241, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 233, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 722, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 663, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1243, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1284, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.572 = private constant [23 x i8] c"../drivers/pcmcia/ds.c\00", align 1
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.572, i32 1236, i32 2 }
@llvm.compiler.used = appending global [178 x ptr] [ptr @__UNIQUE_ID_alias278, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description237, ptr @__UNIQUE_ID_file238, ptr @__UNIQUE_ID_license239, ptr @__exitcall_exit_pcmcia_bus, ptr @__initcall__kmod_pcmcia__277_1437_init_pcmcia_bus5, ptr @__ksymtab_pcmcia_dev_present, ptr @__ksymtab_pcmcia_register_driver, ptr @__ksymtab_pcmcia_unregister_driver, ptr @exit_pcmcia_bus, ptr @init_pcmcia_bus._entry, ptr @init_pcmcia_bus._entry.85, ptr @init_pcmcia_bus._entry_ptr, ptr @init_pcmcia_bus._entry_ptr.87, ptr @pcmcia_bus_add_socket._entry, ptr @pcmcia_bus_add_socket._entry.90, ptr @pcmcia_bus_add_socket._entry.93, ptr @pcmcia_bus_add_socket._entry_ptr, ptr @pcmcia_bus_add_socket._entry_ptr.92, ptr @pcmcia_bus_add_socket._entry_ptr.94, ptr @pcmcia_card_add._entry, ptr @pcmcia_card_add._entry_ptr, ptr @pcmcia_check_driver._entry, ptr @pcmcia_check_driver._entry.12, ptr @pcmcia_check_driver._entry.9, ptr @pcmcia_check_driver._entry_ptr, ptr @pcmcia_check_driver._entry_ptr.11, ptr @pcmcia_check_driver._entry_ptr.14, ptr @pcmcia_dev_suspend._entry, ptr @pcmcia_dev_suspend._entry_ptr, ptr @pcmcia_device_add._entry, ptr @pcmcia_device_add._entry.109, ptr @pcmcia_device_add._entry_ptr, ptr @pcmcia_device_add._entry_ptr.112, ptr @pcmcia_device_probe._entry, ptr @pcmcia_device_probe._entry_ptr, ptr @pcmcia_device_remove._entry, ptr @pcmcia_device_remove._entry.76, ptr @pcmcia_device_remove._entry_ptr, ptr @pcmcia_device_remove._entry_ptr.78, ptr @pcmcia_load_firmware._entry, ptr @pcmcia_load_firmware._entry.57, ptr @pcmcia_load_firmware._entry_ptr, ptr @pcmcia_load_firmware._entry_ptr.59, ptr @pcmcia_requery._entry, ptr @pcmcia_requery._entry_ptr, ptr @pcmcia_bus_type, ptr @pcmcia_register_driver.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pcmcia_dev_groups, ptr @pcmcia_bus_pm_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @driver_attr_new_id, ptr @.str.15, ptr @.str.16, ptr @pcmcia_dev_group, ptr @pcmcia_dev_attrs, ptr @dev_attr_resources, ptr @dev_attr_pm_state, ptr @dev_attr_function, ptr @dev_attr_func_id, ptr @dev_attr_manf_id, ptr @dev_attr_card_id, ptr @dev_attr_prod_id1, ptr @dev_attr_prod_id2, ptr @dev_attr_prod_id3, ptr @dev_attr_prod_id4, ptr @dev_attr_modalias, ptr @dev_attr_allow_func_id_match, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @pcmcia_bus_callback, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126], section "llvm.metadata"
@0 = internal global [149 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_register_driver.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_dev_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_check_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_check_driver._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_check_driver._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_attr_new_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_dev_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_dev_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_resources to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pm_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_function to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_func_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manf_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_card_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prod_id1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prod_id2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prod_id3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_prod_id4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_allow_func_id_match to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_dev_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_load_firmware._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_device_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_device_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_device_remove._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pcmcia_bus._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_pcmcia_bus._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_add_socket._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_add_socket._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_callback to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_bus_add_socket._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_card_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_device_add._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcmcia_requery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcmcia_register_driver(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %driver, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %id_table.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 6
  %0 = ptrtoint ptr %id_table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table.i, align 4
  %probe.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 1
  %2 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %probe.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end
  %remove.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 2
  %4 = ptrtoint ptr %remove.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %remove.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %7) #15
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %lor.lhs.false.i.if.end.i_crit_edge
  %tobool2.not57.i = icmp eq ptr %1, null
  br i1 %tobool2.not57.i, label %if.end.i.pcmcia_check_driver.exit_crit_edge, label %if.end.i.land.rhs.i_crit_edge

if.end.i.land.rhs.i_crit_edge:                    ; preds = %if.end.i
  br label %land.rhs.i

if.end.i.pcmcia_check_driver.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_check_driver.exit

land.rhs.i:                                       ; preds = %for.inc.3.i.land.rhs.i_crit_edge, %if.end.i.land.rhs.i_crit_edge
  %did.058.i = phi ptr [ %incdec.ptr.i, %for.inc.3.i.land.rhs.i_crit_edge ], [ %1, %if.end.i.land.rhs.i_crit_edge ]
  %8 = ptrtoint ptr %did.058.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %did.058.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not.i = icmp eq i16 %9, 0
  br i1 %tobool3.not.i, label %land.rhs.i.pcmcia_check_driver.exit_crit_edge, label %for.body.preheader.i

land.rhs.i.pcmcia_check_driver.exit_crit_edge:    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_check_driver.exit

for.body.preheader.i:                             ; preds = %land.rhs.i
  %arrayidx.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %if.end7.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body.preheader.i
  %call12.i = tail call i32 @strlen(ptr noundef nonnull %11) #16
  %call13.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %11, i32 noundef %call12.i) #17
  %arrayidx14.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %13)
  %cmp15.i = icmp eq i32 %call13.i, %13
  br i1 %cmp15.i, label %if.end7.i.for.inc.i_crit_edge, label %do.end21.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

do.end21.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver, align 4
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %15, ptr noundef nonnull %11, i32 noundef %13, i32 noundef %call13.i) #15
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end21.i, %if.end7.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool5.not.1.i = icmp eq ptr %17, null
  br i1 %tobool5.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end7.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

if.end7.1.i:                                      ; preds = %for.inc.i
  %call12.1.i = tail call i32 @strlen(ptr noundef nonnull %17) #16
  %call13.1.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %17, i32 noundef %call12.1.i) #17
  %arrayidx14.1.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx14.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.1.i, i32 %19)
  %cmp15.1.i = icmp eq i32 %call13.1.i, %19
  br i1 %cmp15.1.i, label %if.end7.1.i.for.inc.1.i_crit_edge, label %do.end21.1.i

if.end7.1.i.for.inc.1.i_crit_edge:                ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1.i

do.end21.1.i:                                     ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver, align 4
  %call28.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %21, ptr noundef nonnull %17, i32 noundef %19, i32 noundef %call13.1.i) #15
  %call33.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.end21.1.i, %if.end7.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 7, i32 2
  %22 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool5.not.2.i = icmp eq ptr %23, null
  br i1 %tobool5.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end7.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

if.end7.2.i:                                      ; preds = %for.inc.1.i
  %call12.2.i = tail call i32 @strlen(ptr noundef nonnull %23) #16
  %call13.2.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %23, i32 noundef %call12.2.i) #17
  %arrayidx14.2.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx14.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.2.i, i32 %25)
  %cmp15.2.i = icmp eq i32 %call13.2.i, %25
  br i1 %cmp15.2.i, label %if.end7.2.i.for.inc.2.i_crit_edge, label %do.end21.2.i

if.end7.2.i.for.inc.2.i_crit_edge:                ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2.i

do.end21.2.i:                                     ; preds = %if.end7.2.i
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver, align 4
  %call28.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %27, ptr noundef nonnull %23, i32 noundef %25, i32 noundef %call13.2.i) #15
  %call33.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %do.end21.2.i, %if.end7.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool5.not.3.i = icmp eq ptr %29, null
  br i1 %tobool5.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end7.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

if.end7.3.i:                                      ; preds = %for.inc.2.i
  %call12.3.i = tail call i32 @strlen(ptr noundef nonnull %29) #16
  %call13.3.i = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %29, i32 noundef %call12.3.i) #17
  %arrayidx14.3.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx14.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.3.i, i32 %31)
  %cmp15.3.i = icmp eq i32 %call13.3.i, %31
  br i1 %cmp15.3.i, label %if.end7.3.i.for.inc.3.i_crit_edge, label %do.end21.3.i

if.end7.3.i.for.inc.3.i_crit_edge:                ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3.i

do.end21.3.i:                                     ; preds = %if.end7.3.i
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %driver, align 4
  %call28.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %33, ptr noundef nonnull %29, i32 noundef %31, i32 noundef %call13.3.i) #15
  %call33.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #15
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %do.end21.3.i, %if.end7.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.pcmcia_device_id, ptr %did.058.i, i32 1
  %tobool2.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool2.not.i, label %for.inc.3.i.pcmcia_check_driver.exit_crit_edge, label %for.inc.3.i.land.rhs.i_crit_edge

for.inc.3.i.land.rhs.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs.i

for.inc.3.i.pcmcia_check_driver.exit_crit_edge:   ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_check_driver.exit

pcmcia_check_driver.exit:                         ; preds = %for.inc.3.i.pcmcia_check_driver.exit_crit_edge, %land.rhs.i.pcmcia_check_driver.exit_crit_edge, %if.end.i.pcmcia_check_driver.exit_crit_edge
  %drv = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 7
  %bus = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @pcmcia_bus_type, ptr %bus, align 4
  %owner = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 5
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %owner, align 4
  %owner2 = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 7, i32 2
  %37 = ptrtoint ptr %owner2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %owner2, align 4
  %38 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver, align 4
  %40 = ptrtoint ptr %drv to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %drv, align 4
  %dynids = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %dynids, ptr noundef nonnull @.str, ptr noundef nonnull @pcmcia_register_driver.__key) #12
  %list = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 8, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %list, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_register_driver.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_register_driver, %if.then10)) #12
          to label %do.end14 [label %if.then10], !srcloc !318

if.then10:                                        ; preds = %pcmcia_check_driver.exit
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_register_driver.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.4, ptr noundef %44) #12
  br label %do.end14

do.end14:                                         ; preds = %if.then10, %pcmcia_check_driver.exit
  %call16 = tail call i32 @driver_register(ptr noundef %drv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end14.cleanup_crit_edge, label %if.end18

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end18:                                         ; preds = %do.end14
  %45 = ptrtoint ptr %probe.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %probe.i, align 4
  %cmp.not.i = icmp eq ptr %46, null
  br i1 %cmp.not.i, label %if.end18.cleanup_crit_edge, label %pcmcia_create_newid_file.exit

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pcmcia_create_newid_file.exit:                    ; preds = %if.end18
  %call.i40 = tail call i32 @driver_create_file(ptr noundef %drv, ptr noundef nonnull @driver_attr_new_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool20.not = icmp eq i32 %call.i40, 0
  br i1 %tobool20.not, label %pcmcia_create_newid_file.exit.cleanup_crit_edge, label %if.then21

pcmcia_create_newid_file.exit.cleanup_crit_edge:  ; preds = %pcmcia_create_newid_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %pcmcia_create_newid_file.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @driver_unregister(ptr noundef %drv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %pcmcia_create_newid_file.exit.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call16, %do.end14.cleanup_crit_edge ], [ %call.i40, %if.then21 ], [ 0, %pcmcia_create_newid_file.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pcmcia_unregister_driver(ptr noundef %driver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_unregister_driver.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_unregister_driver, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_unregister_driver.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.6, ptr noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %drv1.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 7
  tail call void @driver_remove_file(ptr noundef %drv1.i, ptr noundef nonnull @driver_attr_new_id) #12
  tail call void @driver_unregister(ptr noundef %drv1.i) #12
  %dynids.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %dynids.i, i32 noundef 0) #12
  %list.i = getelementptr inbounds %struct.pcmcia_driver, ptr %driver, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list.i, align 4
  %cmp.not24.i = icmp eq ptr %3, %list.i
  br i1 %cmp.not24.i, label %do.end.pcmcia_free_dynids.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.pcmcia_free_dynids.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_free_dynids.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %dynid.025.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %3, %do.end.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0.i = load ptr, ptr %dynid.025.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dynid.025.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %dynid.025.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i.i, align 4
  %7 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dynid.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %11 = ptrtoint ptr %dynid.025.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %dynid.025.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %dynid.025.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %dynid.025.i) #12
  %cmp.not.i = icmp eq ptr %n.0.i, %list.i
  br i1 %cmp.not.i, label %list_del.exit.i.pcmcia_free_dynids.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

list_del.exit.i.pcmcia_free_dynids.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_free_dynids.exit

pcmcia_free_dynids.exit:                          ; preds = %list_del.exit.i.pcmcia_free_dynids.exit_crit_edge, %do.end.pcmcia_free_dynids.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %dynids.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcmcia_dev_present(ptr noundef %_p_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %_p_dev, i32 0, i32 21
  %call.i = tail call ptr @get_device(ptr noundef %dev.i) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 -112
  %tobool.not10 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %tobool.not.i, %tobool.not10
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %pcmcia_put_dev.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

pcmcia_put_dev.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %present = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %present, i32 noundef 4) #12
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr.i
  tail call void @put_device(ptr noundef nonnull %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %pcmcia_put_dev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %spec.select, %pcmcia_put_dev.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_match(ptr noundef %dev, ptr noundef %drv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %id_table = getelementptr i8, ptr %drv, i32 -4
  %0 = ptrtoint ptr %id_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_table, align 4
  %dynids = getelementptr i8, ptr %drv, i32 76
  tail call void @mutex_lock_nested(ptr noundef %dynids, i32 noundef 0) #12
  %list = getelementptr i8, ptr %drv, i32 168
  br label %for.cond

for.cond:                                         ; preds = %do.end.for.cond_crit_edge, %entry
  %dynid.0.in = phi ptr [ %list, %entry ], [ %dynid.0, %do.end.for.cond_crit_edge ]
  %2 = ptrtoint ptr %dynid.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %dynid.0 = load ptr, ptr %dynid.0.in, align 4
  %cmp.not = icmp eq ptr %dynid.0, %list
  br i1 %cmp.not, label %for.end, label %do.body

do.body:                                          ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_match, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_match.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %id = getelementptr inbounds %struct.pcmcia_dynid, ptr %dynid.0, i32 0, i32 1
  %call14 = tail call fastcc i32 @pcmcia_devmatch(ptr noundef %add.ptr, ptr noundef %id)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end.for.cond_crit_edge, label %do.body17

do.end.for.cond_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond

do.body17:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_match, %if.then29)) #12
          to label %do.end33 [label %if.then29], !srcloc !318

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_match.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef %6) #12
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body17
  tail call void @mutex_unlock(ptr noundef %dynids) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @mutex_unlock(ptr noundef %dynids) #12
  %tobool44.not119 = icmp eq ptr %1, null
  br i1 %tobool44.not119, label %for.end.cleanup_crit_edge, label %for.end.land.rhs_crit_edge

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  br label %land.rhs

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.cond:                                       ; preds = %do.end62
  %incdec.ptr = getelementptr %struct.pcmcia_device_id, ptr %did.0120, i32 1
  %tobool44.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool44.not, label %while.cond.cleanup_crit_edge, label %while.cond.land.rhs_crit_edge

while.cond.land.rhs_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.rhs:                                         ; preds = %while.cond.land.rhs_crit_edge, %for.end.land.rhs_crit_edge
  %did.0120 = phi ptr [ %incdec.ptr, %while.cond.land.rhs_crit_edge ], [ %1, %for.end.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %did.0120 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %did.0120, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool45.not = icmp eq i16 %8, 0
  br i1 %tobool45.not, label %land.rhs.cleanup_crit_edge, label %do.body46

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body46:                                        ; preds = %land.rhs
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_match, %if.then58)) #12
          to label %do.end62 [label %if.then58], !srcloc !318

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_match.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.48, ptr noundef %10) #12
  br label %do.end62

do.end62:                                         ; preds = %if.then58, %do.body46
  %call63 = tail call fastcc i32 @pcmcia_devmatch(ptr noundef %add.ptr, ptr noundef nonnull %did.0120)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %while.cond, label %do.body66

do.body66:                                        ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_match, %if.then78)) #12
          to label %cleanup [label %if.then78], !srcloc !318

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %drv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drv, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_match.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.49, ptr noundef %12) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %do.body66, %land.rhs.cleanup_crit_edge, %while.cond.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end33
  %retval.0 = phi i32 [ 1, %do.end33 ], [ 1, %if.then78 ], [ 1, %do.body66 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %land.rhs.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_uevent(ptr noundef readonly %dev, ptr noundef %env) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %prod_id = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prod_id, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlen(ptr noundef nonnull %1) #18
  %call8 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %1, i32 noundef %call) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end3, %if.end.for.inc_crit_edge
  %hash.sroa.0.0 = phi i32 [ 0, %if.end.for.inc_crit_edge ], [ %call8, %if.end3 ]
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 -20
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool1.not.1 = icmp eq ptr %3, null
  br i1 %tobool1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end3.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call.1 = tail call i32 @strlen(ptr noundef nonnull %3) #18
  %call8.1 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %3, i32 noundef %call.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end3.1, %for.inc.for.inc.1_crit_edge
  %hash.sroa.5.0 = phi i32 [ 0, %for.inc.for.inc.1_crit_edge ], [ %call8.1, %if.end3.1 ]
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 -16
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool1.not.2 = icmp eq ptr %5, null
  br i1 %tobool1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end3.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %call.2 = tail call i32 @strlen(ptr noundef nonnull %5) #18
  %call8.2 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %5, i32 noundef %call.2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end3.2, %for.inc.1.for.inc.2_crit_edge
  %hash.sroa.7.0 = phi i32 [ 0, %for.inc.1.for.inc.2_crit_edge ], [ %call8.2, %if.end3.2 ]
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 -12
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool1.not.3 = icmp eq ptr %7, null
  br i1 %tobool1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end3.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end3.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %call.3 = tail call i32 @strlen(ptr noundef nonnull %7) #18
  %call8.3 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %7, i32 noundef %call.3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end3.3, %for.inc.2.for.inc.3_crit_edge
  %hash.sroa.9.0 = phi i32 [ 0, %for.inc.2.for.inc.3_crit_edge ], [ %call8.3, %if.end3.3 ]
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sock, align 8
  %call10 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.62, i32 noundef %11) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %for.inc.3.cleanup_crit_edge

for.inc.3.cleanup_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %for.inc.3
  %device_no = getelementptr i8, ptr %dev, i32 -104
  %12 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %device_no, align 8
  %conv = zext i8 %13 to i32
  %call14 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.63, i32 noundef %conv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %has_manf_id = getelementptr i8, ptr %dev, i32 -32
  %14 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %15 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool19.not = icmp eq i16 %15, 0
  br i1 %tobool19.not, label %if.end17.cond.end_crit_edge, label %cond.true

if.end17.cond.end_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  %manf_id = getelementptr i8, ptr %dev, i32 -28
  %16 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %manf_id, align 4
  %conv20 = zext i16 %17 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end17.cond.end_crit_edge
  %cond = phi i32 [ %conv20, %cond.true ], [ 0, %if.end17.cond.end_crit_edge ]
  %18 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool25.not = icmp eq i16 %18, 0
  br i1 %tobool25.not, label %cond.end.cond.end29_crit_edge, label %cond.true26

cond.end.cond.end29_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end29

cond.true26:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %card_id = getelementptr i8, ptr %dev, i32 -26
  %19 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %card_id, align 2
  %conv27 = zext i16 %20 to i32
  br label %cond.end29

cond.end29:                                       ; preds = %cond.true26, %cond.end.cond.end29_crit_edge
  %cond30 = phi i32 [ %conv27, %cond.true26 ], [ 0, %cond.end.cond.end29_crit_edge ]
  %21 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool35.not = icmp eq i16 %21, 0
  br i1 %tobool35.not, label %cond.end29.cond.end39_crit_edge, label %cond.true36

cond.end29.cond.end39_crit_edge:                  ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end39

cond.true36:                                      ; preds = %cond.end29
  call void @__sanitizer_cov_trace_pc() #14
  %func_id = getelementptr i8, ptr %dev, i32 -30
  %22 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %func_id, align 2
  %conv37 = zext i8 %23 to i32
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true36, %cond.end29.cond.end39_crit_edge
  %cond40 = phi i32 [ %conv37, %cond.true36 ], [ 0, %cond.end29.cond.end39_crit_edge ]
  %func = getelementptr i8, ptr %dev, i32 -103
  %24 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %func, align 1
  %conv41 = zext i8 %25 to i32
  %26 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %device_no, align 8
  %conv43 = zext i8 %27 to i32
  %call48 = tail call i32 (ptr, ptr, ...) @add_uevent_var(ptr noundef %env, ptr noundef nonnull @.str.64, i32 noundef %cond, i32 noundef %cond30, i32 noundef %cond40, i32 noundef %conv41, i32 noundef %conv43, i32 noundef %hash.sroa.0.0, i32 noundef %hash.sroa.5.0, i32 noundef %hash.sroa.7.0, i32 noundef %hash.sroa.9.0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %. = select i1 %tobool49.not, i32 0, i32 -12
  br label %cleanup

cleanup:                                          ; preds = %cond.end39, %if.end13.cleanup_crit_edge, %for.inc.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %for.inc.3.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ %., %cond.end39 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_device_probe(ptr noundef %dev) #0 align 64 {
entry:
  %cis_config = alloca %struct.cistpl_config_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cis_config) #12
  %0 = call ptr @memset(ptr %cis_config, i32 255, i32 28)
  %call = tail call ptr @get_device(ptr noundef %dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %2, i32 -28
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_probe, %if.then9)) #12
          to label %do.end [label %if.then9], !srcloc !318

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_probe.__UNIQUE_ID_ddebug244, ptr noundef nonnull %call, ptr noundef nonnull @.str.66, ptr noundef %6) #12
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %probe = getelementptr i8, ptr %2, i32 -24
  %7 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %probe, align 4
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %do.end.if.then127_crit_edge, label %lor.lhs.false

do.end.if.then127_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

lor.lhs.false:                                    ; preds = %do.end
  %function_config = getelementptr i8, ptr %call, i32 -100
  %9 = ptrtoint ptr %function_config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %function_config, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %lor.lhs.false.if.then127_crit_edge, label %lor.lhs.false13

lor.lhs.false.if.then127_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %owner = getelementptr i8, ptr %2, i32 -8
  %11 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %owner, align 4
  %call14 = tail call zeroext i1 @try_module_get(ptr noundef %12) #12
  br i1 %call14, label %if.end16, label %lor.lhs.false13.if.then127_crit_edge

lor.lhs.false13.if.then127_crit_edge:             ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then127

if.end16:                                         ; preds = %lor.lhs.false13
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 8
  %func = getelementptr i8, ptr %call, i32 -103
  %15 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %func, align 1
  %conv = zext i8 %16 to i32
  %call18 = call i32 @pccard_read_tuple(ptr noundef %14, i32 noundef %conv, i8 noundef zeroext 26, ptr noundef nonnull %cis_config) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.end41

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  %base = getelementptr inbounds %struct.cistpl_config_t, ptr %cis_config, i32 0, i32 1
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %base, align 4
  %config_base = getelementptr i8, ptr %call, i32 -48
  %19 = ptrtoint ptr %config_base to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %config_base, align 8
  %rmask = getelementptr inbounds %struct.cistpl_config_t, ptr %cis_config, i32 0, i32 2
  %20 = ptrtoint ptr %rmask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rmask, align 4
  %config_regs = getelementptr i8, ptr %call, i32 -40
  %22 = ptrtoint ptr %config_regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %config_regs, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_probe, %if.then33)) #12
          to label %if.end44 [label %if.then33], !srcloc !318

if.then33:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %config_base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %config_base, align 8
  %25 = ptrtoint ptr %config_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %config_regs, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_probe.__UNIQUE_ID_ddebug245, ptr noundef nonnull %call, ptr noundef nonnull @.str.67, i32 noundef %24, i32 noundef %26) #12
  br label %if.end44

do.end41:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.68) #15
  %config_base42 = getelementptr i8, ptr %call, i32 -48
  %27 = ptrtoint ptr %config_base42 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %config_base42, align 8
  %config_regs43 = getelementptr i8, ptr %call, i32 -40
  %28 = ptrtoint ptr %config_regs43 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %config_regs43, align 8
  br label %if.end44

if.end44:                                         ; preds = %do.end41, %if.then33, %if.then20
  %29 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %probe, align 4
  %call46 = call i32 %30(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body67, label %do.body49

do.body49:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_probe, %if.then61)) #12
          to label %if.then123 [label %if.then61], !srcloc !318

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_probe.__UNIQUE_ID_ddebug246, ptr noundef nonnull %call, ptr noundef nonnull @.str.70, ptr noundef %32, i32 noundef %call46) #12
  br label %if.then123

do.body67:                                        ; preds = %if.end44
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_probe, %if.then79)) #12
          to label %do.body85 [label %if.then79], !srcloc !318

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #14
  %33 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr3, align 4
  %vpp = getelementptr i8, ptr %call, i32 -56
  %35 = ptrtoint ptr %vpp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %vpp, align 8
  %.frozen = freeze i32 %36
  %div = udiv i32 %.frozen, 10
  %37 = mul i32 %div, 10
  %rem.decomposed = sub i32 %.frozen, %37
  %config_index = getelementptr i8, ptr %call, i32 -44
  %38 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %config_index, align 4
  %irq = getelementptr i8, ptr %call, i32 -88
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_probe.__UNIQUE_ID_ddebug247, ptr noundef nonnull %call, ptr noundef nonnull @.str.71, ptr noundef %34, i32 noundef %div, i32 noundef %rem.decomposed, i32 noundef %39, i32 noundef %41) #12
  br label %do.body85

do.body85:                                        ; preds = %if.then79, %do.body67
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_probe, %if.then97)) #12
          to label %do.end109 [label %if.then97], !srcloc !318

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #14
  %resource = getelementptr i8, ptr %call, i32 -84
  %42 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %resource, align 4
  %arrayidx100 = getelementptr i8, ptr %call, i32 -80
  %44 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx100, align 4
  %arrayidx102 = getelementptr i8, ptr %call, i32 -76
  %46 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx102, align 4
  %arrayidx104 = getelementptr i8, ptr %call, i32 -72
  %48 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx104, align 4
  %arrayidx106 = getelementptr i8, ptr %call, i32 -68
  %50 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx106, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_probe.__UNIQUE_ID_ddebug248, ptr noundef nonnull %call, ptr noundef nonnull @.str.72, ptr noundef %43, ptr noundef %45, ptr noundef %47, ptr noundef %49, ptr noundef %51) #12
  br label %do.end109

do.end109:                                        ; preds = %if.then97, %do.body85
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 39
  %52 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pcmcia_pfc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool111.not = icmp eq i8 %53, 0
  br i1 %tobool111.not, label %do.end109.put_dev_crit_edge, label %land.lhs.true

do.end109.put_dev_crit_edge:                      ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dev

land.lhs.true:                                    ; preds = %do.end109
  %54 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %add.ptr, align 8
  %device_count = getelementptr inbounds %struct.pcmcia_socket, ptr %55, i32 0, i32 38
  %56 = ptrtoint ptr %device_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %57)
  %cmp = icmp eq i8 %57, 1
  br i1 %cmp, label %land.lhs.true115, label %land.lhs.true.put_dev_crit_edge

land.lhs.true.put_dev_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dev

land.lhs.true115:                                 ; preds = %land.lhs.true
  %device_no = getelementptr i8, ptr %call, i32 -104
  %58 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %device_no, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %cmp117 = icmp eq i8 %59, 0
  br i1 %cmp117, label %if.then119, label %land.lhs.true115.put_dev_crit_edge

land.lhs.true115.put_dev_crit_edge:               ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  br label %put_dev

if.then119:                                       ; preds = %land.lhs.true115
  call void @__sanitizer_cov_trace_pc() #14
  call void @pcmcia_parse_uevents(ptr noundef %4, i32 noundef 16) #12
  br label %put_dev

if.then123:                                       ; preds = %if.then61, %do.body49
  %60 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %owner, align 4
  call void @module_put(ptr noundef %61) #12
  br label %if.then127

put_dev:                                          ; preds = %if.then119, %land.lhs.true115.put_dev_crit_edge, %land.lhs.true.put_dev_crit_edge, %do.end109.put_dev_crit_edge
  call void @mutex_unlock(ptr noundef %ops_mutex) #12
  br label %cleanup

if.then127:                                       ; preds = %if.then123, %lor.lhs.false13.if.then127_crit_edge, %lor.lhs.false.if.then127_crit_edge, %do.end.if.then127_crit_edge
  %ret.0.ph = phi i32 [ -22, %do.end.if.then127_crit_edge ], [ -22, %lor.lhs.false.if.then127_crit_edge ], [ -22, %lor.lhs.false13.if.then127_crit_edge ], [ %call46, %if.then123 ]
  call void @put_device(ptr noundef nonnull %call) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %put_dev, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.0.ph, %if.then127 ], [ 0, %put_dev ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cis_config) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_device_remove(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %add.ptr3 = getelementptr i8, ptr %1, i32 -28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_remove.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_remove, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_remove.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.74) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 39
  %4 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pcmcia_pfc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %do.end.if.end17_crit_edge, label %land.lhs.true

do.end.if.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true:                                    ; preds = %do.end
  %device_count = getelementptr inbounds %struct.pcmcia_socket, ptr %3, i32 0, i32 38
  %6 = ptrtoint ptr %device_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp.not = icmp eq i8 %7, 0
  br i1 %cmp.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true11

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

land.lhs.true11:                                  ; preds = %land.lhs.true
  %device_no = getelementptr i8, ptr %dev, i32 -104
  %8 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %device_no, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp13 = icmp eq i8 %9, 0
  br i1 %cmp13, label %if.then15, label %land.lhs.true11.if.end17_crit_edge

land.lhs.true11.if.end17_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pcmcia_card_remove(ptr noundef %3, ptr noundef %add.ptr)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true11.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge, %do.end.if.end17_crit_edge
  %remove = getelementptr i8, ptr %1, i32 -20
  %10 = ptrtoint ptr %remove to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remove, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %11(ptr noundef %add.ptr) #12
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  %_irq = getelementptr i8, ptr %dev, i32 -32
  %12 = ptrtoint ptr %_irq to i32
  call void @__asan_load2_noabort(i32 %12)
  %bf.load = load i16, ptr %_irq, align 8
  %13 = and i16 %bf.load, 24832
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %if.end21.if.end39_crit_edge, label %do.end38

if.end21.if.end39_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

do.end38:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef %16) #15
  br label %if.end39

if.end39:                                         ; preds = %do.end38, %if.end21.if.end39_crit_edge
  %17 = ptrtoint ptr %_irq to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load42 = load i16, ptr %_irq, align 8
  %18 = and i16 %bf.load42, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool46.not = icmp eq i16 %18, 0
  br i1 %tobool46.not, label %if.end39.for.inc_crit_edge, label %do.end50

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %20) #15
  br label %for.inc

for.inc:                                          ; preds = %do.end50, %if.end39.for.inc_crit_edge
  %21 = ptrtoint ptr %_irq to i32
  call void @__asan_load2_noabort(i32 %21)
  %bf.load42.1 = load i16, ptr %_irq, align 8
  %22 = and i16 %bf.load42.1, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool46.not.1 = icmp eq i16 %22, 0
  br i1 %tobool46.not.1, label %for.inc.for.inc.1_crit_edge, label %do.end50.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

do.end50.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %24) #15
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end50.1, %for.inc.for.inc.1_crit_edge
  %25 = ptrtoint ptr %_irq to i32
  call void @__asan_load2_noabort(i32 %25)
  %bf.load42.2 = load i16, ptr %_irq, align 8
  %26 = and i16 %bf.load42.2, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool46.not.2 = icmp eq i16 %26, 0
  br i1 %tobool46.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.end50.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

do.end50.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %28) #15
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end50.2, %for.inc.1.for.inc.2_crit_edge
  %29 = ptrtoint ptr %_irq to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load42.3 = load i16, ptr %_irq, align 8
  %30 = and i16 %bf.load42.3, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool46.not.3 = icmp eq i16 %30, 0
  br i1 %tobool46.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.end50.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

do.end50.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr3, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %32) #15
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end50.3, %for.inc.2.for.inc.3_crit_edge
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %for.inc.3.pcmcia_put_dev.exit_crit_edge, label %if.then.i

for.inc.3.pcmcia_put_dev.exit_crit_edge:          ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %pcmcia_put_dev.exit

if.then.i:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @put_device(ptr noundef %dev) #12
  br label %pcmcia_put_dev.exit

pcmcia_put_dev.exit:                              ; preds = %if.then.i, %for.inc.3.pcmcia_put_dev.exit_crit_edge
  %owner = getelementptr i8, ptr %1, i32 -8
  %33 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %34) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_pcmcia_bus() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @bus_register(ptr noundef nonnull @pcmcia_bus_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @class_interface_register(ptr noundef nonnull @pcmcia_bus_interface) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, i32 noundef %call2) #15
  tail call void @bus_unregister(ptr noundef nonnull @pcmcia_bus_type) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end7, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %do.end7 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_pcmcia_bus() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @class_interface_unregister(ptr noundef nonnull @pcmcia_bus_interface) #12
  tail call void @bus_unregister(ptr noundef nonnull @pcmcia_bus_type) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_interface_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @crc32_le(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @new_id_store(ptr noundef %driver, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %match_flags = alloca i16, align 2
  %manf_id = alloca i16, align 2
  %card_id = alloca i16, align 2
  %func_id = alloca i8, align 1
  %function = alloca i8, align 1
  %device_no = alloca i8, align 1
  %prod_id_hash = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %match_flags) #12
  %0 = ptrtoint ptr %match_flags to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %match_flags, align 2, !annotation !319
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %manf_id) #12
  %1 = ptrtoint ptr %manf_id to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %manf_id, align 2, !annotation !319
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %card_id) #12
  %2 = ptrtoint ptr %card_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %card_id, align 2, !annotation !319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %func_id) #12
  %3 = ptrtoint ptr %func_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %func_id, align 1, !annotation !319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %function) #12
  %4 = ptrtoint ptr %function to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %function, align 1, !annotation !319
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %device_no) #12
  %5 = ptrtoint ptr %device_no to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %device_no, align 1, !annotation !319
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %prod_id_hash) #12
  %6 = call ptr @memset(ptr %prod_id_hash, i32 0, i32 16)
  %arrayidx2 = getelementptr inbounds [4 x i32], ptr %prod_id_hash, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [4 x i32], ptr %prod_id_hash, i32 0, i32 2
  %arrayidx4 = getelementptr inbounds [4 x i32], ptr %prod_id_hash, i32 0, i32 3
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.16, ptr noundef nonnull %match_flags, ptr noundef nonnull %manf_id, ptr noundef nonnull %card_id, ptr noundef nonnull %func_id, ptr noundef nonnull %function, ptr noundef nonnull %device_no, ptr noundef nonnull %prod_id_hash, ptr noundef %arrayidx2, ptr noundef %arrayidx3, ptr noundef %arrayidx4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call)
  %cmp = icmp slt i32 %call, 6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 60) #19
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %match_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %match_flags, align 2
  %id = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %id, align 8
  %11 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %manf_id, align 2
  %manf_id10 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %manf_id10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %manf_id10, align 2
  %14 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %card_id, align 2
  %card_id12 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %card_id12 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %card_id12, align 4
  %17 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %func_id, align 1
  %func_id14 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %func_id14 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %func_id14, align 2
  %20 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %function, align 1
  %function16 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %function16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %function16, align 1
  %23 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %device_no, align 1
  %device_no18 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %device_no18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %device_no18, align 8
  %prod_id_hash20 = getelementptr inbounds %struct.pcmcia_dynid, ptr %call7.i.i, i32 0, i32 1, i32 6
  %26 = call ptr @memcpy(ptr %prod_id_hash20, ptr %prod_id_hash, i32 16)
  %dynids = getelementptr i8, ptr %driver, i32 76
  call void @mutex_lock_nested(ptr noundef %dynids, i32 noundef 0) #12
  %list = getelementptr i8, ptr %driver, i32 168
  %prev.i = getelementptr i8, ptr %driver, i32 172
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %28, ptr noundef %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end7.list_add_tail.exit_crit_edge

if.end7.list_add_tail.exit_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %call7.i.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end7.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %dynids) #12
  %call25 = call i32 @driver_attach(ptr noundef %driver) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %count.call25 = select i1 %tobool26.not, i32 %count, i32 %call25
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %count.call25, %list_add_tail.exit ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %prod_id_hash) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %device_no) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %function) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %func_id) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %card_id) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %manf_id) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %match_flags) #12
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_attach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resources_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr i8, ptr %dev, i32 -84
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef %1) #12
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 -80
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %call, ptr noundef nonnull @.str.18, ptr noundef %3) #12
  %add.1 = add i32 %call.1, %call
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 -76
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.1, ptr noundef nonnull @.str.18, ptr noundef %5) #12
  %add.2 = add i32 %call.2, %add.1
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 -72
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.2, ptr noundef nonnull @.str.18, ptr noundef %7) #12
  %add.3 = add i32 %call.3, %add.2
  %arrayidx.4 = getelementptr i8, ptr %dev, i32 -68
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.3, ptr noundef nonnull @.str.18, ptr noundef %9) #12
  %add.4 = add i32 %call.4, %add.3
  %arrayidx.5 = getelementptr i8, ptr %dev, i32 -64
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %add.4, ptr noundef nonnull @.str.18, ptr noundef %11) #12
  %add.5 = add i32 %call.5, %add.4
  ret i32 %add.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  %.str.21..str.20 = select i1 %tobool.not, ptr @.str.21, ptr @.str.20
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull %.str.21..str.20) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm_state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool1.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool1.not, label %land.lhs.true, label %land.lhs.true9

land.lhs.true:                                    ; preds = %if.end
  %call = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(4) @.str.22, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end15.thread_crit_edge

land.lhs.true.if.end15.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.thread

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #12
  %call.i = tail call i32 @pcmcia_dev_suspend(ptr noundef %dev) #12
  br label %if.end15

land.lhs.true9:                                   ; preds = %if.end
  %call10 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @.str.23, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then12, label %land.lhs.true9.if.end15.thread_crit_edge

land.lhs.true9.if.end15.thread_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.thread

if.then12:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  %mutex.i.i24 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i24, i32 noundef 0) #12
  %call.i25 = tail call i32 @pcmcia_dev_resume(ptr noundef %dev) #12
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then3
  %mutex.i.i24.sink = phi ptr [ %mutex.i.i24, %if.then12 ], [ %mutex.i.i, %if.then3 ]
  %ret.0 = phi i32 [ %call.i25, %if.then12 ], [ %call.i, %if.then3 ]
  tail call void @mutex_unlock(ptr noundef %mutex.i.i24.sink) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool16.not = icmp eq i32 %ret.0, 0
  br i1 %tobool16.not, label %if.end15.if.end15.thread_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15.if.end15.thread_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.thread

if.end15.thread:                                  ; preds = %if.end15.if.end15.thread_crit_edge, %land.lhs.true9.if.end15.thread_crit_edge, %land.lhs.true.if.end15.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15.thread, %if.end15.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.end15.thread ], [ %ret.0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_dev_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %ops_mutex2 = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.set = or i16 %bf.load, -32768
  %5 = ptrtoint ptr %suspended to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.set, ptr %suspended, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %ops_mutex6 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex6) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_dev_suspend.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_dev_suspend, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !318

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_dev_suspend.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool13.not = icmp eq ptr %9, null
  %add.ptr18 = getelementptr i8, ptr %9, i32 -28
  %tobool20.not93 = icmp eq ptr %add.ptr18, null
  %tobool20.not = or i1 %tobool13.not, %tobool20.not93
  br i1 %tobool20.not, label %do.end.cleanup_crit_edge, label %if.end22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %suspend = getelementptr i8, ptr %9, i32 -16
  %10 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %suspend, align 4
  %tobool23.not = icmp eq ptr %11, null
  br i1 %tobool23.not, label %if.end22.if.end41_crit_edge, label %if.then24

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then24:                                        ; preds = %if.end22
  %call26 = tail call i32 %11(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then24.if.end41_crit_edge, label %do.end31

if.then24.if.end41_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %devname = getelementptr i8, ptr %dev, i32 -108
  %12 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %devname, align 4
  %14 = ptrtoint ptr %add.ptr18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %13, ptr noundef %15, i32 noundef %call26) #15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 8
  %ops_mutex33 = getelementptr inbounds %struct.pcmcia_socket, ptr %17, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex33, i32 noundef 0) #12
  %18 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load35 = load i16, ptr %suspended, align 8
  %bf.clear36 = and i16 %bf.load35, 32767
  store i16 %bf.clear36, ptr %suspended, align 8
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr, align 8
  %ops_mutex39 = getelementptr inbounds %struct.pcmcia_socket, ptr %20, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex39) #12
  br label %cleanup

if.end41:                                         ; preds = %if.then24.if.end41_crit_edge, %if.end22.if.end41_crit_edge
  %device_no = getelementptr i8, ptr %dev, i32 -104
  %21 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %device_no, align 8
  %func = getelementptr i8, ptr %dev, i32 -103
  %23 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %func, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp = icmp eq i8 %22, %24
  br i1 %cmp, label %do.body45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body45:                                        ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_dev_suspend.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_dev_suspend, %if.then57)) #12
          to label %do.end60 [label %if.then57], !srcloc !318

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_dev_suspend.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.29) #12
  br label %do.end60

do.end60:                                         ; preds = %if.then57, %do.body45
  %call61 = tail call i32 @pcmcia_release_configuration(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.end41.cleanup_crit_edge, %do.end31, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call26, %do.end31 ], [ 0, %do.end60 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_release_configuration(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_dev_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %ops_mutex2 = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex2) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %bf.clear = and i16 %bf.load, 32767
  %5 = ptrtoint ptr %suspended to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.clear, ptr %suspended, align 8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 8
  %ops_mutex6 = getelementptr inbounds %struct.pcmcia_socket, ptr %7, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex6) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_dev_resume.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_dev_resume, %if.then11)) #12
          to label %do.end [label %if.then11], !srcloc !318

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_dev_resume.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.31) #12
  br label %do.end

do.end:                                           ; preds = %if.then11, %if.end
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %8 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver, align 4
  %tobool13.not = icmp eq ptr %9, null
  %add.ptr18 = getelementptr i8, ptr %9, i32 -28
  %tobool20.not75 = icmp eq ptr %add.ptr18, null
  %tobool20.not = or i1 %tobool13.not, %tobool20.not75
  br i1 %tobool20.not, label %do.end.cleanup_crit_edge, label %if.end22

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end22:                                         ; preds = %do.end
  %device_no = getelementptr i8, ptr %dev, i32 -104
  %10 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %device_no, align 8
  %func = getelementptr i8, ptr %dev, i32 -103
  %12 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %func, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp eq i8 %11, %13
  br i1 %cmp, label %do.body26, label %if.end22.if.end46_crit_edge

if.end22.if.end46_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

do.body26:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_dev_resume.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_dev_resume, %if.then38)) #12
          to label %do.end41 [label %if.then38], !srcloc !318

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_dev_resume.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.32) #12
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %do.body26
  %call42 = tail call i32 @pcmcia_enable_device(ptr noundef %add.ptr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end41.if.end46_crit_edge, label %do.end41.cleanup_crit_edge

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end41.if.end46_crit_edge:                      ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end46

if.end46:                                         ; preds = %do.end41.if.end46_crit_edge, %if.end22.if.end46_crit_edge
  %resume = getelementptr i8, ptr %9, i32 -12
  %14 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resume, align 4
  %tobool47.not = icmp eq ptr %15, null
  br i1 %tobool47.not, label %if.end46.cleanup_crit_edge, label %if.then48

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #14
  %call50 = tail call i32 %15(ptr noundef %add.ptr) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end46.cleanup_crit_edge, %do.end41.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call42, %do.end41.cleanup_crit_edge ], [ %call50, %if.then48 ], [ 0, %if.end46.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @function_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %func = getelementptr i8, ptr %dev, i32 -103
  %2 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %conv) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @func_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_func_id = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %has_func_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_func_id, align 8
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %func_id = getelementptr i8, ptr %dev, i32 -30
  %2 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %func_id, align 2
  %conv1 = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %conv1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manf_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_manf_id = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %1 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %manf_id = getelementptr i8, ptr %dev, i32 -28
  %2 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %manf_id, align 4
  %conv1 = zext i16 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %conv1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @card_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %has_card_id = getelementptr i8, ptr %dev, i32 -32
  %0 = ptrtoint ptr %has_card_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %has_card_id, align 8
  %1 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card_id = getelementptr i8, ptr %dev, i32 -26
  %2 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %card_id, align 2
  %conv1 = zext i16 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %conv1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prod_id1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_id = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prod_id, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prod_id2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prod_id3_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 -16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @prod_id4_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 -12
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.40, ptr noundef nonnull %1) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ -19, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %prod_id = getelementptr i8, ptr %dev, i32 -24
  %0 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prod_id, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @strlen(ptr noundef nonnull %1) #18
  %call5 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %1, i32 noundef %call) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %hash.sroa.0.0 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ %call5, %if.end ]
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 -20
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  %call.1 = tail call i32 @strlen(ptr noundef nonnull %3) #18
  %call5.1 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %3, i32 noundef %call.1) #17
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %hash.sroa.5.0 = phi i32 [ 0, %for.inc.for.inc.1_crit_edge ], [ %call5.1, %if.end.1 ]
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 -16
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  %call.2 = tail call i32 @strlen(ptr noundef nonnull %5) #18
  %call5.2 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %5, i32 noundef %call.2) #17
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %hash.sroa.7.0 = phi i32 [ 0, %for.inc.1.for.inc.2_crit_edge ], [ %call5.2, %if.end.2 ]
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 -12
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  %call.3 = tail call i32 @strlen(ptr noundef nonnull %7) #18
  %call5.3 = tail call i32 @crc32_le(i32 noundef 0, ptr noundef nonnull %7, i32 noundef %call.3) #17
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %hash.sroa.9.0 = phi i32 [ 0, %for.inc.2.for.inc.3_crit_edge ], [ %call5.3, %if.end.3 ]
  %has_manf_id = getelementptr i8, ptr %dev, i32 -32
  %8 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %9 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool7.not = icmp eq i16 %9, 0
  br i1 %tobool7.not, label %for.inc.3.cond.end_crit_edge, label %cond.true

for.inc.3.cond.end_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  %manf_id = getelementptr i8, ptr %dev, i32 -28
  %10 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %manf_id, align 4
  %conv8 = zext i16 %11 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.inc.3.cond.end_crit_edge
  %cond = phi i32 [ %conv8, %cond.true ], [ 0, %for.inc.3.cond.end_crit_edge ]
  %12 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool13.not = icmp eq i16 %12, 0
  br i1 %tobool13.not, label %cond.end.cond.end17_crit_edge, label %cond.true14

cond.end.cond.end17_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17

cond.true14:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %card_id = getelementptr i8, ptr %dev, i32 -26
  %13 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %card_id, align 2
  %conv15 = zext i16 %14 to i32
  br label %cond.end17

cond.end17:                                       ; preds = %cond.true14, %cond.end.cond.end17_crit_edge
  %cond18 = phi i32 [ %conv15, %cond.true14 ], [ 0, %cond.end.cond.end17_crit_edge ]
  %15 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool23.not = icmp eq i16 %15, 0
  br i1 %tobool23.not, label %cond.end17.cond.end27_crit_edge, label %cond.true24

cond.end17.cond.end27_crit_edge:                  ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end27

cond.true24:                                      ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #14
  %func_id = getelementptr i8, ptr %dev, i32 -30
  %16 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %func_id, align 2
  %conv25 = zext i8 %17 to i32
  br label %cond.end27

cond.end27:                                       ; preds = %cond.true24, %cond.end17.cond.end27_crit_edge
  %cond28 = phi i32 [ %conv25, %cond.true24 ], [ 0, %cond.end17.cond.end27_crit_edge ]
  %func = getelementptr i8, ptr %dev, i32 -103
  %18 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %func, align 1
  %conv29 = zext i8 %19 to i32
  %device_no = getelementptr i8, ptr %dev, i32 -104
  %20 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %device_no, align 8
  %conv30 = zext i8 %21 to i32
  %call35 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.45, i32 noundef %cond, i32 noundef %cond18, i32 noundef %cond28, i32 noundef %conv29, i32 noundef %conv30, i32 noundef %hash.sroa.0.0, i32 noundef %hash.sroa.5.0, i32 noundef %hash.sroa.7.0, i32 noundef %hash.sroa.9.0) #12
  ret i32 %call35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @allow_func_id_match_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %allow_func_id_match = getelementptr i8, ptr %dev, i32 -32
  %2 = ptrtoint ptr %allow_func_id_match to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %allow_func_id_match, align 8
  %bf.set = or i16 %bf.load, 128
  store i16 %bf.set, ptr %allow_func_id_match, align 8
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  %ops_mutex2 = getelementptr inbounds %struct.pcmcia_socket, ptr %4, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex2) #12
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 8
  tail call void @pcmcia_parse_uevents(ptr noundef %6, i32 noundef 16) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_parse_uevents(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcmcia_devmatch(ptr noundef %dev, ptr noundef readonly %did) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %0 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %did, align 4
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then:                                          ; preds = %entry
  %has_manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 15
  %3 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %4 = and i16 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool1.not = icmp eq i16 %4, 0
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %lor.lhs.false

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false:                                    ; preds = %if.then
  %manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 17
  %5 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %manf_id, align 4
  %manf_id3 = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 1
  %7 = ptrtoint ptr %manf_id3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %manf_id3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.not = icmp eq i16 %6, %8
  br i1 %cmp.not, label %lor.lhs.false.if.end7_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %entry.if.end7_crit_edge
  %9 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool11.not = icmp eq i16 %9, 0
  br i1 %tobool11.not, label %if.end7.if.end25_crit_edge, label %if.then12

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then12:                                        ; preds = %if.end7
  %has_card_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 15
  %10 = ptrtoint ptr %has_card_id to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load13 = load i16, ptr %has_card_id, align 8
  %11 = and i16 %bf.load13, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool16.not = icmp eq i16 %11, 0
  br i1 %tobool16.not, label %if.then12.return_crit_edge, label %lor.lhs.false17

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false17:                                  ; preds = %if.then12
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 18
  %12 = ptrtoint ptr %card_id to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %card_id, align 2
  %card_id19 = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 2
  %14 = ptrtoint ptr %card_id19 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %card_id19, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp21.not = icmp eq i16 %13, %15
  br i1 %cmp21.not, label %lor.lhs.false17.if.end25_crit_edge, label %lor.lhs.false17.return_crit_edge

lor.lhs.false17.return_crit_edge:                 ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false17.if.end25_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.end25:                                         ; preds = %lor.lhs.false17.if.end25_crit_edge, %if.end7.if.end25_crit_edge
  %16 = and i16 %1, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool29.not = icmp eq i16 %16, 0
  br i1 %tobool29.not, label %if.end25.if.end37_crit_edge, label %if.then30

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.then30:                                        ; preds = %if.end25
  %func = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 3
  %17 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %func, align 1
  %function = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 4
  %19 = ptrtoint ptr %function to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %function, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp33.not = icmp eq i8 %18, %20
  br i1 %cmp33.not, label %if.then30.if.end37_crit_edge, label %if.then30.return_crit_edge

if.then30.return_crit_edge:                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then30.if.end37_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end37

if.end37:                                         ; preds = %if.then30.if.end37_crit_edge, %if.end25.if.end37_crit_edge
  %21 = and i16 %1, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool41.not = icmp eq i16 %21, 0
  br i1 %tobool41.not, label %if.end37.if.end53_crit_edge, label %if.then42

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then42:                                        ; preds = %if.end37
  %prod_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 19
  %22 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prod_id, align 8
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %if.then42.return_crit_edge, label %if.end45

if.then42.return_crit_edge:                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end45:                                         ; preds = %if.then42
  %prod_id46 = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 7
  %24 = ptrtoint ptr %prod_id46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prod_id46, align 4
  %call = tail call i32 @strcmp(ptr noundef %25, ptr noundef nonnull %23) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool50.not = icmp eq i32 %call, 0
  br i1 %tobool50.not, label %if.end45.if.end53_crit_edge, label %if.end45.return_crit_edge

if.end45.return_crit_edge:                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.end53:                                         ; preds = %if.end45.if.end53_crit_edge, %if.end37.if.end53_crit_edge
  %26 = and i16 %1, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool57.not = icmp eq i16 %26, 0
  br i1 %tobool57.not, label %if.end53.if.end72_crit_edge, label %if.then58

if.end53.if.end72_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.then58:                                        ; preds = %if.end53
  %arrayidx60 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 1
  %27 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx60, align 4
  %tobool61.not = icmp eq ptr %28, null
  br i1 %tobool61.not, label %if.then58.return_crit_edge, label %if.end63

if.then58.return_crit_edge:                       ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end63:                                         ; preds = %if.then58
  %arrayidx65 = getelementptr %struct.pcmcia_device_id, ptr %did, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx65, align 4
  %call68 = tail call i32 @strcmp(ptr noundef %30, ptr noundef nonnull %28) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end63.if.end72_crit_edge, label %if.end63.return_crit_edge

if.end63.return_crit_edge:                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end63.if.end72_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

if.end72:                                         ; preds = %if.end63.if.end72_crit_edge, %if.end53.if.end72_crit_edge
  %31 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool76.not = icmp eq i16 %31, 0
  br i1 %tobool76.not, label %if.end72.if.end91_crit_edge, label %if.then77

if.end72.if.end91_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.then77:                                        ; preds = %if.end72
  %arrayidx79 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 2
  %32 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx79, align 8
  %tobool80.not = icmp eq ptr %33, null
  br i1 %tobool80.not, label %if.then77.return_crit_edge, label %if.end82

if.then77.return_crit_edge:                       ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end82:                                         ; preds = %if.then77
  %arrayidx84 = getelementptr %struct.pcmcia_device_id, ptr %did, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx84, align 4
  %call87 = tail call i32 @strcmp(ptr noundef %35, ptr noundef nonnull %33) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end82.if.end91_crit_edge, label %if.end82.return_crit_edge

if.end82.return_crit_edge:                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end82.if.end91_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end91

if.end91:                                         ; preds = %if.end82.if.end91_crit_edge, %if.end72.if.end91_crit_edge
  %36 = and i16 %1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool95.not = icmp eq i16 %36, 0
  br i1 %tobool95.not, label %if.end91.if.end110_crit_edge, label %if.then96

if.end91.if.end110_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.then96:                                        ; preds = %if.end91
  %arrayidx98 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 3
  %37 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %38, null
  br i1 %tobool99.not, label %if.then96.return_crit_edge, label %if.end101

if.then96.return_crit_edge:                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end101:                                        ; preds = %if.then96
  %arrayidx103 = getelementptr %struct.pcmcia_device_id, ptr %did, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx103, align 4
  %call106 = tail call i32 @strcmp(ptr noundef %40, ptr noundef nonnull %38) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end101.if.end110_crit_edge, label %if.end101.return_crit_edge

if.end101.return_crit_edge:                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.end110:                                        ; preds = %if.end101.if.end110_crit_edge, %if.end91.if.end110_crit_edge
  %41 = and i16 %1, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool114.not = icmp eq i16 %41, 0
  br i1 %tobool114.not, label %if.end110.if.end133_crit_edge, label %do.body

if.end110.if.end133_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

do.body:                                          ; preds = %if.end110
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_devmatch, %if.then120)) #12
          to label %do.end [label %if.then120], !srcloc !318

if.then120:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev121 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_devmatch.__UNIQUE_ID_ddebug263, ptr noundef %dev121, ptr noundef nonnull @.str.51) #12
  br label %do.end

do.end:                                           ; preds = %if.then120, %do.body
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 8
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %43, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %45, i32 0, i32 39
  %46 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %pcmcia_pfc, align 1
  %47 = load ptr, ptr %dev, align 8
  %ops_mutex125 = getelementptr inbounds %struct.pcmcia_socket, ptr %47, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex125) #12
  %device_no = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 2
  %48 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %device_no, align 8
  %device_no127 = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 5
  %50 = ptrtoint ptr %device_no127 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %device_no127, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %51)
  %cmp129.not = icmp eq i8 %49, %51
  br i1 %cmp129.not, label %do.end.if.end133_crit_edge, label %do.end.return_crit_edge

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.end.if.end133_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end133

if.end133:                                        ; preds = %do.end.if.end133_crit_edge, %if.end110.if.end133_crit_edge
  %52 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %did, align 4
  %54 = and i16 %53, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %54)
  %tobool137.not = icmp eq i16 %54, 0
  br i1 %tobool137.not, label %if.end133.if.end187_crit_edge, label %if.then138

if.end133.if.end187_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

if.then138:                                       ; preds = %if.end133
  %has_func_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 15
  %55 = ptrtoint ptr %has_func_id to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load139 = load i16, ptr %has_func_id, align 8
  %56 = and i16 %bf.load139, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %56)
  %tobool142.not = icmp eq i16 %56, 0
  br i1 %tobool142.not, label %if.then138.return_crit_edge, label %lor.lhs.false143

if.then138.return_crit_edge:                      ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false143:                                 ; preds = %if.then138
  %func_id = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 16
  %57 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %func_id, align 2
  %func_id145 = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 3
  %59 = ptrtoint ptr %func_id145 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %func_id145, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %58, i8 %60)
  %cmp147.not = icmp eq i8 %58, %60
  br i1 %cmp147.not, label %if.end150, label %lor.lhs.false143.return_crit_edge

lor.lhs.false143.return_crit_edge:                ; preds = %lor.lhs.false143
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end150:                                        ; preds = %lor.lhs.false143
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 8
  %pcmcia_pfc152 = getelementptr inbounds %struct.pcmcia_socket, ptr %62, i32 0, i32 39
  %63 = ptrtoint ptr %pcmcia_pfc152 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pcmcia_pfc152, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool153.not = icmp eq i8 %64, 0
  br i1 %tobool153.not, label %if.end155, label %if.end150.return_crit_edge

if.end150.return_crit_edge:                       ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end155:                                        ; preds = %if.end150
  %device_no156 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 2
  %65 = ptrtoint ptr %device_no156 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %device_no156, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool157.not = icmp eq i8 %66, 0
  br i1 %tobool157.not, label %if.end159, label %if.end155.return_crit_edge

if.end155.return_crit_edge:                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end159:                                        ; preds = %if.end155
  %ops_mutex161 = getelementptr inbounds %struct.pcmcia_socket, ptr %62, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex161, i32 noundef 0) #12
  %67 = ptrtoint ptr %has_func_id to i32
  call void @__asan_load2_noabort(i32 %67)
  %bf.load162 = load i16, ptr %has_func_id, align 8
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 8
  %ops_mutex167 = getelementptr inbounds %struct.pcmcia_socket, ptr %69, i32 0, i32 34
  tail call void @mutex_unlock(ptr noundef %ops_mutex167) #12
  %70 = and i16 %bf.load162, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool168.not = icmp eq i16 %70, 0
  br i1 %tobool168.not, label %do.body170, label %if.end159.if.end187_crit_edge

if.end159.if.end187_crit_edge:                    ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end187

do.body170:                                       ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_devmatch, %if.then182)) #12
          to label %return [label %if.then182], !srcloc !318

if.then182:                                       ; preds = %do.body170
  call void @__sanitizer_cov_trace_pc() #14
  %dev183 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_devmatch.__UNIQUE_ID_ddebug264, ptr noundef %dev183, ptr noundef nonnull @.str.52) #12
  br label %return

if.end187:                                        ; preds = %if.end159.if.end187_crit_edge, %if.end133.if.end187_crit_edge
  %71 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %did, align 4
  %73 = and i16 %72, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool191.not = icmp eq i16 %73, 0
  br i1 %tobool191.not, label %if.end187.if.end218_crit_edge, label %do.body193

if.end187.if.end218_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

do.body193:                                       ; preds = %if.end187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_devmatch, %if.then205)) #12
          to label %do.end209 [label %if.then205], !srcloc !318

if.then205:                                       ; preds = %do.body193
  call void @__sanitizer_cov_trace_pc() #14
  %dev206 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_devmatch.__UNIQUE_ID_ddebug265, ptr noundef %dev206, ptr noundef nonnull @.str.53) #12
  br label %do.end209

do.end209:                                        ; preds = %if.then205, %do.body193
  %74 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev, align 8
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %75, i32 0, i32 12
  %76 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fake_cis, align 4
  %tobool211.not = icmp eq ptr %77, null
  br i1 %tobool211.not, label %if.then212, label %do.end209.if.end218_crit_edge

do.end209.if.end218_crit_edge:                    ; preds = %do.end209
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.then212:                                       ; preds = %do.end209
  %cisfile = getelementptr inbounds %struct.pcmcia_device_id, ptr %did, i32 0, i32 9
  %78 = ptrtoint ptr %cisfile to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %cisfile, align 4
  %call213 = tail call fastcc i32 @pcmcia_load_firmware(ptr noundef %dev, ptr noundef %79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call213)
  %tobool214.not = icmp eq i32 %call213, 0
  br i1 %tobool214.not, label %if.then212.if.end218_crit_edge, label %if.then212.return_crit_edge

if.then212.return_crit_edge:                      ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then212.if.end218_crit_edge:                   ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end218

if.end218:                                        ; preds = %if.then212.if.end218_crit_edge, %do.end209.if.end218_crit_edge, %if.end187.if.end218_crit_edge
  %80 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %did, align 4
  %82 = and i16 %81, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %82)
  %tobool222.not = icmp eq i16 %82, 0
  br i1 %tobool222.not, label %if.end218.return_crit_edge, label %for.body.preheader

if.end218.return_crit_edge:                       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.body.preheader:                               ; preds = %if.end218
  %arrayidx227 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 0
  %83 = ptrtoint ptr %arrayidx227 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx227, align 4
  %tobool228.not = icmp eq ptr %84, null
  br i1 %tobool228.not, label %for.cond, label %for.body.preheader.cleanup253.thread_crit_edge

for.body.preheader.cleanup253.thread_crit_edge:   ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup253.thread

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx227.1 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 1
  %85 = ptrtoint ptr %arrayidx227.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx227.1, align 4
  %tobool228.not.1 = icmp eq ptr %86, null
  br i1 %tobool228.not.1, label %for.cond.1, label %for.cond.cleanup253.thread_crit_edge

for.cond.cleanup253.thread_crit_edge:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup253.thread

for.cond.1:                                       ; preds = %for.cond
  %arrayidx227.2 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 2
  %87 = ptrtoint ptr %arrayidx227.2 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx227.2, align 4
  %tobool228.not.2 = icmp eq ptr %88, null
  br i1 %tobool228.not.2, label %for.cond.2, label %for.cond.1.cleanup253.thread_crit_edge

for.cond.1.cleanup253.thread_crit_edge:           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup253.thread

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx227.3 = getelementptr %struct.pcmcia_device, ptr %dev, i32 0, i32 19, i32 3
  %89 = ptrtoint ptr %arrayidx227.3 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx227.3, align 4
  %tobool228.not.3 = icmp eq ptr %90, null
  br i1 %tobool228.not.3, label %for.cond.3, label %for.cond.2.cleanup253.thread_crit_edge

for.cond.2.cleanup253.thread_crit_edge:           ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup253.thread

for.cond.3:                                       ; preds = %for.cond.2
  %has_manf_id231 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 15
  %91 = ptrtoint ptr %has_manf_id231 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load232 = load i16, ptr %has_manf_id231, align 8
  %92 = and i16 %bf.load232, 112
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %for.cond.3.return_crit_edge, label %for.cond.3.cleanup253.thread_crit_edge

for.cond.3.cleanup253.thread_crit_edge:           ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup253.thread

for.cond.3.return_crit_edge:                      ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

cleanup253.thread:                                ; preds = %for.cond.3.cleanup253.thread_crit_edge, %for.cond.2.cleanup253.thread_crit_edge, %for.cond.1.cleanup253.thread_crit_edge, %for.cond.cleanup253.thread_crit_edge, %for.body.preheader.cleanup253.thread_crit_edge
  br label %return

return:                                           ; preds = %cleanup253.thread, %for.cond.3.return_crit_edge, %if.end218.return_crit_edge, %if.then212.return_crit_edge, %if.then182, %do.body170, %if.end155.return_crit_edge, %if.end150.return_crit_edge, %lor.lhs.false143.return_crit_edge, %if.then138.return_crit_edge, %do.end.return_crit_edge, %if.end101.return_crit_edge, %if.then96.return_crit_edge, %if.end82.return_crit_edge, %if.then77.return_crit_edge, %if.end63.return_crit_edge, %if.then58.return_crit_edge, %if.end45.return_crit_edge, %if.then42.return_crit_edge, %if.then30.return_crit_edge, %lor.lhs.false17.return_crit_edge, %if.then12.return_crit_edge, %lor.lhs.false.return_crit_edge, %if.then.return_crit_edge
  %retval.3 = phi i32 [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %if.then.return_crit_edge ], [ 0, %lor.lhs.false17.return_crit_edge ], [ 0, %if.then12.return_crit_edge ], [ 0, %if.then30.return_crit_edge ], [ 0, %if.then42.return_crit_edge ], [ 0, %if.end45.return_crit_edge ], [ 0, %if.then58.return_crit_edge ], [ 0, %if.end63.return_crit_edge ], [ 0, %if.then77.return_crit_edge ], [ 0, %if.end82.return_crit_edge ], [ 0, %if.then96.return_crit_edge ], [ 0, %if.end101.return_crit_edge ], [ 0, %do.end.return_crit_edge ], [ 0, %if.then212.return_crit_edge ], [ 0, %do.body170 ], [ 0, %cleanup253.thread ], [ 1, %for.cond.3.return_crit_edge ], [ 1, %if.end218.return_crit_edge ], [ 0, %lor.lhs.false143.return_crit_edge ], [ 0, %if.then138.return_crit_edge ], [ 0, %if.end150.return_crit_edge ], [ 0, %if.end155.return_crit_edge ], [ 0, %if.then182 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcmcia_load_firmware(ptr noundef %dev, ptr noundef %filename) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %mfc = alloca %struct.cistpl_longlink_mfc_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #12
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !319
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mfc) #12
  %3 = call ptr @memset(ptr %mfc, i32 255, i32 68)
  %tobool.not = icmp eq ptr %filename, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_load_firmware.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_load_firmware, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !318

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev5 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_load_firmware.__UNIQUE_ID_ddebug262, ptr noundef %dev5, ptr noundef nonnull @.str.55, ptr noundef nonnull %filename) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %dev7 = getelementptr inbounds %struct.pcmcia_device, ptr %dev, i32 0, i32 21
  %call8 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %filename, ptr noundef %dev7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  br i1 %cmp, label %if.then9, label %do.end.release_crit_edge

do.end.release_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %release

if.then9:                                         ; preds = %do.end
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %7)
  %cmp10 = icmp ugt i32 %7, 511
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.56) #15
  br label %release

if.end16:                                         ; preds = %if.then9
  %data = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %call18 = call i32 @pcmcia_replace_cis(ptr noundef %1, ptr noundef %9, i32 noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %do.end23

if.then20:                                        ; preds = %if.end16
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %functions, align 8
  %conv = zext i16 %11 to i32
  %call26 = call i32 @pccard_read_tuple(ptr noundef %1, i32 noundef 255, i8 noundef zeroext 6, ptr noundef nonnull %mfc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.then20.if.end30_crit_edge

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.58) #15
  br label %release

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %mfc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %mfc, align 4
  %conv29 = zext i8 %13 to i32
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then20.if.end30_crit_edge
  %new_funcs.0 = phi i32 [ 1, %if.then20.if.end30_crit_edge ], [ %conv29, %if.then28 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_funcs.0, i32 %conv)
  %cmp31.not = icmp eq i32 %new_funcs.0, %conv
  %spec.select = select i1 %cmp31.not, i32 0, i32 -16
  call fastcc void @pcmcia_device_query(ptr noundef %dev)
  call void @pcmcia_parse_uevents(ptr noundef %1, i32 noundef 16) #12
  br label %release

release:                                          ; preds = %if.end30, %do.end23, %if.then11, %do.end.release_crit_edge
  %ret.1 = phi i32 [ -22, %if.then11 ], [ -12, %do.end23 ], [ %spec.select, %if.end30 ], [ -12, %do.end.release_crit_edge ]
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %15) #12
  br label %cleanup

cleanup:                                          ; preds = %release, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %release ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mfc) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_replace_cis(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_read_tuple(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmcia_device_query(ptr noundef %p_dev) unnamed_addr #0 align 64 {
entry:
  %manf_id = alloca %struct.cistpl_manfid_t, align 2
  %func_id = alloca %struct.cistpl_funcid_t, align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %manf_id) #12
  %0 = ptrtoint ptr %manf_id to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %manf_id, align 2, !annotation !319
  %1 = getelementptr inbounds %struct.cistpl_manfid_t, ptr %manf_id, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %1, align 2, !annotation !319
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %func_id) #12
  %3 = ptrtoint ptr %func_id to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %func_id, align 1, !annotation !319
  %4 = getelementptr inbounds %struct.cistpl_funcid_t, ptr %func_id, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 261) #19
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup87_crit_edge, label %if.end

entry.cleanup87_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup87

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p_dev, align 8
  %call1 = call i32 @pccard_read_tuple(ptr noundef %8, i32 noundef 255, i8 noundef zeroext 32, ptr noundef nonnull %manf_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %p_dev, align 8
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %10, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %11 = ptrtoint ptr %manf_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %manf_id, align 2
  %manf_id5 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 17
  %13 = ptrtoint ptr %manf_id5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %manf_id5, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %card_id = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 18
  %16 = ptrtoint ptr %card_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %card_id, align 2
  %has_manf_id = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 15
  %17 = ptrtoint ptr %has_manf_id to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %has_manf_id, align 8
  %bf.set8 = or i16 %bf.load, 96
  store i16 %bf.set8, ptr %has_manf_id, align 8
  %18 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %p_dev, align 8
  %ops_mutex10 = getelementptr inbounds %struct.pcmcia_socket, ptr %19, i32 0, i32 34
  call void @mutex_unlock(ptr noundef %ops_mutex10) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then3, %if.end.if.end11_crit_edge
  %20 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p_dev, align 8
  %func = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 3
  %22 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %func, align 1
  %conv = zext i8 %23 to i32
  %call13 = call i32 @pccard_read_tuple(ptr noundef %21, i32 noundef %conv, i8 noundef zeroext 33, ptr noundef nonnull %func_id) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %p_dev, align 8
  %ops_mutex17 = getelementptr inbounds %struct.pcmcia_socket, ptr %25, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex17, i32 noundef 0) #12
  %26 = ptrtoint ptr %func_id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %func_id, align 1
  %func_id19 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 16
  %28 = ptrtoint ptr %func_id19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %func_id19, align 2
  %has_func_id = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 15
  %29 = ptrtoint ptr %has_func_id to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load20 = load i16, ptr %has_func_id, align 8
  %bf.set22 = or i16 %bf.load20, 16
  store i16 %bf.set22, ptr %has_func_id, align 8
  %30 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p_dev, align 8
  %ops_mutex24 = getelementptr inbounds %struct.pcmcia_socket, ptr %31, i32 0, i32 34
  call void @mutex_unlock(ptr noundef %ops_mutex24) #12
  br label %if.end51

if.else:                                          ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i1 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3264, i32 noundef 100) #19
  %tobool26.not = icmp eq ptr %call7.i1, null
  br i1 %tobool26.not, label %if.else.cleanup87.sink.split_crit_edge, label %if.end28

if.else.cleanup87.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup87.sink.split

if.end28:                                         ; preds = %if.else
  %33 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %p_dev, align 8
  %35 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %func, align 1
  %conv31 = zext i8 %36 to i32
  %call32 = call i32 @pccard_read_tuple(ptr noundef %34, i32 noundef %conv31, i8 noundef zeroext 30, ptr noundef nonnull %call7.i1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.body, label %if.end28.if.end50_crit_edge

if.end28.if.end50_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50

do.body:                                          ; preds = %if.end28
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_query.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_query, %if.then39)) #12
          to label %do.end [label %if.then39], !srcloc !318

if.then39:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 21
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_query.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.61) #12
  br label %do.end

do.end:                                           ; preds = %if.then39, %do.body
  %37 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %p_dev, align 8
  %ops_mutex42 = getelementptr inbounds %struct.pcmcia_socket, ptr %38, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex42, i32 noundef 0) #12
  %func_id43 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 16
  %39 = ptrtoint ptr %func_id43 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %func_id43, align 2
  %has_func_id44 = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 15
  %40 = ptrtoint ptr %has_func_id44 to i32
  call void @__asan_load2_noabort(i32 %40)
  %bf.load45 = load i16, ptr %has_func_id44, align 8
  %bf.set47 = or i16 %bf.load45, 16
  store i16 %bf.set47, ptr %has_func_id44, align 8
  %41 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p_dev, align 8
  %ops_mutex49 = getelementptr inbounds %struct.pcmcia_socket, ptr %42, i32 0, i32 34
  call void @mutex_unlock(ptr noundef %ops_mutex49) #12
  br label %if.end50

if.end50:                                         ; preds = %do.end, %if.end28.if.end50_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i1) #12
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then15
  %43 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %p_dev, align 8
  %call53 = call i32 @pccard_read_tuple(ptr noundef %44, i32 noundef 255, i8 noundef zeroext 21, ptr noundef nonnull %call7.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then55, label %if.end51.cleanup87.sink.split_crit_edge

if.end51.cleanup87.sink.split_crit_edge:          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup87.sink.split

if.then55:                                        ; preds = %if.end51
  %45 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %p_dev, align 8
  %ops_mutex57 = getelementptr inbounds %struct.pcmcia_socket, ptr %46, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex57, i32 noundef 0) #12
  %ns = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 2
  %47 = ptrtoint ptr %ns to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %ns, align 2
  %49 = call i8 @llvm.umin.i8(i8 %48, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %cmp614.not = icmp eq i8 %49, 0
  br i1 %cmp614.not, label %if.then55.for.end_crit_edge, label %for.body.lr.ph

if.then55.for.end_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then55
  %str = getelementptr inbounds %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 4
  %arrayidx = getelementptr %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 3, i32 0
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx, align 1
  %conv64 = zext i8 %51 to i32
  %add.ptr = getelementptr i8, ptr %str, i32 %conv64
  %call65 = call i32 @strlen(ptr noundef %add.ptr) #18
  %52 = add i32 %call65, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %52)
  %53 = icmp ult i32 %52, -254
  br i1 %53, label %for.body.lr.ph.cleanup79_crit_edge, label %if.end71

for.body.lr.ph.cleanup79_crit_edge:               ; preds = %for.body.lr.ph
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

if.end71:                                         ; preds = %for.body.lr.ph
  %call72 = call noalias ptr @kstrdup(ptr noundef %add.ptr, i32 noundef 3264) #12
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.cleanup79_crit_edge, label %if.end75

if.end71.cleanup79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79

if.end75:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx76 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 0
  %54 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx76, align 4
  store ptr %call72, ptr %arrayidx76, align 4
  call void @kfree(ptr noundef %55) #12
  br label %cleanup79

cleanup79:                                        ; preds = %if.end75, %if.end71.cleanup79_crit_edge, %for.body.lr.ph.cleanup79_crit_edge
  %56 = ptrtoint ptr %ns to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %ns, align 2
  %58 = call i8 @llvm.umin.i8(i8 %57, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %58)
  %cmp61 = icmp ugt i8 %58, 1
  br i1 %cmp61, label %for.body.1, label %cleanup79.for.end_crit_edge

cleanup79.for.end_crit_edge:                      ; preds = %cleanup79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.1:                                       ; preds = %cleanup79
  %arrayidx.1 = getelementptr %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.1, align 4
  %conv64.1 = zext i8 %60 to i32
  %add.ptr.1 = getelementptr i8, ptr %str, i32 %conv64.1
  %call65.1 = call i32 @strlen(ptr noundef %add.ptr.1) #18
  %61 = add i32 %call65.1, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %61)
  %62 = icmp ult i32 %61, -254
  br i1 %62, label %for.body.1.cleanup79.1_crit_edge, label %if.end71.1

for.body.1.cleanup79.1_crit_edge:                 ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79.1

if.end71.1:                                       ; preds = %for.body.1
  %call72.1 = call noalias ptr @kstrdup(ptr noundef %add.ptr.1, i32 noundef 3264) #12
  %tobool73.not.1 = icmp eq ptr %call72.1, null
  br i1 %tobool73.not.1, label %if.end71.1.cleanup79.1_crit_edge, label %if.end75.1

if.end71.1.cleanup79.1_crit_edge:                 ; preds = %if.end71.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79.1

if.end75.1:                                       ; preds = %if.end71.1
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx76.1 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 1
  %63 = ptrtoint ptr %arrayidx76.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx76.1, align 4
  store ptr %call72.1, ptr %arrayidx76.1, align 4
  call void @kfree(ptr noundef %64) #12
  br label %cleanup79.1

cleanup79.1:                                      ; preds = %if.end75.1, %if.end71.1.cleanup79.1_crit_edge, %for.body.1.cleanup79.1_crit_edge
  %65 = ptrtoint ptr %ns to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %ns, align 2
  %67 = call i8 @llvm.umin.i8(i8 %66, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %67)
  %cmp61.1 = icmp ugt i8 %67, 2
  br i1 %cmp61.1, label %for.body.2, label %cleanup79.1.for.end_crit_edge

cleanup79.1.for.end_crit_edge:                    ; preds = %cleanup79.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.2:                                       ; preds = %cleanup79.1
  %arrayidx.2 = getelementptr %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 3, i32 2
  %68 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.2, align 1
  %conv64.2 = zext i8 %69 to i32
  %add.ptr.2 = getelementptr i8, ptr %str, i32 %conv64.2
  %call65.2 = call i32 @strlen(ptr noundef %add.ptr.2) #18
  %70 = add i32 %call65.2, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %70)
  %71 = icmp ult i32 %70, -254
  br i1 %71, label %for.body.2.cleanup79.2_crit_edge, label %if.end71.2

for.body.2.cleanup79.2_crit_edge:                 ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79.2

if.end71.2:                                       ; preds = %for.body.2
  %call72.2 = call noalias ptr @kstrdup(ptr noundef %add.ptr.2, i32 noundef 3264) #12
  %tobool73.not.2 = icmp eq ptr %call72.2, null
  br i1 %tobool73.not.2, label %if.end71.2.cleanup79.2_crit_edge, label %if.end75.2

if.end71.2.cleanup79.2_crit_edge:                 ; preds = %if.end71.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup79.2

if.end75.2:                                       ; preds = %if.end71.2
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx76.2 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 2
  %72 = ptrtoint ptr %arrayidx76.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx76.2, align 4
  store ptr %call72.2, ptr %arrayidx76.2, align 4
  call void @kfree(ptr noundef %73) #12
  br label %cleanup79.2

cleanup79.2:                                      ; preds = %if.end75.2, %if.end71.2.cleanup79.2_crit_edge, %for.body.2.cleanup79.2_crit_edge
  %74 = ptrtoint ptr %ns to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %ns, align 2
  %76 = call i8 @llvm.umin.i8(i8 %75, i8 4)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %cmp61.2 = icmp ugt i8 %76, 3
  br i1 %cmp61.2, label %for.body.3, label %cleanup79.2.for.end_crit_edge

cleanup79.2.for.end_crit_edge:                    ; preds = %cleanup79.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.3:                                       ; preds = %cleanup79.2
  %arrayidx.3 = getelementptr %struct.cistpl_vers_1_t, ptr %call7.i, i32 0, i32 3, i32 3
  %77 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx.3, align 2
  %conv64.3 = zext i8 %78 to i32
  %add.ptr.3 = getelementptr i8, ptr %str, i32 %conv64.3
  %call65.3 = call i32 @strlen(ptr noundef %add.ptr.3) #18
  %79 = add i32 %call65.3, -255
  call void @__sanitizer_cov_trace_const_cmp4(i32 -254, i32 %79)
  %80 = icmp ult i32 %79, -254
  br i1 %80, label %for.body.3.for.end_crit_edge, label %if.end71.3

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end71.3:                                       ; preds = %for.body.3
  %call72.3 = call noalias ptr @kstrdup(ptr noundef %add.ptr.3, i32 noundef 3264) #12
  %tobool73.not.3 = icmp eq ptr %call72.3, null
  br i1 %tobool73.not.3, label %if.end71.3.for.end_crit_edge, label %if.end75.3

if.end71.3.for.end_crit_edge:                     ; preds = %if.end71.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end75.3:                                       ; preds = %if.end71.3
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx76.3 = getelementptr %struct.pcmcia_device, ptr %p_dev, i32 0, i32 19, i32 3
  %81 = ptrtoint ptr %arrayidx76.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx76.3, align 4
  store ptr %call72.3, ptr %arrayidx76.3, align 4
  call void @kfree(ptr noundef %82) #12
  br label %for.end

for.end:                                          ; preds = %if.end75.3, %if.end71.3.for.end_crit_edge, %for.body.3.for.end_crit_edge, %cleanup79.2.for.end_crit_edge, %cleanup79.1.for.end_crit_edge, %cleanup79.for.end_crit_edge, %if.then55.for.end_crit_edge
  %83 = ptrtoint ptr %p_dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %p_dev, align 8
  %ops_mutex85 = getelementptr inbounds %struct.pcmcia_socket, ptr %84, i32 0, i32 34
  call void @mutex_unlock(ptr noundef %ops_mutex85) #12
  br label %cleanup87.sink.split

cleanup87.sink.split:                             ; preds = %for.end, %if.end51.cleanup87.sink.split_crit_edge, %if.else.cleanup87.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup87

cleanup87:                                        ; preds = %cleanup87.sink.split, %entry.cleanup87_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %func_id) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %manf_id) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @add_uevent_var(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmcia_card_remove(ptr noundef %s, ptr noundef %leftover) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_card_remove.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_card_remove, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  %tobool4.not = icmp eq ptr %leftover, null
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %leftover, i32 0, i32 21
  %dev5 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  %cond = select i1 %tobool4.not, ptr %dev5, ptr %dev
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 15
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sock, align 8
  br i1 %tobool4.not, label %if.then.cond.end9_crit_edge, label %cond.true7

if.then.cond.end9_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end9

cond.true7:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %devname = getelementptr inbounds %struct.pcmcia_device, ptr %leftover, i32 0, i32 1
  %2 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devname, align 4
  br label %cond.end9

cond.end9:                                        ; preds = %cond.true7, %if.then.cond.end9_crit_edge
  %cond10 = phi ptr [ %3, %cond.true7 ], [ @.str.81, %if.then.cond.end9_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_card_remove.__UNIQUE_ID_ddebug249, ptr noundef %cond, ptr noundef nonnull @.str.80, i32 noundef %1, ptr noundef %cond10) #12
  br label %do.end

do.end:                                           ; preds = %cond.end9, %entry
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %tobool11.not = icmp ne ptr %leftover, null
  %spec.select = zext i1 %tobool11.not to i8
  %4 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 38
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %spec.select, ptr %4, align 4
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  %devices_list = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 37
  %6 = ptrtoint ptr %devices_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devices_list, align 4
  %cmp.not81 = icmp eq ptr %7, %devices_list
  br i1 %cmp.not81, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn.in82 = phi ptr [ %.pn85, %for.inc.for.body_crit_edge ], [ %7, %do.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in82 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn85 = load ptr, ptr %.pn.in82, align 8
  %p_dev.0 = getelementptr i8, ptr %.pn.in82, i32 -16
  %cmp25 = icmp eq ptr %p_dev.0, %leftover
  br i1 %cmp25, label %for.body.for.inc_crit_edge, label %if.end27

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end27:                                         ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in82) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_del.exit_crit_edge

if.end27.list_del.exit_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in82, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in82 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in82, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end27.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in82 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in82, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in82, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_card_remove.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_card_remove, %if.then43)) #12
          to label %do.end47 [label %if.then43], !srcloc !318

if.then43:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev44 = getelementptr i8, ptr %.pn.in82, i32 96
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_card_remove.__UNIQUE_ID_ddebug250, ptr noundef %dev44, ptr noundef nonnull @.str.82) #12
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %list_del.exit
  %dev48 = getelementptr i8, ptr %.pn.in82, i32 96
  tail call void @device_unregister(ptr noundef %dev48) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end47, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn85, %devices_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_interface_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_add_socket(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @pcmcia_get_socket(ptr noundef %1) #12
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.88) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @sysfs_create_bin_file(ptr noundef %dev, ptr noundef nonnull @pccard_cis_attr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end8, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #15
  tail call void @pcmcia_put_socket(ptr noundef nonnull %call1) #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %devices_list = getelementptr inbounds %struct.pcmcia_socket, ptr %call1, i32 0, i32 37
  %2 = ptrtoint ptr %devices_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %devices_list, ptr %devices_list, align 4
  %prev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %call1, i32 0, i32 37, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %devices_list, ptr %prev.i, align 4
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %call1, i32 0, i32 39
  %4 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pcmcia_pfc, align 1
  %device_count = getelementptr inbounds %struct.pcmcia_socket, ptr %call1, i32 0, i32 38
  %5 = ptrtoint ptr %device_count to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %device_count, align 4
  %present = getelementptr inbounds %struct.pcmcia_socket, ptr %call1, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %present, i32 noundef 4) #12
  %6 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %present, align 4
  %call9 = tail call i32 @pccard_register_pcmcia(ptr noundef nonnull %call1, ptr noundef nonnull @pcmcia_bus_callback) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #15
  tail call void @pcmcia_put_socket(ptr noundef nonnull %call1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call2, %do.end7 ], [ %call9, %do.end14 ], [ -19, %do.end ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_bus_remove_socket(ptr noundef %dev, ptr nocapture noundef readnone %class_intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1 = tail call i32 @pccard_register_pcmcia(ptr noundef nonnull %1, ptr noundef null) #12
  %skt_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %1, i32 0, i32 33
  tail call void @mutex_lock_nested(ptr noundef %skt_mutex, i32 noundef 0) #12
  tail call fastcc void @pcmcia_card_remove(ptr noundef nonnull %1, ptr noundef null)
  tail call void @release_cis_mem(ptr noundef nonnull %1) #12
  tail call void @mutex_unlock(ptr noundef %skt_mutex) #12
  tail call void @sysfs_remove_bin_file(ptr noundef %dev, ptr noundef nonnull @pccard_cis_attr) #12
  tail call void @pcmcia_put_socket(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcmcia_get_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_put_socket(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_register_pcmcia(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_add(ptr noundef %skt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %present, i32 noundef 4) #12
  %0 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %present, align 4
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 39
  %1 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %pcmcia_pfc, align 1
  tail call void @destroy_cis_cache(ptr noundef %skt) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  tail call fastcc void @pcmcia_card_add(ptr noundef %skt)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_remove(ptr noundef %skt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %present = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 40
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %present, i32 noundef 4) #12
  %0 = ptrtoint ptr %present to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %present, align 4
  tail call fastcc void @pcmcia_card_remove(ptr noundef %skt, ptr noundef null)
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  tail call void @destroy_cis_cache(ptr noundef %skt) #12
  tail call void @pcmcia_cleanup_irq(ptr noundef %skt) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_requery(ptr noundef %s) #0 align 64 {
entry:
  %mfc = alloca %struct.cistpl_longlink_mfc_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @pcmcia_card_add(ptr noundef %s)
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @pcmcia_bus_type, ptr noundef null, ptr noundef null, ptr noundef nonnull @pcmcia_requery_callback) #12
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 12
  %4 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fake_cis, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end3.if.end20_crit_edge, label %if.then6

if.end3.if.end20_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then6:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mfc) #12
  %6 = call ptr @memset(ptr %mfc, i32 255, i32 68)
  %7 = ptrtoint ptr %functions to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %functions, align 8
  %conv8 = zext i16 %8 to i32
  %call9 = call i32 @pccard_read_tuple(ptr noundef %s, i32 noundef 255, i8 noundef zeroext 6, ptr noundef nonnull %mfc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.then6.if.end13_crit_edge

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %mfc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mfc, align 4
  %conv12 = zext i8 %10 to i32
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then6.if.end13_crit_edge
  %new_funcs.0 = phi i32 [ %conv12, %if.then11 ], [ 1, %if.then6.if.end13_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %new_funcs.0, i32 %conv8)
  %cmp14.not = icmp eq i32 %new_funcs.0, %conv8
  br i1 %cmp14.not, label %if.end13.if.end19_crit_edge, label %if.then16

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pcmcia_card_remove(ptr noundef %s, ptr noundef null)
  %11 = ptrtoint ptr %functions to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %functions, align 8
  call fastcc void @pcmcia_card_add(ptr noundef %s)
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mfc) #12
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end3.if.end20_crit_edge
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %pcmcia_pfc = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 39
  %12 = ptrtoint ptr %pcmcia_pfc to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pcmcia_pfc, align 1
  call void @mutex_unlock(ptr noundef %ops_mutex) #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool23.not = icmp eq i8 %13, 0
  br i1 %tobool23.not, label %if.end20.if.end26_crit_edge, label %if.then24

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @pcmcia_device_add(ptr noundef %s, i32 noundef 0)
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end20.if.end26_crit_edge
  %call27 = call i32 @bus_rescan_devices(ptr noundef nonnull @pcmcia_bus_type) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.cleanup_crit_edge, label %do.end

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.117) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end26.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pccard_validate_cis(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_suspend(ptr noundef %skt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_suspend.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_suspend, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 42
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 15
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sock, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_suspend.__UNIQUE_ID_ddebug275, ptr noundef %dev, ptr noundef nonnull @.str.122, i32 noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @pcmcia_bus_type, ptr noundef null, ptr noundef %skt, ptr noundef nonnull @pcmcia_bus_suspend_callback) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.return_crit_edge, label %if.then5

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then5:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_resume.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_suspend, %if.then.i)) #12
          to label %pcmcia_bus_resume.exit [label %if.then.i], !srcloc !318

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %dev.i = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 42
  %sock.i = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 15
  %2 = ptrtoint ptr %sock.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sock.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_resume.__UNIQUE_ID_ddebug274, ptr noundef %dev.i, ptr noundef nonnull @.str.126, i32 noundef %3) #12
  br label %pcmcia_bus_resume.exit

pcmcia_bus_resume.exit:                           ; preds = %if.then.i, %if.then5
  %call3.i = tail call i32 @bus_for_each_dev(ptr noundef nonnull @pcmcia_bus_type, ptr noundef null, ptr noundef %skt, ptr noundef nonnull @pcmcia_bus_resume_callback) #12
  br label %return

return:                                           ; preds = %pcmcia_bus_resume.exit, %do.end.return_crit_edge
  %retval.0 = phi i32 [ -5, %pcmcia_bus_resume.exit ], [ 0, %do.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_early_resume(ptr noundef %skt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @verify_cis_cache(ptr noundef %skt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.body

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_early_resume.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_early_resume, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !318

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_early_resume.__UNIQUE_ID_ddebug276, ptr noundef %dev, ptr noundef nonnull @.str.124) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %present.i = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %present.i, i32 noundef 4) #12
  %0 = ptrtoint ptr %present.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %present.i, align 4
  tail call fastcc void @pcmcia_card_remove(ptr noundef %skt, ptr noundef null) #12
  %ops_mutex.i = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex.i, i32 noundef 0) #12
  tail call void @destroy_cis_cache(ptr noundef %skt) #12
  tail call void @pcmcia_cleanup_irq(ptr noundef %skt) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex.i) #12
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex.i, i32 noundef 0) #12
  tail call void @destroy_cis_cache(ptr noundef %skt) #12
  %fake_cis = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 12
  %1 = ptrtoint ptr %fake_cis to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fake_cis, align 4
  tail call void @kfree(ptr noundef %2) #12
  %3 = ptrtoint ptr %fake_cis to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fake_cis, align 4
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 4
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %functions, align 8
  tail call void @mutex_unlock(ptr noundef %ops_mutex.i) #12
  %call.i.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %present.i, i32 noundef 4) #12
  %5 = ptrtoint ptr %present.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %present.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex.i, i32 noundef 0) #12
  %pcmcia_pfc.i = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 39
  %6 = ptrtoint ptr %pcmcia_pfc.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %pcmcia_pfc.i, align 1
  tail call void @destroy_cis_cache(ptr noundef %skt) #12
  tail call void @mutex_unlock(ptr noundef %ops_mutex.i) #12
  tail call fastcc void @pcmcia_card_add(ptr noundef %skt) #12
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_resume(ptr noundef %skt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_bus_resume.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_bus_resume, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 42
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %skt, i32 0, i32 15
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sock, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_bus_resume.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.126, i32 noundef %1) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call i32 @bus_for_each_dev(ptr noundef nonnull @pcmcia_bus_type, ptr noundef null, ptr noundef %skt, ptr noundef nonnull @pcmcia_bus_resume_callback) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_cis_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmcia_card_add(ptr noundef %s) unnamed_addr #0 align 64 {
entry:
  %mfc = alloca %struct.cistpl_longlink_mfc_t, align 4
  %no_chains = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %mfc) #12
  %0 = call ptr @memset(ptr %mfc, i32 255, i32 68)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %no_chains) #12
  %1 = ptrtoint ptr %no_chains to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %no_chains, align 4, !annotation !319
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %resource_setup_done = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 22
  %2 = ptrtoint ptr %resource_setup_done to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %resource_setup_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_card_add.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_card_add, %if.then4)) #12
          to label %do.end [label %if.then4], !srcloc !318

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_card_add.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.96) #12
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call i32 @pcmcia_validate_mem(ptr noundef %s) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end28, label %do.body10

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_card_add.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_card_add, %if.then22)) #12
          to label %do.end26 [label %if.then22], !srcloc !318

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #14
  %dev23 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_card_add.__UNIQUE_ID_ddebug259, ptr noundef %dev23, ptr noundef nonnull @.str.97) #12
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end6
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  %call30 = call i32 @pccard_validate_cis(ptr noundef %s, ptr noundef nonnull %no_chains) #12
  %4 = zext i32 %call30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call30, label %if.end28.do.body40_crit_edge [
    i32 0, label %lor.lhs.false
    i32 -5, label %do.end37
  ]

if.end28.do.body40_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

lor.lhs.false:                                    ; preds = %if.end28
  %5 = ptrtoint ptr %no_chains to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %no_chains, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool32.not = icmp eq i32 %6, 0
  br i1 %tobool32.not, label %lor.lhs.false.do.body40_crit_edge, label %lor.lhs.false.if.end58_crit_edge

lor.lhs.false.if.end58_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

lor.lhs.false.do.body40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body40

do.end37:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  %dev38 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.98) #15
  %call39 = call i32 @pcmcia_replace_cis(ptr noundef %s, ptr noundef nonnull @.str.99, i32 noundef 1) #12
  %7 = ptrtoint ptr %no_chains to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %no_chains, align 4
  br label %if.end58

do.body40:                                        ; preds = %lor.lhs.false.do.body40_crit_edge, %if.end28.do.body40_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_card_add.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_card_add, %if.then52)) #12
          to label %cleanup [label %if.then52], !srcloc !318

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #14
  %dev53 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 42
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_card_add.__UNIQUE_ID_ddebug260, ptr noundef %dev53, ptr noundef nonnull @.str.100) #12
  br label %cleanup

if.end58:                                         ; preds = %do.end37, %lor.lhs.false.if.end58_crit_edge
  %call59 = call i32 @pccard_read_tuple(ptr noundef %s, i32 noundef 255, i8 noundef zeroext 6, ptr noundef nonnull %mfc) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %if.end63.thread

if.end63.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %functions14 = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %8 = ptrtoint ptr %functions14 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %functions14, align 8
  br label %for.body.preheader

if.end63:                                         ; preds = %if.end58
  %9 = ptrtoint ptr %mfc to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mfc, align 4
  %conv = zext i8 %10 to i32
  %conv64 = zext i8 %10 to i16
  %functions = getelementptr inbounds %struct.pcmcia_socket, ptr %s, i32 0, i32 4
  %11 = ptrtoint ptr %functions to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv64, ptr %functions, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp6510.not = icmp eq i8 %10, 0
  br i1 %cmp6510.not, label %if.end63.cleanup_crit_edge, label %if.end63.for.body.preheader_crit_edge

if.end63.for.body.preheader_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.preheader

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end63.for.body.preheader_crit_edge, %if.end63.thread
  %no_funcs.016 = phi i32 [ 1, %if.end63.thread ], [ %conv, %if.end63.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  call fastcc void @pcmcia_device_add(ptr noundef %s, i32 noundef %i.011)
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, %no_funcs.016
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.then52, %do.body40, %do.end26, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %no_chains) #12
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %mfc) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_validate_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcmcia_device_add(ptr noundef %s, i32 noundef %function) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pcmcia_get_socket(ptr noundef %s) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup203_crit_edge, label %do.body

entry.cleanup203_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup203

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_add.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_add, %if.then5)) #12
          to label %do.end [label %if.then5], !srcloc !318

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %sock = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sock, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_device_add.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.102, i32 noundef %1, i32 noundef %function) #12
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1048) #19
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %do.end.err_put_crit_edge, label %if.end10

do.end.err_put_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_put

if.end10:                                         ; preds = %do.end
  %ops_mutex = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 34
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %device_count = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 38
  %3 = ptrtoint ptr %device_count to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %device_count, align 4
  %inc = add i8 %4, 1
  store i8 %inc, ptr %device_count, align 4
  %device_no = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %device_no to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %device_no, align 8
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  %6 = ptrtoint ptr %device_no to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %device_no, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp = icmp ugt i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %function)
  %cmp14 = icmp eq i32 %function, 0
  %or.cond = and i1 %cmp14, %cmp
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %7)
  %cmp20 = icmp ugt i8 %7, 3
  %or.cond23 = or i1 %cmp20, %or.cond
  br i1 %or.cond23, label %if.end10.err_free_crit_edge, label %if.end23

if.end10.err_free_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end23:                                         ; preds = %if.end10
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %call7.i.i, align 8
  %conv24 = trunc i32 %function to i8
  %func = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv24, ptr %func, align 1
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21
  %bus = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21, i32 5
  %10 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pcmcia_bus_type, ptr %bus, align 8
  %parent = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 42, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %parent27 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21, i32 1
  %13 = ptrtoint ptr %parent27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %parent27, align 8
  %release = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21, i32 35
  %14 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pcmcia_release_dev, ptr %release, align 4
  %dma_mask = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %dma_mask, align 8
  %dma_mask31 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21, i32 18
  %16 = ptrtoint ptr %dma_mask31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dma_mask, ptr %dma_mask31, align 8
  %sock34 = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 15
  %17 = ptrtoint ptr %sock34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sock34, align 8
  %conv36 = zext i8 %7 to i32
  %call37 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.103, i32 noundef %18, i32 noundef %conv36) #12
  %init_name.i = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 21, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %dev_name.exit, label %if.end23.dev_name.exit12_crit_edge

if.end23.dev_name.exit12_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit12

dev_name.exit:                                    ; preds = %if.end23
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 8
  %tobool40.not = icmp eq ptr %22, null
  br i1 %tobool40.not, label %dev_name.exit.err_free_crit_edge, label %if.end.i10

dev_name.exit.err_free_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

if.end.i10:                                       ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 8
  br label %dev_name.exit12

dev_name.exit12:                                  ; preds = %if.end.i10, %if.end23.dev_name.exit12_crit_edge
  %retval.0.i11 = phi ptr [ %24, %if.end.i10 ], [ %20, %if.end23.dev_name.exit12_crit_edge ]
  %call45 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.104, ptr noundef %retval.0.i11) #12
  %devname = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %devname to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call45, ptr %devname, align 4
  %tobool47.not = icmp eq ptr %call45, null
  br i1 %tobool47.not, label %dev_name.exit12.err_free_crit_edge, label %do.body50

dev_name.exit12.err_free_crit_edge:               ; preds = %dev_name.exit12
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_free

do.body50:                                        ; preds = %dev_name.exit12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_add.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_add, %if.then62)) #12
          to label %do.end67 [label %if.then62], !srcloc !318

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %devname, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_add.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef %27) #12
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %devices_list = getelementptr inbounds %struct.pcmcia_socket, ptr %call, i32 0, i32 37
  %28 = ptrtoint ptr %devices_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn24 = load ptr, ptr %devices_list, align 4
  %cmp71.not25 = icmp eq ptr %.pn24, %devices_list
  br i1 %cmp71.not25, label %do.end67.for.end_crit_edge, label %for.body.lr.ph

do.end67.for.end_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end67
  %function_config82 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 4
  %irq83 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn26 = phi ptr [ %.pn24, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %29 = ptrtoint ptr %func to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %func, align 1
  %func77 = getelementptr i8, ptr %.pn26, i32 -7
  %31 = ptrtoint ptr %func77 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %func77, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp79 = icmp eq i8 %30, %32
  br i1 %cmp79, label %if.then81, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then81:                                        ; preds = %for.body
  %function_config = getelementptr i8, ptr %.pn26, i32 -4
  %33 = ptrtoint ptr %function_config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %function_config, align 4
  %35 = ptrtoint ptr %function_config82 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %function_config82, align 4
  %irq = getelementptr i8, ptr %.pn26, i32 8
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 8
  %38 = ptrtoint ptr %irq83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %irq83, align 8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %34, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %34, i32 1, i32 3, i32 1) #12
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %34, ptr %34, i32 1, ptr elementtype(i32) %34) #12, !srcloc !320
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then81.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !321

if.then81.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then81
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !322

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.inc_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then81.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then81.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %34, i32 noundef %.sink.i.i.i.i) #12
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %.pn26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load ptr, ptr %.pn26, align 4
  %cmp71.not = icmp eq ptr %.pn, %devices_list
  br i1 %cmp71.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end67.for.end_crit_edge
  %socket_device_list91 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 5
  %42 = ptrtoint ptr %devices_list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %devices_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %socket_device_list91, ptr noundef %devices_list, ptr noundef %43) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_add.exit_crit_edge

for.end.list_add.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %socket_device_list91, ptr %prev1.i.i, align 4
  %45 = ptrtoint ptr %socket_device_list91 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %socket_device_list91, align 8
  %prev3.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %devices_list, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %devices_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %socket_device_list91, ptr %devices_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %for.end.list_add.exit_crit_edge
  %call93 = tail call i32 @pcmcia_setup_irq(ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %list_add.exit.if.end100_crit_edge, label %do.end98

list_add.exit.if.end100_crit_edge:                ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end100

do.end98:                                         ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.106) #15
  br label %if.end100

if.end100:                                        ; preds = %do.end98, %list_add.exit.if.end100_crit_edge
  %function_config101 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 4
  %48 = ptrtoint ptr %function_config101 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %function_config101, align 4
  %tobool102.not = icmp eq ptr %49, null
  br i1 %tobool102.not, label %if.then103, label %if.end100.if.end151_crit_edge

if.end100.if.end151_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end151

if.then103:                                       ; preds = %if.end100
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_device_add.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_device_add, %if.then116)) #12
          to label %do.end120 [label %if.then116], !srcloc !318

if.then116:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_device_add.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.108) #12
  br label %do.end120

do.end120:                                        ; preds = %if.then116, %if.then103
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %50 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i14 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %50, i32 noundef 3520, i32 noundef 200) #19
  %tobool122.not = icmp eq ptr %call7.i.i14, null
  br i1 %tobool122.not, label %cleanup, label %if.end125

if.end125:                                        ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  %51 = ptrtoint ptr %function_config101 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i14, ptr %function_config101, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call7.i.i14, i32 noundef 4) #12
  %52 = ptrtoint ptr %call7.i.i14 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 1, ptr %call7.i.i14, align 8
  %53 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %devname, align 4
  %name = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 2, i32 0, i32 2
  %55 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %name, align 8
  %flags = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 2, i32 0, i32 3
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 256, ptr %flags, align 4
  %name.1 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 2, i32 1, i32 2
  %57 = ptrtoint ptr %name.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %name.1, align 8
  %flags.1 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 2, i32 1, i32 3
  %58 = ptrtoint ptr %flags.1 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 256, ptr %flags.1, align 4
  %name144 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 0, i32 2
  %59 = ptrtoint ptr %name144 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %54, ptr %name144, align 8
  %flags147 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 0, i32 3
  %60 = ptrtoint ptr %flags147 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 512, ptr %flags147, align 4
  %name144.1 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 1, i32 2
  %61 = ptrtoint ptr %name144.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %54, ptr %name144.1, align 8
  %flags147.1 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 1, i32 3
  %62 = ptrtoint ptr %flags147.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 512, ptr %flags147.1, align 4
  %name144.2 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 2, i32 2
  %63 = ptrtoint ptr %name144.2 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %54, ptr %name144.2, align 8
  %flags147.2 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 2, i32 3
  %64 = ptrtoint ptr %flags147.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 512, ptr %flags147.2, align 4
  %name144.3 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 3, i32 2
  %65 = ptrtoint ptr %name144.3 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %54, ptr %name144.3, align 8
  %flags147.3 = getelementptr %struct.config_t, ptr %call7.i.i14, i32 0, i32 3, i32 3, i32 3
  %66 = ptrtoint ptr %flags147.3 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 512, ptr %flags147.3, align 4
  br label %if.end151

cleanup:                                          ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  br label %err_unreg

if.end151:                                        ; preds = %if.end125, %if.end100.if.end151_crit_edge
  %67 = ptrtoint ptr %function_config101 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %function_config101, align 4
  %arrayidx158 = getelementptr %struct.config_t, ptr %68, i32 0, i32 2, i32 0
  %arrayidx159 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 0
  %69 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx158, ptr %arrayidx159, align 4
  %arrayidx158.1 = getelementptr %struct.config_t, ptr %68, i32 0, i32 2, i32 1
  %arrayidx159.1 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 1
  %70 = ptrtoint ptr %arrayidx159.1 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %arrayidx158.1, ptr %arrayidx159.1, align 8
  %arrayidx169 = getelementptr %struct.config_t, ptr %68, i32 0, i32 3, i32 0
  %arrayidx171 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 2
  %71 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %arrayidx169, ptr %arrayidx171, align 4
  %arrayidx169.1 = getelementptr %struct.config_t, ptr %68, i32 0, i32 3, i32 1
  %arrayidx171.1 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx171.1 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %arrayidx169.1, ptr %arrayidx171.1, align 8
  %arrayidx169.2 = getelementptr %struct.config_t, ptr %68, i32 0, i32 3, i32 2
  %arrayidx171.2 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 4
  %73 = ptrtoint ptr %arrayidx171.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %arrayidx169.2, ptr %arrayidx171.2, align 4
  %arrayidx169.3 = getelementptr %struct.config_t, ptr %68, i32 0, i32 3, i32 3
  %arrayidx171.3 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 7, i32 5
  %74 = ptrtoint ptr %arrayidx171.3 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx169.3, ptr %arrayidx171.3, align 8
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  %75 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %devname, align 4
  %irq181 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %irq181 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irq181, align 8
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.110, ptr noundef %76, i32 noundef %78) #15
  tail call fastcc void @pcmcia_device_query(ptr noundef nonnull %call7.i.i)
  %call184 = tail call i32 @device_register(ptr noundef %dev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end151.cleanup203_crit_edge, label %if.end151.err_unreg_crit_edge

if.end151.err_unreg_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_unreg

if.end151.cleanup203_crit_edge:                   ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup203

err_unreg:                                        ; preds = %if.end151.err_unreg_crit_edge, %cleanup
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %call.i.i15 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %socket_device_list91) #12
  br i1 %call.i.i15, label %if.end.i.i16, label %err_unreg.list_del.exit_crit_edge

err_unreg.list_del.exit_crit_edge:                ; preds = %err_unreg
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i16:                                     ; preds = %err_unreg
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %79 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %socket_device_list91 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %socket_device_list91, align 8
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i16, %err_unreg.list_del.exit_crit_edge
  %85 = ptrtoint ptr %socket_device_list91 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr inttoptr (i32 256 to ptr), ptr %socket_device_list91, align 8
  %prev.i = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 5, i32 1
  %86 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  br label %err_free

err_free:                                         ; preds = %list_del.exit, %dev_name.exit12.err_free_crit_edge, %dev_name.exit.err_free_crit_edge, %if.end10.err_free_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %ops_mutex, i32 noundef 0) #12
  %87 = ptrtoint ptr %device_count to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %device_count, align 4
  %dec = add i8 %88, -1
  store i8 %dec, ptr %device_count, align 4
  tail call void @mutex_unlock(ptr noundef %ops_mutex) #12
  %arrayidx198 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 19, i32 0
  %89 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx198, align 8
  tail call void @kfree(ptr noundef %90) #12
  %arrayidx198.1 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 19, i32 1
  %91 = ptrtoint ptr %arrayidx198.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx198.1, align 4
  tail call void @kfree(ptr noundef %92) #12
  %arrayidx198.2 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 19, i32 2
  %93 = ptrtoint ptr %arrayidx198.2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx198.2, align 8
  tail call void @kfree(ptr noundef %94) #12
  %arrayidx198.3 = getelementptr %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 19, i32 3
  %95 = ptrtoint ptr %arrayidx198.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx198.3, align 4
  tail call void @kfree(ptr noundef %96) #12
  %devname202 = getelementptr inbounds %struct.pcmcia_device, ptr %call7.i.i, i32 0, i32 1
  %97 = ptrtoint ptr %devname202 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %devname202, align 4
  tail call void @kfree(ptr noundef %98) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %err_put

err_put:                                          ; preds = %err_free, %do.end.err_put_crit_edge
  tail call void @pcmcia_put_socket(ptr noundef nonnull %call) #12
  br label %cleanup203

cleanup203:                                       ; preds = %err_put, %if.end151.cleanup203_crit_edge, %entry.cleanup203_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcmcia_release_dev(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_release_dev.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_release_dev, %if.then)) #12
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_release_dev.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.114) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  tail call void @pcmcia_put_socket(ptr noundef %1) #12
  %prod_id = getelementptr i8, ptr %dev, i32 -24
  %2 = ptrtoint ptr %prod_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prod_id, align 4
  tail call void @kfree(ptr noundef %3) #12
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 -20
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %5) #12
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 -16
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  tail call void @kfree(ptr noundef %7) #12
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 -12
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  tail call void @kfree(ptr noundef %9) #12
  %devname = getelementptr i8, ptr %dev, i32 -108
  %10 = ptrtoint ptr %devname to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %devname, align 4
  tail call void @kfree(ptr noundef %11) #12
  %function_config = getelementptr i8, ptr %dev, i32 -100
  %12 = ptrtoint ptr %function_config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %function_config, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %13, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !323
  tail call void @llvm.prefetch.p0(ptr %13, i32 1, i32 3, i32 1) #12
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #12, !srcloc !324
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !322

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %13, i32 noundef 3) #12
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !325
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_release_function.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_release_dev, %if.then.i.i)) #12
          to label %pcmcia_release_function.exit.i [label %if.then.i.i], !srcloc !318

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pcmcia_release_function.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.116) #12
  br label %pcmcia_release_function.exit.i

pcmcia_release_function.exit.i:                   ; preds = %if.then.i.i, %if.then.i
  tail call void @kfree(ptr noundef %13) #12
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %pcmcia_release_function.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_setup_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_cleanup_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_for_each_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_requery_callback(ptr noundef %dev, ptr nocapture noundef readnone %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pcmcia_requery_callback.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcmcia_requery_callback, %if.then6)) #12
          to label %do.end [label %if.then6], !srcloc !318

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pcmcia_requery_callback.__UNIQUE_ID_ddebug261, ptr noundef %dev, ptr noundef nonnull @.str.120) #12
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  tail call fastcc void @pcmcia_device_query(ptr noundef %add.ptr)
  br label %if.end8

if.end8:                                          ; preds = %do.end, %entry.if.end8_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_rescan_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_suspend_callback(ptr noundef %dev, ptr noundef readnone %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %cmp.not = icmp eq ptr %1, %_data
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #12
  %call.i = tail call i32 @pcmcia_dev_suspend(ptr noundef %dev) #12
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @verify_cis_cache(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcmcia_bus_resume_callback(ptr noundef %dev, ptr noundef readnone %_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -112
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %cmp.not = icmp eq ptr %1, %_data
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %suspended = getelementptr i8, ptr %dev, i32 -32
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %suspended, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %mutex.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #12
  %call.i = tail call i32 @pcmcia_dev_resume(ptr noundef %dev) #12
  tail call void @mutex_unlock(ptr noundef %mutex.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_cis_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 149)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin nounwind }
attributes #17 = { nounwind readonly willreturn }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !52, !54, !55, !57, !59, !60, !62, !64, !65, !67, !69, !71, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !95, !96, !98, !100, !101, !103, !104, !105, !107, !108, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !128, !129, !131, !132, !133, !135, !136, !138, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !170, !172, !174, !175, !176, !178, !179, !181, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !215, !217, !218, !219, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235, !237, !238, !240, !242, !243, !244, !246, !247, !249, !250, !251, !253, !255, !256, !258, !259, !260, !262, !264, !266, !267, !269, !270, !271, !272, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !299, !300, !301, !303, !304, !305, !307, !308}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @__UNIQUE_ID_author236, !1, !"__UNIQUE_ID_author236", i1 false, i1 false}
!1 = !{!"../drivers/pcmcia/ds.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_description237, !3, !"__UNIQUE_ID_description237", i1 false, i1 false}
!3 = !{!"../drivers/pcmcia/ds.c", i32 37, i32 1}
!4 = !{ptr @__UNIQUE_ID_file238, !5, !"__UNIQUE_ID_file238", i1 false, i1 false}
!5 = !{!"../drivers/pcmcia/ds.c", i32 38, i32 1}
!6 = !{ptr @__UNIQUE_ID_license239, !5, !"__UNIQUE_ID_license239", i1 false, i1 false}
!7 = !{ptr @pcmcia_register_driver.__key, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/pcmcia/ds.c", i32 182, i32 2}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pcmcia/ds.c", i32 185, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pcmcia_register_driver.__UNIQUE_ID_ddebug240, !11, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!16 = !{ptr @__ksymtab_pcmcia_register_driver, !17, !"__ksymtab_pcmcia_register_driver", i1 false, i1 false}
!17 = !{!"../drivers/pcmcia/ds.c", i32 197, i32 1}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pcmcia/ds.c", i32 205, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pcmcia_unregister_driver.__UNIQUE_ID_ddebug241, !19, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!22 = !{ptr @__ksymtab_pcmcia_unregister_driver, !23, !"__ksymtab_pcmcia_unregister_driver", i1 false, i1 false}
!23 = !{!"../drivers/pcmcia/ds.c", i32 210, i32 1}
!24 = !{ptr @__ksymtab_pcmcia_dev_present, !25, !"__ksymtab_pcmcia_dev_present", i1 false, i1 false}
!25 = !{!"../drivers/pcmcia/ds.c", i32 1324, i32 1}
!26 = !{ptr @pcmcia_bus_type, !27, !"pcmcia_bus_type", i1 false, i1 false}
!27 = !{!"../drivers/pcmcia/ds.c", i32 1407, i32 17}
!28 = !{ptr @__initcall__kmod_pcmcia__277_1437_init_pcmcia_bus5, !29, !"__initcall__kmod_pcmcia__277_1437_init_pcmcia_bus5", i1 false, i1 false}
!29 = !{!"../drivers/pcmcia/ds.c", i32 1437, i32 1}
!30 = !{ptr @__exitcall_exit_pcmcia_bus, !31, !"__exitcall_exit_pcmcia_bus", i1 false, i1 false}
!31 = !{!"../drivers/pcmcia/ds.c", i32 1447, i32 1}
!32 = !{ptr @__UNIQUE_ID_alias278, !33, !"__UNIQUE_ID_alias278", i1 false, i1 false}
!33 = !{!"../drivers/pcmcia/ds.c", i32 1450, i32 1}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pcmcia/ds.c", i32 50, i32 3}
!36 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pcmcia_check_driver._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pcmcia_check_driver._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pcmcia/ds.c", i32 62, i32 4}
!41 = !{ptr @pcmcia_check_driver._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @pcmcia_check_driver._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pcmcia/ds.c", i32 66, i32 4}
!45 = !{ptr @pcmcia_check_driver._entry.12, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @pcmcia_check_driver._entry_ptr.14, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pcmcia/ds.c", i32 133, i32 8}
!49 = !{ptr @driver_attr_new_id, !48, !"driver_attr_new_id", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pcmcia/ds.c", i32 105, i32 23}
!52 = !{ptr @pcmcia_dev_groups, !53, !"pcmcia_dev_groups", i1 false, i1 false}
!53 = !{!"../drivers/pcmcia/ds.c", i32 1124, i32 1}
!54 = !{ptr @pcmcia_dev_group, !53, !"pcmcia_dev_group", i1 false, i1 false}
!55 = !{ptr @pcmcia_dev_attrs, !56, !"pcmcia_dev_attrs", i1 false, i1 false}
!56 = !{!"../drivers/pcmcia/ds.c", i32 1109, i32 26}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pcmcia/ds.c", i32 1040, i32 8}
!59 = !{ptr @dev_attr_resources, !58, !"dev_attr_resources", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pcmcia/ds.c", i32 1036, i32 32}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pcmcia/ds.c", i32 1068, i32 8}
!64 = !{ptr @dev_attr_pm_state, !63, !"dev_attr_pm_state", i1 false, i1 false}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pcmcia/ds.c", i32 1047, i32 26}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pcmcia/ds.c", i32 1049, i32 26}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pcmcia/ds.c", i32 1061, i32 43}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pcmcia/ds.c", i32 1063, i32 45}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pcmcia/ds.c", i32 1142, i32 2}
!75 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pcmcia_dev_suspend.__UNIQUE_ID_ddebug270, !74, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pcmcia/ds.c", i32 1153, i32 4}
!79 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pcmcia_dev_suspend._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @pcmcia_dev_suspend._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pcmcia/ds.c", i32 1164, i32 3}
!85 = !{ptr @pcmcia_dev_suspend.__UNIQUE_ID_ddebug271, !84, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pcmcia/ds.c", i32 1187, i32 2}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @pcmcia_dev_resume.__UNIQUE_ID_ddebug272, !87, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!90 = !{ptr @.str.32, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pcmcia/ds.c", i32 1196, i32 3}
!92 = !{ptr @pcmcia_dev_resume.__UNIQUE_ID_ddebug273, !91, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pcmcia/ds.c", i32 1027, i32 8}
!95 = !{ptr @dev_attr_function, !94, !"dev_attr_function", i1 false, i1 false}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pcmcia/ds.c", i32 1025, i32 41}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pcmcia/ds.c", i32 1013, i32 1}
!100 = !{ptr @dev_attr_func_id, !99, !"dev_attr_func_id", i1 false, i1 false}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pcmcia/ds.c", i32 1014, i32 1}
!103 = !{ptr @dev_attr_manf_id, !102, !"dev_attr_manf_id", i1 false, i1 false}
!104 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pcmcia/ds.c", i32 1015, i32 1}
!107 = !{ptr @dev_attr_card_id, !106, !"dev_attr_card_id", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pcmcia/ds.c", i32 1016, i32 1}
!110 = !{ptr @dev_attr_prod_id1, !109, !"dev_attr_prod_id1", i1 false, i1 false}
!111 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pcmcia/ds.c", i32 1017, i32 1}
!114 = !{ptr @dev_attr_prod_id2, !113, !"dev_attr_prod_id2", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pcmcia/ds.c", i32 1018, i32 1}
!117 = !{ptr @dev_attr_prod_id3, !116, !"dev_attr_prod_id3", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pcmcia/ds.c", i32 1019, i32 1}
!120 = !{ptr @dev_attr_prod_id4, !119, !"dev_attr_prod_id4", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pcmcia/ds.c", i32 1090, i32 8}
!123 = !{ptr @dev_attr_modalias, !122, !"dev_attr_modalias", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pcmcia/ds.c", i32 1083, i32 25}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pcmcia/ds.c", i32 1107, i32 8}
!128 = !{ptr @dev_attr_allow_func_id_match, !127, !"dev_attr_allow_func_id_match", i1 false, i1 false}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pcmcia/ds.c", i32 909, i32 3}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug266, !130, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!133 = !{ptr @.str.49, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pcmcia/ds.c", i32 911, i32 4}
!135 = !{ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug267, !134, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!136 = !{ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug268, !137, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!137 = !{!"../drivers/pcmcia/ds.c", i32 919, i32 3}
!138 = !{ptr @pcmcia_bus_match.__UNIQUE_ID_ddebug269, !139, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!139 = !{!"../drivers/pcmcia/ds.c", i32 921, i32 4}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pcmcia/ds.c", i32 843, i32 3}
!142 = !{ptr @.str.51, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug263, !141, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!144 = !{ptr @.str.52, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pcmcia/ds.c", i32 873, i32 4}
!146 = !{ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug264, !145, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pcmcia/ds.c", i32 880, i32 3}
!149 = !{ptr @pcmcia_devmatch.__UNIQUE_ID_ddebug265, !148, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!150 = !{ptr @.str.54, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pcmcia/ds.c", i32 748, i32 2}
!152 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pcmcia_load_firmware.__UNIQUE_ID_ddebug262, !151, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!154 = !{ptr @.str.56, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pcmcia/ds.c", i32 753, i32 4}
!156 = !{ptr @pcmcia_load_firmware._entry, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @pcmcia_load_firmware._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.58, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pcmcia/ds.c", i32 760, i32 4}
!160 = !{ptr @pcmcia_load_firmware._entry.57, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @pcmcia_load_firmware._entry_ptr.59, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.60, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pcmcia/ds.c", i32 438, i32 4}
!164 = !{ptr @.str.61, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @pcmcia_device_query.__UNIQUE_ID_ddebug252, !163, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!166 = !{ptr @.str.62, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pcmcia/ds.c", i32 948, i32 26}
!168 = !{ptr @.str.63, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pcmcia/ds.c", i32 951, i32 26}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pcmcia/ds.c", i32 954, i32 26}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pcmcia/ds.c", i32 267, i32 2}
!174 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug244, !173, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!176 = !{ptr @.str.67, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pcmcia/ds.c", i32 281, i32 3}
!178 = !{ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug245, !177, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!179 = !{ptr @.str.68, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/pcmcia/ds.c", i32 284, i32 3}
!181 = !{ptr @.str.69, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pcmcia_device_probe._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @pcmcia_device_probe._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pcmcia/ds.c", i32 292, i32 3}
!186 = !{ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug246, !185, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pcmcia/ds.c", i32 296, i32 2}
!189 = !{ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug247, !188, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!190 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pcmcia/ds.c", i32 298, i32 2}
!192 = !{ptr @pcmcia_device_probe.__UNIQUE_ID_ddebug248, !191, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/pcmcia/ds.c", i32 362, i32 2}
!195 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @pcmcia_device_remove.__UNIQUE_ID_ddebug251, !194, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!197 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/pcmcia/ds.c", i32 379, i32 3}
!199 = !{ptr @pcmcia_device_remove._entry, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @pcmcia_device_remove._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.77, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/pcmcia/ds.c", i32 385, i32 4}
!203 = !{ptr @pcmcia_device_remove._entry.76, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @pcmcia_device_remove._entry_ptr.78, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.79, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pcmcia/ds.c", i32 326, i32 2}
!207 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @pcmcia_card_remove.__UNIQUE_ID_ddebug249, !206, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!209 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.82, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/pcmcia/ds.c", i32 346, i32 3}
!212 = !{ptr @pcmcia_card_remove.__UNIQUE_ID_ddebug250, !211, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!213 = !{ptr @pcmcia_bus_pm_ops, !214, !"pcmcia_bus_pm_ops", i1 false, i1 false}
!214 = !{!"../drivers/pcmcia/ds.c", i32 1403, i32 32}
!215 = !{ptr @.str.83, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/pcmcia/ds.c", i32 1424, i32 3}
!217 = !{ptr @.str.84, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @init_pcmcia_bus._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @init_pcmcia_bus._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.86, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/pcmcia/ds.c", i32 1429, i32 3}
!222 = !{ptr @init_pcmcia_bus._entry.85, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @init_pcmcia_bus._entry_ptr.87, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @pcmcia_bus_interface, !225, !"pcmcia_bus_interface", i1 false, i1 false}
!225 = !{!"../drivers/pcmcia/ds.c", i32 1397, i32 31}
!226 = !{ptr @.str.88, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pcmcia/ds.c", i32 1346, i32 3}
!228 = !{ptr @.str.89, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @pcmcia_bus_add_socket._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @pcmcia_bus_add_socket._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.91, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/pcmcia/ds.c", i32 1352, i32 3}
!233 = !{ptr @pcmcia_bus_add_socket._entry.90, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @pcmcia_bus_add_socket._entry_ptr.92, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @pcmcia_bus_add_socket._entry.93, !236, !"_entry", i1 false, i1 false}
!236 = !{!"../drivers/pcmcia/ds.c", i32 1364, i32 3}
!237 = !{ptr @pcmcia_bus_add_socket._entry_ptr.94, !236, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @pcmcia_bus_callback, !239, !"pcmcia_bus_callback", i1 false, i1 false}
!239 = !{!"../drivers/pcmcia/ds.c", i32 1327, i32 31}
!240 = !{ptr @.str.95, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/pcmcia/ds.c", i32 610, i32 3}
!242 = !{ptr @.str.96, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @pcmcia_card_add.__UNIQUE_ID_ddebug258, !241, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!244 = !{ptr @.str.97, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/pcmcia/ds.c", i32 617, i32 3}
!246 = !{ptr @pcmcia_card_add.__UNIQUE_ID_ddebug259, !245, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!247 = !{ptr @.str.98, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/pcmcia/ds.c", i32 634, i32 4}
!249 = !{ptr @pcmcia_card_add._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @pcmcia_card_add._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.99, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/pcmcia/ds.c", i32 635, i32 26}
!253 = !{ptr @.str.100, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/pcmcia/ds.c", i32 641, i32 4}
!255 = !{ptr @pcmcia_card_add.__UNIQUE_ID_ddebug260, !254, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!256 = !{ptr @.str.101, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/pcmcia/ds.c", i32 489, i32 2}
!258 = !{ptr @.str.102, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @pcmcia_device_add.__UNIQUE_ID_ddebug255, !257, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!260 = !{ptr @.str.103, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/pcmcia/ds.c", i32 516, i32 28}
!262 = !{ptr @.str.104, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/pcmcia/ds.c", i32 519, i32 41}
!264 = !{ptr @.str.105, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/pcmcia/ds.c", i32 522, i32 2}
!266 = !{ptr @pcmcia_device_add.__UNIQUE_ID_ddebug256, !265, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!267 = !{ptr @.str.106, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/pcmcia/ds.c", i32 542, i32 3}
!269 = !{ptr @.str.107, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @pcmcia_device_add._entry, !268, !"_entry", i1 false, i1 false}
!271 = !{ptr @pcmcia_device_add._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.108, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/pcmcia/ds.c", i32 547, i32 3}
!274 = !{ptr @pcmcia_device_add.__UNIQUE_ID_ddebug257, !273, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!275 = !{ptr @.str.110, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/pcmcia/ds.c", i32 571, i32 2}
!277 = !{ptr @.str.111, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @pcmcia_device_add._entry.109, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @pcmcia_device_add._entry_ptr.112, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.113, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/pcmcia/ds.c", i32 241, i32 2}
!282 = !{ptr @.str.114, !281, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @pcmcia_release_dev.__UNIQUE_ID_ddebug243, !281, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!284 = !{ptr @.str.115, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/pcmcia/ds.c", i32 233, i32 2}
!286 = !{ptr @.str.116, !285, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @pcmcia_release_function.__UNIQUE_ID_ddebug242, !285, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!288 = !{ptr @.str.117, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/pcmcia/ds.c", i32 722, i32 3}
!290 = !{ptr @.str.118, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @pcmcia_requery._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @pcmcia_requery._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.119, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/pcmcia/ds.c", i32 663, i32 3}
!295 = !{ptr @.str.120, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @pcmcia_requery_callback.__UNIQUE_ID_ddebug261, !294, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!297 = !{ptr @.str.121, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/pcmcia/ds.c", i32 1243, i32 2}
!299 = !{ptr @.str.122, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @pcmcia_bus_suspend.__UNIQUE_ID_ddebug275, !298, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!301 = !{ptr @.str.123, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/pcmcia/ds.c", i32 1284, i32 2}
!303 = !{ptr @.str.124, !302, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @pcmcia_bus_early_resume.__UNIQUE_ID_ddebug276, !302, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!305 = !{ptr @.str.125, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/pcmcia/ds.c", i32 1236, i32 2}
!307 = !{ptr @.str.126, !306, !"<string literal>", i1 false, i1 false}
!308 = !{ptr @pcmcia_bus_resume.__UNIQUE_ID_ddebug274, !306, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{i64 2148725202, i64 2148725207, i64 2148725220, i64 2148725264, i64 2148725298, i64 2148725319}
!319 = !{!"auto-init"}
!320 = !{i64 2148244917, i64 2148244949, i64 2148244978, i64 2148245012, i64 2148245043, i64 2148245066}
!321 = !{!"branch_weights", i32 1, i32 2000}
!322 = !{!"branch_weights", i32 2000, i32 1}
!323 = !{i64 2148332918}
!324 = !{i64 2148247382, i64 2148247414, i64 2148247443, i64 2148247477, i64 2148247508, i64 2148247531}
!325 = !{i64 2149339366}
