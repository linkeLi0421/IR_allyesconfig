; ModuleID = '/llk/IR_all_yes/drivers/usb/gadget/configfs.c_pt.bc'
source_filename = "../drivers/usb/gadget/configfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+usb_os_desc_prepare_interf_dir\22, \22a\22\09"
module asm "\09.weak\09__crc_usb_os_desc_prepare_interf_dir\09\09\09\09"
module asm "\09.long\09__crc_usb_os_desc_prepare_interf_dir\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_os_desc_prepare_interf_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_os_desc_prepare_interf_dir\22\09\09\09\09\09"
module asm "__kstrtabns_usb_os_desc_prepare_interf_dir:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+unregister_gadget_item\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_gadget_item\09\09\09\09"
module asm "\09.long\09__crc_unregister_gadget_item\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_gadget_item:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_gadget_item\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_gadget_item:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.configfs_group_operations = type { ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.configfs_subsystem = type { %struct.config_group, %struct.mutex }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.configfs_item_operations = type { ptr, ptr, ptr }
%struct.configfs_attribute = type { ptr, ptr, i16, ptr, ptr }
%struct.config_item_type = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_gadget_driver = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, %struct.list_head, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_os_desc = type { ptr, %struct.list_head, i32, i32, ptr, %struct.config_group, ptr }
%struct.gadget_info = type { %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.mutex, [3 x ptr], %struct.list_head, %struct.list_head, %struct.usb_composite_driver, %struct.usb_composite_dev, i8, i8, [14 x i8], %struct.spinlock, i8 }
%struct.usb_composite_driver = type { ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, %struct.usb_gadget_driver }
%struct.usb_composite_dev = type <{ ptr, ptr, ptr, ptr, [14 x i8], i8, i8, ptr, i8, %struct.usb_device_descriptor, i8, %struct.list_head, %struct.list_head, ptr, i8, [3 x i8], ptr, i32, i32, %struct.spinlock, i8, [3 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.usb_os_desc_ext_prop = type { %struct.list_head, i8, i32, ptr, i32, ptr, %struct.config_item }
%struct.usb_function_instance = type { %struct.config_group, %struct.list_head, ptr, ptr, ptr }
%struct.config_usb_cfg = type { %struct.config_group, %struct.config_group, %struct.list_head, %struct.usb_configuration, %struct.list_head, [3 x ptr] }
%struct.usb_configuration = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i16, ptr, %struct.list_head, %struct.list_head, i8, i8, [16 x ptr] }
%struct.usb_function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, [1 x i32], ptr, i8 }
%struct.gadget_config_name = type { %struct.usb_gadget_strings, %struct.usb_string, ptr, %struct.config_group, %struct.list_head }
%struct.usb_gadget_strings = type { i16, ptr }
%struct.usb_string = type { i8, ptr }
%struct.gadget_strings = type { %struct.usb_gadget_strings, [3 x %struct.usb_string], ptr, ptr, ptr, %struct.config_group, %struct.list_head }
%struct.usb_gadget = type { %struct.work_struct, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, ptr, %struct.device, i32, i32, i32, i32, ptr, i24, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"os_desc\00", [24 x i8] zeroinitializer }, align 32
@interf_grp_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr @ext_prop_make, ptr null, ptr null, ptr null, ptr @ext_prop_drop }, [44 x i8] zeroinitializer }, align 32
@interf_grp_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @interf_grp_attr_compatible_id, ptr @interf_grp_attr_sub_compatible_id, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"interface.%s\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_usb_os_desc_prepare_interf_dir = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_os_desc_prepare_interf_dir = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_os_desc_prepare_interf_dir = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_os_desc_prepare_interf_dir to i32), ptr @__kstrtab_usb_os_desc_prepare_interf_dir, ptr @__kstrtabns_usb_os_desc_prepare_interf_dir }, section "___ksymtab+usb_os_desc_prepare_interf_dir", align 4
@__kstrtab_unregister_gadget_item = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_gadget_item = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_gadget_item = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_gadget_item to i32), ptr @__kstrtab_unregister_gadget_item, ptr @__kstrtabns_unregister_gadget_item }, section "___ksymtab_gpl+unregister_gadget_item", align 4
@__initcall__kmod_libcomposite__235_1675_gadget_cfs_init6 = internal global ptr @gadget_cfs_init, section ".initcall6.init", align 4
@gadget_subsys = internal global { %struct.configfs_subsystem, [52 x i8] } { %struct.configfs_subsystem { %struct.config_group { %struct.config_item { ptr null, [20 x i8] c"usb_gadget\00\00\00\00\00\00\00\00\00\00", %struct.kref zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @gadgets_type, ptr null }, %struct.list_head zeroinitializer, ptr null, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @gadget_subsys, i64 132), ptr getelementptr (i8, ptr @gadget_subsys, i64 132) }, ptr getelementptr (i8, ptr @gadget_subsys, i64 80), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [52 x i8] zeroinitializer }, align 32
@__exitcall_gadget_cfs_exit = internal global ptr @gadget_cfs_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ext_prop_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @usb_os_desc_ext_prop_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@ext_prop_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ext_prop_attr_type, ptr @ext_prop_attr_data, ptr null], [20 x i8] zeroinitializer }, align 32
@ext_prop_attr_type = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.3, ptr null, i16 420, ptr @ext_prop_type_show, ptr @ext_prop_type_store }, [44 x i8] zeroinitializer }, align 32
@ext_prop_attr_data = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.5, ptr null, i16 420, ptr @ext_prop_data_show, ptr @ext_prop_data_store }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@interf_grp_attr_compatible_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.6, ptr null, i16 420, ptr @interf_grp_compatible_id_show, ptr @interf_grp_compatible_id_store }, [44 x i8] zeroinitializer }, align 32
@interf_grp_attr_sub_compatible_id = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.7, ptr null, i16 420, ptr @interf_grp_sub_compatible_id_show, ptr @interf_grp_sub_compatible_id_store }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"compatible_id\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sub_compatible_id\00", [46 x i8] zeroinitializer }, align 32
@gadgets_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @gadgets_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"gadget_subsys.su_mutex.wait_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gadget_subsys.su_mutex\00", [41 x i8] zeroinitializer }, align 32
@gadgets_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gadgets_make, ptr null, ptr null, ptr @gadgets_drop }, [44 x i8] zeroinitializer }, align 32
@gadget_root_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gadget_root_item_ops, ptr null, ptr @gadget_root_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"functions\00", [22 x i8] zeroinitializer }, align 32
@functions_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @functions_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"configs\00", [24 x i8] zeroinitializer }, align 32
@config_desc_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @config_desc_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"strings\00", [24 x i8] zeroinitializer }, align 32
@gadget_strings_strings_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @gadget_strings_strings_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@os_desc_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @os_desc_ops, ptr null, ptr @os_desc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadgets_make.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&gi->spinlock\00", [18 x i8] zeroinitializer }, align 32
@gadgets_make.__key.14 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gi->lock\00", [22 x i8] zeroinitializer }, align 32
@configfs_driver_template = internal constant { %struct.usb_gadget_driver, [32 x i8] } { %struct.usb_gadget_driver { ptr null, i32 6, ptr @configfs_composite_bind, ptr @configfs_composite_unbind, ptr @configfs_composite_setup, ptr @configfs_composite_disconnect, ptr @configfs_composite_suspend, ptr @configfs_composite_resume, ptr @configfs_composite_reset, %struct.device_driver { ptr @.str.52, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, %struct.list_head zeroinitializer, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@gadget_root_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gadget_info_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gadget_root_attrs = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @gadget_dev_desc_attr_bDeviceClass, ptr @gadget_dev_desc_attr_bDeviceSubClass, ptr @gadget_dev_desc_attr_bDeviceProtocol, ptr @gadget_dev_desc_attr_bMaxPacketSize0, ptr @gadget_dev_desc_attr_idVendor, ptr @gadget_dev_desc_attr_idProduct, ptr @gadget_dev_desc_attr_bcdDevice, ptr @gadget_dev_desc_attr_bcdUSB, ptr @gadget_dev_desc_attr_UDC, ptr @gadget_dev_desc_attr_max_speed, ptr null], [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/usb/gadget/configfs.c\00", [34 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bDeviceClass = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.17, ptr null, i16 420, ptr @gadget_dev_desc_bDeviceClass_show, ptr @gadget_dev_desc_bDeviceClass_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bDeviceSubClass = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.19, ptr null, i16 420, ptr @gadget_dev_desc_bDeviceSubClass_show, ptr @gadget_dev_desc_bDeviceSubClass_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bDeviceProtocol = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.20, ptr null, i16 420, ptr @gadget_dev_desc_bDeviceProtocol_show, ptr @gadget_dev_desc_bDeviceProtocol_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bMaxPacketSize0 = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.21, ptr null, i16 420, ptr @gadget_dev_desc_bMaxPacketSize0_show, ptr @gadget_dev_desc_bMaxPacketSize0_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_idVendor = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.22, ptr null, i16 420, ptr @gadget_dev_desc_idVendor_show, ptr @gadget_dev_desc_idVendor_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_idProduct = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.24, ptr null, i16 420, ptr @gadget_dev_desc_idProduct_show, ptr @gadget_dev_desc_idProduct_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bcdDevice = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.25, ptr null, i16 420, ptr @gadget_dev_desc_bcdDevice_show, ptr @gadget_dev_desc_bcdDevice_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_bcdUSB = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.26, ptr null, i16 420, ptr @gadget_dev_desc_bcdUSB_show, ptr @gadget_dev_desc_bcdUSB_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_UDC = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.27, ptr null, i16 420, ptr @gadget_dev_desc_UDC_show, ptr @gadget_dev_desc_UDC_store }, [44 x i8] zeroinitializer }, align 32
@gadget_dev_desc_attr_max_speed = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.29, ptr null, i16 420, ptr @gadget_dev_desc_max_speed_show, ptr @gadget_dev_desc_max_speed_store }, [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bDeviceClass\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%02x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bDeviceSubClass\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bDeviceProtocol\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bMaxPacketSize0\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idVendor\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%04x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idProduct\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcdDevice\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bcdUSB\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"UDC\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_speed\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"super-speed-plus\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"super-speed\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-speed\00", [22 x i8] zeroinitializer }, align 32
@functions_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @function_make, ptr null, ptr null, ptr @function_drop }, [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@function_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.16, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unable to locate . in FUNC.INSTANCE\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"function_make\00", [18 x i8] zeroinitializer }, align 32
@function_make._entry_ptr = internal global ptr @function_make._entry, section ".printk_index", align 4
@config_desc_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @config_desc_make, ptr null, ptr null, ptr @config_desc_drop }, [44 x i8] zeroinitializer }, align 32
@config_desc_make._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.16, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Unable to locate . in name.bConfigurationValue\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"config_desc_make\00", [47 x i8] zeroinitializer }, align 32
@config_desc_make._entry_ptr = internal global ptr @config_desc_make._entry, section ".printk_index", align 4
@gadget_config_type = internal constant { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gadget_config_item_ops, ptr null, ptr @gadget_config_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadget_config_name_strings_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr null, ptr @gadget_config_name_strings_ops, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadget_config_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gadget_config_attr_release, ptr @config_usb_cfg_link, ptr @config_usb_cfg_unlink }, [20 x i8] zeroinitializer }, align 32
@gadget_config_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @gadget_config_desc_attr_MaxPower, ptr @gadget_config_desc_attr_bmAttributes, ptr null], [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unable to locate function to unbind\0A\00", [59 x i8] zeroinitializer }, align 32
@gadget_config_desc_attr_MaxPower = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.41, ptr null, i16 420, ptr @gadget_config_desc_MaxPower_show, ptr @gadget_config_desc_MaxPower_store }, [44 x i8] zeroinitializer }, align 32
@gadget_config_desc_attr_bmAttributes = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.43, ptr null, i16 420, ptr @gadget_config_desc_bmAttributes_show, ptr @gadget_config_desc_bmAttributes_store }, [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MaxPower\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bmAttributes\00", [19 x i8] zeroinitializer }, align 32
@gadget_config_name_strings_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gadget_config_name_strings_make, ptr null, ptr null, ptr @gadget_config_name_strings_drop }, [44 x i8] zeroinitializer }, align 32
@gadget_config_name_langid_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gadget_config_name_langid_item_ops, ptr null, ptr @gadget_config_name_langid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadget_config_name_langid_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gadget_config_name_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gadget_config_name_langid_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gadget_config_name_attr_configuration, ptr null], [24 x i8] zeroinitializer }, align 32
@gadget_config_name_attr_configuration = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.44, ptr null, i16 420, ptr @gadget_config_name_configuration_show, ptr @gadget_config_name_configuration_store }, [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configuration\00", [18 x i8] zeroinitializer }, align 32
@gadget_strings_strings_ops = internal global { %struct.configfs_group_operations, [44 x i8] } { %struct.configfs_group_operations { ptr null, ptr @gadget_strings_strings_make, ptr null, ptr null, ptr @gadget_strings_strings_drop }, [44 x i8] zeroinitializer }, align 32
@gadget_strings_langid_type = internal global { %struct.config_item_type, [44 x i8] } { %struct.config_item_type { ptr null, ptr @gadget_strings_langid_item_ops, ptr null, ptr @gadget_strings_langid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gadget_strings_langid_item_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr @gadget_strings_attr_release, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@gadget_strings_langid_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gadget_strings_attr_manufacturer, ptr @gadget_strings_attr_product, ptr @gadget_strings_attr_serialnumber, ptr null], [16 x i8] zeroinitializer }, align 32
@gadget_strings_attr_manufacturer = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.45, ptr null, i16 420, ptr @gadget_strings_manufacturer_show, ptr @gadget_strings_manufacturer_store }, [44 x i8] zeroinitializer }, align 32
@gadget_strings_attr_product = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.46, ptr null, i16 420, ptr @gadget_strings_product_show, ptr @gadget_strings_product_store }, [44 x i8] zeroinitializer }, align 32
@gadget_strings_attr_serialnumber = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.47, ptr null, i16 420, ptr @gadget_strings_serialnumber_show, ptr @gadget_strings_serialnumber_store }, [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"serialnumber\00", [19 x i8] zeroinitializer }, align 32
@os_desc_ops = internal global { %struct.configfs_item_operations, [20 x i8] } { %struct.configfs_item_operations { ptr null, ptr @os_desc_link, ptr @os_desc_unlink }, [20 x i8] zeroinitializer }, align 32
@os_desc_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @os_desc_attr_use, ptr @os_desc_attr_b_vendor_code, ptr @os_desc_attr_qw_sign, ptr null], [16 x i8] zeroinitializer }, align 32
@os_desc_attr_use = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.48, ptr null, i16 420, ptr @os_desc_use_show, ptr @os_desc_use_store }, [44 x i8] zeroinitializer }, align 32
@os_desc_attr_b_vendor_code = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.49, ptr null, i16 420, ptr @os_desc_b_vendor_code_show, ptr @os_desc_b_vendor_code_store }, [44 x i8] zeroinitializer }, align 32
@os_desc_attr_qw_sign = internal global { %struct.configfs_attribute, [44 x i8] } { %struct.configfs_attribute { ptr @.str.50, ptr null, i16 420, ptr @os_desc_qw_sign_show, ptr @os_desc_qw_sign_store }, [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"use\00", [28 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"b_vendor_code\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qw_sign\00", [24 x i8] zeroinitializer }, align 32
@composite_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&cdev->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"configfs-gadget\00", [16 x i8] zeroinitializer }, align 32
@configfs_composite_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.16, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Need at least one configuration in %s.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"configfs_composite_bind\00", [40 x i8] zeroinitializer }, align 32
@configfs_composite_bind._entry_ptr = internal global ptr @configfs_composite_bind._entry, section ".printk_index", align 4
@configfs_composite_bind._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.16, i32 1306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Config %s/%d of %s needs at least one function.\0A\00", [45 x i8] zeroinitializer }, align 32
@configfs_composite_bind._entry_ptr.57 = internal global ptr @configfs_composite_bind._entry.55, section ".printk_index", align 4
@otg_desc = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@purge_configs_funcs.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.58, ptr @.str.59, ptr @.str.16, ptr @.str.60, i8 1, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"libcomposite\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"purge_configs_funcs\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unbind function '%s'/%p\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 6]
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1207, i32 45 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"interf_grp_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1117, i32 41 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"interf_grp_attrs\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1177, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1219, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1220, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"gadget_subsys\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1646, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"ext_prop_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1052, i32 40 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"ext_prop_attrs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1039, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"ext_prop_attr_type\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [19 x i8] c"ext_prop_attr_data\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1036, i32 1 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 944, i32 23 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1037, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"interf_grp_attr_compatible_id\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [34 x i8] c"interf_grp_attr_sub_compatible_id\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1174, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1175, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant [13 x i8] c"gadgets_type\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1641, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1653, i32 14 }
@___asan_gen_.125 = private unnamed_addr constant [12 x i8] c"gadgets_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1636, i32 41 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"gadget_root_type\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 566, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1585, i32 52 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"functions_type\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 648, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1589, i32 50 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"config_desc_type\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 749, i32 38 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1593, i32 50 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"gadget_strings_strings_type\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [13 x i8] c"os_desc_type\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 930, i32 32 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1607, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1608, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"configfs_driver_template\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1554, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [21 x i8] c"gadget_root_item_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 398, i32 40 }
@___asan_gen_.170 = private unnamed_addr constant [18 x i8] c"gadget_root_attrs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 353, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 391, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [34 x i8] c"gadget_dev_desc_attr_bDeviceClass\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [37 x i8] c"gadget_dev_desc_attr_bDeviceSubClass\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [37 x i8] c"gadget_dev_desc_attr_bDeviceProtocol\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [37 x i8] c"gadget_dev_desc_attr_bMaxPacketSize0\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [30 x i8] c"gadget_dev_desc_attr_idVendor\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [31 x i8] c"gadget_dev_desc_attr_idProduct\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"gadget_dev_desc_attr_bcdDevice\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [28 x i8] c"gadget_dev_desc_attr_bcdUSB\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [25 x i8] c"gadget_dev_desc_attr_UDC\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [31 x i8] c"gadget_dev_desc_attr_max_speed\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 342, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 174, i32 1 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 343, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 344, i32 1 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 345, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 346, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 178, i32 1 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 347, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 348, i32 1 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 349, i32 1 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 350, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 237, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 351, i32 1 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 320, i32 20 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 322, i32 25 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 324, i32 25 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 326, i32 25 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 328, i32 25 }
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"functions_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 643, i32 41 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 590, i32 36 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 597, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [16 x i8] c"config_desc_ops\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 744, i32 41 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 691, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"gadget_config_type\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 560, i32 38 }
@___asan_gen_.290 = private unnamed_addr constant [32 x i8] c"gadget_config_name_strings_type\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [23 x i8] c"gadget_config_item_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 495, i32 40 }
@___asan_gen_.296 = private unnamed_addr constant [20 x i8] c"gadget_config_attrs\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 554, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 492, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant [33 x i8] c"gadget_config_desc_attr_MaxPower\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [37 x i8] c"gadget_config_desc_attr_bmAttributes\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 551, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 507, i32 23 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 552, i32 1 }
@___asan_gen_.317 = private unnamed_addr constant [31 x i8] c"gadget_config_name_strings_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 671, i32 1 }
@___asan_gen_.320 = private unnamed_addr constant [31 x i8] c"gadget_config_name_langid_type\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [35 x i8] c"gadget_config_name_langid_item_ops\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 670, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant [32 x i8] c"gadget_config_name_langid_attrs\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 655, i32 35 }
@___asan_gen_.329 = private unnamed_addr constant [38 x i8] c"gadget_config_name_attr_configuration\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 653, i32 1 }
@___asan_gen_.335 = private unnamed_addr constant [27 x i8] c"gadget_strings_strings_ops\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 778, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant [27 x i8] c"gadget_strings_langid_type\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [31 x i8] c"gadget_strings_langid_item_ops\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 777, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [28 x i8] c"gadget_strings_langid_attrs\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 758, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant [33 x i8] c"gadget_strings_attr_manufacturer\00", align 1
@___asan_gen_.350 = private unnamed_addr constant [28 x i8] c"gadget_strings_attr_product\00", align 1
@___asan_gen_.353 = private unnamed_addr constant [33 x i8] c"gadget_strings_attr_serialnumber\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 754, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 755, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 756, i32 1 }
@___asan_gen_.365 = private unnamed_addr constant [12 x i8] c"os_desc_ops\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 925, i32 40 }
@___asan_gen_.368 = private unnamed_addr constant [14 x i8] c"os_desc_attrs\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 872, i32 35 }
@___asan_gen_.371 = private unnamed_addr constant [17 x i8] c"os_desc_attr_use\00", align 1
@___asan_gen_.374 = private unnamed_addr constant [27 x i8] c"os_desc_attr_b_vendor_code\00", align 1
@___asan_gen_.377 = private unnamed_addr constant [21 x i8] c"os_desc_attr_qw_sign\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 868, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 869, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 870, i32 1 }
@___asan_gen_.389 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 574, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1568, i32 12 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1293, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1304, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant [9 x i8] c"otg_desc\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 33, i32 44 }
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private constant [33 x i8] c"../drivers/usb/gadget/configfs.c\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 1255, i32 5 }
@llvm.compiler.used = appending global [129 x ptr] [ptr @__exitcall_gadget_cfs_exit, ptr @__initcall__kmod_libcomposite__235_1675_gadget_cfs_init6, ptr @__ksymtab_unregister_gadget_item, ptr @__ksymtab_usb_os_desc_prepare_interf_dir, ptr @config_desc_make._entry, ptr @config_desc_make._entry_ptr, ptr @configfs_composite_bind._entry, ptr @configfs_composite_bind._entry.55, ptr @configfs_composite_bind._entry_ptr, ptr @configfs_composite_bind._entry_ptr.57, ptr @function_make._entry, ptr @function_make._entry_ptr, ptr @gadget_cfs_exit, ptr @.str, ptr @interf_grp_ops, ptr @interf_grp_attrs, ptr @.str.1, ptr @.str.2, ptr @gadget_subsys, ptr @ext_prop_ops, ptr @ext_prop_attrs, ptr @ext_prop_attr_type, ptr @ext_prop_attr_data, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @interf_grp_attr_compatible_id, ptr @interf_grp_attr_sub_compatible_id, ptr @.str.6, ptr @.str.7, ptr @gadgets_type, ptr @.str.8, ptr @.str.9, ptr @gadgets_ops, ptr @gadget_root_type, ptr @.str.10, ptr @functions_type, ptr @.str.11, ptr @config_desc_type, ptr @.str.12, ptr @gadget_strings_strings_type, ptr @os_desc_type, ptr @gadgets_make.__key, ptr @.str.13, ptr @gadgets_make.__key.14, ptr @.str.15, ptr @configfs_driver_template, ptr @gadget_root_item_ops, ptr @gadget_root_attrs, ptr @.str.16, ptr @gadget_dev_desc_attr_bDeviceClass, ptr @gadget_dev_desc_attr_bDeviceSubClass, ptr @gadget_dev_desc_attr_bDeviceProtocol, ptr @gadget_dev_desc_attr_bMaxPacketSize0, ptr @gadget_dev_desc_attr_idVendor, ptr @gadget_dev_desc_attr_idProduct, ptr @gadget_dev_desc_attr_bcdDevice, ptr @gadget_dev_desc_attr_bcdUSB, ptr @gadget_dev_desc_attr_UDC, ptr @gadget_dev_desc_attr_max_speed, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @functions_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @config_desc_ops, ptr @.str.38, ptr @.str.39, ptr @gadget_config_type, ptr @gadget_config_name_strings_type, ptr @gadget_config_item_ops, ptr @gadget_config_attrs, ptr @.str.40, ptr @gadget_config_desc_attr_MaxPower, ptr @gadget_config_desc_attr_bmAttributes, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @gadget_config_name_strings_ops, ptr @gadget_config_name_langid_type, ptr @gadget_config_name_langid_item_ops, ptr @gadget_config_name_langid_attrs, ptr @gadget_config_name_attr_configuration, ptr @.str.44, ptr @gadget_strings_strings_ops, ptr @gadget_strings_langid_type, ptr @gadget_strings_langid_item_ops, ptr @gadget_strings_langid_attrs, ptr @gadget_strings_attr_manufacturer, ptr @gadget_strings_attr_product, ptr @gadget_strings_attr_serialnumber, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @os_desc_ops, ptr @os_desc_attrs, ptr @os_desc_attr_use, ptr @os_desc_attr_b_vendor_code, ptr @os_desc_attr_qw_sign, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @composite_init_dev.__key, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @otg_desc, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interf_grp_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interf_grp_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_subsys to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_prop_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_prop_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_prop_attr_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ext_prop_attr_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interf_grp_attr_compatible_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interf_grp_attr_sub_compatible_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgets_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgets_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_root_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_desc_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_strings_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgets_make.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadgets_make.__key.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_driver_template to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_root_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_root_attrs to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bDeviceClass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bDeviceSubClass to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bDeviceProtocol to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bMaxPacketSize0 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_idVendor to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_idProduct to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bcdDevice to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_bcdUSB to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_UDC to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_dev_desc_attr_max_speed to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @functions_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @function_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_desc_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_desc_make._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_strings_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_desc_attr_MaxPower to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_desc_attr_bmAttributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_strings_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_langid_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_langid_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_langid_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_config_name_attr_configuration to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_strings_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_langid_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_langid_item_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_langid_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_attr_manufacturer to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_attr_product to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gadget_strings_attr_serialnumber to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_attr_use to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_attr_b_vendor_code to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @os_desc_attr_qw_sign to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @composite_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_composite_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @configfs_composite_bind._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otg_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @check_user_usb_string(ptr noundef %name, ptr nocapture noundef writeonly %stringtab_dev) local_unnamed_addr #0 align 64 {
entry:
  %num = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num) #13
  %0 = ptrtoint ptr %num to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %num, align 2, !annotation !222
  %call = call i32 @kstrtou16(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %num, align 2
  %call1 = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %2) #13
  br i1 %call1, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %num, align 2
  %5 = ptrtoint ptr %stringtab_dev to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %stringtab_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_validate_langid(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb_os_desc_prepare_interf_dir(ptr noundef %parent, i32 noundef %n_interf, ptr nocapture noundef readonly %desc, ptr nocapture noundef readonly %names, ptr noundef %owner) #0 align 64 {
if.end56:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #16
  %tobool59.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool59.not, label %if.end56.cleanup_crit_edge, label %if.end62

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end62:                                         ; preds = %if.end56
  %add.ptr63 = getelementptr i8, ptr %call7.i.i, i32 80
  %add.ptr64 = getelementptr i8, ptr %call7.i.i, i32 100
  %1 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %owner, ptr %add.ptr63, align 8
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef %add.ptr63) #13
  %group_entry.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %parent, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %3, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i108, label %if.end62.configfs_add_default_group.exit_crit_edge

