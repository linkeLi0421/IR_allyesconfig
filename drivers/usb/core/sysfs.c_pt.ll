; ModuleID = '/llk/IR_all_yes/drivers/usb/core/sysfs.c_pt.bc'
source_filename = "../drivers/usb/core/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.usb_host_bos = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_ss_cap_descriptor = type { i8, i8, i8, i8, i16, i8, i8, i16 }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.69, i32 }
%union.anon.69 = type { ptr }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }

@dev_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@dev_string_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @dev_string_attrs_are_visible, ptr null, ptr @dev_string_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_device_groups = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_grp, ptr @dev_string_attr_grp, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_bin_attr_descriptors = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 65553, ptr null, ptr null, ptr @read_descriptors, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@intf_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @intf_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@intf_assoc_attr_grp = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @intf_assoc_attrs_are_visible, ptr null, ptr @intf_assoc_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_interface_groups = dso_local global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @intf_attr_grp, ptr @intf_assoc_attr_grp, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_interface = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@usb_create_sysfs_intf_files.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usbcore\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_create_sysfs_intf_files\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/core/sysfs.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"interface string descriptor file not created\0A\00", [50 x i8] zeroinitializer }, align 32
@dev_attrs = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @dev_attr_configuration, ptr @dev_attr_bNumInterfaces, ptr @dev_attr_bConfigurationValue, ptr @dev_attr_bmAttributes, ptr @dev_attr_bMaxPower, ptr @dev_attr_urbnum, ptr @dev_attr_idVendor, ptr @dev_attr_idProduct, ptr @dev_attr_bcdDevice, ptr @dev_attr_bDeviceClass, ptr @dev_attr_bDeviceSubClass, ptr @dev_attr_bDeviceProtocol, ptr @dev_attr_bNumConfigurations, ptr @dev_attr_bMaxPacketSize0, ptr @dev_attr_speed, ptr @dev_attr_rx_lanes, ptr @dev_attr_tx_lanes, ptr @dev_attr_busnum, ptr @dev_attr_devnum, ptr @dev_attr_devpath, ptr @dev_attr_version, ptr @dev_attr_maxchild, ptr @dev_attr_quirks, ptr @dev_attr_avoid_reset_quirk, ptr @dev_attr_authorized, ptr @dev_attr_remove, ptr @dev_attr_ltm_capable, ptr @dev_attr_devspec, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_configuration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @configuration_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bNumInterfaces = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bNumInterfaces_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bConfigurationValue = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 -128, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bConfigurationValue_show, ptr @bConfigurationValue_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bmAttributes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bmAttributes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bMaxPower = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bMaxPower_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_urbnum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @urbnum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idVendor = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idVendor_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_idProduct = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @idProduct_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bcdDevice = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bcdDevice_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bDeviceClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bDeviceClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bDeviceSubClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bDeviceSubClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bDeviceProtocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bDeviceProtocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bNumConfigurations = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bNumConfigurations_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bMaxPacketSize0 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bMaxPacketSize0_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_speed = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @speed_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_lanes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_lanes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_tx_lanes = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tx_lanes_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_busnum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @busnum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devnum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devnum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devpath = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devpath_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_maxchild = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @maxchild_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_quirks = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @quirks_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_avoid_reset_quirk = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @avoid_reset_quirk_show, ptr @avoid_reset_quirk_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_authorized = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 -128, ptr null, %struct.lock_class_key zeroinitializer }, ptr @authorized_show, ptr @authorized_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_remove = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 128, i8 -128, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @remove_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ltm_capable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltm_capable_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_devspec = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @devspec_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"configuration\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bNumInterfaces\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2d\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bConfigurationValue\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bmAttributes\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%2x\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bMaxPower\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%dmA\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"urbnum\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"idVendor\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%04x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"idProduct\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"bcdDevice\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bDeviceClass\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bDeviceSubClass\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bDeviceProtocol\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bNumConfigurations\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bMaxPacketSize0\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"5000\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"20000\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"10000\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rx_lanes\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tx_lanes\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"busnum\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"devnum\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devpath\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%2x.%02x\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"maxchild\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"quirks\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"avoid_reset_quirk\00", [46 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"authorized\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ltm_capable\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devspec\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pOF\0A\00", [26 x i8] zeroinitializer }, align 32
@dev_string_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_manufacturer, ptr @dev_attr_product, ptr @dev_attr_serial, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_manufacturer = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @manufacturer_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_product = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @product_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_serial = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @serial_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"manufacturer\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"product\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"serial\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"descriptors\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_persist = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @persist_show, ptr @persist_store }, [36 x i8] zeroinitializer }, align 32
@power_group_name = external dso_local constant [0 x i8], align 1
@usb_device_type = external dso_local global %struct.device_type, align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"persist\00", [24 x i8] zeroinitializer }, align 32
@power_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @power_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb2_hardware_lpm_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @usb2_hardware_lpm_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb3_hardware_lpm_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @usb3_hardware_lpm_attr, ptr null }, [44 x i8] zeroinitializer }, align 32
@power_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_autosuspend, ptr @dev_attr_level, ptr @dev_attr_connected_duration, ptr @dev_attr_active_duration, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_autosuspend = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @autosuspend_show, ptr @autosuspend_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_level = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @level_show, ptr @level_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_connected_duration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @connected_duration_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_active_duration = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @active_duration_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"autosuspend\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"level\00", [26 x i8] zeroinitializer }, align 32
@auto_string = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@on_string = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@warn_level.level_warned = internal global { i1, [31 x i8] } zeroinitializer, align 32
@warn_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014WARNING! power/level is deprecated; use power/control instead\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"warn_level\00", [21 x i8] zeroinitializer }, align 32
@warn_level._entry_ptr = internal global ptr @warn_level._entry, section ".printk_index", align 4
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"connected_duration\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"active_duration\00", [16 x i8] zeroinitializer }, align 32
@usb2_hardware_lpm_attr = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_usb2_hardware_lpm, ptr @dev_attr_usb2_lpm_l1_timeout, ptr @dev_attr_usb2_lpm_besl, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_usb2_hardware_lpm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb2_hardware_lpm_show, ptr @usb2_hardware_lpm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb2_lpm_l1_timeout = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb2_lpm_l1_timeout_show, ptr @usb2_lpm_l1_timeout_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb2_lpm_besl = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb2_lpm_besl_show, ptr @usb2_lpm_besl_store }, [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb2_hardware_lpm\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb2_lpm_l1_timeout\00", [44 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb2_lpm_besl\00", [18 x i8] zeroinitializer }, align 32
@usb3_hardware_lpm_attr = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_usb3_hardware_lpm_u1, ptr @dev_attr_usb3_hardware_lpm_u2, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_usb3_hardware_lpm_u1 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb3_hardware_lpm_u1_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_usb3_hardware_lpm_u2 = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @usb3_hardware_lpm_u2_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb3_hardware_lpm_u1\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"usb3_hardware_lpm_u2\00", [43 x i8] zeroinitializer }, align 32
@usb_bus_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @usb_bus_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@usb_bus_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_authorized_default, ptr @dev_attr_interface_authorized_default, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_authorized_default = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @authorized_default_show, ptr @authorized_default_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interface_authorized_default = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_authorized_default_show, ptr @interface_authorized_default_store }, [36 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"authorized_default\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"interface_authorized_default\00", [35 x i8] zeroinitializer }, align 32
@intf_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_bInterfaceNumber, ptr @dev_attr_bAlternateSetting, ptr @dev_attr_bNumEndpoints, ptr @dev_attr_bInterfaceClass, ptr @dev_attr_bInterfaceSubClass, ptr @dev_attr_bInterfaceProtocol, ptr @dev_attr_modalias, ptr @dev_attr_supports_autosuspend, ptr @dev_attr_interface_authorized, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_bInterfaceNumber = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bInterfaceNumber_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bAlternateSetting = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bAlternateSetting_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bNumEndpoints = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bNumEndpoints_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bInterfaceClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bInterfaceClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bInterfaceSubClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bInterfaceSubClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_bInterfaceProtocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bInterfaceProtocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_modalias = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @modalias_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_supports_autosuspend = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @supports_autosuspend_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_interface_authorized = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interface_authorized_show, ptr @interface_authorized_store }, [36 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bInterfaceNumber\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bAlternateSetting\00", [46 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bNumEndpoints\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bInterfaceClass\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bInterfaceSubClass\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bInterfaceProtocol\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modalias\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"usb:v%04Xp%04Xd%04Xdc%02Xdsc%02Xdp%02Xic%02Xisc%02Xip%02Xin%02X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"supports_autosuspend\00", [43 x i8] zeroinitializer }, align 32
@intf_assoc_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_iad_bFirstInterface, ptr @dev_attr_iad_bInterfaceCount, ptr @dev_attr_iad_bFunctionClass, ptr @dev_attr_iad_bFunctionSubClass, ptr @dev_attr_iad_bFunctionProtocol, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_iad_bFirstInterface = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iad_bFirstInterface_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iad_bInterfaceCount = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iad_bInterfaceCount_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iad_bFunctionClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iad_bFunctionClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iad_bFunctionSubClass = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iad_bFunctionSubClass_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_iad_bFunctionProtocol = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iad_bFunctionProtocol_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iad_bFirstInterface\00", [44 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iad_bInterfaceCount\00", [44 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iad_bFunctionClass\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iad_bFunctionSubClass\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iad_bFunctionProtocol\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"interface\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.90 = private unnamed_addr constant [13 x i8] c"dev_attr_grp\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 814, i32 37 }
@___asan_gen_.93 = private unnamed_addr constant [20 x i8] c"dev_string_attr_grp\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 847, i32 37 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"usb_device_groups\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 852, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant [25 x i8] c"dev_bin_attr_descriptors\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 904, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"intf_attr_grp\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1204, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"intf_assoc_attr_grp\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1228, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [21 x i8] c"usb_interface_groups\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1233, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"dev_attr_interface\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1251, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [10 x i8] c"dev_attrs\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 779, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"dev_attr_configuration\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"dev_attr_bNumInterfaces\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [29 x i8] c"dev_attr_bConfigurationValue\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [22 x i8] c"dev_attr_bmAttributes\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [19 x i8] c"dev_attr_bMaxPower\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [16 x i8] c"dev_attr_urbnum\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [18 x i8] c"dev_attr_idVendor\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [19 x i8] c"dev_attr_idProduct\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"dev_attr_bcdDevice\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [22 x i8] c"dev_attr_bDeviceClass\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"dev_attr_bDeviceSubClass\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [25 x i8] c"dev_attr_bDeviceProtocol\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [28 x i8] c"dev_attr_bNumConfigurations\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [25 x i8] c"dev_attr_bMaxPacketSize0\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"dev_attr_speed\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [18 x i8] c"dev_attr_rx_lanes\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"dev_attr_tx_lanes\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [16 x i8] c"dev_attr_busnum\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [16 x i8] c"dev_attr_devnum\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"dev_attr_devpath\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"dev_attr_version\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [18 x i8] c"dev_attr_maxchild\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [16 x i8] c"dev_attr_quirks\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"dev_attr_avoid_reset_quirk\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"dev_attr_authorized\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"dev_attr_remove\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [21 x i8] c"dev_attr_ltm_capable\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"dev_attr_devspec\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 87, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 83, i32 21 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 48, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 108, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 90, i32 1 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 99, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 49, i32 1 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 68, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 64, i32 21 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 302, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 300, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 702, i32 1 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 703, i32 1 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 704, i32 1 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 718, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 719, i32 1 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 720, i32 1 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 721, i32 1 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 722, i32 1 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 180, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 154, i32 11 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 158, i32 11 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 161, i32 11 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 167, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 171, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 173, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 176, i32 11 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 190, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 200, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 210, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 220, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 230, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 242, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 240, i32 22 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 252, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 262, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 260, i32 22 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 292, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 754, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 776, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 311, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 308, i32 31 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 309, i32 30 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 119, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 117, i32 22 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"dev_string_attrs\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 821, i32 26 }
@___asan_gen_.363 = private unnamed_addr constant [22 x i8] c"dev_attr_manufacturer\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [17 x i8] c"dev_attr_product\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"dev_attr_serial\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 141, i32 1 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 140, i32 1 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 142, i32 1 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 905, i32 19 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"dev_attr_persist\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 343, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant [17 x i8] c"power_attr_group\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 646, i32 37 }
@___asan_gen_.393 = private unnamed_addr constant [29 x i8] c"usb2_hardware_lpm_attr_group\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 624, i32 37 }
@___asan_gen_.396 = private unnamed_addr constant [29 x i8] c"usb3_hardware_lpm_attr_group\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 634, i32 37 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"power_attrs\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 639, i32 26 }
@___asan_gen_.402 = private unnamed_addr constant [21 x i8] c"dev_attr_autosuspend\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [15 x i8] c"dev_attr_level\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [28 x i8] c"dev_attr_connected_duration\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [25 x i8] c"dev_attr_active_duration\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 420, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 480, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant [12 x i8] c"auto_string\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 423, i32 19 }
@___asan_gen_.423 = private unnamed_addr constant [10 x i8] c"on_string\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 422, i32 19 }
@___asan_gen_.426 = private unnamed_addr constant [24 x i8] c"warn_level.level_warned\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 431, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 378, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 399, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant [23 x i8] c"usb2_hardware_lpm_attr\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 618, i32 26 }
@___asan_gen_.445 = private unnamed_addr constant [27 x i8] c"dev_attr_usb2_hardware_lpm\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [29 x i8] c"dev_attr_usb2_lpm_l1_timeout\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [23 x i8] c"dev_attr_usb2_lpm_besl\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 525, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 489, i32 7 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 491, i32 7 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 549, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 572, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant [23 x i8] c"usb3_hardware_lpm_attr\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 629, i32 26 }
@___asan_gen_.472 = private unnamed_addr constant [30 x i8] c"dev_attr_usb3_hardware_lpm_u1\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [30 x i8] c"dev_attr_usb3_hardware_lpm_u2\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 594, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 616, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant [19 x i8] c"usb_bus_attr_group\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 997, i32 37 }
@___asan_gen_.487 = private unnamed_addr constant [14 x i8] c"usb_bus_attrs\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 991, i32 26 }
@___asan_gen_.490 = private unnamed_addr constant [28 x i8] c"dev_attr_authorized_default\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [38 x i8] c"dev_attr_interface_authorized_default\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 945, i32 8 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 988, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant [11 x i8] c"intf_attrs\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1192, i32 26 }
@___asan_gen_.505 = private unnamed_addr constant [26 x i8] c"dev_attr_bInterfaceNumber\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [27 x i8] c"dev_attr_bAlternateSetting\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [23 x i8] c"dev_attr_bNumEndpoints\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [25 x i8] c"dev_attr_bInterfaceClass\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [28 x i8] c"dev_attr_bInterfaceSubClass\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [28 x i8] c"dev_attr_bInterfaceProtocol\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [18 x i8] c"dev_attr_modalias\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [30 x i8] c"dev_attr_supports_autosuspend\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [30 x i8] c"dev_attr_interface_authorized\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1188, i32 32 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1093, i32 1 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1094, i32 1 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1095, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1096, i32 1 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1097, i32 1 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1098, i32 1 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1138, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1125, i32 22 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1155, i32 8 }
@___asan_gen_.559 = private unnamed_addr constant [17 x i8] c"intf_assoc_attrs\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1208, i32 26 }
@___asan_gen_.562 = private unnamed_addr constant [29 x i8] c"dev_attr_iad_bFirstInterface\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [29 x i8] c"dev_attr_iad_bInterfaceCount\00", align 1
@___asan_gen_.568 = private unnamed_addr constant [28 x i8] c"dev_attr_iad_bFunctionClass\00", align 1
@___asan_gen_.571 = private unnamed_addr constant [31 x i8] c"dev_attr_iad_bFunctionSubClass\00", align 1
@___asan_gen_.574 = private unnamed_addr constant [31 x i8] c"dev_attr_iad_bFunctionProtocol\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1074, i32 1 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1075, i32 1 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1076, i32 1 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1077, i32 1 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1078, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.596 = private constant [28 x i8] c"../drivers/usb/core/sysfs.c\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1112, i32 8 }
@llvm.compiler.used = appending global [171 x ptr] [ptr @warn_level._entry, ptr @warn_level._entry_ptr, ptr @dev_attr_grp, ptr @dev_string_attr_grp, ptr @usb_device_groups, ptr @dev_bin_attr_descriptors, ptr @intf_attr_grp, ptr @intf_assoc_attr_grp, ptr @usb_interface_groups, ptr @dev_attr_interface, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dev_attrs, ptr @dev_attr_configuration, ptr @dev_attr_bNumInterfaces, ptr @dev_attr_bConfigurationValue, ptr @dev_attr_bmAttributes, ptr @dev_attr_bMaxPower, ptr @dev_attr_urbnum, ptr @dev_attr_idVendor, ptr @dev_attr_idProduct, ptr @dev_attr_bcdDevice, ptr @dev_attr_bDeviceClass, ptr @dev_attr_bDeviceSubClass, ptr @dev_attr_bDeviceProtocol, ptr @dev_attr_bNumConfigurations, ptr @dev_attr_bMaxPacketSize0, ptr @dev_attr_speed, ptr @dev_attr_rx_lanes, ptr @dev_attr_tx_lanes, ptr @dev_attr_busnum, ptr @dev_attr_devnum, ptr @dev_attr_devpath, ptr @dev_attr_version, ptr @dev_attr_maxchild, ptr @dev_attr_quirks, ptr @dev_attr_avoid_reset_quirk, ptr @dev_attr_authorized, ptr @dev_attr_remove, ptr @dev_attr_ltm_capable, ptr @dev_attr_devspec, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @dev_string_attrs, ptr @dev_attr_manufacturer, ptr @dev_attr_product, ptr @dev_attr_serial, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @dev_attr_persist, ptr @.str.57, ptr @power_attr_group, ptr @usb2_hardware_lpm_attr_group, ptr @usb3_hardware_lpm_attr_group, ptr @power_attrs, ptr @dev_attr_autosuspend, ptr @dev_attr_level, ptr @dev_attr_connected_duration, ptr @dev_attr_active_duration, ptr @.str.58, ptr @.str.59, ptr @auto_string, ptr @on_string, ptr @warn_level.level_warned, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @usb2_hardware_lpm_attr, ptr @dev_attr_usb2_hardware_lpm, ptr @dev_attr_usb2_lpm_l1_timeout, ptr @dev_attr_usb2_lpm_besl, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @usb3_hardware_lpm_attr, ptr @dev_attr_usb3_hardware_lpm_u1, ptr @dev_attr_usb3_hardware_lpm_u2, ptr @.str.69, ptr @.str.70, ptr @usb_bus_attr_group, ptr @usb_bus_attrs, ptr @dev_attr_authorized_default, ptr @dev_attr_interface_authorized_default, ptr @.str.71, ptr @.str.72, ptr @intf_attrs, ptr @dev_attr_bInterfaceNumber, ptr @dev_attr_bAlternateSetting, ptr @dev_attr_bNumEndpoints, ptr @dev_attr_bInterfaceClass, ptr @dev_attr_bInterfaceSubClass, ptr @dev_attr_bInterfaceProtocol, ptr @dev_attr_modalias, ptr @dev_attr_supports_autosuspend, ptr @dev_attr_interface_authorized, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @intf_assoc_attrs, ptr @dev_attr_iad_bFirstInterface, ptr @dev_attr_iad_bInterfaceCount, ptr @dev_attr_iad_bFunctionClass, ptr @dev_attr_iad_bFunctionSubClass, ptr @dev_attr_iad_bFunctionProtocol, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [170 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_string_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_device_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_bin_attr_descriptors to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_assoc_attr_grp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_interface_groups to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attrs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_configuration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bNumInterfaces to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bConfigurationValue to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bmAttributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bMaxPower to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_urbnum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idVendor to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_idProduct to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bcdDevice to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bDeviceClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bDeviceSubClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bDeviceProtocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bNumConfigurations to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bMaxPacketSize0 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_speed to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_lanes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_tx_lanes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_busnum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devnum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devpath to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_maxchild to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_quirks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_avoid_reset_quirk to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_authorized to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_remove to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ltm_capable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_devspec to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_string_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_manufacturer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_product to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_serial to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_persist to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_hardware_lpm_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_hardware_lpm_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_autosuspend to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_level to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_connected_duration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_active_duration to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_string to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @on_string to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_level.level_warned to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @warn_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb2_hardware_lpm_attr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb2_hardware_lpm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb2_lpm_l1_timeout to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb2_lpm_besl to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb3_hardware_lpm_attr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb3_hardware_lpm_u1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_usb3_hardware_lpm_u2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_bus_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_bus_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_authorized_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_authorized_default to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bInterfaceNumber to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bAlternateSetting to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bNumEndpoints to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bInterfaceClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bInterfaceSubClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bInterfaceProtocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_modalias to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_supports_autosuspend to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_interface_authorized to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intf_assoc_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iad_bFirstInterface to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iad_bInterfaceCount to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iad_bFunctionClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iad_bFunctionSubClass to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_iad_bFunctionProtocol to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb_create_sysfs_dev_files(ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %call = tail call i32 @device_create_bin_file(ptr noundef %dev1, ptr noundef nonnull @dev_bin_attr_descriptors) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.error_crit_edge

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 4
  %0 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, @usb_device_type
  br i1 %cmp.i.not.i, label %if.then.i, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.i:                                        ; preds = %if.end
  %bDeviceClass.i = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 16, i32 3
  %2 = ptrtoint ptr %bDeviceClass.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bDeviceClass.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %3)
  %cmp.not.i = icmp eq i8 %3, 9
  br i1 %cmp.not.i, label %if.then.i.if.end6_crit_edge, label %add_persist_attributes.exit

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

add_persist_attributes.exit:                      ; preds = %if.then.i
  %call3.i = tail call i32 @sysfs_add_file_to_group(ptr noundef %dev1, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not, label %add_persist_attributes.exit.if.end6_crit_edge, label %add_persist_attributes.exit.error_crit_edge

add_persist_attributes.exit.error_crit_edge:      ; preds = %add_persist_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

add_persist_attributes.exit.if.end6_crit_edge:    ; preds = %add_persist_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end6:                                          ; preds = %add_persist_attributes.exit.if.end6_crit_edge, %if.then.i.if.end6_crit_edge
  %4 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pr = load ptr, ptr %type.i.i, align 4
  %cmp.i.not.i31 = icmp eq ptr %.pr, @usb_device_type
  br i1 %cmp.i.not.i31, label %if.then.i33, label %if.end6.if.end10_crit_edge

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then.i33:                                      ; preds = %if.end6
  %call1.i = tail call i32 @sysfs_merge_group(ptr noundef %dev1, ptr noundef nonnull @power_attr_group) #9
  %usb2_hw_lpm_capable.i = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 28
  %5 = ptrtoint ptr %usb2_hw_lpm_capable.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load.i = load i16, ptr %usb2_hw_lpm_capable.i, align 1
  %6 = and i16 %bf.load.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.not.i32 = icmp eq i16 %6, 0
  br i1 %cmp.not.i32, label %if.then.i33.if.end.i_crit_edge, label %if.then2.i34

if.then.i33.if.end.i_crit_edge:                   ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then2.i34:                                     ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 @sysfs_merge_group(ptr noundef %dev1, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i34, %if.then.i33.if.end.i_crit_edge
  %rc.0.i = phi i32 [ %call4.i, %if.then2.i34 ], [ %call1.i, %if.then.i33.if.end.i_crit_edge ]
  %speed.i = getelementptr %struct.usb_device, ptr %udev, i32 0, i32 4
  %7 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %speed.i, align 4
  %.off.i = add i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %land.lhs.true.i, label %if.end.i.add_power_attributes.exit_crit_edge

if.end.i.add_power_attributes.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_power_attributes.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %9 = ptrtoint ptr %usb2_hw_lpm_capable.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %bf.load8.i = load i16, ptr %usb2_hw_lpm_capable.i, align 1
  %10 = and i16 %bf.load8.i, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp12.not.i = icmp eq i16 %10, 0
  br i1 %cmp12.not.i, label %land.lhs.true.i.add_power_attributes.exit_crit_edge, label %if.then13.i

land.lhs.true.i.add_power_attributes.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %add_power_attributes.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call15.i = tail call i32 @sysfs_merge_group(ptr noundef %dev1, ptr noundef nonnull @usb3_hardware_lpm_attr_group) #9
  br label %add_power_attributes.exit

add_power_attributes.exit:                        ; preds = %if.then13.i, %land.lhs.true.i.add_power_attributes.exit_crit_edge, %if.end.i.add_power_attributes.exit_crit_edge
  %rc.2.i = phi i32 [ %call15.i, %if.then13.i ], [ %rc.0.i, %land.lhs.true.i.add_power_attributes.exit_crit_edge ], [ %rc.0.i, %if.end.i.add_power_attributes.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2.i)
  %tobool8.not = icmp eq i32 %rc.2.i, 0
  br i1 %tobool8.not, label %add_power_attributes.exit.if.end10_crit_edge, label %add_power_attributes.exit.error_crit_edge

add_power_attributes.exit.error_crit_edge:        ; preds = %add_power_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

add_power_attributes.exit.if.end10_crit_edge:     ; preds = %add_power_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %add_power_attributes.exit.if.end10_crit_edge, %if.end6.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %cmp.i.not = icmp eq ptr %12, null
  br i1 %cmp.i.not, label %if.then13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i.i, align 4
  %cmp.i.not.i36 = icmp eq ptr %14, @usb_device_type
  br i1 %cmp.i.not.i36, label %add_default_authorized_attributes.exit, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

add_default_authorized_attributes.exit:           ; preds = %if.then13
  %call1.i37 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @usb_bus_attr_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool15.not = icmp eq i32 %call1.i37, 0
  br i1 %tobool15.not, label %add_default_authorized_attributes.exit.cleanup_crit_edge, label %add_default_authorized_attributes.exit.error_crit_edge

add_default_authorized_attributes.exit.error_crit_edge: ; preds = %add_default_authorized_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

add_default_authorized_attributes.exit.cleanup_crit_edge: ; preds = %add_default_authorized_attributes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error:                                            ; preds = %add_default_authorized_attributes.exit.error_crit_edge, %add_power_attributes.exit.error_crit_edge, %add_persist_attributes.exit.error_crit_edge, %entry.error_crit_edge
  %retval2.1 = phi i32 [ %call, %entry.error_crit_edge ], [ %call3.i, %add_persist_attributes.exit.error_crit_edge ], [ %rc.2.i, %add_power_attributes.exit.error_crit_edge ], [ %call1.i37, %add_default_authorized_attributes.exit.error_crit_edge ]
  %parent.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 4
  %cmp.i.not.i41 = icmp eq ptr %16, null
  br i1 %cmp.i.not.i41, label %if.then.i42, label %error.usb_remove_sysfs_dev_files.exit_crit_edge

error.usb_remove_sysfs_dev_files.exit_crit_edge:  ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_remove_sysfs_dev_files.exit

if.then.i42:                                      ; preds = %error
  %type.i.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 4
  %17 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, @usb_device_type
  br i1 %cmp.i.not.i.i, label %if.then.i.i, label %if.then.i42.usb_remove_sysfs_dev_files.exit_crit_edge

if.then.i42.usb_remove_sysfs_dev_files.exit_crit_edge: ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_remove_sysfs_dev_files.exit

if.then.i.i:                                      ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @usb_bus_attr_group) #9
  br label %usb_remove_sysfs_dev_files.exit

usb_remove_sysfs_dev_files.exit:                  ; preds = %if.then.i.i, %if.then.i42.usb_remove_sysfs_dev_files.exit_crit_edge, %error.usb_remove_sysfs_dev_files.exit_crit_edge
  tail call void @sysfs_unmerge_group(ptr noundef %dev1, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #9
  tail call void @sysfs_unmerge_group(ptr noundef %dev1, ptr noundef nonnull @power_attr_group) #9
  tail call void @sysfs_remove_file_from_group(ptr noundef %dev1, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @dev_bin_attr_descriptors) #9
  br label %cleanup

cleanup:                                          ; preds = %usb_remove_sysfs_dev_files.exit, %add_default_authorized_attributes.exit.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %usb_remove_sysfs_dev_files.exit ], [ 0, %add_default_authorized_attributes.exit.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.then13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_remove_sysfs_dev_files(ptr noundef %udev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %parent.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 11
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 4
  %cmp.i.not = icmp eq ptr %1, null
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %type.i.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, @usb_device_type
  br i1 %cmp.i.not.i, label %if.then.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @usb_bus_attr_group) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @sysfs_unmerge_group(ptr noundef %dev1, ptr noundef nonnull @usb2_hardware_lpm_attr_group) #9
  tail call void @sysfs_unmerge_group(ptr noundef %dev1, ptr noundef nonnull @power_attr_group) #9
  tail call void @sysfs_remove_file_from_group(ptr noundef %dev1, ptr noundef nonnull @dev_attr_persist, ptr noundef nonnull @power_group_name) #9
  tail call void @device_remove_bin_file(ptr noundef %dev1, ptr noundef nonnull @dev_bin_attr_descriptors) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_create_sysfs_intf_files(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cur_altsetting, align 4
  %sysfs_files_created = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %4 = ptrtoint ptr %sysfs_files_created to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %sysfs_files_created, align 8
  %5 = and i8 %bf.load, -96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %string = getelementptr inbounds %struct.usb_host_interface, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %string, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.land.lhs.true13_crit_edge

if.end.land.lhs.true13_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13

land.lhs.true:                                    ; preds = %if.end
  %quirks = getelementptr i8, ptr %1, i32 1128
  %9 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %quirks, align 8
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.then7, label %if.end10thread-pre-split

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %iInterface = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %iInterface to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %iInterface, align 4
  %conv = zext i8 %12 to i32
  %call8 = tail call ptr @usb_cache_string(ptr noundef %add.ptr.i, i32 noundef %conv) #9
  %13 = ptrtoint ptr %string to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8, ptr %string, align 4
  br label %if.end10

if.end10thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %string, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end10thread-pre-split, %if.then7
  %15 = phi ptr [ %.pr, %if.end10thread-pre-split ], [ %call8, %if.then7 ]
  %tobool12.not = icmp eq ptr %15, null
  br i1 %tobool12.not, label %if.end10.if.end24_crit_edge, label %if.end10.land.lhs.true13_crit_edge

if.end10.land.lhs.true13_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true13

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true13:                                  ; preds = %if.end10.land.lhs.true13_crit_edge, %if.end.land.lhs.true13_crit_edge
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %call14 = tail call i32 @device_create_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_interface) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.if.end24_crit_edge, label %do.body

land.lhs.true13.if.end24_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

do.body:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_create_sysfs_intf_files.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_create_sysfs_intf_files, %if.then21)) #9
          to label %if.end24 [label %if.then21], !srcloc !284

if.then21:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_create_sysfs_intf_files.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.3) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %do.body, %land.lhs.true13.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %16 = ptrtoint ptr %sysfs_files_created to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load26 = load i8, ptr %sysfs_files_created, align 8
  %bf.set = or i8 %bf.load26, -128
  store i8 %bf.set, ptr %sysfs_files_created, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_cache_string(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb_remove_sysfs_intf_files(ptr noundef %intf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sysfs_files_created = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 6
  %0 = ptrtoint ptr %sysfs_files_created to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %sysfs_files_created, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_interface) #9
  %1 = ptrtoint ptr %sysfs_files_created to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load2 = load i8, ptr %sysfs_files_created, align 8
  %bf.clear = and i8 %bf.load2, 127
  store i8 %bf.clear, ptr %sysfs_files_created, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @configuration_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %actconfig2 = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %actconfig2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %string = getelementptr inbounds %struct.usb_host_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %string to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %string, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %land.lhs.true.if.end7_crit_edge, label %if.then4

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %3)
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %rc.0 = phi i32 [ %call6, %if.then4 ], [ %call.i, %land.lhs.true.if.end7_crit_edge ], [ %call.i, %if.end.if.end7_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end7 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bNumInterfaces_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %actconfig2 = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %actconfig2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumInterfaces, align 4
  %conv = zext i8 %3 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ %call.i, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bConfigurationValue_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %actconfig2 = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %actconfig2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bConfigurationValue to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bConfigurationValue, align 1
  %conv = zext i8 %3 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ %call.i, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bConfigurationValue_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !285
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef nonnull %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %config, align 4
  %3 = add i32 %2, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -257, i32 %3)
  %4 = icmp ult i32 %3, -257
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %config, align 4
  %call9 = call i32 @usb_set_configuration(ptr noundef %add.ptr, i32 noundef %6) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp11 = icmp slt i32 %call9, 0
  %call9.count = select i1 %cmp11, i32 %call9, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9.count, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_configuration(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bmAttributes_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %actconfig2 = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %actconfig2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %bmAttributes = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bmAttributes, align 1
  %conv = zext i8 %3 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %rc.0 = phi i32 [ %call4, %if.then3 ], [ %call.i, %if.end.if.end5_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bMaxPower_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %actconfig2 = getelementptr i8, ptr %dev, i32 956
  %0 = ptrtoint ptr %actconfig2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %actconfig2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %speed.i = getelementptr i8, ptr %dev, i32 -100
  %2 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.i = icmp ugt i32 %3, 4
  %cond.i = select i1 %cmp.i, i32 8, i32 2
  %bMaxPower.i = getelementptr inbounds %struct.usb_config_descriptor, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %bMaxPower.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bMaxPower.i, align 4
  %conv.i = zext i8 %5 to i32
  %mul1.i = mul nuw nsw i32 %cond.i, %conv.i
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %mul1.i)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %rc.0 = phi i32 [ %call5, %if.then3 ], [ %call.i, %if.end.if.end6_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end6 ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @urbnum_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %urbnum = getelementptr i8, ptr %dev, i32 1132
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %urbnum, i32 noundef 4) #9
  %0 = ptrtoint ptr %urbnum to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %urbnum, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idVendor_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idVendor = getelementptr i8, ptr %dev, i32 936
  %0 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idVendor, align 8
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idProduct_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %idProduct = getelementptr i8, ptr %dev, i32 938
  %0 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %idProduct, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcdDevice_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bcdDevice = getelementptr i8, ptr %dev, i32 940
  %0 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcdDevice, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.18, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bDeviceClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceClass = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceClass, align 4
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bDeviceSubClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceSubClass = getelementptr i8, ptr %dev, i32 933
  %0 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceSubClass, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bDeviceProtocol_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bDeviceProtocol = getelementptr i8, ptr %dev, i32 934
  %0 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bDeviceProtocol, align 2
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bNumConfigurations_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bNumConfigurations = getelementptr i8, ptr %dev, i32 945
  %0 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bNumConfigurations, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bMaxPacketSize0_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bMaxPacketSize0 = getelementptr i8, ptr %dev, i32 935
  %0 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bMaxPacketSize0, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speed_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed1 = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 0, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge8
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
  ]

entry.sw.bb2_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ssp_rate = getelementptr i8, ptr %dev, i32 -88
  %3 = ptrtoint ptr %ssp_rate to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ssp_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  %.str.32..str.33 = select i1 %cmp, ptr @.str.32, ptr @.str.33
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.sw.epilog_crit_edge
  %speed.0 = phi ptr [ @.str.34, %sw.default ], [ @.str.31, %sw.bb5 ], [ @.str.30, %sw.bb4 ], [ @.str.30, %sw.bb3 ], [ @.str.29, %sw.bb2 ], [ @.str.28, %entry.sw.epilog_crit_edge ], [ %.str.32..str.33, %sw.bb6 ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %speed.0)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_lanes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_lanes = getelementptr i8, ptr %dev, i32 -96
  %0 = ptrtoint ptr %rx_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rx_lanes, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tx_lanes_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_lanes = getelementptr i8, ptr %dev, i32 -92
  %0 = ptrtoint ptr %tx_lanes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_lanes, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @busnum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %busnum = getelementptr inbounds %struct.usb_bus, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %busnum to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %busnum, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %3)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devnum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devpath_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %devpath = getelementptr i8, ptr %dev, i32 -124
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %devpath)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bcdUSB1 = getelementptr i8, ptr %dev, i32 930
  %0 = ptrtoint ptr %bcdUSB1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %bcdUSB1, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = lshr i32 %conv, 8
  %and = and i32 %conv, 255
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %3, i32 noundef %and)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @maxchild_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %maxchild = getelementptr i8, ptr %dev, i32 1124
  %0 = ptrtoint ptr %maxchild to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %maxchild, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @quirks_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %dev, i32 1128
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avoid_reset_quirk_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr i8, ptr %dev, i32 1128
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 8
  %and = lshr i32 %1, 4
  %and.lobit = and i32 %and, 1
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %and.lobit)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avoid_reset_quirk_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %quirks10 = getelementptr i8, ptr %dev, i32 1128
  %6 = ptrtoint ptr %quirks10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks10, align 8
  %and = and i32 %7, -17
  %masksel = select i1 %tobool.not, i32 0, i32 16
  %and.sink = or i32 %and, %masksel
  store i32 %and.sink, ptr %quirks10, align 8
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -4, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authorized_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %authorized = getelementptr i8, ptr %dev, i32 1097
  %0 = ptrtoint ptr %authorized to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %authorized, align 1
  %bf.lshr = lshr i16 %bf.load, 12
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %bf.cast)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authorized_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.9, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.else, label %entry.if.end6.thread_crit_edge