if.end62.configfs_add_default_group.exit_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i108:                                  ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %group_entry.i, ptr %3, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i108, %if.end62.configfs_add_default_group.exit_crit_edge
  %ct_group_ops = getelementptr i8, ptr %call7.i.i, i32 108
  %8 = ptrtoint ptr %ct_group_ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @interf_grp_ops, ptr %ct_group_ops, align 4
  %ct_attrs = getelementptr i8, ptr %call7.i.i, i32 112
  %9 = ptrtoint ptr %ct_attrs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @interf_grp_attrs, ptr %ct_attrs, align 8
  %10 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %owner, ptr %add.ptr64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_interf)
  %tobool66.not119 = icmp eq i32 %n_interf, 0
  br i1 %tobool66.not119, label %configfs_add_default_group.exit.cleanup_crit_edge, label %while.body.lr.ph

configfs_add_default_group.exit.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

while.body.lr.ph:                                 ; preds = %configfs_add_default_group.exit
  %default_groups.i110 = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i111 = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  br label %while.body

while.body:                                       ; preds = %configfs_add_default_group.exit115.while.body_crit_edge, %while.body.lr.ph
  %n_interf.addr.0120 = phi i32 [ %n_interf, %while.body.lr.ph ], [ %dec, %configfs_add_default_group.exit115.while.body_crit_edge ]
  %dec = add i32 %n_interf.addr.0120, -1
  %arrayidx = getelementptr ptr, ptr %desc, i32 %dec
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %owner67 = getelementptr inbounds %struct.usb_os_desc, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %owner67 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %owner, ptr %owner67, align 4
  %group = getelementptr inbounds %struct.usb_os_desc, ptr %12, i32 0, i32 5
  tail call void @config_group_init_type_name(ptr noundef %group, ptr noundef nonnull @.str.1, ptr noundef %add.ptr64) #13
  %arrayidx69 = getelementptr ptr, ptr %names, i32 %dec
  %14 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx69, align 4
  %call70 = tail call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %group, ptr noundef nonnull @.str.2, ptr noundef %15) #13
  %group_entry.i109 = getelementptr inbounds %struct.usb_os_desc, ptr %12, i32 0, i32 5, i32 4
  %16 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i111, align 4
  %call.i.i.i112 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i109, ptr noundef %17, ptr noundef %default_groups.i110) #13
  br i1 %call.i.i.i112, label %if.end.i.i.i114, label %while.body.configfs_add_default_group.exit115_crit_edge

while.body.configfs_add_default_group.exit115_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit115

if.end.i.i.i114:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %prev.i.i111 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group_entry.i109, ptr %prev.i.i111, align 4
  %19 = ptrtoint ptr %group_entry.i109 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %default_groups.i110, ptr %group_entry.i109, align 4
  %prev3.i.i.i113 = getelementptr inbounds %struct.usb_os_desc, ptr %12, i32 0, i32 5, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i113, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %group_entry.i109, ptr %17, align 4
  br label %configfs_add_default_group.exit115

configfs_add_default_group.exit115:               ; preds = %if.end.i.i.i114, %while.body.configfs_add_default_group.exit115_crit_edge
  %tobool66.not = icmp eq i32 %dec, 0
  br i1 %tobool66.not, label %configfs_add_default_group.exit115.cleanup_crit_edge, label %configfs_add_default_group.exit115.while.body_crit_edge

configfs_add_default_group.exit115.while.body_crit_edge: ; preds = %configfs_add_default_group.exit115
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

configfs_add_default_group.exit115.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit115
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %configfs_add_default_group.exit115.cleanup_crit_edge, %configfs_add_default_group.exit.cleanup_crit_edge, %if.end56.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end56.cleanup_crit_edge ], [ %call7.i.i, %configfs_add_default_group.exit.cleanup_crit_edge ], [ %call7.i.i, %configfs_add_default_group.exit115.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @config_item_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @unregister_gadget_item(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %udc_name.i = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10, i32 10
  %0 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc_name.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.unregister_gadget.exit_crit_edge, label %if.end.i

entry.unregister_gadget.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_gadget.exit

if.end.i:                                         ; preds = %entry
  %gadget_driver.i = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10
  %call.i = tail call i32 @usb_gadget_unregister_driver(ptr noundef %gadget_driver.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.unregister_gadget.exit_crit_edge

if.end.i.unregister_gadget.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %unregister_gadget.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_name.i, align 4
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udc_name.i, align 4
  br label %unregister_gadget.exit

unregister_gadget.exit:                           ; preds = %if.end5.i, %if.end.i.unregister_gadget.exit_crit_edge, %entry.unregister_gadget.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_cfs_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_group_init(ptr noundef nonnull @gadget_subsys) #13
  %call = tail call i32 @configfs_register_subsystem(ptr noundef nonnull @gadget_subsys) #13
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gadget_cfs_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @configfs_unregister_subsystem(ptr noundef nonnull @gadget_subsys) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @configfs_unregister_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ext_prop_make(ptr noundef %group, ptr noundef %name) #0 align 64 {
kzalloc.exit:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #16
  %tobool34.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool34.not, label %kzalloc.exit.cleanup_crit_edge, label %if.end37

kzalloc.exit.cleanup_crit_edge:                   ; preds = %kzalloc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end37:                                         ; preds = %kzalloc.exit
  %add.ptr38 = getelementptr i8, ptr %call7.i.i, i32 80
  %ct_item_ops = getelementptr i8, ptr %call7.i.i, i32 84
  %1 = ptrtoint ptr %ct_item_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @ext_prop_ops, ptr %ct_item_ops, align 4
  %ct_attrs = getelementptr i8, ptr %call7.i.i, i32 92
  %2 = ptrtoint ptr %ct_attrs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ext_prop_attrs, ptr %ct_attrs, align 4
  %owner = getelementptr i8, ptr %group, i32 80
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %owner, align 4
  %5 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %add.ptr38, align 8
  %item = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %call7.i.i, i32 0, i32 6
  tail call void @config_item_init_type_name(ptr noundef %item, ptr noundef %name, ptr noundef %add.ptr38) #13
  %call41 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #13
  %name42 = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %name42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call41, ptr %name42, align 8
  %tobool44.not = icmp eq ptr %call41, null
  br i1 %tobool44.not, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %ext_prop_len = getelementptr i8, ptr %group, i32 -12
  %7 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ext_prop_len, align 4
  %add48 = add i32 %8, 14
  store i32 %add48, ptr %ext_prop_len, align 4
  %9 = ptrtoint ptr %name42 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name42, align 8
  %call50 = tail call i32 @strlen(ptr noundef %10) #17
  %mul = shl i32 %call50, 1
  %add51 = add i32 %mul, 2
  %name_len = getelementptr inbounds %struct.usb_os_desc_ext_prop, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %name_len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add51, ptr %name_len, align 4
  %opts_mutex = getelementptr i8, ptr %group, i32 -4
  %12 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %opts_mutex, align 4
  %tobool52.not = icmp eq ptr %13, null
  br i1 %tobool52.not, label %if.end47.if.end55_crit_edge, label %if.then53

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %13, i32 noundef 0) #13
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end47.if.end55_crit_edge
  %14 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %name_len, align 4
  %16 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ext_prop_len, align 4
  %add58 = add i32 %17, %15
  store i32 %add58, ptr %ext_prop_len, align 4
  %ext_prop60 = getelementptr i8, ptr %group, i32 -20
  %prev.i = getelementptr i8, ptr %group, i32 -16
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %19, ptr noundef %ext_prop60) #13
  br i1 %call.i.i, label %if.end.i.i103, label %if.end55.list_add_tail.exit_crit_edge

if.end55.list_add_tail.exit_crit_edge:            ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i103:                                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ext_prop60, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i103, %if.end55.list_add_tail.exit_crit_edge
  %ext_prop_count = getelementptr i8, ptr %group, i32 -8
  %24 = ptrtoint ptr %ext_prop_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ext_prop_count, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %ext_prop_count, align 4
  %26 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %opts_mutex, align 4
  %tobool62.not = icmp eq ptr %27, null
  br i1 %tobool62.not, label %list_add_tail.exit.cleanup_crit_edge, label %if.then63

list_add_tail.exit.cleanup_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then63:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull %27) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %list_add_tail.exit.cleanup_crit_edge, %if.then45, %kzalloc.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then45 ], [ %item, %if.then63 ], [ %item, %list_add_tail.exit.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %kzalloc.exit.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ext_prop_drop(ptr nocapture noundef %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -28
  %opts_mutex = getelementptr i8, ptr %group, i32 -4
  %0 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %opts_mutex, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %add.ptr.i) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %item, i32 -24
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %add.ptr.i, align 4
  %prev.i = getelementptr i8, ptr %item, i32 -24
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %ext_prop_count = getelementptr i8, ptr %group, i32 -8
  %10 = ptrtoint ptr %ext_prop_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ext_prop_count, align 4
  %dec = add i32 %11, -1
  store i32 %dec, ptr %ext_prop_count, align 4
  %name = getelementptr i8, ptr %item, i32 -12
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %13) #13
  %name_len = getelementptr i8, ptr %item, i32 -16
  %14 = ptrtoint ptr %name_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %name_len, align 4
  %data_len = getelementptr i8, ptr %item, i32 -8
  %16 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len, align 4
  %ext_prop_len = getelementptr i8, ptr %group, i32 -12
  %18 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ext_prop_len, align 4
  %20 = add i32 %15, %17
  %add4.neg = sub i32 -14, %20
  %sub = add i32 %add4.neg, %19
  store i32 %sub, ptr %ext_prop_len, align 4
  %21 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %opts_mutex, align 4
  %tobool6.not = icmp eq ptr %22, null
  br i1 %tobool6.not, label %list_del.exit.if.end9_crit_edge, label %if.then7

list_del.exit.if.end9_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull %22) #13
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %list_del.exit.if.end9_crit_edge
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_init_type_name(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_os_desc_ext_prop_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -28
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext_prop_type_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr i8, ptr %item, i32 -20
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext_prop_type_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %type = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr i8, ptr %item, i32 36
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type) #13
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %type, align 1, !annotation !222
  %opts_mutex = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opts_mutex, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %4, i32 noundef 0) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call4 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %type) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end7:                                          ; preds = %if.end
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type, align 1
  %7 = add i8 %6, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %7)
  %8 = icmp ult i8 %7, -7
  br i1 %8, label %if.end7.end_crit_edge, label %if.end13

if.end7.end_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %end

if.end13:                                         ; preds = %if.end7
  %type14 = getelementptr i8, ptr %item, i32 -20
  %9 = ptrtoint ptr %type14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type14, align 4
  %.off = add i8 %10, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %land.lhs.true, label %if.end13.if.else_crit_edge

if.end13.if.else_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end13
  %11 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %land.lhs.true.if.else_crit_edge [
    i8 1, label %land.lhs.true.if.then39_crit_edge
    i8 2, label %land.lhs.true.if.then39_crit_edge93
    i8 6, label %land.lhs.true.if.then39_crit_edge94
  ]

land.lhs.true.if.then39_crit_edge94:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

land.lhs.true.if.then39_crit_edge93:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

land.lhs.true.if.then39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then39

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then39:                                        ; preds = %land.lhs.true.if.then39_crit_edge, %land.lhs.true.if.then39_crit_edge93, %land.lhs.true.if.then39_crit_edge94
  %data_len = getelementptr i8, ptr %item, i32 -8
  %12 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len, align 4
  %shl = shl i32 %13, 1
  store i32 %shl, ptr %data_len, align 4
  br label %if.end69

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end13.if.else_crit_edge
  %14 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %10, label %if.else.if.end69_crit_edge [
    i8 1, label %if.else.land.lhs.true54_crit_edge
    i8 2, label %if.else.land.lhs.true54_crit_edge95
    i8 6, label %if.else.land.lhs.true54_crit_edge96
  ]

if.else.land.lhs.true54_crit_edge96:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

if.else.land.lhs.true54_crit_edge95:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

if.else.land.lhs.true54_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true54

if.else.if.end69_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

land.lhs.true54:                                  ; preds = %if.else.land.lhs.true54_crit_edge, %if.else.land.lhs.true54_crit_edge95, %if.else.land.lhs.true54_crit_edge96
  %.off90 = add nsw i8 %6, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off90)
  %switch91 = icmp ult i8 %.off90, 3
  br i1 %switch91, label %if.then66, label %land.lhs.true54.if.end69_crit_edge

land.lhs.true54.if.end69_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then66:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #15
  %data_len67 = getelementptr i8, ptr %item, i32 -8
  %15 = ptrtoint ptr %data_len67 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len67, align 4
  %shr = ashr i32 %16, 1
  store i32 %shr, ptr %data_len67, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %land.lhs.true54.if.end69_crit_edge, %if.else.if.end69_crit_edge, %if.then39
  %17 = ptrtoint ptr %type14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %6, ptr %type14, align 4
  br label %end

end:                                              ; preds = %if.end69, %if.end7.end_crit_edge, %if.end.end_crit_edge
  %ret.0 = phi i32 [ %call4, %if.end.end_crit_edge ], [ %len, %if.end69 ], [ -22, %if.end7.end_crit_edge ]
  %18 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %opts_mutex, align 4
  %tobool72.not = icmp eq ptr %19, null
  br i1 %tobool72.not, label %end.if.end75_crit_edge, label %if.then73

end.if.end75_crit_edge:                           ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end75

if.then73:                                        ; preds = %end
  call void @__sanitizer_cov_trace_pc() #15
  call void @mutex_unlock(ptr noundef nonnull %19) #13
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %end.if.end75_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type) #13
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ext_prop_data_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len, align 4
  %type = getelementptr i8, ptr %item, i32 -20
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 1, label %entry.if.then_crit_edge
    i8 2, label %entry.if.then_crit_edge17
    i8 6, label %entry.if.then_crit_edge18
  ]

entry.if.then_crit_edge18:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge17:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge17, %entry.if.then_crit_edge18
  %shr = ashr i32 %1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %shr, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %data = getelementptr i8, ptr %item, i32 -4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = call ptr @memcpy(ptr %page, ptr %6, i32 %len.0)
  ret i32 %len.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ext_prop_data_store(ptr nocapture noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %ci_parent = getelementptr i8, ptr %item, i32 36
  %0 = ptrtoint ptr %ci_parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci_parent, align 4
  %sub = add i32 %len, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %3, label %entry.if.end_crit_edge [
    i8 10, label %entry.if.then_crit_edge
    i8 0, label %entry.if.then_crit_edge82
  ]

entry.if.then_crit_edge82:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge82
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %sub, %if.then ], [ %len, %entry.if.end_crit_edge ]
  %call9 = tail call ptr @kmemdup(ptr noundef %page, i32 noundef %len.addr.0, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %opts_mutex = getelementptr i8, ptr %1, i32 -4
  %5 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %opts_mutex, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %if.end11.if.end15_crit_edge, label %if.then13

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %6, i32 noundef 0) #13
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11.if.end15_crit_edge
  %data = getelementptr i8, ptr %item, i32 -4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %data, align 4
  %data_len = getelementptr i8, ptr %item, i32 -8
  %10 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len, align 4
  %ext_prop_len = getelementptr i8, ptr %1, i32 -12
  %12 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ext_prop_len, align 4
  %sub17 = sub i32 %13, %11
  store i32 %sub17, ptr %ext_prop_len, align 4
  store i32 %len.addr.0, ptr %data_len, align 4
  %14 = load i32, ptr %ext_prop_len, align 4
  %add = add i32 %14, %len.addr.0
  store i32 %add, ptr %ext_prop_len, align 4
  %type = getelementptr i8, ptr %item, i32 -20
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type, align 4
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %16, label %if.end15.if.end44_crit_edge [
    i8 1, label %if.end15.if.then34_crit_edge
    i8 2, label %if.end15.if.then34_crit_edge83
    i8 6, label %if.end15.if.then34_crit_edge84
  ]

if.end15.if.then34_crit_edge84:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end15.if.then34_crit_edge83:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end15.if.then34_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then34

if.end15.if.end44_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end44

if.then34:                                        ; preds = %if.end15.if.then34_crit_edge, %if.end15.if.then34_crit_edge83, %if.end15.if.then34_crit_edge84
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len, align 4
  %sub37 = sub i32 %add, %19
  %20 = ptrtoint ptr %ext_prop_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub37, ptr %ext_prop_len, align 4
  %21 = load i32, ptr %data_len, align 4
  %shl = shl i32 %21, 1
  %add40 = add i32 %shl, 2
  store i32 %add40, ptr %data_len, align 4
  %22 = load i32, ptr %ext_prop_len, align 4
  %add43 = add i32 %22, %add40
  store i32 %add43, ptr %ext_prop_len, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then34, %if.end15.if.end44_crit_edge
  %23 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %opts_mutex, align 4
  %tobool46.not = icmp eq ptr %24, null
  br i1 %tobool46.not, label %if.end44.cleanup_crit_edge, label %if.then47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull %24) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %if.end44.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %len, %if.then47 ], [ %len, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_item_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @interf_grp_compatible_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %1, align 1
  %4 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %page, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interf_grp_compatible_id_store(ptr nocapture noundef readonly %item, ptr nocapture noundef readonly %page, i32 noundef returned %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -24
  %0 = tail call i32 @llvm.smin.i32(i32 %len, i32 8)
  %sub = add i32 %0, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  %l.0 = select i1 %cmp1, i32 %sub, i32 %0
  %opts_mutex = getelementptr i8, ptr %item, i32 -4
  %3 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opts_mutex, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %4, i32 noundef 0) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %7 = call ptr @memcpy(ptr %6, ptr %page, i32 %l.0)
  %8 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opts_mutex, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull %9) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  ret i32 %len
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @interf_grp_sub_compatible_id_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -24
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %add.ptr, align 1
  %4 = ptrtoint ptr %page to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %3, ptr %page, align 1
  ret i32 8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interf_grp_sub_compatible_id_store(ptr nocapture noundef readonly %item, ptr nocapture noundef readonly %page, i32 noundef returned %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %item, i32 -24
  %0 = tail call i32 @llvm.smin.i32(i32 %len, i32 8)
  %sub = add i32 %0, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  %l.0 = select i1 %cmp1, i32 %sub, i32 %0
  %opts_mutex = getelementptr i8, ptr %item, i32 -4
  %3 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %opts_mutex, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then3

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_lock_nested(ptr noundef nonnull %4, i32 noundef 0) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %entry.if.end5_crit_edge
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %page, i32 %l.0)
  %8 = ptrtoint ptr %opts_mutex to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %opts_mutex, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef nonnull %9) #13
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5.if.end10_crit_edge
  ret i32 %len
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @config_group_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @configfs_register_subsystem(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gadgets_make(ptr nocapture noundef readnone %group, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 892) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gadget_root_type) #13
  %functions_group = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 1
  tail call void @config_group_init_type_name(ptr noundef %functions_group, ptr noundef nonnull @.str.10, ptr noundef nonnull @functions_type) #13
  %group_entry.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 1, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %2, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.configfs_add_default_group.exit_crit_edge

if.end.configfs_add_default_group.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %5 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %group_entry.i, ptr %2, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end.configfs_add_default_group.exit_crit_edge
  %configs_group = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 2
  tail call void @config_group_init_type_name(ptr noundef %configs_group, ptr noundef nonnull @.str.11, ptr noundef nonnull @config_desc_type) #13
  %group_entry.i76 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i76, ptr noundef %8, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i79, label %if.end.i.i.i81, label %configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge

configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit82

if.end.i.i.i81:                                   ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %group_entry.i76, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %group_entry.i76 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %default_groups.i, ptr %group_entry.i76, align 8
  %prev3.i.i.i80 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 2, i32 4, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i80, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %group_entry.i76, ptr %8, align 4
  br label %configfs_add_default_group.exit82

configfs_add_default_group.exit82:                ; preds = %if.end.i.i.i81, %configfs_add_default_group.exit.configfs_add_default_group.exit82_crit_edge
  %strings_group = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 3
  tail call void @config_group_init_type_name(ptr noundef %strings_group, ptr noundef nonnull @.str.12, ptr noundef nonnull @gadget_strings_strings_type) #13
  %group_entry.i83 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 3, i32 4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i86 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i83, ptr noundef %14, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i86, label %if.end.i.i.i88, label %configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge

configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge: ; preds = %configfs_add_default_group.exit82
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit89

if.end.i.i.i88:                                   ; preds = %configfs_add_default_group.exit82
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %group_entry.i83, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %group_entry.i83 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %default_groups.i, ptr %group_entry.i83, align 8
  %prev3.i.i.i87 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 3, i32 4, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i87, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %group_entry.i83, ptr %14, align 4
  br label %configfs_add_default_group.exit89

configfs_add_default_group.exit89:                ; preds = %if.end.i.i.i88, %configfs_add_default_group.exit82.configfs_add_default_group.exit89_crit_edge
  %os_desc_group = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 4
  tail call void @config_group_init_type_name(ptr noundef %os_desc_group, ptr noundef nonnull @.str, ptr noundef nonnull @os_desc_type) #13
  %group_entry.i90 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 4, i32 4
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i93 = tail call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i90, ptr noundef %20, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i93, label %if.end.i.i.i95, label %configfs_add_default_group.exit89.configfs_add_default_group.exit96_crit_edge

configfs_add_default_group.exit89.configfs_add_default_group.exit96_crit_edge: ; preds = %configfs_add_default_group.exit89
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit96

if.end.i.i.i95:                                   ; preds = %configfs_add_default_group.exit89
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %group_entry.i90, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %group_entry.i90 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %default_groups.i, ptr %group_entry.i90, align 8
  %prev3.i.i.i94 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 4, i32 4, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i94, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %group_entry.i90, ptr %20, align 4
  br label %configfs_add_default_group.exit96

configfs_add_default_group.exit96:                ; preds = %if.end.i.i.i95, %configfs_add_default_group.exit89.configfs_add_default_group.exit96_crit_edge
  %composite = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9
  %bind = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 5
  %25 = ptrtoint ptr %bind to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @configfs_do_nothing, ptr %bind, align 4
  %unbind = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 6
  %26 = ptrtoint ptr %unbind to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @configfs_do_nothing, ptr %unbind, align 8
  %suspend = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 8
  %27 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %suspend, align 8
  %resume = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 9
  %28 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %resume, align 4
  %max_speed = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 3
  %29 = ptrtoint ptr %max_speed to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %max_speed, align 4
  %spinlock = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %spinlock, ptr noundef nonnull @.str.13, ptr noundef nonnull @gadgets_make.__key, i16 noundef signext 3) #13
  %lock = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.15, ptr noundef nonnull @gadgets_make.__key.14) #13
  %string_list = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 7
  %30 = ptrtoint ptr %string_list to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %string_list, ptr %string_list, align 8
  %prev.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %string_list, ptr %prev.i, align 4
  %available_func = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 8
  %32 = ptrtoint ptr %available_func to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %available_func, ptr %available_func, align 8
  %prev.i97 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 8, i32 1
  %33 = ptrtoint ptr %prev.i97 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %available_func, ptr %prev.i97, align 4
  %lock.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @composite_init_dev.__key, i16 noundef signext 3) #13
  %configs.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 11
  %34 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %configs.i, ptr %configs.i, align 8
  %prev.i.i98 = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 11, i32 1
  %35 = ptrtoint ptr %prev.i.i98 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %configs.i, ptr %prev.i.i98, align 4
  %gstrings.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 12
  %36 = ptrtoint ptr %gstrings.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %gstrings.i, ptr %gstrings.i, align 8
  %prev.i3.i = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 12, i32 1
  %37 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %gstrings.i, ptr %prev.i3.i, align 4
  %desc = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 9
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 18, ptr %desc, align 1
  %bDescriptorType = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 9, i32 1
  %39 = ptrtoint ptr %bDescriptorType to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %bDescriptorType, align 2
  %bcdDevice = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 10, i32 9, i32 9
  %40 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_storeN_noabort(i32 %40, i32 2)
  store i16 5893, ptr %bcdDevice, align 1
  %gadget_driver = getelementptr inbounds %struct.gadget_info, ptr %call7.i.i, i32 0, i32 9, i32 10
  %41 = call ptr @memcpy(ptr %gadget_driver, ptr @configfs_driver_template, i32 128)
  %call26 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #13
  %42 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call26, ptr %gadget_driver, align 8
  %43 = ptrtoint ptr %composite to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call26, ptr %composite, align 8
  %tobool37.not = icmp eq ptr %call26, null
  br i1 %tobool37.not, label %err, label %configfs_add_default_group.exit96.cleanup_crit_edge