entry.if.end6.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread

if.else:                                          ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.else4

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = call i32 @usb_deauthorize_device(ptr noundef %add.ptr) #9
  br label %if.end6

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 @usb_authorize_device(ptr noundef %add.ptr) #9
  br label %if.end6

if.end6:                                          ; preds = %if.else4, %if.then2
  %result.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %cmp7 = icmp slt i32 %result.0, 0
  br i1 %cmp7, label %if.end6.if.end6.thread_crit_edge, label %if.end6._crit_edge

if.end6._crit_edge:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %3

if.end6.if.end6.thread_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.thread

if.end6.thread:                                   ; preds = %if.end6.if.end6.thread_crit_edge, %entry.if.end6.thread_crit_edge
  %result.013 = phi i32 [ %result.0, %if.end6.if.end6.thread_crit_edge ], [ -22, %entry.if.end6.thread_crit_edge ]
  br label %3

3:                                                ; preds = %if.end6.thread, %if.end6._crit_edge
  %4 = phi i32 [ %result.013, %if.end6.thread ], [ %size, %if.end6._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_deauthorize_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_authorize_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @remove_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  %state = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end.thread_crit_edge, label %if.end

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %call = tail call i32 @usb_set_configuration(ptr noundef %add.ptr, i32 noundef -1) #9
  %call2 = tail call i32 @usb_remove_device(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.end.if.end.thread_crit_edge, label %if.end._crit_edge

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %2

if.end.if.end.thread_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end.if.end.thread_crit_edge, %entry.if.end.thread_crit_edge
  br label %2

2:                                                ; preds = %if.end.thread, %if.end._crit_edge
  %3 = phi i32 [ %count, %if.end.thread ], [ %call2, %if.end._crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_remove_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltm_capable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %speed.i = getelementptr i8, ptr %dev, i32 -100
  %0 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp.i = icmp ult i32 %1, 5
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %lor.lhs.false.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.i:                                  ; preds = %entry
  %bos.i = getelementptr i8, ptr %dev, i32 948
  %2 = ptrtoint ptr %bos.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bos.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %ss_cap.i = getelementptr inbounds %struct.usb_host_bos, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ss_cap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss_cap.i, align 4
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %lor.lhs.false1.i.if.end_crit_edge, label %usb_device_supports_ltm.exit

lor.lhs.false1.i.if.end_crit_edge:                ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

usb_device_supports_ltm.exit:                     ; preds = %lor.lhs.false1.i
  %bmAttributes.i = getelementptr inbounds %struct.usb_ss_cap_descriptor, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %bmAttributes.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bmAttributes.i, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool6.i.not = icmp eq i8 %8, 0
  br i1 %tobool6.i.not, label %usb_device_supports_ltm.exit.if.end_crit_edge, label %usb_device_supports_ltm.exit.return_crit_edge

usb_device_supports_ltm.exit.return_crit_edge:    ; preds = %usb_device_supports_ltm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

usb_device_supports_ltm.exit.if.end_crit_edge:    ; preds = %usb_device_supports_ltm.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %usb_device_supports_ltm.exit.if.end_crit_edge, %lor.lhs.false1.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %usb_device_supports_ltm.exit.return_crit_edge
  %.str.50.sink = phi ptr [ @.str.50, %if.end ], [ @.str.49, %usb_device_supports_ltm.exit.return_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.50.sink)
  ret i32 %call2
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devspec_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node1, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, ptr noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @dev_string_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %a, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %a, @dev_attr_manufacturer
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %manufacturer = getelementptr i8, ptr %kobj, i32 1108
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %if.then.cleanup_crit_edge, label %if.then.if.end16_crit_edge

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  %cmp3 = icmp eq ptr %a, @dev_attr_product
  br i1 %cmp3, label %if.then4, label %if.else8

if.then4:                                         ; preds = %if.else
  %product = getelementptr i8, ptr %kobj, i32 1104
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %product, align 8
  %cmp5 = icmp eq ptr %3, null
  br i1 %cmp5, label %if.then4.cleanup_crit_edge, label %if.then4.if.end16_crit_edge

if.then4.if.end16_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else8:                                         ; preds = %if.else
  %cmp9 = icmp eq ptr %a, @dev_attr_serial
  br i1 %cmp9, label %if.then10, label %if.else8.if.end16_crit_edge

if.else8.if.end16_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %if.else8
  %serial = getelementptr i8, ptr %kobj, i32 1112
  %4 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %serial, align 8
  %cmp11 = icmp eq ptr %5, null
  br i1 %cmp11, label %if.then10.cleanup_crit_edge, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.else8.if.end16_crit_edge, %if.then4.if.end16_crit_edge, %if.then.if.end16_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then10.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end16 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then4.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @manufacturer_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %manufacturer = getelementptr i8, ptr %dev, i32 1108
  %0 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %manufacturer, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @product_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %product = getelementptr i8, ptr %dev, i32 1104
  %0 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %product, align 8
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @serial_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %serial = getelementptr i8, ptr %dev, i32 1112
  %0 = ptrtoint ptr %serial to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serial, align 8
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @read_descriptors(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %off, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %bNumConfigurations = getelementptr i8, ptr %kobj, i32 945
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp6.not64 = icmp eq i32 %count, 0
  br i1 %cmp6.not64, label %for.cond.preheader.for.end_crit_edge, label %if.end14.peel

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14.peel:                                    ; preds = %for.cond.preheader
  %rawdescriptors = getelementptr i8, ptr %kobj, i32 1088
  %config = getelementptr i8, ptr %kobj, i32 952
  call void @__sanitizer_cov_trace_const_cmp8(i64 18, i64 %off)
  %cmp16.peel = icmp slt i64 %off, 18
  br i1 %cmp16.peel, label %if.then18.peel, label %if.else26.peel

if.else26.peel:                                   ; preds = %if.end14.peel
  call void @__sanitizer_cov_trace_pc() #11
  %sub28.peel = add nsw i64 %off, -18
  br label %for.inc.peel

if.then18.peel:                                   ; preds = %if.end14.peel
  call void @__sanitizer_cov_trace_pc() #11
  %descriptor = getelementptr i8, ptr %kobj, i32 928
  %conv19.peel = trunc i64 %off to i32
  %sub.peel = sub i32 18, %conv19.peel
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 %sub.peel)
  %add.ptr23.peel = getelementptr i8, ptr %descriptor, i32 %conv19.peel
  %1 = call ptr @memcpy(ptr %buf, ptr %add.ptr23.peel, i32 %0)
  %sub24.peel = sub i32 %count, %0
  %add.ptr25.peel = getelementptr i8, ptr %buf, i32 %0
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %if.then18.peel, %if.else26.peel
  %off.addr.1.peel = phi i64 [ 0, %if.then18.peel ], [ %sub28.peel, %if.else26.peel ]
  %nleft.1.peel = phi i32 [ %sub24.peel, %if.then18.peel ], [ %count, %if.else26.peel ]
  %buf.addr.1.peel = phi ptr [ %add.ptr25.peel, %if.then18.peel ], [ %buf, %if.else26.peel ]
  %2 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumConfigurations, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4.peel = icmp eq i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nleft.1.peel)
  %cmp6.not.peel = icmp eq i32 %nleft.1.peel, 0
  %or.cond.peel = select i1 %cmp4.peel, i1 true, i1 %cmp6.not.peel
  br i1 %or.cond.peel, label %for.inc.peel.for.end_crit_edge, label %for.inc.peel.if.end14_crit_edge

for.inc.peel.if.end14_crit_edge:                  ; preds = %for.inc.peel
  br label %if.end14

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end14:                                         ; preds = %for.inc.if.end14_crit_edge, %for.inc.peel.if.end14_crit_edge
  %buf.addr.069 = phi ptr [ %buf.addr.1, %for.inc.if.end14_crit_edge ], [ %buf.addr.1.peel, %for.inc.peel.if.end14_crit_edge ]
  %cfgno.067 = phi i32 [ %inc, %for.inc.if.end14_crit_edge ], [ 0, %for.inc.peel.if.end14_crit_edge ]
  %nleft.066 = phi i32 [ %nleft.1, %for.inc.if.end14_crit_edge ], [ %nleft.1.peel, %for.inc.peel.if.end14_crit_edge ]
  %off.addr.065 = phi i64 [ %off.addr.1, %for.inc.if.end14_crit_edge ], [ %off.addr.1.peel, %for.inc.peel.if.end14_crit_edge ]
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %wTotalLength = getelementptr %struct.usb_host_config, ptr %5, i32 %cfgno.067, i32 0, i32 2
  %6 = ptrtoint ptr %wTotalLength to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %wTotalLength, align 2
  %8 = tail call i16 @llvm.bswap.i16(i16 %7)
  %conv15 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %off.addr.065, i64 %conv15)
  %cmp16 = icmp slt i64 %off.addr.065, %conv15
  br i1 %cmp16, label %if.then18, label %if.else26

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = zext i16 %8 to i32
  %9 = ptrtoint ptr %rawdescriptors to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rawdescriptors, align 8
  %arrayidx = getelementptr ptr, ptr %10, i32 %cfgno.067
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %conv19 = trunc i64 %off.addr.065 to i32
  %sub = sub i32 %conv13, %conv19
  %13 = tail call i32 @llvm.umin.i32(i32 %nleft.066, i32 %sub)
  %add.ptr23 = getelementptr i8, ptr %12, i32 %conv19
  %14 = call ptr @memcpy(ptr %buf.addr.069, ptr %add.ptr23, i32 %13)
  %sub24 = sub i32 %nleft.066, %13
  %add.ptr25 = getelementptr i8, ptr %buf.addr.069, i32 %13
  br label %for.inc

if.else26:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %sub28 = sub i64 %off.addr.065, %conv15
  br label %for.inc

for.inc:                                          ; preds = %if.else26, %if.then18
  %off.addr.1 = phi i64 [ 0, %if.then18 ], [ %sub28, %if.else26 ]
  %nleft.1 = phi i32 [ %sub24, %if.then18 ], [ %nleft.066, %if.else26 ]
  %buf.addr.1 = phi ptr [ %add.ptr25, %if.then18 ], [ %buf.addr.069, %if.else26 ]
  %inc = add nuw nsw i32 %cfgno.067, 1
  %15 = ptrtoint ptr %bNumConfigurations to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bNumConfigurations, align 1
  %conv = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv)
  %cmp4 = icmp uge i32 %inc, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nleft.1)
  %cmp6.not = icmp eq i32 %nleft.1, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %for.inc.for.end_crit_edge, label %for.inc.if.end14_crit_edge, !llvm.loop !286