configfs_add_default_group.exit96.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err:                                              ; preds = %configfs_add_default_group.exit96
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %err, %configfs_add_default_group.exit96.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err ], [ %call7.i.i, %configfs_add_default_group.exit96.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadgets_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_do_nothing(ptr nocapture noundef readnone %cdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 1231, i32 noundef 9, ptr noundef null) #13
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_info_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %configs = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 11
  %0 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %configs, align 4
  %cmp.i.not = icmp eq ptr %1, %configs
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !223

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 391, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %string_list = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 7
  %2 = ptrtoint ptr %string_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %string_list, align 4
  %cmp.i97.not = icmp eq ptr %3, %string_list
  br i1 %cmp.i97.not, label %if.end.if.end48_crit_edge, label %do.end42, !prof !223

if.end.if.end48_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

do.end42:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 392, i32 noundef 9, ptr noundef null) #13
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %if.end.if.end48_crit_edge
  %available_func = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 8
  %4 = ptrtoint ptr %available_func to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %available_func, align 4
  %cmp.i99.not = icmp eq ptr %5, %available_func
  br i1 %cmp.i99.not, label %if.end48.if.end82_crit_edge, label %do.end76, !prof !223

if.end48.if.end82_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end82

do.end76:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 393, i32 noundef 9, ptr noundef null) #13
  br label %if.end82

if.end82:                                         ; preds = %do.end76, %if.end48.if.end82_crit_edge
  %gadget_driver = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10
  %6 = ptrtoint ptr %gadget_driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gadget_driver, align 4
  tail call void @kfree(ptr noundef %7) #13
  tail call void @kfree(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceClass_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceClass = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 3
  %0 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceClass, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceClass_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %bDeviceClass = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 3
  %3 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bDeviceClass, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceSubClass_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceSubClass = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 4
  %0 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceSubClass, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceSubClass_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %bDeviceSubClass = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 4
  %3 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bDeviceSubClass, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceProtocol_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceProtocol = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 5
  %0 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceProtocol, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bDeviceProtocol_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %bDeviceProtocol = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 5
  %3 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bDeviceProtocol, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bMaxPacketSize0_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bMaxPacketSize0 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 6
  %0 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bMaxPacketSize0, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bMaxPacketSize0_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %bMaxPacketSize0 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 6
  %3 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %bMaxPacketSize0, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idVendor_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idVendor = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 7
  %0 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idVendor, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %conv = zext i16 %2 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idVendor_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !222
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #13
  %idVendor = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 7
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %idVendor, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idProduct_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %idProduct = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 8
  %0 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idProduct, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %conv = zext i16 %2 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_idProduct_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !222
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  %3 = call i16 @llvm.bswap.i16(i16 %2) #13
  %idProduct = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 8
  %4 = ptrtoint ptr %idProduct to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 %3, ptr %idProduct, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdDevice_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcdDevice = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 9
  %0 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcdDevice, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %conv = zext i16 %2 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdDevice_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %bcdDevice = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bcdDevice) #13
  %0 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %bcdDevice, align 2, !annotation !222
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %bcdDevice) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bcdDevice, align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 9
  %3 = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %3)
  %cmp4.i = icmp ugt i32 %3, 144
  %or.cond.i = or i1 %cmp.i, %cmp4.i
  %4 = and i32 %conv.i, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %4)
  %cmp11.i = icmp ugt i32 %4, 2304
  %or.cond25.i = or i1 %cmp11.i, %or.cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24577, i16 %2)
  %cmp18.i = icmp ugt i16 %2, -24577
  %5 = or i1 %cmp18.i, %or.cond25.i
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call i16 @llvm.bswap.i16(i16 %2)
  %bcdDevice6 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 9
  %7 = ptrtoint ptr %bcdDevice6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %bcdDevice6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bcdDevice) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdUSB_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bcdUSB = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 2
  %0 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcdUSB, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1) #13
  %conv = zext i16 %2 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.23, i32 noundef %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_bcdUSB_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %bcdUSB = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bcdUSB) #13
  %0 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %bcdUSB, align 2, !annotation !222
  %call = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %bcdUSB) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %bcdUSB to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %bcdUSB, align 2
  %conv.i = zext i16 %2 to i32
  %and.i = and i32 %conv.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %and.i)
  %cmp.i = icmp ugt i32 %and.i, 9
  %3 = and i32 %conv.i, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 144, i32 %3)
  %cmp4.i = icmp ugt i32 %3, 144
  %or.cond.i = or i1 %cmp.i, %cmp4.i
  %4 = and i32 %conv.i, 3584
  call void @__sanitizer_cov_trace_const_cmp4(i32 2304, i32 %4)
  %cmp11.i = icmp ugt i32 %4, 2304
  %or.cond25.i = or i1 %cmp11.i, %or.cond.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24577, i16 %2)
  %cmp18.i = icmp ugt i16 %2, -24577
  %5 = or i1 %cmp18.i, %or.cond25.i
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %6 = call i16 @llvm.bswap.i16(i16 %2)
  %bcdUSB6 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 10, i32 9, i32 2
  %7 = ptrtoint ptr %bcdUSB6 to i32
  call void @__asan_storeN_noabort(i32 %7, i32 2)
  store i16 %6, ptr %bcdUSB6, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end4 ], [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bcdUSB) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_UDC_show(ptr noundef %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %udc_name1 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10, i32 10
  %0 = ptrtoint ptr %udc_name1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc_name1, align 4
  %tobool.not = icmp eq ptr %1, null
  %..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %..str.1)
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_UDC_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @strlen(ptr noundef %page) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp = icmp ult i32 %call1, %len
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %page, i32 noundef 3264) #13
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sub = add i32 %len, -1
  %arrayidx = getelementptr i8, ptr %call2, i32 %sub
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %1)
  %cmp5 = icmp eq i8 %1, 10
  br i1 %cmp5, label %if.then7, label %if.end4.if.end10_crit_edge

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end10

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end4.if.end10_crit_edge
  %lock = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %char0 = load i8, ptr %call2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool12.not = icmp eq i8 %char0, 0
  %udc_name.i = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10, i32 10
  %4 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udc_name.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  br i1 %tobool.not.i, label %if.then13.cleanup.sink.split.sink.split_crit_edge, label %if.end.i

if.then13.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end.i:                                         ; preds = %if.then13
  %gadget_driver.i = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10
  %call.i = tail call i32 @usb_gadget_unregister_driver(ptr noundef %gadget_driver.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end17, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end17:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udc_name.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  br label %cleanup.sink.split.sink.split.sink.split

if.else:                                          ; preds = %if.end10
  br i1 %tobool.not.i, label %if.end20, label %if.else.cleanup.sink.split.sink.split_crit_edge

if.else.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end20:                                         ; preds = %if.else
  %gadget_driver = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10
  %8 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call2, ptr %udc_name.i, align 4
  %call26 = tail call i32 @usb_gadget_probe_driver(ptr noundef %gadget_driver) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end20.cleanup.sink.split_crit_edge, label %if.end20.cleanup.sink.split.sink.split.sink.split_crit_edge

if.end20.cleanup.sink.split.sink.split.sink.split_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split.sink.split

if.end20.cleanup.sink.split_crit_edge:            ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split.sink.split.sink.split:         ; preds = %if.end20.cleanup.sink.split.sink.split.sink.split_crit_edge, %if.end17
  %retval.0.ph.ph.ph = phi i32 [ %len, %if.end17 ], [ %call26, %if.end20.cleanup.sink.split.sink.split.sink.split_crit_edge ]
  %9 = ptrtoint ptr %udc_name.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %udc_name.i, align 4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %cleanup.sink.split.sink.split.sink.split, %if.else.cleanup.sink.split.sink.split_crit_edge, %if.end.i.cleanup.sink.split.sink.split_crit_edge, %if.then13.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -16, %if.else.cleanup.sink.split.sink.split_crit_edge ], [ %call.i, %if.end.i.cleanup.sink.split.sink.split_crit_edge ], [ -19, %if.then13.cleanup.sink.split.sink.split_crit_edge ], [ %retval.0.ph.ph.ph, %cleanup.sink.split.sink.split.sink.split ]
  tail call void @kfree(ptr noundef nonnull %call2) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end20.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %len, %if.end20.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -75, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_probe_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_max_speed_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %max_speed = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 3
  %0 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %max_speed, align 4
  %call1 = tail call ptr @usb_speed_string(i32 noundef %1) #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_dev_desc_max_speed_store(ptr noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %udc_name = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10, i32 10
  %0 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(17) @.str.30, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.end.if.end32_crit_edge, label %if.else

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.else:                                          ; preds = %if.end
  %call4 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(12) @.str.31, i32 noundef 11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.else.if.end32_crit_edge, label %if.else9

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(11) @.str.32, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.else9.if.end32_crit_edge, label %if.else15

if.else9.if.end32_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.else15:                                        ; preds = %if.else9
  %call16 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(11) @.str.33, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.else15.if.end32_crit_edge, label %if.else21

if.else15.if.end32_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.else21:                                        ; preds = %if.else15
  %call22 = tail call i32 @strncmp(ptr noundef %page, ptr noundef nonnull dereferenceable(10) @.str.34, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.else21.if.end32_crit_edge, label %if.else21.cleanup_crit_edge

if.else21.cleanup_crit_edge:                      ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.else21.if.end32_crit_edge:                     ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end32

if.end32:                                         ; preds = %if.else21.if.end32_crit_edge, %if.else15.if.end32_crit_edge, %if.else9.if.end32_crit_edge, %if.else.if.end32_crit_edge, %if.end.if.end32_crit_edge
  %.sink = phi i32 [ 6, %if.end.if.end32_crit_edge ], [ 5, %if.else.if.end32_crit_edge ], [ 3, %if.else9.if.end32_crit_edge ], [ 2, %if.else15.if.end32_crit_edge ], [ 1, %if.else21.if.end32_crit_edge ]
  %max_speed8 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 3
  %2 = ptrtoint ptr %max_speed8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %max_speed8, align 4
  %max_speed37 = getelementptr inbounds %struct.gadget_info, ptr %item, i32 0, i32 9, i32 10, i32 1
  %3 = ptrtoint ptr %max_speed37 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %.sink, ptr %max_speed37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.else21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end32 ], [ -22, %if.else21.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_speed_string(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @function_make(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 40, ptr noundef nonnull @.str.35, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call)
  %cmp = icmp sgt i32 %call, 39
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @strchr(ptr noundef nonnull %buf, i32 noundef 46)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #18
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %call3, align 1
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %call8 = call ptr @usb_get_function_instance(ptr noundef nonnull %buf) #13
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call14 = call i32 (ptr, ptr, ...) @config_item_set_name(ptr noundef %call8, ptr noundef nonnull @.str.35, ptr noundef %name) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  call void @usb_put_function_instance(ptr noundef %call8) #13
  %2 = inttoptr i32 %call14 to ptr
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  %set_inst_name = getelementptr inbounds %struct.usb_function_instance, ptr %call8, i32 0, i32 3
  %3 = ptrtoint ptr %set_inst_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_inst_name, align 4
  %tobool19.not = icmp eq ptr %4, null
  br i1 %tobool19.not, label %if.end18.if.end27_crit_edge, label %if.then20

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then20:                                        ; preds = %if.end18
  %call22 = call i32 %4(ptr noundef %call8, ptr noundef %incdec.ptr) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then20.if.end27_crit_edge, label %if.then24

if.then20.if.end27_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  call void @usb_put_function_instance(ptr noundef %call8) #13
  %5 = inttoptr i32 %call22 to ptr
  br label %cleanup

if.end27:                                         ; preds = %if.then20.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %lock = getelementptr i8, ptr %group, i32 320
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %cfs_list = getelementptr inbounds %struct.usb_function_instance, ptr %call8, i32 0, i32 1
  %available_func = getelementptr i8, ptr %group, i32 432
  %prev.i = getelementptr i8, ptr %group, i32 436
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %cfs_list, ptr noundef %7, ptr noundef %available_func) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.list_add_tail.exit_crit_edge

if.end27.list_add_tail.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cfs_list, ptr %prev.i, align 4
  %9 = ptrtoint ptr %cfs_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %available_func, ptr %cfs_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_function_instance, ptr %call8, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev3.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %cfs_list, ptr %7, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end27.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then24, %if.then16, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.then16 ], [ %5, %if.then24 ], [ %call8, %list_add_tail.exit ], [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @function_drop(ptr noundef %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %group, i32 320
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %cfs_list = getelementptr inbounds %struct.usb_function_instance, ptr %item, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cfs_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.usb_function_instance, ptr %item, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cfs_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfs_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %cfs_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %cfs_list, align 4
  %prev.i = getelementptr inbounds %struct.usb_function_instance, ptr %item, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @config_desc_make(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %buf = alloca [40 x i8], align 1
  %num = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #13
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %num) #13
  %1 = ptrtoint ptr %num to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %num, align 1, !annotation !222
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf, i32 noundef 40, ptr noundef nonnull @.str.35, ptr noundef %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %call)
  %cmp = icmp sgt i32 %call, 39
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @strchr(ptr noundef nonnull %buf, i32 noundef 46)
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #18
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call3, align 1
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %char0 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool11.not = icmp eq i8 %char0, 0
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %incdec.ptr = getelementptr i8, ptr %call3, i32 1
  %call15 = call i32 @kstrtou8(ptr noundef %incdec.ptr, i32 noundef 0, ptr noundef nonnull %num) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %4 = inttoptr i32 %call15 to ptr
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 304) #16
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call26 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #13
  %c = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call26, ptr %c, align 8
  %tobool29.not = icmp eq ptr %call26, null
  br i1 %tobool29.not, label %if.end24.err_crit_edge, label %if.end31

if.end24.err_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end31:                                         ; preds = %if.end24
  %7 = ptrtoint ptr %num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %num, align 1
  %bConfigurationValue = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 3, i32 5
  %9 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %bConfigurationValue, align 4
  %MaxPower = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %MaxPower to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %MaxPower, align 8
  %bmAttributes = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 3, i32 7
  %11 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -128, ptr %bmAttributes, align 2
  %string_list = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %string_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %string_list, ptr %string_list, align 8
  %prev.i = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %string_list, ptr %prev.i, align 4
  %func_list = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %func_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %func_list, ptr %func_list, align 4
  %prev.i75 = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %func_list, ptr %prev.i75, align 8
  call void @config_group_init_type_name(ptr noundef nonnull %call7.i.i, ptr noundef %name, ptr noundef nonnull @gadget_config_type) #13
  %strings_group = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 1
  call void @config_group_init_type_name(ptr noundef %strings_group, ptr noundef nonnull @.str.12, ptr noundef nonnull @gadget_config_name_strings_type) #13
  %group_entry.i = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 1, i32 4
  %default_groups.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3
  %prev.i.i = getelementptr inbounds %struct.config_group, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %group_entry.i, ptr noundef %17, ptr noundef %default_groups.i) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end31.configfs_add_default_group.exit_crit_edge

if.end31.configfs_add_default_group.exit_crit_edge: ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %configfs_add_default_group.exit

if.end.i.i.i:                                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %group_entry.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %group_entry.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %default_groups.i, ptr %group_entry.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.config_usb_cfg, ptr %call7.i.i, i32 0, i32 1, i32 4, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %group_entry.i, ptr %17, align 4
  br label %configfs_add_default_group.exit

configfs_add_default_group.exit:                  ; preds = %if.end.i.i.i, %if.end31.configfs_add_default_group.exit_crit_edge
  %cdev = getelementptr i8, ptr %group, i32 528
  %call39 = call i32 @usb_add_config_only(ptr noundef %cdev, ptr noundef %c) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %configfs_add_default_group.exit.cleanup_crit_edge, label %configfs_add_default_group.exit.err_crit_edge

configfs_add_default_group.exit.err_crit_edge:    ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

configfs_add_default_group.exit.cleanup_crit_edge: ; preds = %configfs_add_default_group.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

err:                                              ; preds = %configfs_add_default_group.exit.err_crit_edge, %if.end24.err_crit_edge
  %ret.0 = phi i32 [ %call39, %configfs_add_default_group.exit.err_crit_edge ], [ -12, %if.end24.err_crit_edge ]
  %22 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %c, align 8
  call void @kfree(ptr noundef %23) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %24 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %configfs_add_default_group.exit.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then17, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then17 ], [ %24, %err ], [ inttoptr (i32 -22 to ptr), %do.end ], [ %call7.i.i, %configfs_add_default_group.exit.cleanup_crit_edge ], [ inttoptr (i32 -36 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end8.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %num) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #13
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @config_desc_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_config_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_config_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %functions = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 11
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %functions, align 4
  %cmp.i.not = icmp eq ptr %1, %functions
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !223

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 406, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %list = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %c = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c, align 4
  tail call void @kfree(ptr noundef %11) #13
  tail call void @kfree(ptr noundef %item) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_usb_cfg_link(ptr noundef %usb_cfg_ci, ptr noundef %usb_func_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev.i = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev.i, align 4
  %lock = getelementptr i8, ptr %1, i32 -288
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %available_func = getelementptr i8, ptr %1, i32 -176
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %available_func, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %a_fi.0 = getelementptr i8, ptr %.pn, i32 -80
  %cmp.not = icmp eq ptr %.pn, %available_func
  %cmp4 = icmp eq ptr %a_fi.0, %usb_func_ci
  %or.cond = or i1 %cmp.not, %cmp4
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp4, label %if.end12, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end12:                                         ; preds = %for.end
  %func_list = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.body21.for.cond17_crit_edge, %if.end12
  %.pn58.in = phi ptr [ %func_list, %if.end12 ], [ %.pn58, %for.body21.for.cond17_crit_edge ]
  %3 = ptrtoint ptr %.pn58.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn58 = load ptr, ptr %.pn58.in, align 4
  %cmp19.not = icmp eq ptr %.pn58, %func_list
  br i1 %cmp19.not, label %for.end32, label %for.body21

for.body21:                                       ; preds = %for.cond17
  %fi22 = getelementptr i8, ptr %.pn58, i32 12
  %4 = ptrtoint ptr %fi22 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fi22, align 4
  %cmp23 = icmp eq ptr %5, %usb_func_ci
  br i1 %cmp23, label %for.body21.out_crit_edge, label %for.body21.for.cond17_crit_edge

for.body21.for.cond17_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond17

for.body21.out_crit_edge:                         ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.end32:                                        ; preds = %for.cond17
  %call33 = tail call ptr @usb_get_function(ptr noundef %usb_func_ci) #13
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end37

if.then35:                                        ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %call33 to i32
  br label %out

if.end37:                                         ; preds = %for.end32
  %list38 = getelementptr inbounds %struct.usb_function, ptr %call33, i32 0, i32 22
  %prev.i = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list38, ptr noundef %8, ptr noundef %func_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end37.out_crit_edge

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list38, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list38 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %func_list, ptr %list38, align 4
  %prev3.i.i = getelementptr inbounds %struct.usb_function, ptr %call33, i32 0, i32 22, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list38, ptr %8, align 4
  br label %out

out:                                              ; preds = %if.end.i.i, %if.end37.out_crit_edge, %if.then35, %for.body21.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ %6, %if.then35 ], [ -22, %for.end.out_crit_edge ], [ 0, %if.end37.out_crit_edge ], [ 0, %if.end.i.i ], [ -17, %for.body21.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @config_usb_cfg_unlink(ptr noundef readonly %usb_cfg_ci, ptr noundef readnone %usb_func_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev.i = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 3, i32 9
  %0 = ptrtoint ptr %cdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdev.i, align 4
  %lock = getelementptr i8, ptr %1, i32 -288
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %udc_name = getelementptr i8, ptr %1, i32 -16
  %2 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_name, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.end.i

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

if.end.i:                                         ; preds = %entry
  %gadget_driver.i = getelementptr i8, ptr %1, i32 -128
  %call.i = tail call i32 @usb_gadget_unregister_driver(ptr noundef %gadget_driver.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %4 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udc_name, align 4
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %5) #13
  %6 = ptrtoint ptr %udc_name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %udc_name, align 4
  br label %if.end22

if.end:                                           ; preds = %if.end.i
  %tobool7.not = icmp eq ptr %5, null
  br i1 %tobool7.not, label %if.end.if.end22_crit_edge, label %do.end, !prof !223

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 481, i32 noundef 9, ptr noundef null) #13
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end.if.end22_crit_edge, %if.end5.i, %entry.if.end22_crit_edge
  %func_list = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end22
  %.pn.in = phi ptr [ %func_list, %if.end22 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %func_list
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %fi33 = getelementptr i8, ptr %.pn, i32 12
  %8 = ptrtoint ptr %fi33 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fi33, align 4
  %cmp34 = icmp eq ptr %9, %usb_func_ci
  br i1 %cmp34, label %if.then35, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

if.then35:                                        ; preds = %for.body
  %f.0.le = getelementptr i8, ptr %.pn, i32 -88
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.then35.list_del.exit_crit_edge

if.then35.list_del.exit_crit_edge:                ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then35.list_del.exit_crit_edge
  %16 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @usb_put_function(ptr noundef %f.0.le) #13
  tail call void @mutex_unlock(ptr noundef %lock) #13
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %lock) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 492, i32 noundef 9, ptr noundef nonnull @.str.40) #13
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_del.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_function(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_MaxPower_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %MaxPower = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %MaxPower to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %MaxPower, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.42, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_MaxPower_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !222
  %call1 = call i32 @kstrtou16(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2040, i16 %2)
  %cmp = icmp ugt i16 %2, 2040
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %MaxPower = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %MaxPower to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %MaxPower, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ -34, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_bmAttributes_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %bmAttributes = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bmAttributes, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_desc_bmAttributes_store(ptr nocapture noundef writeonly %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #13
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1
  %3 = and i8 %2, -97
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %3)
  %4 = icmp eq i8 %3, -128
  br i1 %4, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %bmAttributes = getelementptr inbounds %struct.config_usb_cfg, ptr %item, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %bmAttributes, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %len, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gadget_config_name_strings_make(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %num.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 108) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num.i) #13
  %1 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %num.i, align 2, !annotation !222
  %call.i = call i32 @kstrtou16(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %num.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.check_user_usb_string.exit.thread_crit_edge

if.end.check_user_usb_string.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_user_usb_string.exit.thread

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num.i, align 2
  %call1.i = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %3) #13
  br i1 %call1.i, label %if.end5, label %if.end.i.check_user_usb_string.exit.thread_crit_edge

if.end.i.check_user_usb_string.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_user_usb_string.exit.thread

check_user_usb_string.exit.thread:                ; preds = %if.end.i.check_user_usb_string.exit.thread_crit_edge, %if.end.check_user_usb_string.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.check_user_usb_string.exit.thread_crit_edge ], [ %call.i, %if.end.check_user_usb_string.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num.i) #13
  br label %err

if.end5:                                          ; preds = %if.end.i
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num.i, align 2
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %call7.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num.i) #13
  %group6 = getelementptr inbounds %struct.gadget_config_name, ptr %call7.i.i, i32 0, i32 3
  call void @config_group_init_type_name(ptr noundef %group6, ptr noundef %name, ptr noundef nonnull @gadget_config_name_langid_type) #13
  %string_list = getelementptr i8, ptr %group, i32 80
  %7 = ptrtoint ptr %string_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn52 = load ptr, ptr %string_list, align 4
  %cmp.not53 = icmp eq ptr %.pn52, %string_list
  br i1 %cmp.not53, label %if.end5.if.end27_crit_edge, label %for.body.lr.ph

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.end5
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %.pn55 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %if.end18.for.body_crit_edge ]
  %langs.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %gs.0 = getelementptr i8, ptr %.pn55, i32 -100
  %10 = ptrtoint ptr %gs.0 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gs.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %9)
  %cmp15 = icmp eq i16 %11, %9
  br i1 %cmp15, label %for.body.err_crit_edge, label %if.end18

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end18:                                         ; preds = %for.body
  %inc = add i32 %langs.054, 1
  %12 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %string_list
  br i1 %cmp.not, label %for.end, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %phi.cmp = icmp sgt i32 %inc, 1
  br i1 %phi.cmp, label %for.end.err_crit_edge, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %if.end5.if.end27_crit_edge
  %list28 = getelementptr inbounds %struct.gadget_config_name, ptr %call7.i.i, i32 0, i32 4
  %prev.i = getelementptr i8, ptr %group, i32 84
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list28, ptr noundef %14, ptr noundef %string_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list28, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %string_list, ptr %list28, align 4
  %prev3.i.i = getelementptr inbounds %struct.gadget_config_name, ptr %call7.i.i, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list28, ptr %14, align 4
  br label %cleanup

err:                                              ; preds = %for.end.err_crit_edge, %for.body.err_crit_edge, %check_user_usb_string.exit.thread
  %ret.0 = phi i32 [ -75, %for.end.err_crit_edge ], [ %retval.0.i.ph, %check_user_usb_string.exit.thread ], [ -17, %for.body.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %19 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.i.i, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %err ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %group6, %if.end27.cleanup_crit_edge ], [ %group6, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_config_name_strings_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_config_name_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %configuration = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %configuration, align 4
  tail call void @kfree(ptr noundef %1) #13
  %list = getelementptr i8, ptr %item, i32 80
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %item, i32 84
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %item, i32 -20
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %item, i32 84
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_name_configuration_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %configuration = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %configuration, align 4
  %tobool.not = icmp eq ptr %1, null
  %..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %..str.1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_config_name_configuration_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %configuration = getelementptr i8, ptr %item, i32 -4
  %call.i = tail call i32 @strlen(ptr noundef %page) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 126
  br i1 %cmp.i, label %entry.usb_string_copy.exit.thread_crit_edge, label %if.end.i

entry.usb_string_copy.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %configuration, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 127) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.else.i.usb_string_copy.exit.thread_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i.usb_string_copy.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %str.0.i = phi ptr [ %call7.i.i, %if.else.i.if.end6.i_crit_edge ], [ %1, %if.end.i.if.end6.i_crit_edge ]
  %call7.i = tail call ptr @strcpy(ptr noundef nonnull %str.0.i, ptr noundef %page) #19
  %sub.i = add i32 %call.i, -1
  %arrayidx.i = getelementptr i8, ptr %str.0.i, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp8.i = icmp eq i8 %4, 10
  br i1 %cmp8.i, label %if.then10.i, label %if.end6.i._crit_edge

if.end6.i._crit_edge:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %6

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  br label %6

6:                                                ; preds = %if.then10.i, %if.end6.i._crit_edge
  %7 = ptrtoint ptr %configuration to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %str.0.i, ptr %configuration, align 4
  br label %usb_string_copy.exit.thread

usb_string_copy.exit.thread:                      ; preds = %6, %if.else.i.usb_string_copy.exit.thread_crit_edge, %entry.usb_string_copy.exit.thread_crit_edge
  %8 = phi i32 [ %len, %6 ], [ -12, %if.else.i.usb_string_copy.exit.thread_crit_edge ], [ -75, %entry.usb_string_copy.exit.thread_crit_edge ]
  ret i32 %8
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @gadget_strings_strings_make(ptr noundef %group, ptr noundef %name) #0 align 64 {
entry:
  %num.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 132) #16
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %num.i) #13
  %1 = ptrtoint ptr %num.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %num.i, align 2, !annotation !222
  %call.i = call i32 @kstrtou16(ptr noundef %name, i32 noundef 0, ptr noundef nonnull %num.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.check_user_usb_string.exit.thread_crit_edge

if.end.check_user_usb_string.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_user_usb_string.exit.thread

if.end.i:                                         ; preds = %if.end
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num.i, align 2
  %call1.i = call zeroext i1 @usb_validate_langid(i16 noundef zeroext %3) #13
  br i1 %call1.i, label %if.end5, label %if.end.i.check_user_usb_string.exit.thread_crit_edge

if.end.i.check_user_usb_string.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_user_usb_string.exit.thread

check_user_usb_string.exit.thread:                ; preds = %if.end.i.check_user_usb_string.exit.thread_crit_edge, %if.end.check_user_usb_string.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.end.i.check_user_usb_string.exit.thread_crit_edge ], [ %call.i, %if.end.check_user_usb_string.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num.i) #13
  br label %err

if.end5:                                          ; preds = %if.end.i
  %4 = ptrtoint ptr %num.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num.i, align 2
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %call7.i.i, align 8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %num.i) #13
  %group6 = getelementptr inbounds %struct.gadget_strings, ptr %call7.i.i, i32 0, i32 5
  call void @config_group_init_type_name(ptr noundef %group6, ptr noundef %name, ptr noundef nonnull @gadget_strings_langid_type) #13
  %string_list = getelementptr i8, ptr %group, i32 264
  %7 = ptrtoint ptr %string_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn52 = load ptr, ptr %string_list, align 4
  %cmp.not53 = icmp eq ptr %.pn52, %string_list
  br i1 %cmp.not53, label %if.end5.if.end27_crit_edge, label %for.body.lr.ph

if.end5.if.end27_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.end5
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %call7.i.i, align 8
  br label %for.body

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %for.body.lr.ph
  %.pn55 = phi ptr [ %.pn52, %for.body.lr.ph ], [ %.pn, %if.end18.for.body_crit_edge ]
  %langs.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18.for.body_crit_edge ]
  %gs.0 = getelementptr i8, ptr %.pn55, i32 -124
  %10 = ptrtoint ptr %gs.0 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %gs.0, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %9)
  %cmp15 = icmp eq i16 %11, %9
  br i1 %cmp15, label %for.body.err_crit_edge, label %if.end18

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end18:                                         ; preds = %for.body
  %inc = add i32 %langs.054, 1
  %12 = ptrtoint ptr %.pn55 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn55, align 4
  %cmp.not = icmp eq ptr %.pn, %string_list
  br i1 %cmp.not, label %for.end, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %phi.cmp = icmp sgt i32 %inc, 1
  br i1 %phi.cmp, label %for.end.err_crit_edge, label %for.end.if.end27_crit_edge

for.end.if.end27_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end27

for.end.err_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %err

if.end27:                                         ; preds = %for.end.if.end27_crit_edge, %if.end5.if.end27_crit_edge
  %list28 = getelementptr inbounds %struct.gadget_strings, ptr %call7.i.i, i32 0, i32 6
  %prev.i = getelementptr i8, ptr %group, i32 268
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list28, ptr noundef %14, ptr noundef %string_list) #13
  br i1 %call.i.i, label %if.end.i.i, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #15
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list28, ptr %prev.i, align 4
  %16 = ptrtoint ptr %list28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %string_list, ptr %list28, align 4
  %prev3.i.i = getelementptr inbounds %struct.gadget_strings, ptr %call7.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 8
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %list28, ptr %14, align 4
  br label %cleanup

err:                                              ; preds = %for.end.err_crit_edge, %for.body.err_crit_edge, %check_user_usb_string.exit.thread
  %ret.0 = phi i32 [ -75, %for.end.err_crit_edge ], [ %retval.0.i.ph, %check_user_usb_string.exit.thread ], [ -17, %for.body.err_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  %19 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end.i.i, %if.end27.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %err ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %group6, %if.end27.cleanup_crit_edge ], [ %group6, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_strings_strings_drop(ptr nocapture noundef readnone %group, ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @config_item_put(ptr noundef %item) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gadget_strings_attr_release(ptr noundef %item) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer = getelementptr i8, ptr %item, i32 -12
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 4
  tail call void @kfree(ptr noundef %1) #13
  %product = getelementptr i8, ptr %item, i32 -8
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product, align 4
  tail call void @kfree(ptr noundef %3) #13
  %serialnumber = getelementptr i8, ptr %item, i32 -4
  %4 = ptrtoint ptr %serialnumber to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serialnumber, align 4
  tail call void @kfree(ptr noundef %5) #13
  %list = getelementptr i8, ptr %item, i32 80
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #13
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr i8, ptr %item, i32 84
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %add.ptr.i = getelementptr i8, ptr %item, i32 -44
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %item, i32 84
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_manufacturer_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer = getelementptr i8, ptr %item, i32 -12
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 4
  %tobool.not = icmp eq ptr %1, null
  %..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %..str.1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_manufacturer_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %manufacturer = getelementptr i8, ptr %item, i32 -12
  %call.i = tail call i32 @strlen(ptr noundef %page) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 126
  br i1 %cmp.i, label %entry.usb_string_copy.exit.thread_crit_edge, label %if.end.i

entry.usb_string_copy.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 127) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.else.i.usb_string_copy.exit.thread_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i.usb_string_copy.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %str.0.i = phi ptr [ %call7.i.i, %if.else.i.if.end6.i_crit_edge ], [ %1, %if.end.i.if.end6.i_crit_edge ]
  %call7.i = tail call ptr @strcpy(ptr noundef nonnull %str.0.i, ptr noundef %page) #19
  %sub.i = add i32 %call.i, -1
  %arrayidx.i = getelementptr i8, ptr %str.0.i, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp8.i = icmp eq i8 %4, 10
  br i1 %cmp8.i, label %if.then10.i, label %if.end6.i._crit_edge

if.end6.i._crit_edge:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %6

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  br label %6

6:                                                ; preds = %if.then10.i, %if.end6.i._crit_edge
  %7 = ptrtoint ptr %manufacturer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %str.0.i, ptr %manufacturer, align 4
  br label %usb_string_copy.exit.thread

usb_string_copy.exit.thread:                      ; preds = %6, %if.else.i.usb_string_copy.exit.thread_crit_edge, %entry.usb_string_copy.exit.thread_crit_edge
  %8 = phi i32 [ %len, %6 ], [ -12, %if.else.i.usb_string_copy.exit.thread_crit_edge ], [ -75, %entry.usb_string_copy.exit.thread_crit_edge ]
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_product_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr i8, ptr %item, i32 -8
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %product, align 4
  %tobool.not = icmp eq ptr %1, null
  %..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %..str.1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_product_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %product = getelementptr i8, ptr %item, i32 -8
  %call.i = tail call i32 @strlen(ptr noundef %page) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 126
  br i1 %cmp.i, label %entry.usb_string_copy.exit.thread_crit_edge, label %if.end.i

entry.usb_string_copy.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %product, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 127) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.else.i.usb_string_copy.exit.thread_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i.usb_string_copy.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %str.0.i = phi ptr [ %call7.i.i, %if.else.i.if.end6.i_crit_edge ], [ %1, %if.end.i.if.end6.i_crit_edge ]
  %call7.i = tail call ptr @strcpy(ptr noundef nonnull %str.0.i, ptr noundef %page) #19
  %sub.i = add i32 %call.i, -1
  %arrayidx.i = getelementptr i8, ptr %str.0.i, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp8.i = icmp eq i8 %4, 10
  br i1 %cmp8.i, label %if.then10.i, label %if.end6.i._crit_edge