for.inc.if.end14_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %nleft.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %nleft.1.peel, %for.inc.peel.for.end_crit_edge ], [ %nleft.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %sub31 = sub i32 %count, %nleft.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub31, %for.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_add_file_to_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persist_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %persist_enabled = getelementptr i8, ptr %dev, i32 1097
  %0 = ptrtoint ptr %persist_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %persist_enabled, align 1
  %bf.lshr = lshr i16 %bf.load, 14
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %bf.cast)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @persist_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !285
  %bDeviceClass = getelementptr i8, ptr %dev, i32 932
  %1 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bDeviceClass, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %cmp = icmp eq i8 %2, 9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp2.not = icmp eq i32 %call, 1
  br i1 %cmp2.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %persist_enabled = getelementptr i8, ptr %dev, i32 1097
  %5 = ptrtoint ptr %persist_enabled to i32
  call void @__asan_loadN_noabort(i32 %5, i32 2)
  %bf.load = load i16, ptr %persist_enabled, align 1
  %bf.shl = select i1 %tobool.not, i16 0, i16 16384
  %bf.clear = and i16 %bf.load, -16385
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %persist_enabled, align 1
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -4, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosuspend_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %autosuspend_delay = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 21
  %0 = ptrtoint ptr %autosuspend_delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %autosuspend_delay, align 4
  %div = sdiv i32 %1, 1000
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %div)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @autosuspend_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !285
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.10, ptr noundef nonnull %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 4
  %3 = add i32 %2, -2147483
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4294965, i32 %3)
  %4 = icmp ult i32 %3, -4294965
  br i1 %4, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nsw i32 %2, 1000
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev, i32 noundef %mul) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @level_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.b.i = load i1, ptr @warn_level.level_warned, align 4
  br i1 %.b.i, label %entry.warn_level.exit_crit_edge, label %if.then.i