if.end6.i._crit_edge:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %6

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  br label %6

6:                                                ; preds = %if.then10.i, %if.end6.i._crit_edge
  %7 = ptrtoint ptr %product to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %str.0.i, ptr %product, align 4
  br label %usb_string_copy.exit.thread

usb_string_copy.exit.thread:                      ; preds = %6, %if.else.i.usb_string_copy.exit.thread_crit_edge, %entry.usb_string_copy.exit.thread_crit_edge
  %8 = phi i32 [ %len, %6 ], [ -12, %if.else.i.usb_string_copy.exit.thread_crit_edge ], [ -75, %entry.usb_string_copy.exit.thread_crit_edge ]
  ret i32 %8
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_serialnumber_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %serialnumber = getelementptr i8, ptr %item, i32 -4
  %0 = ptrtoint ptr %serialnumber to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serialnumber, align 4
  %tobool.not = icmp eq ptr %1, null
  %..str.1 = select i1 %tobool.not, ptr @.str.1, ptr %1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.28, ptr noundef %..str.1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gadget_strings_serialnumber_store(ptr nocapture noundef %item, ptr nocapture noundef readonly %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %serialnumber = getelementptr i8, ptr %item, i32 -4
  %call.i = tail call i32 @strlen(ptr noundef %page) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 126, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, 126
  br i1 %cmp.i, label %entry.usb_string_copy.exit.thread_crit_edge, label %if.end.i

entry.usb_string_copy.exit.thread_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %serialnumber to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serialnumber, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 127) #16
  %tobool3.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not.i, label %if.else.i.usb_string_copy.exit.thread_crit_edge, label %if.else.i.if.end6.i_crit_edge

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.else.i.usb_string_copy.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %usb_string_copy.exit.thread

if.end6.i:                                        ; preds = %if.else.i.if.end6.i_crit_edge, %if.end.i.if.end6.i_crit_edge
  %str.0.i = phi ptr [ %call7.i.i, %if.else.i.if.end6.i_crit_edge ], [ %1, %if.end.i.if.end6.i_crit_edge ]
  %call7.i = tail call ptr @strcpy(ptr noundef nonnull %str.0.i, ptr noundef %page) #19
  %sub.i = add i32 %call.i, -1
  %arrayidx.i = getelementptr i8, ptr %str.0.i, i32 %sub.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %4)
  %cmp8.i = icmp eq i8 %4, 10
  br i1 %cmp8.i, label %if.then10.i, label %if.end6.i._crit_edge

if.end6.i._crit_edge:                             ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %6

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %arrayidx.i, align 1
  br label %6

6:                                                ; preds = %if.then10.i, %if.end6.i._crit_edge
  %7 = ptrtoint ptr %serialnumber to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %str.0.i, ptr %serialnumber, align 4
  br label %usb_string_copy.exit.thread

usb_string_copy.exit.thread:                      ; preds = %6, %if.else.i.usb_string_copy.exit.thread_crit_edge, %entry.usb_string_copy.exit.thread_crit_edge
  %8 = phi i32 [ %len, %6 ], [ -12, %if.else.i.usb_string_copy.exit.thread_crit_edge ], [ -75, %entry.usb_string_copy.exit.thread_crit_edge ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_link(ptr noundef %os_desc_ci, ptr noundef %usb_cfg_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %os_desc_ci, i32 80
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %configs = getelementptr i8, ptr %os_desc_ci, i32 424
  %c4 = getelementptr inbounds %struct.config_usb_cfg, ptr %usb_cfg_ci, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %configs, %entry ], [ %.pn, %for.cond.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %c.0 = getelementptr i8, ptr %.pn, i32 -32
  %cmp.not = icmp eq ptr %.pn, %configs
  %cmp5 = icmp eq ptr %c.0, %c4
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp5
  br i1 %or.cond, label %for.end, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br i1 %cmp5, label %if.end14, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end14:                                         ; preds = %for.end
  %os_desc_config = getelementptr i8, ptr %os_desc_ci, i32 400
  %1 = ptrtoint ptr %os_desc_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %os_desc_config, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end16, label %if.end14.out_crit_edge

if.end14.out_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end16:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %os_desc_config to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %c4, ptr %os_desc_config, align 4
  br label %out

out:                                              ; preds = %if.end16, %if.end14.out_crit_edge, %for.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end16 ], [ -22, %for.end.out_crit_edge ], [ -16, %if.end14.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @os_desc_unlink(ptr noundef %os_desc_ci, ptr nocapture noundef readnone %usb_cfg_ci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %os_desc_ci, i32 80
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %udc_name = getelementptr i8, ptr %os_desc_ci, i32 352
  %0 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udc_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.end.i

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.thread

if.end.i:                                         ; preds = %entry
  %gadget_driver.i = getelementptr i8, ptr %os_desc_ci, i32 240
  %call.i = tail call i32 @usb_gadget_unregister_driver(ptr noundef %gadget_driver.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  %2 = ptrtoint ptr %udc_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udc_name, align 4
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef %3) #13
  %4 = ptrtoint ptr %udc_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %udc_name, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end5.i, %entry.if.end.thread_crit_edge
  %os_desc_config35 = getelementptr i8, ptr %os_desc_ci, i32 400
  %5 = ptrtoint ptr %os_desc_config35 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %os_desc_config35, align 4
  br label %if.end21

if.end:                                           ; preds = %if.end.i
  %os_desc_config = getelementptr i8, ptr %os_desc_ci, i32 400
  %6 = ptrtoint ptr %os_desc_config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %os_desc_config, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.end21_crit_edge, label %do.end, !prof !223

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 921, i32 noundef 9, ptr noundef null) #13
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge, %if.end.thread
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_use_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %use_os_desc = getelementptr i8, ptr %item, i32 508
  %0 = ptrtoint ptr %use_os_desc to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %use_os_desc, align 4, !range !224
  %2 = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.4, i32 noundef %2)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_use_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %use = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %use) #13
  %0 = ptrtoint ptr %use to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %use, align 1, !annotation !222
  %lock = getelementptr i8, ptr %item, i32 80
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call.i = call i32 @kstrtobool(ptr noundef %page, ptr noundef nonnull %use) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use, align 1, !range !224
  %use_os_desc = getelementptr i8, ptr %item, i32 508
  %3 = ptrtoint ptr %use_os_desc to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %use_os_desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.if.end_crit_edge ], [ %len, %if.then ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %use) #13
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_b_vendor_code_show(ptr nocapture noundef readonly %item, ptr nocapture noundef writeonly %page) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %b_vendor_code = getelementptr i8, ptr %item, i32 509
  %0 = ptrtoint ptr %b_vendor_code to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %b_vendor_code, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_b_vendor_code_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  %b_vendor_code = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b_vendor_code) #13
  %0 = ptrtoint ptr %b_vendor_code to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %b_vendor_code, align 1, !annotation !222
  %lock = getelementptr i8, ptr %item, i32 80
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %call1 = call i32 @kstrtou8(ptr noundef %page, i32 noundef 0, ptr noundef nonnull %b_vendor_code) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %1 = ptrtoint ptr %b_vendor_code to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %b_vendor_code, align 1
  %b_vendor_code2 = getelementptr i8, ptr %item, i32 509
  %3 = ptrtoint ptr %b_vendor_code2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %b_vendor_code2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.if.end_crit_edge ], [ %len, %if.then ]
  call void @mutex_unlock(ptr noundef %lock) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b_vendor_code) #13
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_qw_sign_show(ptr noundef %item, ptr noundef %page) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %qw_sign = getelementptr i8, ptr %item, i32 510
  %call1 = tail call i32 @utf16s_to_utf8s(ptr noundef %qw_sign, i32 noundef 14, i32 noundef 1, ptr noundef %page, i32 noundef 4095) #13
  %inc = add i32 %call1, 1
  %arrayidx = getelementptr i8, ptr %page, i32 %call1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx, align 1
  ret i32 %inc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @os_desc_qw_sign_store(ptr noundef %item, ptr noundef %page, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smin.i32(i32 %len, i32 7)
  %sub = add i32 %0, -1
  %arrayidx = getelementptr i8, ptr %page, i32 %sub
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %2)
  %cmp1 = icmp eq i8 %2, 10
  %l.0 = select i1 %cmp1, i32 %sub, i32 %0
  %lock = getelementptr i8, ptr %item, i32 80
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %qw_sign = getelementptr i8, ptr %item, i32 510
  %call3 = tail call i32 @utf8s_to_utf16s(ptr noundef %page, i32 noundef %l.0, i32 noundef 1, ptr noundef %qw_sign, i32 noundef 14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 0
  %res.0 = select i1 %cmp4, i32 %len, i32 %call3
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret i32 %res.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf16s_to_utf8s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @utf8s_to_utf16s(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_composite_bind(ptr noundef %gadget, ptr noundef %gdriver) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %gdriver, i32 -40
  %add.ptr = getelementptr i8, ptr %gdriver, i32 -560
  %cdev1 = getelementptr i8, ptr %gdriver, i32 128
  %unbind = getelementptr i8, ptr %gdriver, i32 328
  %0 = ptrtoint ptr %unbind to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %unbind, align 4
  %1 = ptrtoint ptr %cdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %gadget, ptr %cdev1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cdev1, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @composite_dev_prepare(ptr noundef %add.ptr.i, ptr noundef %cdev1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup243_crit_edge

entry.cleanup243_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup243

if.end:                                           ; preds = %entry
  %configs = getelementptr i8, ptr %gdriver, i32 184
  %3 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %configs, align 4
  %cmp.i.not = icmp eq ptr %4, %configs
  br i1 %cmp.i.not, label %do.end, label %if.end.for.cond_crit_edge

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %6) #18
  br label %err_comp_cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %configs, %if.end.for.cond_crit_edge ]
  %7 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %configs
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %func_list = getelementptr i8, ptr %.pn, i32 84
  %8 = ptrtoint ptr %func_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %func_list, align 4
  %cmp.i362.not = icmp eq ptr %9, %func_list
  br i1 %cmp.i362.not, label %cleanup.thread, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %c.0.le = getelementptr i8, ptr %.pn, i32 -32
  %10 = ptrtoint ptr %c.0.le to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %c.0.le, align 4
  %bConfigurationValue = getelementptr i8, ptr %.pn, i32 -12
  %12 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bConfigurationValue, align 4
  %conv = zext i8 %13 to i32
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %11, i32 noundef %conv, ptr noundef %15) #18
  br label %err_comp_cleanup

for.end:                                          ; preds = %for.cond
  %string_list = getelementptr i8, ptr %gdriver, i32 -56
  %16 = ptrtoint ptr %string_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %string_list, align 4
  %cmp.i364.not = icmp eq ptr %17, %string_list
  br i1 %cmp.i364.not, label %for.end.if.end94_crit_edge, label %for.cond46.preheader

for.end.if.end94_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end94

for.cond46.preheader:                             ; preds = %for.end
  %18 = ptrtoint ptr %string_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn352393 = load ptr, ptr %string_list, align 4
  %cmp49.not394 = icmp eq ptr %.pn352393, %string_list
  br i1 %cmp49.not394, label %for.cond46.preheader.for.end70_crit_edge, label %for.body52.lr.ph

for.cond46.preheader.for.end70_crit_edge:         ; preds = %for.cond46.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end70

for.body52.lr.ph:                                 ; preds = %for.cond46.preheader
  %gstrings = getelementptr i8, ptr %gdriver, i32 -68
  br label %for.body52

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.lr.ph
  %.pn352396 = phi ptr [ %.pn352393, %for.body52.lr.ph ], [ %.pn352, %for.body52.for.body52_crit_edge ]
  %i.0395 = phi i32 [ 0, %for.body52.lr.ph ], [ %inc, %for.body52.for.body52_crit_edge ]
  %gs.0 = getelementptr i8, ptr %.pn352396, i32 -124
  %arrayidx = getelementptr [3 x ptr], ptr %gstrings, i32 0, i32 %i.0395
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %gs.0, ptr %arrayidx, align 4
  %strings = getelementptr i8, ptr %.pn352396, i32 -116
  %strings54 = getelementptr i8, ptr %.pn352396, i32 -120
  %20 = ptrtoint ptr %strings54 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %strings, ptr %strings54, align 4
  %manufacturer = getelementptr i8, ptr %.pn352396, i32 -92
  %21 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %manufacturer, align 4
  %s57 = getelementptr i8, ptr %.pn352396, i32 -112
  %23 = ptrtoint ptr %s57 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %s57, align 4
  %product = getelementptr i8, ptr %.pn352396, i32 -88
  %24 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %product, align 4
  %s60 = getelementptr i8, ptr %.pn352396, i32 -104
  %26 = ptrtoint ptr %s60 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %s60, align 4
  %serialnumber = getelementptr i8, ptr %.pn352396, i32 -84
  %27 = ptrtoint ptr %serialnumber to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %serialnumber, align 4
  %s63 = getelementptr i8, ptr %.pn352396, i32 -96
  %29 = ptrtoint ptr %s63 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %s63, align 4
  %inc = add i32 %i.0395, 1
  %30 = ptrtoint ptr %.pn352396 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn352 = load ptr, ptr %.pn352396, align 4
  %cmp49.not = icmp eq ptr %.pn352, %string_list
  br i1 %cmp49.not, label %for.body52.for.end70_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body52

for.body52.for.end70_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end70

for.end70:                                        ; preds = %for.body52.for.end70_crit_edge, %for.cond46.preheader.for.end70_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond46.preheader.for.end70_crit_edge ], [ %inc, %for.body52.for.end70_crit_edge ]
  %gstrings71 = getelementptr i8, ptr %gdriver, i32 -68
  %arrayidx72 = getelementptr [3 x ptr], ptr %gstrings71, i32 0, i32 %i.0.lcssa
  %31 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx72, align 4
  %call76 = tail call ptr @usb_gstrings_attach(ptr noundef %cdev1, ptr noundef %gstrings71, i32 noundef 3) #13
  %cmp.i366 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i366, label %cleanup91, label %cleanup91.thread

cleanup91.thread:                                 ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call76 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %call76, align 4
  %iManufacturer = getelementptr i8, ptr %gdriver, i32 179
  %34 = ptrtoint ptr %iManufacturer to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %iManufacturer, align 1
  %arrayidx83 = getelementptr %struct.usb_string, ptr %call76, i32 1
  %35 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx83, align 4
  %iProduct = getelementptr i8, ptr %gdriver, i32 180
  %37 = ptrtoint ptr %iProduct to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %iProduct, align 1
  %arrayidx87 = getelementptr %struct.usb_string, ptr %call76, i32 2
  %38 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx87, align 4
  %iSerialNumber = getelementptr i8, ptr %gdriver, i32 181
  %40 = ptrtoint ptr %iSerialNumber to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %iSerialNumber, align 1
  br label %if.end94

cleanup91:                                        ; preds = %for.end70
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %call76 to i32
  br label %err_comp_cleanup

if.end94:                                         ; preds = %cleanup91.thread, %for.end.if.end94_crit_edge
  %use_os_desc = getelementptr i8, ptr %gdriver, i32 268
  %42 = ptrtoint ptr %use_os_desc to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %use_os_desc, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool95.not = icmp eq i8 %43, 0
  br i1 %tobool95.not, label %if.end94.if.end101_crit_edge, label %if.then96

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end101

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #15
  %use_os_string = getelementptr i8, ptr %gdriver, i32 164
  %44 = ptrtoint ptr %use_os_string to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load = load i8, ptr %use_os_string, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %use_os_string, align 4
  %b_vendor_code = getelementptr i8, ptr %gdriver, i32 269
  %45 = ptrtoint ptr %b_vendor_code to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %b_vendor_code, align 1
  %b_vendor_code97 = getelementptr i8, ptr %gdriver, i32 158
  %47 = ptrtoint ptr %b_vendor_code97 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %b_vendor_code97, align 2
  %qw_sign = getelementptr i8, ptr %gdriver, i32 144
  %qw_sign99 = getelementptr i8, ptr %gdriver, i32 270
  %48 = call ptr @memcpy(ptr %qw_sign, ptr %qw_sign99, i32 14)
  br label %if.end101