entry.warn_level.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %warn_level.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @warn_level.level_warned, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %warn_level.exit

warn_level.exit:                                  ; preds = %if.then.i, %entry.warn_level.exit_crit_edge
  %state = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %warn_level.exit.if.end_crit_edge, label %land.lhs.true

warn_level.exit.if.end_crit_edge:                 ; preds = %warn_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %warn_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  %runtime_auto = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %runtime_auto to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %runtime_auto, align 4
  %3 = and i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool.not, ptr @on_string, ptr @auto_string
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %warn_level.exit.if.end_crit_edge
  %p.0 = phi ptr [ @auto_string, %warn_level.exit.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %p.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @level_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  %.b.i = load i1, ptr @warn_level.level_warned, align 4
  br i1 %.b.i, label %entry.warn_level.exit_crit_edge, label %if.then.i

entry.warn_level.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %warn_level.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @warn_level.level_warned, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #12
  br label %warn_level.exit

warn_level.exit:                                  ; preds = %if.then.i, %entry.warn_level.exit_crit_edge
  %call = tail call ptr @memchr(ptr noundef %buf, i32 noundef 10, i32 noundef %count) #13
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i34 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %cmp = icmp slt i32 %call.i34, 0
  br i1 %cmp, label %warn_level.exit.cleanup_crit_edge, label %if.end4

warn_level.exit.cleanup_crit_edge:                ; preds = %warn_level.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %warn_level.exit
  %tobool.not = icmp eq ptr %call, null
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %len.0 = select i1 %tobool.not, i32 %count, i32 %sub.ptr.sub
  %0 = zext i32 %len.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %len.0, label %if.end4.if.end16_crit_edge [
    i32 2, label %land.lhs.true
    i32 4, label %land.lhs.true10
  ]

if.end4.if.end16_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end4
  %call6 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(3) @on_string, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_disable_autosuspend(ptr noundef %add.ptr) #9
  br label %if.end16

land.lhs.true10:                                  ; preds = %if.end4
  %call11 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(5) @auto_string, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %land.lhs.true10.if.end16_crit_edge

land.lhs.true10.if.end16_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_enable_autosuspend(ptr noundef %add.ptr) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %land.lhs.true10.if.end16_crit_edge, %if.then8, %land.lhs.true.if.end16_crit_edge, %if.end4.if.end16_crit_edge
  %rc.0 = phi i32 [ %count, %if.then8 ], [ %count, %if.then13 ], [ -22, %if.end4.if.end16_crit_edge ], [ -22, %land.lhs.true10.if.end16_crit_edge ], [ -22, %land.lhs.true.if.end16_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %warn_level.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end16 ], [ -4, %warn_level.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_disable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_enable_autosuspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connected_duration_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %connect_time = getelementptr i8, ptr %dev, i32 1140
  %1 = ptrtoint ptr %connect_time to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %connect_time, align 4
  %sub = sub i32 %0, %2
  %call = tail call i32 @jiffies_to_msecs(i32 noundef %sub) #9
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @active_duration_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %dev, i32 -104
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp.not = icmp eq i32 %1, 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %active_duration = getelementptr i8, ptr %dev, i32 1136
  %3 = ptrtoint ptr %active_duration to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active_duration, align 8
  %add = add i32 %4, %2
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %active_duration1 = getelementptr i8, ptr %dev, i32 1136
  %5 = ptrtoint ptr %active_duration1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %active_duration1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i32 [ %6, %if.else ], [ %add, %if.then ]
  %call2 = tail call i32 @jiffies_to_msecs(i32 noundef %.sink) #9
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %call2)
  ret i32 %call3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_hardware_lpm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %usb2_hw_lpm_allowed = getelementptr i8, ptr %dev, i32 1097
  %0 = ptrtoint ptr %usb2_hw_lpm_allowed to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %usb2_hw_lpm_allowed, align 1
  %1 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not = icmp eq i16 %1, 0
  %.str.66..str.65 = select i1 %cmp.not, ptr @.str.66, ptr @.str.65
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.66..str.65)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_hardware_lpm_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %value = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value, align 1, !annotation !285
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i24 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool.not = icmp eq i32 %call.i24, 0
  br i1 %tobool.not, label %if.then3, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value, align 1, !range !288
  %usb2_hw_lpm_allowed = getelementptr i8, ptr %dev, i32 1097
  %3 = ptrtoint ptr %usb2_hw_lpm_allowed to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %bf.load = load i16, ptr %usb2_hw_lpm_allowed, align 1
  %4 = shl nuw nsw i8 %2, 5
  %bf.shl = zext i8 %4 to i16
  %bf.clear = and i16 %bf.load, -33
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %usb2_hw_lpm_allowed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool5.not = icmp eq i8 %2, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = call i32 @usb_enable_usb2_hardware_lpm(ptr noundef %add.ptr) #9
  br label %if.end10

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 @usb_disable_usb2_hardware_lpm(ptr noundef %add.ptr) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6, %if.end.if.end10_crit_edge
  %ret.0 = phi i32 [ %call.i24, %if.end.if.end10_crit_edge ], [ %call7, %if.then6 ], [ %call8, %if.else ]
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool12.not = icmp eq i32 %ret.0, 0
  %count.ret.0 = select i1 %tobool12.not, i32 %count, i32 %ret.0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -4, %entry.cleanup_crit_edge ], [ %count.ret.0, %if.end10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_enable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disable_usb2_hardware_lpm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_lpm_l1_timeout_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %timeout = getelementptr i8, ptr %dev, i32 1160
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %timeout, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_lpm_l1_timeout_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %timeout = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %timeout) #9
  %0 = ptrtoint ptr %timeout to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %timeout, align 2, !annotation !285
  %call = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %timeout) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %timeout to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %timeout, align 2
  %conv = zext i16 %2 to i32
  %timeout1 = getelementptr i8, ptr %dev, i32 1160
  %3 = ptrtoint ptr %timeout1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %timeout1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %timeout) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_lpm_besl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %l1_params = getelementptr i8, ptr %dev, i32 1156
  %0 = ptrtoint ptr %l1_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %l1_params, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb2_lpm_besl_store(ptr nocapture noundef writeonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %besl = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %besl) #9
  %0 = ptrtoint ptr %besl to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %besl, align 1, !annotation !285
  %call = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %besl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = ptrtoint ptr %besl to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %besl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %2)
  %cmp = icmp ugt i8 %2, 15
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %2 to i32
  %l1_params = getelementptr i8, ptr %dev, i32 1156
  %3 = ptrtoint ptr %l1_params to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %l1_params, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %besl) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3_hardware_lpm_u1_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u1_enabled = getelementptr i8, ptr %dev, i32 1097
  %0 = ptrtoint ptr %usb3_lpm_u1_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %usb3_lpm_u1_enabled, align 1
  %1 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %.str.66..str.65 = select i1 %tobool.not, ptr @.str.66, ptr @.str.65
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.66..str.65)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb3_hardware_lpm_u2_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %usb3_lpm_u2_enabled = getelementptr i8, ptr %dev, i32 1097
  %0 = ptrtoint ptr %usb3_lpm_u2_enabled to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %bf.load = load i16, ptr %usb3_lpm_u2_enabled, align 1
  %1 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %.str.66..str.65 = select i1 %tobool.not, ptr @.str.66, ptr @.str.65
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.66..str.65)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authorized_default_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %dev_policy = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %dev_policy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_policy, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.9, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @authorized_default_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %size) #4 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !285
  %bus = getelementptr i8, ptr %dev, i32 -64
  %1 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %bus, align 8
  %call1 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %buf, ptr noundef nonnull @.str.9, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp2 = icmp ult i32 %4, 3
  %spec.select = select i1 %cmp2, i32 %4, i32 1
  %dev_policy = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 13
  %5 = ptrtoint ptr %dev_policy to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select, ptr %dev_policy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %result.0 = phi i32 [ %size, %if.then ], [ -22, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %result.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_authorized_default_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = lshr i32 %3, 7
  %and.lobit = and i32 %and, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and.lobit)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_authorized_default_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bus = getelementptr i8, ptr %dev, i32 -64
  %0 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !285
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  %flags3 = getelementptr inbounds %struct.usb_hcd, ptr %1, i32 0, i32 12
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_set_bit(i32 noundef 7, ptr noundef %flags3) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_clear_bit(i32 noundef 7, ptr noundef %flags3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_from_group(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bInterfaceNumber_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bAlternateSetting_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bAlternateSetting to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bAlternateSetting, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bNumEndpoints_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bInterfaceClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceClass, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bInterfaceSubClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceSubClass, align 2
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bInterfaceProtocol_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceProtocol, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @modalias_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr i8, ptr %dev, i32 136
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %2 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %cur_altsetting, align 4
  %idVendor = getelementptr i8, ptr %1, i32 936
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  %conv = zext i16 %6 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %7 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idProduct, align 2
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv3 = zext i16 %9 to i32
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %10 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %bcdDevice, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv5 = zext i16 %12 to i32
  %bDeviceClass = getelementptr i8, ptr %1, i32 932
  %13 = ptrtoint ptr %bDeviceClass to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bDeviceClass, align 4
  %conv7 = zext i8 %14 to i32
  %bDeviceSubClass = getelementptr i8, ptr %1, i32 933
  %15 = ptrtoint ptr %bDeviceSubClass to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %bDeviceSubClass, align 1
  %conv9 = zext i8 %16 to i32
  %bDeviceProtocol = getelementptr i8, ptr %1, i32 934
  %17 = ptrtoint ptr %bDeviceProtocol to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bDeviceProtocol, align 2
  %conv11 = zext i8 %18 to i32
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %19 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bInterfaceClass, align 1
  %conv12 = zext i8 %20 to i32
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %bInterfaceSubClass to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bInterfaceSubClass, align 2
  %conv14 = zext i8 %22 to i32
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %bInterfaceProtocol to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bInterfaceProtocol, align 1
  %conv16 = zext i8 %24 to i32
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %25 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber, align 2
  %conv18 = zext i8 %26 to i32
  %call19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.80, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv7, i32 noundef %conv9, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %conv18)
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @supports_autosuspend_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 10
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.lor.end_crit_edge, label %lor.rhs

if.end.lor.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %supports_autosuspend = getelementptr i8, ptr %1, i32 80
  %2 = ptrtoint ptr %supports_autosuspend to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %supports_autosuspend, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.lor.end_crit_edge
  %3 = phi i32 [ 1, %if.end.lor.end_crit_edge ], [ %bf.cast, %lor.rhs ]
  tail call void @mutex_unlock(ptr noundef %mutex.i) #9
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %lor.end ], [ -4, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_authorized_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %authorized = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %authorized to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %authorized, align 8
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %bf.cast)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_authorized_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !285
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %val, align 1, !range !288
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_authorize_interface(ptr noundef %add.ptr) #9
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @usb_deauthorize_interface(ptr noundef %add.ptr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %if.else ], [ %count, %if.then1 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_authorize_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deauthorize_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @intf_assoc_attrs_are_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %kobj, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_bFirstInterface_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %bFirstInterface = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bFirstInterface to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFirstInterface, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_bInterfaceCount_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %bInterfaceCount = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bInterfaceCount to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceCount, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.84, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_bFunctionClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %bFunctionClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %bFunctionClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFunctionClass, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_bFunctionSubClass_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %bFunctionSubClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %bFunctionSubClass to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFunctionSubClass, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iad_bFunctionProtocol_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %intf_assoc = getelementptr i8, ptr %dev, i32 -20
  %0 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf_assoc, align 4
  %bFunctionProtocol = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %bFunctionProtocol to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bFunctionProtocol, align 1
  %conv = zext i8 %3 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %conv)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interface_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_altsetting = getelementptr i8, ptr %dev, i32 -28
  %0 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cur_altsetting, align 4
  %string2 = getelementptr inbounds %struct.usb_host_interface, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %string2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %string2, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, ptr noundef nonnull %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 170)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !25, !26, !28, !30, !32, !33, !34, !36, !37, !39, !41, !42, !44, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !109, !110, !112, !113, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !131, !133, !134, !136, !138, !140, !141, !143, !144, !146, !147, !149, !151, !153, !155, !156, !158, !160, !162, !163, !165, !166, !168, !170, !172, !173, !174, !175, !177, !179, !180, !182, !183, !185, !187, !189, !190, !192, !194, !196, !197, !199, !200, !202, !204, !206, !207, !209, !210, !212, !214, !216, !217, !219, !220, !222, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !249, !250, !252, !254, !256, !258, !259, !261, !262, !263, !265, !266, !268, !269, !271, !272, !274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @usb_device_groups, !1, !"usb_device_groups", i1 false, i1 false}
!1 = !{!"../drivers/usb/core/sysfs.c", i32 852, i32 31}
!2 = !{ptr @usb_interface_groups, !3, !"usb_interface_groups", i1 false, i1 false}
!3 = !{!"../drivers/usb/core/sysfs.c", i32 1233, i32 31}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/core/sysfs.c", i32 1251, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @usb_create_sysfs_intf_files.__UNIQUE_ID_ddebug236, !5, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!10 = !{ptr @dev_attr_grp, !11, !"dev_attr_grp", i1 false, i1 false}
!11 = !{!"../drivers/usb/core/sysfs.c", i32 814, i32 37}
!12 = !{ptr @dev_attrs, !13, !"dev_attrs", i1 false, i1 false}
!13 = !{!"../drivers/usb/core/sysfs.c", i32 779, i32 26}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/core/sysfs.c", i32 87, i32 8}
!16 = !{ptr @dev_attr_configuration, !15, !"dev_attr_configuration", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/core/sysfs.c", i32 83, i32 21}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/core/sysfs.c", i32 48, i32 1}
!21 = !{ptr @dev_attr_bNumInterfaces, !20, !"dev_attr_bNumInterfaces", i1 false, i1 false}
!22 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/usb/core/sysfs.c", i32 108, i32 8}
!25 = !{ptr @dev_attr_bConfigurationValue, !24, !"dev_attr_bConfigurationValue", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/core/sysfs.c", i32 90, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/core/sysfs.c", i32 99, i32 18}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/usb/core/sysfs.c", i32 49, i32 1}
!32 = !{ptr @dev_attr_bmAttributes, !31, !"dev_attr_bmAttributes", i1 false, i1 false}
!33 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/core/sysfs.c", i32 68, i32 8}
!36 = !{ptr @dev_attr_bMaxPower, !35, !"dev_attr_bMaxPower", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/core/sysfs.c", i32 64, i32 21}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/usb/core/sysfs.c", i32 302, i32 8}
!41 = !{ptr @dev_attr_urbnum, !40, !"dev_attr_urbnum", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/core/sysfs.c", i32 300, i32 22}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/core/sysfs.c", i32 702, i32 1}
!46 = !{ptr @dev_attr_idVendor, !45, !"dev_attr_idVendor", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/core/sysfs.c", i32 703, i32 1}
!50 = !{ptr @dev_attr_idProduct, !49, !"dev_attr_idProduct", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/usb/core/sysfs.c", i32 704, i32 1}
!53 = !{ptr @dev_attr_bcdDevice, !52, !"dev_attr_bcdDevice", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/core/sysfs.c", i32 718, i32 1}
!56 = !{ptr @dev_attr_bDeviceClass, !55, !"dev_attr_bDeviceClass", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/core/sysfs.c", i32 719, i32 1}
!60 = !{ptr @dev_attr_bDeviceSubClass, !59, !"dev_attr_bDeviceSubClass", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/usb/core/sysfs.c", i32 720, i32 1}
!63 = !{ptr @dev_attr_bDeviceProtocol, !62, !"dev_attr_bDeviceProtocol", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/core/sysfs.c", i32 721, i32 1}
!66 = !{ptr @dev_attr_bNumConfigurations, !65, !"dev_attr_bNumConfigurations", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/core/sysfs.c", i32 722, i32 1}
!69 = !{ptr @dev_attr_bMaxPacketSize0, !68, !"dev_attr_bMaxPacketSize0", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/core/sysfs.c", i32 180, i32 8}
!72 = !{ptr @dev_attr_speed, !71, !"dev_attr_speed", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/core/sysfs.c", i32 154, i32 11}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/core/sysfs.c", i32 158, i32 11}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/usb/core/sysfs.c", i32 161, i32 11}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/core/sysfs.c", i32 167, i32 11}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/core/sysfs.c", i32 171, i32 12}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/core/sysfs.c", i32 173, i32 12}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/core/sysfs.c", i32 176, i32 11}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/usb/core/sysfs.c", i32 190, i32 8}
!89 = !{ptr @dev_attr_rx_lanes, !88, !"dev_attr_rx_lanes", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/core/sysfs.c", i32 200, i32 8}
!92 = !{ptr @dev_attr_tx_lanes, !91, !"dev_attr_tx_lanes", i1 false, i1 false}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/usb/core/sysfs.c", i32 210, i32 8}
!95 = !{ptr @dev_attr_busnum, !94, !"dev_attr_busnum", i1 false, i1 false}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/core/sysfs.c", i32 220, i32 8}
!98 = !{ptr @dev_attr_devnum, !97, !"dev_attr_devnum", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/usb/core/sysfs.c", i32 230, i32 8}
!101 = !{ptr @dev_attr_devpath, !100, !"dev_attr_devpath", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/core/sysfs.c", i32 242, i32 8}
!104 = !{ptr @dev_attr_version, !103, !"dev_attr_version", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/core/sysfs.c", i32 240, i32 22}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/usb/core/sysfs.c", i32 252, i32 8}
!109 = !{ptr @dev_attr_maxchild, !108, !"dev_attr_maxchild", i1 false, i1 false}
!110 = !{ptr @.str.43, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/core/sysfs.c", i32 262, i32 8}
!112 = !{ptr @dev_attr_quirks, !111, !"dev_attr_quirks", i1 false, i1 false}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/usb/core/sysfs.c", i32 260, i32 22}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/usb/core/sysfs.c", i32 292, i32 8}
!117 = !{ptr @dev_attr_avoid_reset_quirk, !116, !"dev_attr_avoid_reset_quirk", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/core/sysfs.c", i32 754, i32 8}
!120 = !{ptr @dev_attr_authorized, !119, !"dev_attr_authorized", i1 false, i1 false}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/core/sysfs.c", i32 776, i32 8}
!123 = !{ptr @dev_attr_remove, !122, !"dev_attr_remove", i1 false, i1 false}
!124 = !{ptr @.str.48, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/core/sysfs.c", i32 311, i32 8}
!126 = !{ptr @dev_attr_ltm_capable, !125, !"dev_attr_ltm_capable", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/usb/core/sysfs.c", i32 308, i32 31}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/core/sysfs.c", i32 309, i32 30}
!131 = !{ptr @.str.51, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/usb/core/sysfs.c", i32 119, i32 8}
!133 = !{ptr @dev_attr_devspec, !132, !"dev_attr_devspec", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/core/sysfs.c", i32 117, i32 22}
!136 = !{ptr @dev_string_attr_grp, !137, !"dev_string_attr_grp", i1 false, i1 false}
!137 = !{!"../drivers/usb/core/sysfs.c", i32 847, i32 37}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/core/sysfs.c", i32 141, i32 1}
!140 = !{ptr @dev_attr_manufacturer, !139, !"dev_attr_manufacturer", i1 false, i1 false}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/usb/core/sysfs.c", i32 140, i32 1}
!143 = !{ptr @dev_attr_product, !142, !"dev_attr_product", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/core/sysfs.c", i32 142, i32 1}
!146 = !{ptr @dev_attr_serial, !145, !"dev_attr_serial", i1 false, i1 false}
!147 = !{ptr @dev_string_attrs, !148, !"dev_string_attrs", i1 false, i1 false}
!148 = !{!"../drivers/usb/core/sysfs.c", i32 821, i32 26}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/usb/core/sysfs.c", i32 905, i32 19}
!151 = !{ptr @dev_bin_attr_descriptors, !152, !"dev_bin_attr_descriptors", i1 false, i1 false}
!152 = !{!"../drivers/usb/core/sysfs.c", i32 904, i32 29}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/usb/core/sysfs.c", i32 343, i32 8}
!155 = !{ptr @dev_attr_persist, !154, !"dev_attr_persist", i1 false, i1 false}
!156 = !{ptr @power_attr_group, !157, !"power_attr_group", i1 false, i1 false}
!157 = !{!"../drivers/usb/core/sysfs.c", i32 646, i32 37}
!158 = !{ptr @power_attrs, !159, !"power_attrs", i1 false, i1 false}
!159 = !{!"../drivers/usb/core/sysfs.c", i32 639, i32 26}
!160 = !{ptr @.str.58, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/core/sysfs.c", i32 420, i32 8}
!162 = !{ptr @dev_attr_autosuspend, !161, !"dev_attr_autosuspend", i1 false, i1 false}
!163 = !{ptr @.str.59, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/usb/core/sysfs.c", i32 480, i32 8}
!165 = !{ptr @dev_attr_level, !164, !"dev_attr_level", i1 false, i1 false}
!166 = !{ptr @auto_string, !167, !"auto_string", i1 false, i1 false}
!167 = !{!"../drivers/usb/core/sysfs.c", i32 423, i32 19}
!168 = distinct !{null, !169, !"level_warned", i1 false, i1 false}
!169 = !{!"../drivers/usb/core/sysfs.c", i32 427, i32 13}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/core/sysfs.c", i32 431, i32 3}
!172 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @warn_level._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @warn_level._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @on_string, !176, !"on_string", i1 false, i1 false}
!176 = !{!"../drivers/usb/core/sysfs.c", i32 422, i32 19}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/usb/core/sysfs.c", i32 378, i32 8}
!179 = !{ptr @dev_attr_connected_duration, !178, !"dev_attr_connected_duration", i1 false, i1 false}
!180 = !{ptr @.str.63, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/core/sysfs.c", i32 399, i32 8}
!182 = !{ptr @dev_attr_active_duration, !181, !"dev_attr_active_duration", i1 false, i1 false}
!183 = !{ptr @usb2_hardware_lpm_attr_group, !184, !"usb2_hardware_lpm_attr_group", i1 false, i1 false}
!184 = !{!"../drivers/usb/core/sysfs.c", i32 624, i32 37}
!185 = !{ptr @usb2_hardware_lpm_attr, !186, !"usb2_hardware_lpm_attr", i1 false, i1 false}
!186 = !{!"../drivers/usb/core/sysfs.c", i32 618, i32 26}
!187 = !{ptr @.str.64, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/usb/core/sysfs.c", i32 525, i32 8}
!189 = !{ptr @dev_attr_usb2_hardware_lpm, !188, !"dev_attr_usb2_hardware_lpm", i1 false, i1 false}
!190 = !{ptr @.str.65, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/core/sysfs.c", i32 489, i32 7}
!192 = !{ptr @.str.66, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/core/sysfs.c", i32 491, i32 7}
!194 = !{ptr @.str.67, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/core/sysfs.c", i32 549, i32 8}
!196 = !{ptr @dev_attr_usb2_lpm_l1_timeout, !195, !"dev_attr_usb2_lpm_l1_timeout", i1 false, i1 false}
!197 = !{ptr @.str.68, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/usb/core/sysfs.c", i32 572, i32 8}
!199 = !{ptr @dev_attr_usb2_lpm_besl, !198, !"dev_attr_usb2_lpm_besl", i1 false, i1 false}
!200 = !{ptr @usb3_hardware_lpm_attr_group, !201, !"usb3_hardware_lpm_attr_group", i1 false, i1 false}
!201 = !{!"../drivers/usb/core/sysfs.c", i32 634, i32 37}
!202 = !{ptr @usb3_hardware_lpm_attr, !203, !"usb3_hardware_lpm_attr", i1 false, i1 false}
!203 = !{!"../drivers/usb/core/sysfs.c", i32 629, i32 26}
!204 = !{ptr @.str.69, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/core/sysfs.c", i32 594, i32 8}
!206 = !{ptr @dev_attr_usb3_hardware_lpm_u1, !205, !"dev_attr_usb3_hardware_lpm_u1", i1 false, i1 false}
!207 = !{ptr @.str.70, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/usb/core/sysfs.c", i32 616, i32 8}
!209 = !{ptr @dev_attr_usb3_hardware_lpm_u2, !208, !"dev_attr_usb3_hardware_lpm_u2", i1 false, i1 false}
!210 = !{ptr @usb_bus_attr_group, !211, !"usb_bus_attr_group", i1 false, i1 false}
!211 = !{!"../drivers/usb/core/sysfs.c", i32 997, i32 37}
!212 = !{ptr @usb_bus_attrs, !213, !"usb_bus_attrs", i1 false, i1 false}
!213 = !{!"../drivers/usb/core/sysfs.c", i32 991, i32 26}
!214 = !{ptr @.str.71, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/core/sysfs.c", i32 945, i32 8}
!216 = !{ptr @dev_attr_authorized_default, !215, !"dev_attr_authorized_default", i1 false, i1 false}
!217 = !{ptr @.str.72, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/usb/core/sysfs.c", i32 988, i32 8}
!219 = !{ptr @dev_attr_interface_authorized_default, !218, !"dev_attr_interface_authorized_default", i1 false, i1 false}
!220 = !{ptr @intf_attr_grp, !221, !"intf_attr_grp", i1 false, i1 false}
!221 = !{!"../drivers/usb/core/sysfs.c", i32 1204, i32 37}
!222 = !{ptr @intf_attrs, !223, !"intf_attrs", i1 false, i1 false}
!223 = !{!"../drivers/usb/core/sysfs.c", i32 1192, i32 26}
!224 = !{ptr @.str.73, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/core/sysfs.c", i32 1093, i32 1}
!226 = !{ptr @dev_attr_bInterfaceNumber, !225, !"dev_attr_bInterfaceNumber", i1 false, i1 false}
!227 = !{ptr @.str.74, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/usb/core/sysfs.c", i32 1094, i32 1}
!229 = !{ptr @dev_attr_bAlternateSetting, !228, !"dev_attr_bAlternateSetting", i1 false, i1 false}
!230 = !{ptr @.str.75, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/core/sysfs.c", i32 1095, i32 1}
!232 = !{ptr @dev_attr_bNumEndpoints, !231, !"dev_attr_bNumEndpoints", i1 false, i1 false}
!233 = !{ptr @.str.76, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/usb/core/sysfs.c", i32 1096, i32 1}
!235 = !{ptr @dev_attr_bInterfaceClass, !234, !"dev_attr_bInterfaceClass", i1 false, i1 false}
!236 = !{ptr @.str.77, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/core/sysfs.c", i32 1097, i32 1}
!238 = !{ptr @dev_attr_bInterfaceSubClass, !237, !"dev_attr_bInterfaceSubClass", i1 false, i1 false}
!239 = !{ptr @.str.78, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/usb/core/sysfs.c", i32 1098, i32 1}
!241 = !{ptr @dev_attr_bInterfaceProtocol, !240, !"dev_attr_bInterfaceProtocol", i1 false, i1 false}
!242 = !{ptr @.str.79, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/core/sysfs.c", i32 1138, i32 8}
!244 = !{ptr @dev_attr_modalias, !243, !"dev_attr_modalias", i1 false, i1 false}
!245 = !{ptr @.str.80, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/usb/core/sysfs.c", i32 1125, i32 22}
!247 = !{ptr @.str.81, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/usb/core/sysfs.c", i32 1155, i32 8}
!249 = !{ptr @dev_attr_supports_autosuspend, !248, !"dev_attr_supports_autosuspend", i1 false, i1 false}
!250 = !{ptr @dev_attr_interface_authorized, !251, !"dev_attr_interface_authorized", i1 false, i1 false}
!251 = !{!"../drivers/usb/core/sysfs.c", i32 1188, i32 32}
!252 = !{ptr @intf_assoc_attr_grp, !253, !"intf_assoc_attr_grp", i1 false, i1 false}
!253 = !{!"../drivers/usb/core/sysfs.c", i32 1228, i32 37}
!254 = !{ptr @intf_assoc_attrs, !255, !"intf_assoc_attrs", i1 false, i1 false}
!255 = !{!"../drivers/usb/core/sysfs.c", i32 1208, i32 26}
!256 = !{ptr @.str.82, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/core/sysfs.c", i32 1074, i32 1}
!258 = !{ptr @dev_attr_iad_bFirstInterface, !257, !"dev_attr_iad_bFirstInterface", i1 false, i1 false}
!259 = !{ptr @.str.83, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/usb/core/sysfs.c", i32 1075, i32 1}
!261 = !{ptr @dev_attr_iad_bInterfaceCount, !260, !"dev_attr_iad_bInterfaceCount", i1 false, i1 false}
!262 = !{ptr @.str.84, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.85, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/usb/core/sysfs.c", i32 1076, i32 1}
!265 = !{ptr @dev_attr_iad_bFunctionClass, !264, !"dev_attr_iad_bFunctionClass", i1 false, i1 false}
!266 = !{ptr @.str.86, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/core/sysfs.c", i32 1077, i32 1}
!268 = !{ptr @dev_attr_iad_bFunctionSubClass, !267, !"dev_attr_iad_bFunctionSubClass", i1 false, i1 false}
!269 = !{ptr @.str.87, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/usb/core/sysfs.c", i32 1078, i32 1}
!271 = !{ptr @dev_attr_iad_bFunctionProtocol, !270, !"dev_attr_iad_bFunctionProtocol", i1 false, i1 false}
!272 = !{ptr @.str.88, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/core/sysfs.c", i32 1112, i32 8}
!274 = !{ptr @dev_attr_interface, !273, !"dev_attr_interface", i1 false, i1 false}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i64 2148721496, i64 2148721501, i64 2148721514, i64 2148721558, i64 2148721592, i64 2148721613}
!285 = !{!"auto-init"}
!286 = distinct !{!286, !287}
!287 = !{!"llvm.loop.peeled.count", i32 1}
!288 = !{i8 0, i8 2}