if.end101:                                        ; preds = %if.then96, %if.end94.if.end101_crit_edge
  %is_otg.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 17
  %49 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %bf.load.i = load i32, ptr %is_otg.i, align 4
  %50 = and i32 %bf.load.i, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool103.not = icmp eq i32 %50, 0
  br i1 %tobool103.not, label %if.end101.if.end114_crit_edge, label %land.lhs.true

if.end101.if.end114_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

land.lhs.true:                                    ; preds = %if.end101
  %51 = load ptr, ptr @otg_desc, align 4
  %tobool104.not = icmp eq ptr %51, null
  br i1 %tobool104.not, label %if.then105, label %land.lhs.true.if.end114_crit_edge

land.lhs.true.if.end114_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end114

if.then105:                                       ; preds = %land.lhs.true
  %call106 = tail call ptr @usb_otg_descriptor_alloc(ptr noundef %gadget) #13
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.then105.err_comp_cleanup_crit_edge, label %cleanup111.thread

if.then105.err_comp_cleanup_crit_edge:            ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_comp_cleanup

cleanup111.thread:                                ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #15
  %call110 = tail call i32 @usb_otg_descriptor_init(ptr noundef %gadget, ptr noundef nonnull %call106) #13
  store ptr %call106, ptr @otg_desc, align 4
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @otg_desc, i32 0, i32 1), align 4
  br label %if.end114

if.end114:                                        ; preds = %cleanup111.thread, %land.lhs.true.if.end114_crit_edge, %if.end101.if.end114_crit_edge
  %52 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn353402 = load ptr, ptr %configs, align 4
  %cmp125.not404 = icmp eq ptr %.pn353402, %configs
  br i1 %cmp125.not404, label %if.end114.for.end232_crit_edge, label %if.end114.for.body128_crit_edge

if.end114.for.body128_crit_edge:                  ; preds = %if.end114
  br label %for.body128

if.end114.for.end232_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end232

for.body128:                                      ; preds = %cleanup220.for.body128_crit_edge, %if.end114.for.body128_crit_edge
  %.pn353405 = phi ptr [ %.pn353, %cleanup220.for.body128_crit_edge ], [ %.pn353402, %if.end114.for.body128_crit_edge ]
  %c.1406 = getelementptr i8, ptr %.pn353405, i32 -32
  %53 = ptrtoint ptr %is_otg.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %bf.load.i368 = load i32, ptr %is_otg.i, align 4
  %54 = and i32 %bf.load.i368, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool132.not = icmp eq i32 %54, 0
  br i1 %tobool132.not, label %for.body128.if.end134_crit_edge, label %if.then133

for.body128.if.end134_crit_edge:                  ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end134

if.then133:                                       ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #15
  %descriptors = getelementptr i8, ptr %.pn353405, i32 -24
  %55 = ptrtoint ptr %descriptors to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @otg_desc, ptr %descriptors, align 4
  br label %if.end134

if.end134:                                        ; preds = %if.then133, %for.body128.if.end134_crit_edge
  %string_list138 = getelementptr i8, ptr %.pn353405, i32 -40
  %56 = ptrtoint ptr %string_list138 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %string_list138, align 4
  %cmp.i371.not = icmp eq ptr %57, %string_list138
  br i1 %cmp.i371.not, label %if.end134.if.end182_crit_edge, label %for.cond147.preheader

if.end134.if.end182_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end182

for.cond147.preheader:                            ; preds = %if.end134
  %58 = ptrtoint ptr %string_list138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn354397 = load ptr, ptr %string_list138, align 4
  %cmp150.not398 = icmp eq ptr %.pn354397, %string_list138
  br i1 %cmp150.not398, label %for.cond147.preheader.for.end169_crit_edge, label %for.body153.lr.ph

for.cond147.preheader.for.end169_crit_edge:       ; preds = %for.cond147.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end169

for.body153.lr.ph:                                ; preds = %for.cond147.preheader
  %gstrings155 = getelementptr i8, ptr %.pn353405, i32 92
  br label %for.body153

for.body153:                                      ; preds = %for.body153.for.body153_crit_edge, %for.body153.lr.ph
  %.pn354400 = phi ptr [ %.pn354397, %for.body153.lr.ph ], [ %.pn354, %for.body153.for.body153_crit_edge ]
  %i.1399 = phi i32 [ 0, %for.body153.lr.ph ], [ %inc162, %for.body153.for.body153_crit_edge ]
  %cn.0 = getelementptr i8, ptr %.pn354400, i32 -100
  %arrayidx156 = getelementptr [3 x ptr], ptr %gstrings155, i32 0, i32 %i.1399
  %59 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %cn.0, ptr %arrayidx156, align 4
  %strings157 = getelementptr i8, ptr %.pn354400, i32 -92
  %strings159 = getelementptr i8, ptr %.pn354400, i32 -96
  %60 = ptrtoint ptr %strings159 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %strings157, ptr %strings159, align 4
  %configuration = getelementptr i8, ptr %.pn354400, i32 -84
  %61 = ptrtoint ptr %configuration to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %configuration, align 4
  %s161 = getelementptr i8, ptr %.pn354400, i32 -88
  %63 = ptrtoint ptr %s161 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %s161, align 4
  %inc162 = add i32 %i.1399, 1
  %64 = ptrtoint ptr %.pn354400 to i32
  call void @__asan_load4_noabort(i32 %64)
  %.pn354 = load ptr, ptr %.pn354400, align 4
  %cmp150.not = icmp eq ptr %.pn354, %string_list138
  br i1 %cmp150.not, label %for.body153.for.end169_crit_edge, label %for.body153.for.body153_crit_edge

for.body153.for.body153_crit_edge:                ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body153

for.body153.for.end169_crit_edge:                 ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end169

for.end169:                                       ; preds = %for.body153.for.end169_crit_edge, %for.cond147.preheader.for.end169_crit_edge
  %i.1.lcssa = phi i32 [ 0, %for.cond147.preheader.for.end169_crit_edge ], [ %inc162, %for.body153.for.end169_crit_edge ]
  %gstrings170 = getelementptr i8, ptr %.pn353405, i32 92
  %arrayidx171 = getelementptr [3 x ptr], ptr %gstrings170, i32 0, i32 %i.1.lcssa
  %65 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %arrayidx171, align 4
  %call175 = tail call ptr @usb_gstrings_attach(ptr noundef %cdev1, ptr noundef %gstrings170, i32 noundef 1) #13
  %cmp.i373 = icmp ugt ptr %call175, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i373, label %cleanup220.thread386, label %if.end179

cleanup220.thread386:                             ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %call175 to i32
  br label %err_comp_cleanup

if.end179:                                        ; preds = %for.end169
  call void @__sanitizer_cov_trace_pc() #15
  %67 = ptrtoint ptr %call175 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %call175, align 4
  %iConfiguration = getelementptr i8, ptr %.pn353405, i32 -11
  %69 = ptrtoint ptr %iConfiguration to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %iConfiguration, align 1
  br label %if.end182

if.end182:                                        ; preds = %if.end179, %if.end134.if.end182_crit_edge
  %func_list184 = getelementptr i8, ptr %.pn353405, i32 84
  %70 = ptrtoint ptr %func_list184 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %func_list184, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %list_del.exit.for.cond193_crit_edge, %if.end182
  %.pn355.in = phi ptr [ %71, %if.end182 ], [ %.pn355, %list_del.exit.for.cond193_crit_edge ]
  %72 = ptrtoint ptr %.pn355.in to i32
  call void @__asan_load4_noabort(i32 %72)
  %.pn355 = load ptr, ptr %.pn355.in, align 4
  %cmp196.not = icmp eq ptr %.pn355.in, %func_list184
  br i1 %cmp196.not, label %for.end213, label %for.body199

for.body199:                                      ; preds = %for.cond193
  %f.0 = getelementptr i8, ptr %.pn355.in, i32 -88
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn355.in) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body199.list_del.exit_crit_edge

for.body199.list_del.exit_crit_edge:              ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body199
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn355.in, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i, align 4
  %75 = ptrtoint ptr %.pn355.in to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.pn355.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body199.list_del.exit_crit_edge
  %79 = ptrtoint ptr %.pn355.in to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn355.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn355.in, i32 0, i32 1
  %80 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call201 = tail call i32 @usb_add_function(ptr noundef %c.1406, ptr noundef %f.0) #13
  %tobool202.not = icmp eq i32 %call201, 0
  br i1 %tobool202.not, label %list_del.exit.for.cond193_crit_edge, label %if.then203

list_del.exit.for.cond193_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond193

if.then203:                                       ; preds = %list_del.exit
  %81 = ptrtoint ptr %func_list184 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %func_list184, align 4
  %call.i.i374 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn355.in, ptr noundef %func_list184, ptr noundef %82) #13
  br i1 %call.i.i374, label %if.end.i.i375, label %if.then203.err_purge_funcs_crit_edge

if.then203.err_purge_funcs_crit_edge:             ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_purge_funcs

if.end.i.i375:                                    ; preds = %if.then203
  call void @__sanitizer_cov_trace_pc() #15
  %prev.i.le = getelementptr inbounds %struct.list_head, ptr %.pn355.in, i32 0, i32 1
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %.pn355.in, ptr %prev1.i.i, align 4
  %84 = ptrtoint ptr %.pn355.in to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %82, ptr %.pn355.in, align 4
  %85 = ptrtoint ptr %prev.i.le to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %func_list184, ptr %prev.i.le, align 4
  %86 = ptrtoint ptr %func_list184 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %.pn355.in, ptr %func_list184, align 4
  br label %err_purge_funcs

for.end213:                                       ; preds = %for.cond193
  %87 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cdev1, align 4
  %call215 = tail call i32 @usb_gadget_check_config(ptr noundef %88) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %cleanup220, label %for.end213.err_purge_funcs_crit_edge

for.end213.err_purge_funcs_crit_edge:             ; preds = %for.end213
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_purge_funcs

cleanup220:                                       ; preds = %for.end213
  %89 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cdev1, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %90) #13
  %91 = ptrtoint ptr %.pn353405 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pn353 = load ptr, ptr %.pn353405, align 4
  %cmp125.not = icmp eq ptr %.pn353, %configs
  br i1 %cmp125.not, label %cleanup220.for.end232_crit_edge, label %cleanup220.for.body128_crit_edge

cleanup220.for.body128_crit_edge:                 ; preds = %cleanup220
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body128

cleanup220.for.end232_crit_edge:                  ; preds = %cleanup220
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end232

for.end232:                                       ; preds = %cleanup220.for.end232_crit_edge, %if.end114.for.end232_crit_edge
  %use_os_string233 = getelementptr i8, ptr %gdriver, i32 164
  %92 = ptrtoint ptr %use_os_string233 to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load234 = load i8, ptr %use_os_string233, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load234)
  %tobool235.not = icmp sgt i8 %bf.load234, -1
  br i1 %tobool235.not, label %for.end232.if.end241_crit_edge, label %if.then236

for.end232.if.end241_crit_edge:                   ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

if.then236:                                       ; preds = %for.end232
  %ep0 = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 3
  %93 = ptrtoint ptr %ep0 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %ep0, align 4
  %call237 = tail call i32 @composite_os_desc_req_prepare(ptr noundef %cdev1, ptr noundef %94) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %tobool238.not = icmp eq i32 %call237, 0
  br i1 %tobool238.not, label %if.then236.if.end241_crit_edge, label %if.then236.err_purge_funcs_crit_edge

if.then236.err_purge_funcs_crit_edge:             ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #15
  br label %err_purge_funcs

if.then236.if.end241_crit_edge:                   ; preds = %if.then236
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end241

if.end241:                                        ; preds = %if.then236.if.end241_crit_edge, %for.end232.if.end241_crit_edge
  %95 = ptrtoint ptr %cdev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %cdev1, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %96) #13
  br label %cleanup243

err_purge_funcs:                                  ; preds = %if.then236.err_purge_funcs_crit_edge, %for.end213.err_purge_funcs_crit_edge, %if.end.i.i375, %if.then203.err_purge_funcs_crit_edge
  %ret.4 = phi i32 [ %call237, %if.then236.err_purge_funcs_crit_edge ], [ %call201, %if.end.i.i375 ], [ %call201, %if.then203.err_purge_funcs_crit_edge ], [ %call215, %for.end213.err_purge_funcs_crit_edge ]
  tail call fastcc void @purge_configs_funcs(ptr noundef %add.ptr)
  br label %err_comp_cleanup

err_comp_cleanup:                                 ; preds = %err_purge_funcs, %cleanup220.thread386, %if.then105.err_comp_cleanup_crit_edge, %cleanup91, %cleanup.thread, %do.end
  %ret.5 = phi i32 [ -22, %do.end ], [ %ret.4, %err_purge_funcs ], [ %41, %cleanup91 ], [ -22, %cleanup.thread ], [ -12, %if.then105.err_comp_cleanup_crit_edge ], [ %66, %cleanup220.thread386 ]
  tail call void @composite_dev_cleanup(ptr noundef %cdev1) #13
  br label %cleanup243

cleanup243:                                       ; preds = %err_comp_cleanup, %if.end241, %entry.cleanup243_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err_comp_cleanup ], [ 0, %if.end241 ], [ %call3, %entry.cleanup243_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_composite_unbind(ptr nocapture noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -688
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %unbind = getelementptr i8, ptr %1, i32 200
  %2 = ptrtoint ptr %unbind to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %unbind, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  %3 = load ptr, ptr @otg_desc, align 4
  tail call void @kfree(ptr noundef %3) #13
  store ptr null, ptr @otg_desc, align 4
  tail call fastcc void @purge_configs_funcs(ptr noundef %add.ptr)
  tail call void @composite_dev_cleanup(ptr noundef %1) #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @usb_ep_autoconfig_reset(ptr noundef %5) #13
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %1, align 4
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call18) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configfs_composite_setup(ptr noundef %gadget, ptr noundef %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %unbind = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unbind, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  %call14 = tail call i32 @composite_setup(ptr noundef %gadget, ptr noundef %ctrl) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call14, %if.end13 ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_composite_disconnect(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %unbind = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unbind, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @composite_disconnect(ptr noundef %gadget) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_composite_suspend(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %unbind = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unbind, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @composite_suspend(ptr noundef %gadget) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_composite_resume(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %unbind = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unbind, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @composite_resume(ptr noundef %gadget) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @configfs_composite_reset(ptr noundef %gadget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_gadget, ptr %gadget, i32 0, i32 11, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %spinlock = getelementptr i8, ptr %1, i32 156
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %spinlock) #13
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.cleanup.sink.split_crit_edge, label %lor.lhs.false

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %unbind = getelementptr i8, ptr %1, i32 200
  %4 = ptrtoint ptr %unbind to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unbind, align 4, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %if.end13, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end13:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @composite_reset(ptr noundef %gadget) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end13, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %spinlock, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_dev_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_gstrings_attach(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_otg_descriptor_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_otg_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_function(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_check_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_ep_autoconfig_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_os_desc_req_prepare(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @purge_configs_funcs(ptr noundef readonly %gi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cdev = getelementptr inbounds %struct.gadget_info, ptr %gi, i32 0, i32 10
  %configs = getelementptr inbounds %struct.gadget_info, ptr %gi, i32 0, i32 10, i32 11
  %0 = ptrtoint ptr %configs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn89 = load ptr, ptr %configs, align 4
  %cmp.not91 = icmp eq ptr %.pn89, %configs
  br i1 %cmp.not91, label %entry.for.end52_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end52_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end52

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.end.for.body_crit_edge ], [ %.pn89, %entry.for.body_crit_edge ]
  %c.093 = getelementptr i8, ptr %.pn92, i32 -32
  %functions = getelementptr i8, ptr %.pn92, i32 8
  %prev = getelementptr i8, ptr %.pn92, i32 12
  %1 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev, align 4
  %cmp18.not81 = icmp eq ptr %2, %functions
  br i1 %cmp18.not81, label %for.body.for.end_crit_edge, label %for.body20.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body20.lr.ph:                                 ; preds = %for.body
  %func_list = getelementptr i8, ptr %.pn92, i32 84
  br label %for.body20

for.body20:                                       ; preds = %for.inc.for.body20_crit_edge, %for.body20.lr.ph
  %.pn7582 = phi ptr [ %2, %for.body20.lr.ph ], [ %.pn7488, %for.inc.for.body20_crit_edge ]
  %f.085 = getelementptr i8, ptr %.pn7582, i32 -88
  %.pn74.in87 = getelementptr inbounds %struct.list_head, ptr %.pn7582, i32 0, i32 1
  %3 = ptrtoint ptr %.pn74.in87 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn7488 = load ptr, ptr %.pn74.in87, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn7582) #13
  br i1 %call.i.i, label %if.end.i.i, label %for.body20.__list_del_entry.exit.i_crit_edge

for.body20.__list_del_entry.exit.i_crit_edge:     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %.pn74.in87 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn74.in87, align 4
  %6 = ptrtoint ptr %.pn7582 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.pn7582, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body20.__list_del_entry.exit.i_crit_edge
  %10 = ptrtoint ptr %func_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %func_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn7582, ptr noundef %func_list, ptr noundef %11) #13
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %.pn7582, ptr %prev1.i.i2.i, align 4
  %13 = ptrtoint ptr %.pn7582 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %11, ptr %.pn7582, align 4
  %14 = ptrtoint ptr %.pn74.in87 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %func_list, ptr %.pn74.in87, align 4
  %15 = ptrtoint ptr %func_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %.pn7582, ptr %func_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %unbind = getelementptr i8, ptr %.pn7582, i32 -48
  %16 = ptrtoint ptr %unbind to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unbind, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %list_move.exit.for.inc_crit_edge, label %do.body

list_move.exit.for.inc_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.body:                                          ; preds = %list_move.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @purge_configs_funcs.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@purge_configs_funcs, %do.end)) #13
          to label %if.then28 [label %do.end], !srcloc !225

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cdev, align 4
  %dev = getelementptr inbounds %struct.usb_gadget, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %f.085 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %f.085, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @purge_configs_funcs.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef %21, ptr noundef %f.085) #13
  br label %do.end

do.end:                                           ; preds = %if.then28, %do.body
  %22 = ptrtoint ptr %unbind to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %unbind, align 4
  tail call void %23(ptr noundef %c.093, ptr noundef %f.085) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %list_move.exit.for.inc_crit_edge
  %cmp18.not = icmp eq ptr %.pn7488, %functions
  br i1 %cmp18.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body20_crit_edge

for.inc.for.body20_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body20

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %next_interface_id = getelementptr i8, ptr %.pn92, i32 16
  %24 = ptrtoint ptr %next_interface_id to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %next_interface_id, align 4
  %interface = getelementptr i8, ptr %.pn92, i32 20
  %25 = call ptr @memset(ptr %interface, i32 0, i32 64)
  %superspeed_plus = getelementptr i8, ptr %.pn92, i32 17
  %26 = ptrtoint ptr %superspeed_plus to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load = load i8, ptr %superspeed_plus, align 1
  %bf.clear44 = and i8 %bf.load, 15
  store i8 %bf.clear44, ptr %superspeed_plus, align 1
  %27 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp.not = icmp eq ptr %.pn, %configs
  br i1 %cmp.not, label %for.end.for.end52_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end52

for.end52:                                        ; preds = %for.end.for.end52_crit_edge, %entry.for.end52_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_dev_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @composite_setup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @composite_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nobuiltin }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !56, !57, !59, !61, !63, !65, !67, !68, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !120, !121, !122, !124, !126, !128, !129, !130, !131, !133, !135, !137, !139, !141, !142, !144, !146, !147, !149, !150, !152, !153, !155, !157, !158, !160, !161, !163, !164, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !197, !199, !200, !201, !202, !204, !205, !206, !208, !210, !211, !212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/gadget/configfs.c", i32 1207, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/gadget/configfs.c", i32 1219, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/gadget/configfs.c", i32 1220, i32 43}
!6 = !{ptr @__ksymtab_usb_os_desc_prepare_interf_dir, !7, !"__ksymtab_usb_os_desc_prepare_interf_dir", i1 false, i1 false}
!7 = !{!"../drivers/usb/gadget/configfs.c", i32 1227, i32 1}
!8 = !{ptr @__ksymtab_unregister_gadget_item, !9, !"__ksymtab_unregister_gadget_item", i1 false, i1 false}
!9 = !{!"../drivers/usb/gadget/configfs.c", i32 1664, i32 1}
!10 = !{ptr @__initcall__kmod_libcomposite__235_1675_gadget_cfs_init6, !11, !"__initcall__kmod_libcomposite__235_1675_gadget_cfs_init6", i1 false, i1 false}
!11 = !{!"../drivers/usb/gadget/configfs.c", i32 1675, i32 1}
!12 = !{ptr @__exitcall_gadget_cfs_exit, !13, !"__exitcall_gadget_cfs_exit", i1 false, i1 false}
!13 = !{!"../drivers/usb/gadget/configfs.c", i32 1681, i32 1}
!14 = !{ptr @interf_grp_ops, !15, !"interf_grp_ops", i1 false, i1 false}
!15 = !{!"../drivers/usb/gadget/configfs.c", i32 1117, i32 41}
!16 = !{ptr @ext_prop_ops, !17, !"ext_prop_ops", i1 false, i1 false}
!17 = !{!"../drivers/usb/gadget/configfs.c", i32 1052, i32 40}
!18 = !{ptr @ext_prop_attrs, !19, !"ext_prop_attrs", i1 false, i1 false}
!19 = !{!"../drivers/usb/gadget/configfs.c", i32 1039, i32 35}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/gadget/configfs.c", i32 1036, i32 1}
!22 = !{ptr @ext_prop_attr_type, !21, !"ext_prop_attr_type", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/gadget/configfs.c", i32 944, i32 23}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/gadget/configfs.c", i32 1037, i32 1}
!27 = !{ptr @ext_prop_attr_data, !26, !"ext_prop_attr_data", i1 false, i1 false}
!28 = !{ptr @interf_grp_attrs, !29, !"interf_grp_attrs", i1 false, i1 false}
!29 = !{!"../drivers/usb/gadget/configfs.c", i32 1177, i32 35}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/gadget/configfs.c", i32 1174, i32 1}
!32 = !{ptr @interf_grp_attr_compatible_id, !31, !"interf_grp_attr_compatible_id", i1 false, i1 false}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/gadget/configfs.c", i32 1175, i32 1}
!35 = !{ptr @interf_grp_attr_sub_compatible_id, !34, !"interf_grp_attr_sub_compatible_id", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/gadget/configfs.c", i32 1653, i32 14}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @gadget_subsys, !40, !"gadget_subsys", i1 false, i1 false}
!40 = !{!"../drivers/usb/gadget/configfs.c", i32 1646, i32 34}
!41 = !{ptr @gadgets_type, !42, !"gadgets_type", i1 false, i1 false}
!42 = !{!"../drivers/usb/gadget/configfs.c", i32 1641, i32 38}
!43 = !{ptr @gadgets_ops, !44, !"gadgets_ops", i1 false, i1 false}
!44 = !{!"../drivers/usb/gadget/configfs.c", i32 1636, i32 41}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/gadget/configfs.c", i32 1585, i32 52}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/usb/gadget/configfs.c", i32 1589, i32 50}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/gadget/configfs.c", i32 1593, i32 50}
!51 = !{ptr @gadgets_make.__key, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/usb/gadget/configfs.c", i32 1607, i32 2}
!53 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gadgets_make.__key.14, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/usb/gadget/configfs.c", i32 1608, i32 2}
!56 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @gadget_root_type, !58, !"gadget_root_type", i1 false, i1 false}
!58 = !{!"../drivers/usb/gadget/configfs.c", i32 566, i32 38}
!59 = !{ptr @gadget_root_item_ops, !60, !"gadget_root_item_ops", i1 false, i1 false}
!60 = !{!"../drivers/usb/gadget/configfs.c", i32 398, i32 40}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/gadget/configfs.c", i32 391, i32 2}
!63 = !{ptr @gadget_root_attrs, !64, !"gadget_root_attrs", i1 false, i1 false}
!64 = !{!"../drivers/usb/gadget/configfs.c", i32 353, i32 35}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/gadget/configfs.c", i32 342, i32 1}
!67 = !{ptr @gadget_dev_desc_attr_bDeviceClass, !66, !"gadget_dev_desc_attr_bDeviceClass", i1 false, i1 false}
!68 = !{ptr @.str.18, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/gadget/configfs.c", i32 174, i32 1}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/gadget/configfs.c", i32 343, i32 1}
!72 = !{ptr @gadget_dev_desc_attr_bDeviceSubClass, !71, !"gadget_dev_desc_attr_bDeviceSubClass", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/gadget/configfs.c", i32 344, i32 1}
!75 = !{ptr @gadget_dev_desc_attr_bDeviceProtocol, !74, !"gadget_dev_desc_attr_bDeviceProtocol", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/gadget/configfs.c", i32 345, i32 1}
!78 = !{ptr @gadget_dev_desc_attr_bMaxPacketSize0, !77, !"gadget_dev_desc_attr_bMaxPacketSize0", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/gadget/configfs.c", i32 346, i32 1}
!81 = !{ptr @gadget_dev_desc_attr_idVendor, !80, !"gadget_dev_desc_attr_idVendor", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/gadget/configfs.c", i32 178, i32 1}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/gadget/configfs.c", i32 347, i32 1}
!86 = !{ptr @gadget_dev_desc_attr_idProduct, !85, !"gadget_dev_desc_attr_idProduct", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/gadget/configfs.c", i32 348, i32 1}
!89 = !{ptr @gadget_dev_desc_attr_bcdDevice, !88, !"gadget_dev_desc_attr_bcdDevice", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/gadget/configfs.c", i32 349, i32 1}
!92 = !{ptr @gadget_dev_desc_attr_bcdUSB, !91, !"gadget_dev_desc_attr_bcdUSB", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/gadget/configfs.c", i32 350, i32 1}
!95 = !{ptr @gadget_dev_desc_attr_UDC, !94, !"gadget_dev_desc_attr_UDC", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/gadget/configfs.c", i32 237, i32 22}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/gadget/configfs.c", i32 351, i32 1}
!100 = !{ptr @gadget_dev_desc_attr_max_speed, !99, !"gadget_dev_desc_attr_max_speed", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/gadget/configfs.c", i32 320, i32 20}
!103 = !{ptr @.str.31, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/usb/gadget/configfs.c", i32 322, i32 25}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/gadget/configfs.c", i32 324, i32 25}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/gadget/configfs.c", i32 326, i32 25}
!109 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/gadget/configfs.c", i32 328, i32 25}
!111 = !{ptr @functions_type, !112, !"functions_type", i1 false, i1 false}
!112 = !{!"../drivers/usb/gadget/configfs.c", i32 648, i32 38}
!113 = !{ptr @functions_ops, !114, !"functions_ops", i1 false, i1 false}
!114 = !{!"../drivers/usb/gadget/configfs.c", i32 643, i32 41}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/gadget/configfs.c", i32 590, i32 36}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/gadget/configfs.c", i32 597, i32 3}
!119 = !{ptr @.str.37, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @function_make._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @function_make._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @config_desc_type, !123, !"config_desc_type", i1 false, i1 false}
!123 = !{!"../drivers/usb/gadget/configfs.c", i32 749, i32 38}
!124 = !{ptr @config_desc_ops, !125, !"config_desc_ops", i1 false, i1 false}
!125 = !{!"../drivers/usb/gadget/configfs.c", i32 744, i32 41}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/gadget/configfs.c", i32 691, i32 3}
!128 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @config_desc_make._entry, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @config_desc_make._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @gadget_config_type, !132, !"gadget_config_type", i1 false, i1 false}
!132 = !{!"../drivers/usb/gadget/configfs.c", i32 560, i32 38}
!133 = !{ptr @gadget_config_item_ops, !134, !"gadget_config_item_ops", i1 false, i1 false}
!134 = !{!"../drivers/usb/gadget/configfs.c", i32 495, i32 40}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/usb/gadget/configfs.c", i32 492, i32 2}
!137 = !{ptr @gadget_config_attrs, !138, !"gadget_config_attrs", i1 false, i1 false}
!138 = !{!"../drivers/usb/gadget/configfs.c", i32 554, i32 35}
!139 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/usb/gadget/configfs.c", i32 551, i32 1}
!141 = !{ptr @gadget_config_desc_attr_MaxPower, !140, !"gadget_config_desc_attr_MaxPower", i1 false, i1 false}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/gadget/configfs.c", i32 507, i32 23}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/gadget/configfs.c", i32 552, i32 1}
!146 = !{ptr @gadget_config_desc_attr_bmAttributes, !145, !"gadget_config_desc_attr_bmAttributes", i1 false, i1 false}
!147 = !{ptr @gadget_config_name_strings_type, !148, !"gadget_config_name_strings_type", i1 false, i1 false}
!148 = !{!"../drivers/usb/gadget/configfs.c", i32 671, i32 1}
!149 = !{ptr @gadget_config_name_strings_ops, !148, !"gadget_config_name_strings_ops", i1 false, i1 false}
!150 = !{ptr @gadget_config_name_langid_type, !151, !"gadget_config_name_langid_type", i1 false, i1 false}
!151 = !{!"../drivers/usb/gadget/configfs.c", i32 670, i32 1}
!152 = !{ptr @gadget_config_name_langid_item_ops, !151, !"gadget_config_name_langid_item_ops", i1 false, i1 false}
!153 = !{ptr @gadget_config_name_langid_attrs, !154, !"gadget_config_name_langid_attrs", i1 false, i1 false}
!154 = !{!"../drivers/usb/gadget/configfs.c", i32 655, i32 35}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/gadget/configfs.c", i32 653, i32 1}
!157 = !{ptr @gadget_config_name_attr_configuration, !156, !"gadget_config_name_attr_configuration", i1 false, i1 false}
!158 = !{ptr @gadget_strings_strings_type, !159, !"gadget_strings_strings_type", i1 false, i1 false}
!159 = !{!"../drivers/usb/gadget/configfs.c", i32 778, i32 1}
!160 = !{ptr @gadget_strings_strings_ops, !159, !"gadget_strings_strings_ops", i1 false, i1 false}
!161 = !{ptr @gadget_strings_langid_type, !162, !"gadget_strings_langid_type", i1 false, i1 false}
!162 = !{!"../drivers/usb/gadget/configfs.c", i32 777, i32 1}
!163 = !{ptr @gadget_strings_langid_item_ops, !162, !"gadget_strings_langid_item_ops", i1 false, i1 false}
!164 = !{ptr @gadget_strings_langid_attrs, !165, !"gadget_strings_langid_attrs", i1 false, i1 false}
!165 = !{!"../drivers/usb/gadget/configfs.c", i32 758, i32 35}
!166 = !{ptr @.str.45, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/gadget/configfs.c", i32 754, i32 1}
!168 = !{ptr @gadget_strings_attr_manufacturer, !167, !"gadget_strings_attr_manufacturer", i1 false, i1 false}
!169 = !{ptr @.str.46, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/usb/gadget/configfs.c", i32 755, i32 1}
!171 = !{ptr @gadget_strings_attr_product, !170, !"gadget_strings_attr_product", i1 false, i1 false}
!172 = !{ptr @.str.47, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/gadget/configfs.c", i32 756, i32 1}
!174 = !{ptr @gadget_strings_attr_serialnumber, !173, !"gadget_strings_attr_serialnumber", i1 false, i1 false}
!175 = !{ptr @os_desc_type, !176, !"os_desc_type", i1 false, i1 false}
!176 = !{!"../drivers/usb/gadget/configfs.c", i32 930, i32 32}
!177 = !{ptr @os_desc_ops, !178, !"os_desc_ops", i1 false, i1 false}
!178 = !{!"../drivers/usb/gadget/configfs.c", i32 925, i32 40}
!179 = !{ptr @os_desc_attrs, !180, !"os_desc_attrs", i1 false, i1 false}
!180 = !{!"../drivers/usb/gadget/configfs.c", i32 872, i32 35}
!181 = !{ptr @.str.48, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/usb/gadget/configfs.c", i32 868, i32 1}
!183 = !{ptr @os_desc_attr_use, !182, !"os_desc_attr_use", i1 false, i1 false}
!184 = !{ptr @.str.49, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/gadget/configfs.c", i32 869, i32 1}
!186 = !{ptr @os_desc_attr_b_vendor_code, !185, !"os_desc_attr_b_vendor_code", i1 false, i1 false}
!187 = !{ptr @.str.50, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/gadget/configfs.c", i32 870, i32 1}
!189 = !{ptr @os_desc_attr_qw_sign, !188, !"os_desc_attr_qw_sign", i1 false, i1 false}
!190 = !{ptr @composite_init_dev.__key, !191, !"__key", i1 false, i1 false}
!191 = !{!"../drivers/usb/gadget/configfs.c", i32 574, i32 2}
!192 = !{ptr @.str.51, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.52, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/usb/gadget/configfs.c", i32 1568, i32 12}
!195 = !{ptr @configfs_driver_template, !196, !"configfs_driver_template", i1 false, i1 false}
!196 = !{!"../drivers/usb/gadget/configfs.c", i32 1554, i32 39}
!197 = !{ptr @.str.53, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/gadget/configfs.c", i32 1293, i32 3}
!199 = !{ptr @.str.54, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @configfs_composite_bind._entry, !198, !"_entry", i1 false, i1 false}
!201 = !{ptr @configfs_composite_bind._entry_ptr, !198, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.56, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/gadget/configfs.c", i32 1304, i32 4}
!204 = !{ptr @configfs_composite_bind._entry.55, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @configfs_composite_bind._entry_ptr.57, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @otg_desc, !207, !"otg_desc", i1 false, i1 false}
!207 = !{!"../drivers/usb/gadget/configfs.c", i32 33, i32 44}
!208 = !{ptr @.str.58, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/gadget/configfs.c", i32 1255, i32 5}
!210 = !{ptr @.str.59, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.60, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @purge_configs_funcs.__UNIQUE_ID_ddebug234, !209, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{!"auto-init"}
!223 = !{!"branch_weights", i32 2000, i32 1}
!224 = !{i8 0, i8 2}
!225 = !{i64 2148947384, i64 2148947389, i64 2148947402, i64 2148947446, i64 2148947480, i64 2148947501}
