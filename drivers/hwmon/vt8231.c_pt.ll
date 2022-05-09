; ModuleID = '/llk/IR_all_yes/drivers/hwmon/vt8231.c_pt.bc'
source_filename = "../drivers/hwmon/vt8231.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.71, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.vt8231_data = type { i16, ptr, %struct.mutex, ptr, i8, i32, [6 x i8], [6 x i8], [6 x i8], [6 x i16], [6 x i8], [6 x i8], [2 x i8], [2 x i8], [2 x i8], i16, i8 }

@__param_str_force_addr = internal constant [18 x i8] c"vt8231.force_addr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype236 = internal constant [31 x i8] c"vt8231.parmtype=force_addr:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr237 = internal constant [66 x i8] c"vt8231.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1
@vt8231_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @vt8231_pci_ids, ptr @vt8231_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@s_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vt8231_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vt8231_probe, ptr @vt8231_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author274 = internal constant [54 x i8] c"vt8231.author=Roger Lucas <vt8231@hiddenengine.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description275 = internal constant [34 x i8] c"vt8231.description=VT8231 sensors\00", section ".modinfo", align 1
@__UNIQUE_ID_file276 = internal constant [33 x i8] c"vt8231.file=drivers/hwmon/vt8231\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [19 x i8] c"vt8231.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_vt8231__278_1063_sm_vt8231_init6 = internal global ptr @sm_vt8231_init, section ".initcall6.init", align 4
@__exitcall_sm_vt8231_exit = internal global ptr @sm_vt8231_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vt8231\00", [25 x i8] zeroinitializer }, align 32
@vt8231_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 33333, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@vt8231_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing ISA address 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vt8231_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/vt8231.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vt8231_pci_probe._entry_ptr = internal global ptr @vt8231_pci_probe._entry, section ".printk_index", align 4
@vt8231_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1001, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@vt8231_pci_probe._entry_ptr.9 = internal global ptr @vt8231_pci_probe._entry.6, section ".printk_index", align 4
@vt8231_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"enabling sensors\0A\00", [46 x i8] zeroinitializer }, align 32
@vt8231_pci_probe._entry_ptr.12 = internal global ptr @vt8231_pci_probe._entry.10, section ".printk_index", align 4
@vt8231_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013vt8231: Device allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vt8231_device_add\00", [46 x i8] zeroinitializer }, align 32
@vt8231_device_add._entry_ptr = internal global ptr @vt8231_device_add._entry, section ".printk_index", align 4
@vt8231_device_add._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013vt8231: Device resource addition failed (%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@vt8231_device_add._entry_ptr.17 = internal global ptr @vt8231_device_add._entry.15, section ".printk_index", align 4
@vt8231_device_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013vt8231: Device addition failed (%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@vt8231_device_add._entry_ptr.20 = internal global ptr @vt8231_device_add._entry.18, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@vt8231_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 789, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vt8231_probe\00", [19 x i8] zeroinitializer }, align 32
@vt8231_probe._entry_ptr = internal global ptr @vt8231_probe._entry, section ".printk_index", align 4
@vt8231_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@vt8231_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt8231_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@vt8231_group_temps = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt8231_attributes_temps, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_temps, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_temps, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_temps, i64 60), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_temps, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_temps, i64 100), ptr null }], [40 x i8] zeroinitializer }, align 32
@vt8231_group_volts = internal constant { [6 x %struct.attribute_group], [40 x i8] } { [6 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @vt8231_attributes_volts, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_volts, i64 20), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_volts, i64 40), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_volts, i64 60), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_volts, i64 80), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @vt8231_attributes_volts, i64 100), ptr null }], [40 x i8] zeroinitializer }, align 32
@vt8231_attributes = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@regvolt = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"!\22#$%&", [26 x i8] zeroinitializer }, align 32
@regvoltmin = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c">,.024", [26 x i8] zeroinitializer }, align 32
@regvoltmax = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"=+-/13", [26 x i8] zeroinitializer }, align 32
@regtemp = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\1F!\22#$%", [26 x i8] zeroinitializer }, align 32
@regtempmax = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"9=+-/1", [26 x i8] zeroinitializer }, align 32
@regtempmin = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c":>,.02", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan_div_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.3, i32 577, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fan_div_store\00", [18 x i8] zeroinitializer }, align 32
@fan_div_store._entry_ptr = internal global ptr @fan_div_store._entry, section ".printk_index", align 4
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@vt8231_attributes_temps = internal global { [6 x [5 x ptr]], [40 x i8] } { [6 x [5 x ptr]] [[5 x ptr] [ptr @dev_attr_temp1_input, ptr @dev_attr_temp1_max_hyst, ptr @dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_max_hyst, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_max_hyst, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_max_hyst, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_alarm, ptr null]], [40 x i8] zeroinitializer }, align 32
@dev_attr_temp1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_max_hyst = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_max_hyst_show, ptr @temp1_max_hyst_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_max_show, ptr @temp1_max_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp4_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp5_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp6_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_alarm\00", [20 x i8] zeroinitializer }, align 32
@vt8231_attributes_volts = internal global { [6 x [5 x ptr]], [40 x i8] } { [6 x [5 x ptr]] [[5 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr null], [5 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr null], [5 x ptr] [ptr @dev_attr_in5_input, ptr @dev_attr_in5_min, ptr @dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr null]], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_in5_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in5_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in5_min = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in5_min_show, ptr @in5_min_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in5_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in5_max_show, ptr @in5_max_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 31, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"vt8231_pci_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 772, i32 26 }
@___asan_gen_.93 = private unnamed_addr constant [9 x i8] c"s_bridge\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 164, i32 24 }
@___asan_gen_.96 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 35, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"vt8231_driver\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 754, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 773, i32 11 }
@___asan_gen_.105 = private unnamed_addr constant [15 x i8] c"vt8231_pci_ids\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 762, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 987, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1001, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 1010, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 957, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 963, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 969, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 788, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 801, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [13 x i8] c"vt8231_group\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 750, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"vt8231_group_temps\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 678, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"vt8231_group_volts\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 727, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant [18 x i8] c"vt8231_attributes\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 736, i32 26 }
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 592, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 499, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant [8 x i8] c"regvolt\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 69, i32 17 }
@___asan_gen_.228 = private unnamed_addr constant [11 x i8] c"regvoltmin\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 71, i32 17 }
@___asan_gen_.231 = private unnamed_addr constant [11 x i8] c"regvoltmax\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 70, i32 17 }
@___asan_gen_.234 = private unnamed_addr constant [8 x i8] c"regtemp\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 85, i32 17 }
@___asan_gen_.237 = private unnamed_addr constant [11 x i8] c"regtempmax\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 86, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant [11 x i8] c"regtempmin\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 87, i32 17 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 595, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 593, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 596, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 594, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 575, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 597, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 627, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 613, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 628, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 606, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 636, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 634, i32 22 }
@___asan_gen_.285 = private unnamed_addr constant [24 x i8] c"vt8231_attributes_temps\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 638, i32 26 }
@___asan_gen_.288 = private unnamed_addr constant [21 x i8] c"dev_attr_temp1_input\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [24 x i8] c"dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [19 x i8] c"dev_attr_temp1_max\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp4_max_hyst\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_alarm\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp5_max_hyst\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_alarm\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp6_max_hyst\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_max\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_alarm\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 472, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 474, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 473, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 615, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 476, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 478, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 477, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 616, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 479, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 481, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 480, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 617, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 482, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 484, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 483, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 618, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 485, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 487, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 486, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 619, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 488, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 490, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 489, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 620, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant [24 x i8] c"vt8231_attributes_volts\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 687, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"dev_attr_in5_input\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"dev_attr_in5_min\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [17 x i8] c"dev_attr_in5_max\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 320, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 321, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 322, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 621, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 323, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 324, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 325, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 622, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 326, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 327, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 328, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 623, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 329, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 330, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 331, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 624, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 332, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 333, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 334, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 625, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 336, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 337, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 338, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private constant [26 x i8] c"../drivers/hwmon/vt8231.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 626, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [183 x ptr] [ptr @__UNIQUE_ID_author274, ptr @__UNIQUE_ID_description275, ptr @__UNIQUE_ID_file276, ptr @__UNIQUE_ID_force_addr237, ptr @__UNIQUE_ID_force_addrtype236, ptr @__UNIQUE_ID_license277, ptr @__exitcall_sm_vt8231_exit, ptr @__initcall__kmod_vt8231__278_1063_sm_vt8231_init6, ptr @__param_force_addr, ptr @fan_div_store._entry, ptr @fan_div_store._entry_ptr, ptr @sm_vt8231_exit, ptr @vt8231_device_add._entry, ptr @vt8231_device_add._entry.15, ptr @vt8231_device_add._entry.18, ptr @vt8231_device_add._entry_ptr, ptr @vt8231_device_add._entry_ptr.17, ptr @vt8231_device_add._entry_ptr.20, ptr @vt8231_pci_probe._entry, ptr @vt8231_pci_probe._entry.10, ptr @vt8231_pci_probe._entry.6, ptr @vt8231_pci_probe._entry_ptr, ptr @vt8231_pci_probe._entry_ptr.12, ptr @vt8231_pci_probe._entry_ptr.9, ptr @vt8231_probe._entry, ptr @vt8231_probe._entry_ptr, ptr @force_addr, ptr @vt8231_pci_driver, ptr @s_bridge, ptr @pdev, ptr @vt8231_driver, ptr @.str, ptr @vt8231_pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @vt8231_probe.__key, ptr @.str.23, ptr @vt8231_group, ptr @vt8231_group_temps, ptr @vt8231_group_volts, ptr @vt8231_attributes, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr @.str.24, ptr @.str.25, ptr @regvolt, ptr @regvoltmin, ptr @regvoltmax, ptr @regtemp, ptr @regtempmax, ptr @regtempmin, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @vt8231_attributes_temps, ptr @dev_attr_temp1_input, ptr @dev_attr_temp1_max_hyst, ptr @dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_max_hyst, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_alarm, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_max_hyst, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_alarm, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_max_hyst, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_alarm, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @vt8231_attributes_volts, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @dev_attr_in5_input, ptr @dev_attr_in5_min, ptr @dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_device_add._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_device_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_group_temps to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_group_volts to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_attributes to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regvolt to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regvoltmin to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regvoltmax to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtemp to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtempmax to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regtempmin to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_div_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_attributes_temps to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_max_hyst to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vt8231_attributes_volts to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in5_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in5_min to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in5_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_vt8231_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @vt8231_pci_driver) #8
  %0 = load ptr, ptr @s_bridge, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %1 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @vt8231_driver) #8
  %2 = load ptr, ptr @s_bridge, align 4
  tail call void @pci_dev_put(ptr noundef %2) #8
  store ptr null, ptr @s_bridge, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sm_vt8231_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @vt8231_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8231_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !287
  %1 = load i32, ptr @force_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %entry
  %conv = and i32 %1, 65280
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %conv) #11
  %2 = trunc i32 %conv to i16
  %conv4 = or i16 %2, 1
  %call = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 112, i16 noundef zeroext %conv4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call8 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 112, ptr noundef nonnull %val) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %4)
  %cmp10 = icmp eq i16 %4, -1
  br i1 %cmp10, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %5 = and i16 %4, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp18 = icmp eq i16 %5, 0
  br i1 %cmp18, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %call26 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 116, ptr noundef nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp28 = icmp eq i16 %7, -1
  br i1 %cmp28, label %if.end25.cleanup_crit_edge, label %if.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool34.not = icmp eq i16 %8, 0
  br i1 %tobool34.not, label %do.end38, label %if.end31.if.end48_crit_edge

if.end31.if.end48_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

do.end38:                                         ; preds = %if.end31
  %dev39 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev39, ptr noundef nonnull @.str.11) #11
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %val, align 2
  %11 = or i16 %10, 1
  %call43 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 116, i16 noundef zeroext %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %do.end38.if.end48_crit_edge, label %do.end38.cleanup_crit_edge

do.end38.cleanup_crit_edge:                       ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end38.if.end48_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %do.end38.if.end48_crit_edge, %if.end31.if.end48_crit_edge
  %call49 = call i32 @__platform_driver_register(ptr noundef nonnull @vt8231_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %if.end48
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %12 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 2
  %14 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  %15 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 4
  %conv.i = zext i16 %5 to i32
  %16 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv.i, ptr %res.i, align 4
  %sub.i = or i32 %conv.i, 127
  %17 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub.i, ptr %12, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 256, ptr %14, align 4
  %20 = call ptr @memset(ptr %15, i32 0, i32 16)
  %call3.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv.i) #8
  store ptr %call3.i, ptr @pdev, align 4
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #11
  br label %exit_unregister

if.end7.i:                                        ; preds = %if.end52
  %call8.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call3.i, ptr noundef nonnull %res.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end16.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call8.i) #11
  br label %exit_device_put.i

if.end16.i:                                       ; preds = %if.end7.i
  %21 = load ptr, ptr @pdev, align 4
  %call17.i = call i32 @platform_device_add(ptr noundef %21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end56, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call17.i) #11
  br label %exit_device_put.i

exit_device_put.i:                                ; preds = %do.end22.i, %do.end13.i
  %22 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %22) #8
  br label %exit_unregister

if.end56:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  %call57 = call ptr @pci_dev_get(ptr noundef %dev) #8
  store ptr %call57, ptr @s_bridge, align 4
  br label %cleanup

exit_unregister:                                  ; preds = %exit_device_put.i, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @platform_driver_unregister(ptr noundef nonnull @vt8231_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_unregister, %if.end56, %if.end48.cleanup_crit_edge, %do.end38.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %do.end23, %if.end7.cleanup_crit_edge, %if.then.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #8
  ret i32 -19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_resources(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8231_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @vt8231_driver, i32 0, i32 5), align 4
  %call1 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %1, i32 noundef 128, ptr noundef %2) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %4, i32 noundef %6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #8
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call, align 4
  %conv = trunc i32 %9 to i16
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.vt8231_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %name, align 4
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @vt8231_probe.__key) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 4
  %conv.i.i = zext i16 %13 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %add.i.i.i = add nuw nsw i32 %conv.i.i, -18874293
  %14 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #8, !srcloc !289
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %call.i, align 4
  %conv.i2.i = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @arm_heavy_mb() #8
  %add.i.i4.i = add nuw nsw i32 %conv.i2.i, -18874292
  %17 = inttoptr i32 %add.i.i4.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #8, !srcloc !289
  %call14 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then26, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end8
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %call.i, align 4
  %conv.i = zext i16 %19 to i32
  %add.i.i = add nuw nsw i32 %conv.i, -18874294
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %uch_config = getelementptr inbounds %struct.vt8231_data, ptr %call.i, i32 0, i32 16
  %22 = ptrtoint ptr %uch_config to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %uch_config, align 2
  %call29 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_temps) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %cond.false.1, label %if.then26.exit_remove_files_crit_edge

if.then26.exit_remove_files_crit_edge:            ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

cond.false.1:                                     ; preds = %if.then26
  %23 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %uch_config, align 2
  %25 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool25.not.1 = icmp eq i8 %25, 0
  br i1 %tobool25.not.1, label %cond.false.1.cond.false.2_crit_edge, label %if.then26.1

cond.false.1.cond.false.2_crit_edge:              ; preds = %cond.false.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.2

if.then26.1:                                      ; preds = %cond.false.1
  %call29.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.1)
  %tobool30.not.1 = icmp eq i32 %call29.1, 0
  br i1 %tobool30.not.1, label %if.then26.1.cond.false.2_crit_edge, label %if.then26.1.exit_remove_files_crit_edge

if.then26.1.exit_remove_files_crit_edge:          ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then26.1.cond.false.2_crit_edge:               ; preds = %if.then26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.2

cond.false.2:                                     ; preds = %if.then26.1.cond.false.2_crit_edge, %cond.false.1.cond.false.2_crit_edge
  %26 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %uch_config, align 2
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool25.not.2 = icmp eq i8 %28, 0
  br i1 %tobool25.not.2, label %cond.false.2.cond.false.3_crit_edge, label %if.then26.2

cond.false.2.cond.false.3_crit_edge:              ; preds = %cond.false.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.3

if.then26.2:                                      ; preds = %cond.false.2
  %call29.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.2)
  %tobool30.not.2 = icmp eq i32 %call29.2, 0
  br i1 %tobool30.not.2, label %if.then26.2.cond.false.3_crit_edge, label %if.then26.2.exit_remove_files_crit_edge

if.then26.2.exit_remove_files_crit_edge:          ; preds = %if.then26.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then26.2.cond.false.3_crit_edge:               ; preds = %if.then26.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.3

cond.false.3:                                     ; preds = %if.then26.2.cond.false.3_crit_edge, %cond.false.2.cond.false.3_crit_edge
  %29 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %uch_config, align 2
  %31 = and i8 %30, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool25.not.3 = icmp eq i8 %31, 0
  br i1 %tobool25.not.3, label %cond.false.3.cond.false.4_crit_edge, label %if.then26.3

cond.false.3.cond.false.4_crit_edge:              ; preds = %cond.false.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.4

if.then26.3:                                      ; preds = %cond.false.3
  %call29.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.3)
  %tobool30.not.3 = icmp eq i32 %call29.3, 0
  br i1 %tobool30.not.3, label %if.then26.3.cond.false.4_crit_edge, label %if.then26.3.exit_remove_files_crit_edge

if.then26.3.exit_remove_files_crit_edge:          ; preds = %if.then26.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then26.3.cond.false.4_crit_edge:               ; preds = %if.then26.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.4

cond.false.4:                                     ; preds = %if.then26.3.cond.false.4_crit_edge, %cond.false.3.cond.false.4_crit_edge
  %32 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %uch_config, align 2
  %34 = and i8 %33, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool25.not.4 = icmp eq i8 %34, 0
  br i1 %tobool25.not.4, label %cond.false.4.cond.false.5_crit_edge, label %if.then26.4

cond.false.4.cond.false.5_crit_edge:              ; preds = %cond.false.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.5

if.then26.4:                                      ; preds = %cond.false.4
  %call29.4 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.4)
  %tobool30.not.4 = icmp eq i32 %call29.4, 0
  br i1 %tobool30.not.4, label %if.then26.4.cond.false.5_crit_edge, label %if.then26.4.exit_remove_files_crit_edge

if.then26.4.exit_remove_files_crit_edge:          ; preds = %if.then26.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then26.4.cond.false.5_crit_edge:               ; preds = %if.then26.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false.5

cond.false.5:                                     ; preds = %if.then26.4.cond.false.5_crit_edge, %cond.false.4.cond.false.5_crit_edge
  %35 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %uch_config, align 2
  %37 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool25.not.5 = icmp eq i8 %37, 0
  br i1 %tobool25.not.5, label %cond.false.5.cond.false41_crit_edge, label %if.then26.5

cond.false.5.cond.false41_crit_edge:              ; preds = %cond.false.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41

if.then26.5:                                      ; preds = %cond.false.5
  %call29.5 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 5)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.5)
  %tobool30.not.5 = icmp eq i32 %call29.5, 0
  br i1 %tobool30.not.5, label %if.then26.5.cond.false41_crit_edge, label %if.then26.5.exit_remove_files_crit_edge

if.then26.5.exit_remove_files_crit_edge:          ; preds = %if.then26.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then26.5.cond.false41_crit_edge:               ; preds = %if.then26.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41

cond.false41:                                     ; preds = %if.then26.5.cond.false41_crit_edge, %cond.false.5.cond.false41_crit_edge
  %38 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %uch_config, align 2
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool47.not = icmp eq i8 %40, 0
  br i1 %tobool47.not, label %if.then48, label %cond.false41.cond.false41.1_crit_edge

cond.false41.cond.false41.1_crit_edge:            ; preds = %cond.false41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.1

if.then48:                                        ; preds = %cond.false41
  %call52 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_volts) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.then48.cond.false41.1_crit_edge, label %if.then48.exit_remove_files_crit_edge

if.then48.exit_remove_files_crit_edge:            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.cond.false41.1_crit_edge:               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.1

cond.false41.1:                                   ; preds = %if.then48.cond.false41.1_crit_edge, %cond.false41.cond.false41.1_crit_edge
  %41 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %uch_config, align 2
  %43 = and i8 %42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool47.not.1 = icmp eq i8 %43, 0
  br i1 %tobool47.not.1, label %if.then48.1, label %cond.false41.1.cond.false41.2_crit_edge

cond.false41.1.cond.false41.2_crit_edge:          ; preds = %cond.false41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.2

if.then48.1:                                      ; preds = %cond.false41.1
  %call52.1 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.1)
  %tobool53.not.1 = icmp eq i32 %call52.1, 0
  br i1 %tobool53.not.1, label %if.then48.1.cond.false41.2_crit_edge, label %if.then48.1.exit_remove_files_crit_edge

if.then48.1.exit_remove_files_crit_edge:          ; preds = %if.then48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.1.cond.false41.2_crit_edge:             ; preds = %if.then48.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.2

cond.false41.2:                                   ; preds = %if.then48.1.cond.false41.2_crit_edge, %cond.false41.1.cond.false41.2_crit_edge
  %44 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %uch_config, align 2
  %46 = and i8 %45, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool47.not.2 = icmp eq i8 %46, 0
  br i1 %tobool47.not.2, label %if.then48.2, label %cond.false41.2.cond.false41.3_crit_edge

cond.false41.2.cond.false41.3_crit_edge:          ; preds = %cond.false41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.3

if.then48.2:                                      ; preds = %cond.false41.2
  %call52.2 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.2)
  %tobool53.not.2 = icmp eq i32 %call52.2, 0
  br i1 %tobool53.not.2, label %if.then48.2.cond.false41.3_crit_edge, label %if.then48.2.exit_remove_files_crit_edge

if.then48.2.exit_remove_files_crit_edge:          ; preds = %if.then48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.2.cond.false41.3_crit_edge:             ; preds = %if.then48.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.3

cond.false41.3:                                   ; preds = %if.then48.2.cond.false41.3_crit_edge, %cond.false41.2.cond.false41.3_crit_edge
  %47 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %uch_config, align 2
  %49 = and i8 %48, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool47.not.3 = icmp eq i8 %49, 0
  br i1 %tobool47.not.3, label %if.then48.3, label %cond.false41.3.cond.false41.4_crit_edge

cond.false41.3.cond.false41.4_crit_edge:          ; preds = %cond.false41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.4

if.then48.3:                                      ; preds = %cond.false41.3
  %call52.3 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.3)
  %tobool53.not.3 = icmp eq i32 %call52.3, 0
  br i1 %tobool53.not.3, label %if.then48.3.cond.false41.4_crit_edge, label %if.then48.3.exit_remove_files_crit_edge

if.then48.3.exit_remove_files_crit_edge:          ; preds = %if.then48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.3.cond.false41.4_crit_edge:             ; preds = %if.then48.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false41.4

cond.false41.4:                                   ; preds = %if.then48.3.cond.false41.4_crit_edge, %cond.false41.3.cond.false41.4_crit_edge
  %50 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %uch_config, align 2
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool47.not.4 = icmp eq i8 %52, 0
  br i1 %tobool47.not.4, label %if.then48.4, label %cond.false41.4.if.then48.5_crit_edge

cond.false41.4.if.then48.5_crit_edge:             ; preds = %cond.false41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.5

if.then48.4:                                      ; preds = %cond.false41.4
  %call52.4 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 4)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.4)
  %tobool53.not.4 = icmp eq i32 %call52.4, 0
  br i1 %tobool53.not.4, label %if.then48.4.if.then48.5_crit_edge, label %if.then48.4.exit_remove_files_crit_edge

if.then48.4.exit_remove_files_crit_edge:          ; preds = %if.then48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then48.4.if.then48.5_crit_edge:                ; preds = %if.then48.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then48.5

if.then48.5:                                      ; preds = %if.then48.4.if.then48.5_crit_edge, %cond.false41.4.if.then48.5_crit_edge
  %call52.5 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 5)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.5)
  %tobool53.not.5 = icmp eq i32 %call52.5, 0
  br i1 %tobool53.not.5, label %for.inc57.5, label %if.then48.5.exit_remove_files_crit_edge

if.then48.5.exit_remove_files_crit_edge:          ; preds = %if.then48.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

for.inc57.5:                                      ; preds = %if.then48.5
  %call61 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %hwmon_dev = getelementptr inbounds %struct.vt8231_data, ptr %call.i, i32 0, i32 3
  %53 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call61, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then64, label %for.inc57.5.cleanup_crit_edge

for.inc57.5.cleanup_crit_edge:                    ; preds = %for.inc57.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then64:                                        ; preds = %for.inc57.5
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call61 to i32
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then64, %if.then48.5.exit_remove_files_crit_edge, %if.then48.4.exit_remove_files_crit_edge, %if.then48.3.exit_remove_files_crit_edge, %if.then48.2.exit_remove_files_crit_edge, %if.then48.1.exit_remove_files_crit_edge, %if.then48.exit_remove_files_crit_edge, %if.then26.5.exit_remove_files_crit_edge, %if.then26.4.exit_remove_files_crit_edge, %if.then26.3.exit_remove_files_crit_edge, %if.then26.2.exit_remove_files_crit_edge, %if.then26.1.exit_remove_files_crit_edge, %if.then26.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %54, %if.then64 ], [ %call52, %if.then48.exit_remove_files_crit_edge ], [ %call52.1, %if.then48.1.exit_remove_files_crit_edge ], [ %call52.2, %if.then48.2.exit_remove_files_crit_edge ], [ %call52.3, %if.then48.3.exit_remove_files_crit_edge ], [ %call52.4, %if.then48.4.exit_remove_files_crit_edge ], [ %call52.5, %if.then48.5.exit_remove_files_crit_edge ], [ %call29, %if.then26.exit_remove_files_crit_edge ], [ %call29.1, %if.then26.1.exit_remove_files_crit_edge ], [ %call29.2, %if.then26.2.exit_remove_files_crit_edge ], [ %call29.3, %if.then26.3.exit_remove_files_crit_edge ], [ %call29.4, %if.then26.4.exit_remove_files_crit_edge ], [ %call29.5, %if.then26.5.exit_remove_files_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_volts) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 4)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 5)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_temps) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 4)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 5)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %for.inc57.5.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.0, %exit_remove_files ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call14, %if.end8.cleanup_crit_edge ], [ 0, %for.inc57.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vt8231_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_volts) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 4)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_volts, i32 0, i32 5)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group_temps) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 3)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 4)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.attribute_group], ptr @vt8231_group_temps, i32 0, i32 5)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @vt8231_group) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 14, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %mul = shl i32 %conv, %conv6
  %div = sdiv i32 1310720, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @vt8231_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !292
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end153_crit_edge

lor.lhs.false.if.end153_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %uch_config = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %i.0284 = phi i32 [ 0, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0284)
  %cmp3 = icmp eq i32 %i.0284, 5
  br i1 %cmp3, label %for.body.if.then6_crit_edge, label %cond.false

for.body.if.then6_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

cond.false:                                       ; preds = %for.body
  %7 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %uch_config, align 2
  %conv = zext i8 %8 to i32
  %9 = shl i32 4, %i.0284
  %10 = and i32 %9, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %cond.false.if.then6_crit_edge, label %cond.false.for.inc_crit_edge

cond.false.for.inc_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

cond.false.if.then6_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %cond.false.if.then6_crit_edge, %for.body.if.then6_crit_edge
  %arrayidx = getelementptr [6 x i8], ptr @regvolt, i32 0, i32 %i.0284
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i = zext i16 %14 to i32
  %conv1.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  %add.i.i = or i32 %add.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx9 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 6, i32 %i.0284
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx9, align 1
  %arrayidx10 = getelementptr [6 x i8], ptr @regvoltmin, i32 0, i32 %i.0284
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx10, align 1
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 4
  %conv.i229 = zext i16 %21 to i32
  %conv1.i230 = zext i8 %19 to i32
  %add.i231 = add nuw nsw i32 %conv.i229, %conv1.i230
  %add.i.i232 = or i32 %add.i231, -18874368
  %22 = inttoptr i32 %add.i.i232 to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx13 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 8, i32 %i.0284
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx13, align 1
  %arrayidx14 = getelementptr [6 x i8], ptr @regvoltmax, i32 0, i32 %i.0284
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx14, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %1, align 4
  %conv.i234 = zext i16 %28 to i32
  %conv1.i235 = zext i8 %26 to i32
  %add.i236 = add nuw nsw i32 %conv.i234, %conv1.i235
  %add.i.i237 = or i32 %add.i236, -18874368
  %29 = inttoptr i32 %add.i.i237 to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx17 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 7, i32 %i.0284
  %31 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %arrayidx17, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %cond.false.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0284, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.body48.peel.next, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body48.peel.next:                             ; preds = %for.inc
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %1, align 4
  %conv.i239 = zext i16 %33 to i32
  %add.i241 = add nuw nsw i32 %conv.i239, 41
  %add.i.i242 = or i32 %add.i241, -18874368
  %34 = inttoptr i32 %add.i.i242 to ptr
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %34) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx26 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 12, i32 0
  %36 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %arrayidx26, align 1
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 4
  %conv.i244 = zext i16 %38 to i32
  %add.i246 = add nuw nsw i32 %conv.i244, 59
  %add.i.i247 = or i32 %add.i246, -18874368
  %39 = inttoptr i32 %add.i.i247 to ptr
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %39) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx31 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 13, i32 0
  %41 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %arrayidx31, align 1
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %1, align 4
  %conv.i239.1 = zext i16 %43 to i32
  %add.i241.1 = add nuw nsw i32 %conv.i239.1, 42
  %add.i.i242.1 = or i32 %add.i241.1, -18874368
  %44 = inttoptr i32 %add.i.i242.1 to ptr
  %45 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %44) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx26.1 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx26.1, align 1
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %1, align 4
  %conv.i244.1 = zext i16 %48 to i32
  %add.i246.1 = add nuw nsw i32 %conv.i244.1, 60
  %add.i.i247.1 = or i32 %add.i246.1, -18874368
  %49 = inttoptr i32 %add.i.i247.1 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx31.1 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 13, i32 1
  %51 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx31.1, align 1
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %1, align 4
  %conv.i249 = zext i16 %53 to i32
  %add.i.i251 = add nuw nsw i32 %conv.i249, -18874295
  %54 = inttoptr i32 %add.i.i251 to ptr
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %54) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i252 = zext i8 %55 to i32
  %conv37 = lshr i32 %conv2.i252, 6
  %and40 = lshr i32 %conv2.i252, 2
  %56 = and i32 %and40, 12
  %or = or i32 %conv37, %56
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %1, align 4
  %conv.i253 = zext i16 %58 to i32
  %add.i.i255 = add nuw nsw i32 %conv.i253, -18874291
  %59 = inttoptr i32 %add.i.i255 to ptr
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %59) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i256 = zext i8 %60 to i32
  %shl = shl nuw nsw i32 %conv2.i256, 4
  %conv63 = or i32 %shl, %or
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %1, align 4
  %conv.i257.peel = zext i16 %62 to i32
  %add.i259.peel = add nuw nsw i32 %conv.i257.peel, 31
  %add.i.i260.peel = or i32 %add.i259.peel, -18874368
  %63 = inttoptr i32 %add.i.i260.peel to ptr
  %64 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %63) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i261.peel = zext i8 %64 to i32
  %shl62.peel = shl nuw nsw i32 %conv2.i261.peel, 2
  %or66.peel = or i32 %shl62.peel, %conv37
  %conv67.peel = trunc i32 %or66.peel to i16
  %arrayidx68.peel = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 9, i32 0
  %65 = ptrtoint ptr %arrayidx68.peel to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv67.peel, ptr %arrayidx68.peel, align 2
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %1, align 4
  %conv.i262.peel = zext i16 %67 to i32
  %add.i264.peel = add nuw nsw i32 %conv.i262.peel, 57
  %add.i.i265.peel = or i32 %add.i264.peel, -18874368
  %68 = inttoptr i32 %add.i.i265.peel to ptr
  %69 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %68) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx72.peel = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 10, i32 0
  %70 = ptrtoint ptr %arrayidx72.peel to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx72.peel, align 1
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %1, align 4
  %conv.i267.peel = zext i16 %72 to i32
  %add.i269.peel = add nuw nsw i32 %conv.i267.peel, 58
  %add.i.i270.peel = or i32 %add.i269.peel, -18874368
  %73 = inttoptr i32 %add.i.i270.peel to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx76.peel = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 11, i32 0
  %75 = ptrtoint ptr %arrayidx76.peel to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %arrayidx76.peel, align 1
  br label %cond.false52

cond.false52:                                     ; preds = %for.inc78.cond.false52_crit_edge, %for.body48.peel.next
  %i.2288 = phi i32 [ 1, %for.body48.peel.next ], [ %inc79, %for.inc78.cond.false52_crit_edge ]
  %76 = ptrtoint ptr %uch_config to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %uch_config, align 2
  %conv54 = zext i8 %77 to i32
  %78 = shl i32 2, %i.2288
  %79 = and i32 %78, %conv54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool58.not = icmp eq i32 %79, 0
  br i1 %tobool58.not, label %cond.false52.for.inc78_crit_edge, label %if.then59

cond.false52.for.inc78_crit_edge:                 ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc78

if.then59:                                        ; preds = %cond.false52
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx60 = getelementptr [6 x i8], ptr @regtemp, i32 0, i32 %i.2288
  %80 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx60, align 1
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %1, align 4
  %conv.i257 = zext i16 %83 to i32
  %conv1.i258 = zext i8 %81 to i32
  %add.i259 = add nuw nsw i32 %conv.i257, %conv1.i258
  %add.i.i260 = or i32 %add.i259, -18874368
  %84 = inttoptr i32 %add.i.i260 to ptr
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %84) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i261 = zext i8 %85 to i32
  %shl62 = shl nuw nsw i32 %conv2.i261, 2
  %mul = shl nuw i32 %i.2288, 1
  %shr64 = lshr i32 %conv63, %mul
  %and65 = and i32 %shr64, 3
  %or66 = or i32 %shl62, %and65
  %conv67 = trunc i32 %or66 to i16
  %arrayidx68 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 9, i32 %i.2288
  %86 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv67, ptr %arrayidx68, align 2
  %arrayidx69 = getelementptr [6 x i8], ptr @regtempmax, i32 0, i32 %i.2288
  %87 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx69, align 1
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %1, align 4
  %conv.i262 = zext i16 %90 to i32
  %conv1.i263 = zext i8 %88 to i32
  %add.i264 = add nuw nsw i32 %conv.i262, %conv1.i263
  %add.i.i265 = or i32 %add.i264, -18874368
  %91 = inttoptr i32 %add.i.i265 to ptr
  %92 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %91) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx72 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 10, i32 %i.2288
  %93 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %arrayidx72, align 1
  %arrayidx73 = getelementptr [6 x i8], ptr @regtempmin, i32 0, i32 %i.2288
  %94 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx73, align 1
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %1, align 4
  %conv.i267 = zext i16 %97 to i32
  %conv1.i268 = zext i8 %95 to i32
  %add.i269 = add nuw nsw i32 %conv.i267, %conv1.i268
  %add.i.i270 = or i32 %add.i269, -18874368
  %98 = inttoptr i32 %add.i.i270 to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx76 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 11, i32 %i.2288
  %100 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx76, align 1
  br label %for.inc78

for.inc78:                                        ; preds = %if.then59, %cond.false52.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %i.2288, 1
  %exitcond291.not = icmp eq i32 %inc79, 6
  br i1 %exitcond291.not, label %for.end80, label %for.inc78.cond.false52_crit_edge, !llvm.loop !293

for.inc78.cond.false52_crit_edge:                 ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.false52

for.end80:                                        ; preds = %for.inc78
  %101 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %1, align 4
  %conv.i272 = zext i16 %102 to i32
  %add.i.i274 = add nuw nsw i32 %conv.i272, -18874297
  %103 = inttoptr i32 %add.i.i274 to ptr
  %104 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %103) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %105 = lshr i8 %104, 4
  %conv84 = and i8 %105, 3
  %fan_div = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 14
  %106 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv84, ptr %fan_div, align 2
  %107 = lshr i8 %104, 6
  %arrayidx89 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 14, i32 1
  %108 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx89, align 1
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %1, align 4
  %conv.i276 = zext i16 %110 to i32
  %add.i.i278 = add nuw nsw i32 %conv.i276, -18874303
  %111 = inttoptr i32 %add.i.i278 to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i279 = zext i8 %112 to i16
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %1, align 4
  %conv.i280 = zext i16 %114 to i32
  %add.i.i282 = add nuw nsw i32 %conv.i280, -18874302
  %115 = inttoptr i32 %add.i.i282 to ptr
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %115) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %conv2.i283 = zext i8 %116 to i16
  %shl92 = shl nuw i16 %conv2.i283, 8
  %or93 = or i16 %shl92, %conv2.i279
  %alarms = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 15
  %117 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %or93, ptr %alarms, align 4
  %118 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool97.not = icmp eq i8 %119, 0
  %120 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool101.not = icmp eq i8 %121, 0
  br i1 %tobool97.not, label %land.lhs.true, label %land.lhs.true111

land.lhs.true:                                    ; preds = %for.end80
  br i1 %tobool101.not, label %land.lhs.true.if.end121_crit_edge, label %if.then102

land.lhs.true.if.end121_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then102:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv106 = or i16 %or93, 64
  br label %if.end121.sink.split

land.lhs.true111:                                 ; preds = %for.end80
  br i1 %tobool101.not, label %if.then115, label %land.lhs.true111.if.end121_crit_edge

land.lhs.true111.if.end121_crit_edge:             ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then115:                                       ; preds = %land.lhs.true111
  call void @__sanitizer_cov_trace_pc() #10
  %122 = and i16 %or93, -65
  br label %if.end121.sink.split

if.end121.sink.split:                             ; preds = %if.then115, %if.then102
  %.sink = phi i16 [ %122, %if.then115 ], [ %conv106, %if.then102 ]
  %123 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %.sink, ptr %alarms, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.end121.sink.split, %land.lhs.true111.if.end121_crit_edge, %land.lhs.true.if.end121_crit_edge
  %124 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %arrayidx26.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool124.not = icmp eq i8 %125, 0
  %126 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx31.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool129.not = icmp eq i8 %127, 0
  br i1 %tobool124.not, label %land.lhs.true125, label %land.lhs.true140

land.lhs.true125:                                 ; preds = %if.end121
  br i1 %tobool129.not, label %land.lhs.true125.if.end150_crit_edge, label %if.then130

land.lhs.true125.if.end150_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then130:                                       ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %alarms, align 4
  %130 = or i16 %129, 128
  br label %if.end150.sink.split

land.lhs.true140:                                 ; preds = %if.end121
  br i1 %tobool129.not, label %if.then144, label %land.lhs.true140.if.end150_crit_edge

land.lhs.true140.if.end150_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end150

if.then144:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #10
  %131 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %alarms, align 4
  %133 = and i16 %132, -129
  br label %if.end150.sink.split

if.end150.sink.split:                             ; preds = %if.then144, %if.then130
  %.sink293 = phi i16 [ %133, %if.then144 ], [ %130, %if.then130 ]
  %134 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %.sink293, ptr %alarms, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end150.sink.split, %land.lhs.true140.if.end150_crit_edge, %land.lhs.true125.if.end150_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %135 = load volatile i32, ptr @jiffies, align 128
  %136 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %last_updated, align 4
  %valid152 = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 4
  %137 = ptrtoint ptr %valid152 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %valid152, align 4
  br label %if.end153

if.end153:                                        ; preds = %if.end150, %lor.lhs.false.if.end153_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx5 = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 14, i32 %1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %mul = shl i32 %conv, %conv6
  %div = sdiv i32 1310720, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %cond)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -1310721
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1310720, i32 %7)
  %8 = icmp ult i32 %7, -1310720
  br i1 %8, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 14, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %mul.i = shl i32 %6, %conv
  %div2.i = sdiv i32 1310720, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div2.i, i32 1) #8
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 255) #8
  %conv.i = trunc i32 %12 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ 0, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 13, i32 %1
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %conv4 = add i32 %1, 59
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %3, align 4
  %conv.i21 = zext i16 %15 to i32
  %conv1.i = and i32 %conv4, 255
  %add.i = add nuw nsw i32 %conv1.i, %conv.i21
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !287
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i, -18874297
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %arrayidx = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 13, i32 %4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp = icmp eq i8 %10, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %10 to i32
  %arrayidx6 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 14, i32 %4
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %12 to i32
  %mul = shl i32 %conv, %conv7
  %div = sdiv i32 1310720, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ]
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %cond.end
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 8
  br i1 %15, label %switch.hole_check, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %14) #11
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %16 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %switch.lobit.not = icmp eq i8 %16, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %17)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx19 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 14, i32 %4
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %switch.load, ptr %arrayidx19, align 1
  %fan_div21 = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 14
  %19 = add nsw i32 %cond, -1310721
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1310720, i32 %19)
  %20 = icmp ult i32 %19, -1310720
  br i1 %20, label %switch.lookup.FAN_TO_REG.exit_crit_edge, label %if.end.i

switch.lookup.FAN_TO_REG.exit_crit_edge:          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx22 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 14, i32 %4
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %22 to i32
  %mul.i = shl i32 %cond, %conv23
  %div2.i = sdiv i32 1310720, %mul.i
  %23 = call i32 @llvm.smax.i32(i32 %div2.i, i32 1) #8
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 255) #8
  %conv.i78 = trunc i32 %24 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %switch.lookup.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i78, %if.end.i ], [ 0, %switch.lookup.FAN_TO_REG.exit_crit_edge ]
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %conv28 = add i32 %4, 59
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i79 = zext i16 %27 to i32
  %conv1.i = and i32 %conv28, 255
  %add.i80 = add nuw nsw i32 %conv1.i, %conv.i79
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i81 = or i32 %add.i80, -18874368
  %28 = inttoptr i32 %add.i.i81 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %retval.0.i) #8, !srcloc !289
  %29 = and i8 %8, 15
  %arrayidx32 = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx32, align 1
  %shl34 = shl i8 %31, 6
  %or = or i8 %shl34, %29
  %32 = ptrtoint ptr %fan_div21 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fan_div21, align 2
  %shl38 = shl i8 %33, 4
  %or39 = or i8 %or, %shl38
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 4
  %conv.i82 = zext i16 %35 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i84 = add nuw nsw i32 %conv.i82, -18874297
  %36 = inttoptr i32 %add.i.i84 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %or39) #8, !srcloc !289
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %FAN_TO_REG.exit, %do.end
  %retval.0.ph = phi i32 [ %count, %FAN_TO_REG.exit ], [ -22, %do.end ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %cond.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.vt8231_data, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarms, align 4
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.vt8231_data, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %temp = getelementptr inbounds %struct.vt8231_data, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %temp, align 2
  %conv = zext i16 %1 to i32
  %mul = mul nuw nsw i32 %conv, 250
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %temp_min = getelementptr inbounds %struct.vt8231_data, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %temp_min to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_min, align 4
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %add = add i32 %4, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %add)
  %cmp = icmp sgt i32 %add, 999
  %div = sdiv i32 %add, 1000
  %5 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %6 = trunc i32 %5 to i8
  %conv = select i1 %cmp, i8 %6, i8 0
  %temp_min = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %temp_min to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %temp_min, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv.i = zext i16 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874310
  %10 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %temp_max = getelementptr inbounds %struct.vt8231_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %temp_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_max, align 2
  %conv = zext i8 %1 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %add = add i32 %4, 500
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %add)
  %cmp = icmp sgt i32 %add, 999
  %div = sdiv i32 %add, 1000
  %5 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %6 = trunc i32 %5 to i8
  %conv = select i1 %cmp, i8 %6, i8 0
  %temp_max = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 10
  %7 = ptrtoint ptr %temp_max to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %temp_max, align 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 4
  %conv.i = zext i16 %9 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874311
  %10 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %sub = sub nsw i32 1012, %conv
  %mul = mul nsw i32 %sub, 550
  %add = add nsw i32 %mul, 105
  %div = sdiv i32 %add, 210
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 253, %conv
  %mul = mul nsw i32 %sub, 2200
  %add = add nsw i32 %mul, 105
  %div = sdiv i32 %add, 210
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 210
  %add = add i32 %mul, 1100
  call void @__sanitizer_cov_trace_const_cmp4(i32 556600, i32 %add)
  %cmp = icmp slt i32 %add, 556600
  %div.neg = sdiv i32 %add, -2200
  %7 = call i32 @llvm.smin.i32(i32 %div.neg, i32 2)
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, -3
  %conv = select i1 %cmp, i8 %9, i8 0
  %arrayidx = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 11, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [6 x i8], ptr @regtempmin, i32 0, i32 %1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv.i = zext i16 %14 to i32
  %conv1.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %sub = sub nsw i32 253, %conv
  %mul = mul nsw i32 %sub, 2200
  %add = add nsw i32 %mul, 105
  %div = sdiv i32 %add, 210
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 210
  %add = add i32 %mul, 1100
  call void @__sanitizer_cov_trace_const_cmp4(i32 556600, i32 %add)
  %cmp = icmp slt i32 %add, 556600
  %div.neg = sdiv i32 %add, -2200
  %7 = call i32 @llvm.smin.i32(i32 %div.neg, i32 2)
  %8 = trunc i32 %7 to i8
  %9 = add i8 %8, -3
  %conv = select i1 %cmp, i8 %9, i8 0
  %arrayidx = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 10, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [6 x i8], ptr @regtempmax, i32 0, i32 %1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %3, align 4
  %conv.i = zext i16 %14 to i32
  %conv1.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 10000
  %mul = add nsw i32 %4, -30000
  %div = sdiv i32 %mul, 958
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 10000
  %mul = add nsw i32 %4, -30000
  %div = sdiv i32 %mul, 958
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 958
  %div = udiv i32 %mul, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2520000, i32 %mul)
  %cmp4 = icmp ult i32 %mul, 2520000
  %7 = trunc i32 %div to i8
  %phi.cast = add i8 %7, 3
  %cond8 = select i1 %cmp4, i8 %phi.cast, i8 -1
  %arrayidx = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 8, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cond8, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [6 x i8], ptr @regvoltmin, i32 0, i32 %1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 4
  %conv.i = zext i16 %12 to i32
  %conv1.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond8) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 10000
  %mul = add nsw i32 %4, -30000
  %div = sdiv i32 %mul, 958
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 958
  %div = udiv i32 %mul, 10000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2520000, i32 %mul)
  %cmp4 = icmp ult i32 %mul, 2520000
  %7 = trunc i32 %div to i8
  %phi.cast = add i8 %7, 3
  %cond8 = select i1 %cmp4, i8 %phi.cast, i8 -1
  %arrayidx = getelementptr %struct.vt8231_data, ptr %3, i32 0, i32 7, i32 %1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %cond8, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [6 x i8], ptr @regvoltmax, i32 0, i32 %1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %3, align 4
  %conv.i = zext i16 %12 to i32
  %conv1.i = zext i8 %10 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %cond8) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in5_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 6, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 540000
  %mul1 = add nsw i32 %2, -1620000
  %div = sdiv i32 %mul1, 32572
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in5_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 540000
  %mul1 = add nsw i32 %2, -1620000
  %div = sdiv i32 %mul1, 32572
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in5_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %mul2 = mul i32 %4, 32572
  %div = udiv i32 %mul2, 540000
  call void @__sanitizer_cov_trace_const_cmp4(i32 136080000, i32 %mul2)
  %cmp4 = icmp ult i32 %mul2, 136080000
  %5 = trunc i32 %div to i8
  %phi.cast = add i8 %5, 3
  %cond8 = select i1 %cmp4, i8 %phi.cast, i8 -1
  %arrayidx = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874316
  %9 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %cond8) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in5_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @vt8231_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.vt8231_data, ptr %call, i32 0, i32 7, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = mul nuw nsw i32 %conv, 540000
  %mul1 = add nsw i32 %2, -1620000
  %div = sdiv i32 %mul1, 32572
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.25, i32 noundef %div)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in5_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !287
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.vt8231_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %mul2 = mul i32 %4, 32572
  %div = udiv i32 %mul2, 540000
  call void @__sanitizer_cov_trace_const_cmp4(i32 136080000, i32 %mul2)
  %cmp4 = icmp ult i32 %mul2, 136080000
  %5 = trunc i32 %div to i8
  %phi.cast = add i8 %5, 3
  %cond8 = select i1 %cmp4, i8 %phi.cast, i8 -1
  %arrayidx = getelementptr %struct.vt8231_data, ptr %1, i32 0, i32 7, i32 5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %cond8, ptr %arrayidx, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874317
  %9 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %cond8) #8, !srcloc !289
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !71, !73, !75, !76, !78, !80, !82, !84, !86, !88, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !107, !109, !110, !112, !113, !115, !117, !118, !120, !121, !123, !124, !126, !128, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__param_force_addr, !1, !"__param_force_addr", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/vt8231.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_addrtype236, !1, !"__UNIQUE_ID_force_addrtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_addr237, !4, !"__UNIQUE_ID_force_addr237", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/vt8231.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_author274, !6, !"__UNIQUE_ID_author274", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/vt8231.c", i32 1059, i32 1}
!7 = !{ptr @__UNIQUE_ID_description275, !8, !"__UNIQUE_ID_description275", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/vt8231.c", i32 1060, i32 1}
!9 = !{ptr @__UNIQUE_ID_file276, !10, !"__UNIQUE_ID_file276", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/vt8231.c", i32 1061, i32 1}
!11 = !{ptr @__UNIQUE_ID_license277, !10, !"__UNIQUE_ID_license277", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_vt8231__278_1063_sm_vt8231_init6, !13, !"__initcall__kmod_vt8231__278_1063_sm_vt8231_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/vt8231.c", i32 1063, i32 1}
!14 = !{ptr @__exitcall_sm_vt8231_exit, !15, !"__exitcall_sm_vt8231_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/vt8231.c", i32 1064, i32 1}
!16 = !{ptr @force_addr, !17, !"force_addr", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/vt8231.c", i32 31, i32 12}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/vt8231.c", i32 35, i32 32}
!20 = !{ptr @s_bridge, !21, !"s_bridge", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/vt8231.c", i32 164, i32 24}
!22 = !{ptr @__param_str_force_addr, !1, !"__param_str_force_addr", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/vt8231.c", i32 773, i32 11}
!25 = !{ptr @vt8231_pci_driver, !26, !"vt8231_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/vt8231.c", i32 772, i32 26}
!27 = !{ptr @vt8231_pci_ids, !28, !"vt8231_pci_ids", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/vt8231.c", i32 762, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/vt8231.c", i32 987, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @vt8231_pci_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @vt8231_pci_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/vt8231.c", i32 1001, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @vt8231_pci_probe._entry.6, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @vt8231_pci_probe._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/vt8231.c", i32 1010, i32 3}
!44 = !{ptr @vt8231_pci_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @vt8231_pci_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/vt8231.c", i32 957, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @vt8231_device_add._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @vt8231_device_add._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/vt8231.c", i32 963, i32 3}
!53 = !{ptr @vt8231_device_add._entry.15, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vt8231_device_add._entry_ptr.17, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/vt8231.c", i32 969, i32 3}
!57 = !{ptr @vt8231_device_add._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vt8231_device_add._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @vt8231_driver, !60, !"vt8231_driver", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/vt8231.c", i32 754, i32 31}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/vt8231.c", i32 788, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @vt8231_probe._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @vt8231_probe._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @vt8231_probe.__key, !67, !"__key", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/vt8231.c", i32 801, i32 2}
!68 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @vt8231_group, !70, !"vt8231_group", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/vt8231.c", i32 750, i32 37}
!71 = !{ptr @vt8231_attributes, !72, !"vt8231_attributes", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/vt8231.c", i32 736, i32 26}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/vt8231.c", i32 592, i32 8}
!75 = !{ptr @sensor_dev_attr_fan1_input, !74, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/vt8231.c", i32 499, i32 22}
!78 = !{ptr @regvolt, !79, !"regvolt", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/vt8231.c", i32 69, i32 17}
!80 = !{ptr @regvoltmin, !81, !"regvoltmin", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/vt8231.c", i32 71, i32 17}
!82 = !{ptr @regvoltmax, !83, !"regvoltmax", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/vt8231.c", i32 70, i32 17}
!84 = !{ptr @regtemp, !85, !"regtemp", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/vt8231.c", i32 85, i32 17}
!86 = !{ptr @regtempmax, !87, !"regtempmax", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/vt8231.c", i32 86, i32 17}
!88 = !{ptr @regtempmin, !89, !"regtempmin", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/vt8231.c", i32 87, i32 17}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/vt8231.c", i32 595, i32 8}
!92 = !{ptr @sensor_dev_attr_fan2_input, !91, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/vt8231.c", i32 593, i32 8}
!95 = !{ptr @sensor_dev_attr_fan1_min, !94, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/vt8231.c", i32 596, i32 8}
!98 = !{ptr @sensor_dev_attr_fan2_min, !97, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!99 = !{ptr @.str.29, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/vt8231.c", i32 594, i32 8}
!101 = !{ptr @sensor_dev_attr_fan1_div, !100, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/vt8231.c", i32 575, i32 3}
!104 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @fan_div_store._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @fan_div_store._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/vt8231.c", i32 597, i32 8}
!109 = !{ptr @sensor_dev_attr_fan2_div, !108, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/vt8231.c", i32 627, i32 8}
!112 = !{ptr @sensor_dev_attr_fan1_alarm, !111, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/vt8231.c", i32 613, i32 22}
!115 = !{ptr @.str.35, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/vt8231.c", i32 628, i32 8}
!117 = !{ptr @sensor_dev_attr_fan2_alarm, !116, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/vt8231.c", i32 606, i32 8}
!120 = !{ptr @dev_attr_alarms, !119, !"dev_attr_alarms", i1 false, i1 false}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/vt8231.c", i32 636, i32 8}
!123 = !{ptr @dev_attr_name, !122, !"dev_attr_name", i1 false, i1 false}
!124 = !{ptr @.str.38, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/vt8231.c", i32 634, i32 22}
!126 = !{ptr @vt8231_group_temps, !127, !"vt8231_group_temps", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/vt8231.c", i32 678, i32 37}
!128 = !{ptr @vt8231_attributes_temps, !129, !"vt8231_attributes_temps", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/vt8231.c", i32 638, i32 26}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/vt8231.c", i32 472, i32 8}
!132 = !{ptr @dev_attr_temp1_input, !131, !"dev_attr_temp1_input", i1 false, i1 false}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/vt8231.c", i32 474, i32 8}
!135 = !{ptr @dev_attr_temp1_max_hyst, !134, !"dev_attr_temp1_max_hyst", i1 false, i1 false}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/vt8231.c", i32 473, i32 8}
!138 = !{ptr @dev_attr_temp1_max, !137, !"dev_attr_temp1_max", i1 false, i1 false}
!139 = !{ptr @.str.42, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/vt8231.c", i32 615, i32 8}
!141 = !{ptr @sensor_dev_attr_temp1_alarm, !140, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/vt8231.c", i32 476, i32 8}
!144 = !{ptr @sensor_dev_attr_temp2_input, !143, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/vt8231.c", i32 478, i32 8}
!147 = !{ptr @sensor_dev_attr_temp2_max_hyst, !146, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!148 = !{ptr @.str.45, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/vt8231.c", i32 477, i32 8}
!150 = !{ptr @sensor_dev_attr_temp2_max, !149, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!151 = !{ptr @.str.46, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/vt8231.c", i32 616, i32 8}
!153 = !{ptr @sensor_dev_attr_temp2_alarm, !152, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!154 = !{ptr @.str.47, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/vt8231.c", i32 479, i32 8}
!156 = !{ptr @sensor_dev_attr_temp3_input, !155, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!157 = !{ptr @.str.48, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/vt8231.c", i32 481, i32 8}
!159 = !{ptr @sensor_dev_attr_temp3_max_hyst, !158, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!160 = !{ptr @.str.49, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/vt8231.c", i32 480, i32 8}
!162 = !{ptr @sensor_dev_attr_temp3_max, !161, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!163 = !{ptr @.str.50, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/vt8231.c", i32 617, i32 8}
!165 = !{ptr @sensor_dev_attr_temp3_alarm, !164, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/vt8231.c", i32 482, i32 8}
!168 = !{ptr @sensor_dev_attr_temp4_input, !167, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!169 = !{ptr @.str.52, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/vt8231.c", i32 484, i32 8}
!171 = !{ptr @sensor_dev_attr_temp4_max_hyst, !170, !"sensor_dev_attr_temp4_max_hyst", i1 false, i1 false}
!172 = !{ptr @.str.53, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/vt8231.c", i32 483, i32 8}
!174 = !{ptr @sensor_dev_attr_temp4_max, !173, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!175 = !{ptr @.str.54, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/vt8231.c", i32 618, i32 8}
!177 = !{ptr @sensor_dev_attr_temp4_alarm, !176, !"sensor_dev_attr_temp4_alarm", i1 false, i1 false}
!178 = !{ptr @.str.55, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/vt8231.c", i32 485, i32 8}
!180 = !{ptr @sensor_dev_attr_temp5_input, !179, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!181 = !{ptr @.str.56, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/vt8231.c", i32 487, i32 8}
!183 = !{ptr @sensor_dev_attr_temp5_max_hyst, !182, !"sensor_dev_attr_temp5_max_hyst", i1 false, i1 false}
!184 = !{ptr @.str.57, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/vt8231.c", i32 486, i32 8}
!186 = !{ptr @sensor_dev_attr_temp5_max, !185, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!187 = !{ptr @.str.58, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/vt8231.c", i32 619, i32 8}
!189 = !{ptr @sensor_dev_attr_temp5_alarm, !188, !"sensor_dev_attr_temp5_alarm", i1 false, i1 false}
!190 = !{ptr @.str.59, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/vt8231.c", i32 488, i32 8}
!192 = !{ptr @sensor_dev_attr_temp6_input, !191, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!193 = !{ptr @.str.60, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/vt8231.c", i32 490, i32 8}
!195 = !{ptr @sensor_dev_attr_temp6_max_hyst, !194, !"sensor_dev_attr_temp6_max_hyst", i1 false, i1 false}
!196 = !{ptr @.str.61, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/vt8231.c", i32 489, i32 8}
!198 = !{ptr @sensor_dev_attr_temp6_max, !197, !"sensor_dev_attr_temp6_max", i1 false, i1 false}
!199 = !{ptr @.str.62, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/vt8231.c", i32 620, i32 8}
!201 = !{ptr @sensor_dev_attr_temp6_alarm, !200, !"sensor_dev_attr_temp6_alarm", i1 false, i1 false}
!202 = !{ptr @vt8231_group_volts, !203, !"vt8231_group_volts", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/vt8231.c", i32 727, i32 37}
!204 = !{ptr @vt8231_attributes_volts, !205, !"vt8231_attributes_volts", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/vt8231.c", i32 687, i32 26}
!206 = !{ptr @.str.63, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/vt8231.c", i32 320, i32 8}
!208 = !{ptr @sensor_dev_attr_in0_input, !207, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!209 = !{ptr @.str.64, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/vt8231.c", i32 321, i32 8}
!211 = !{ptr @sensor_dev_attr_in0_min, !210, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!212 = !{ptr @.str.65, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/vt8231.c", i32 322, i32 8}
!214 = !{ptr @sensor_dev_attr_in0_max, !213, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!215 = !{ptr @.str.66, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/vt8231.c", i32 621, i32 8}
!217 = !{ptr @sensor_dev_attr_in0_alarm, !216, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!218 = !{ptr @.str.67, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/vt8231.c", i32 323, i32 8}
!220 = !{ptr @sensor_dev_attr_in1_input, !219, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!221 = !{ptr @.str.68, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/vt8231.c", i32 324, i32 8}
!223 = !{ptr @sensor_dev_attr_in1_min, !222, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!224 = !{ptr @.str.69, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/vt8231.c", i32 325, i32 8}
!226 = !{ptr @sensor_dev_attr_in1_max, !225, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!227 = !{ptr @.str.70, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/vt8231.c", i32 622, i32 8}
!229 = !{ptr @sensor_dev_attr_in1_alarm, !228, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!230 = !{ptr @.str.71, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/vt8231.c", i32 326, i32 8}
!232 = !{ptr @sensor_dev_attr_in2_input, !231, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!233 = !{ptr @.str.72, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/vt8231.c", i32 327, i32 8}
!235 = !{ptr @sensor_dev_attr_in2_min, !234, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!236 = !{ptr @.str.73, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/vt8231.c", i32 328, i32 8}
!238 = !{ptr @sensor_dev_attr_in2_max, !237, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!239 = !{ptr @.str.74, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/vt8231.c", i32 623, i32 8}
!241 = !{ptr @sensor_dev_attr_in2_alarm, !240, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!242 = !{ptr @.str.75, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/vt8231.c", i32 329, i32 8}
!244 = !{ptr @sensor_dev_attr_in3_input, !243, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!245 = !{ptr @.str.76, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/vt8231.c", i32 330, i32 8}
!247 = !{ptr @sensor_dev_attr_in3_min, !246, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!248 = !{ptr @.str.77, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/vt8231.c", i32 331, i32 8}
!250 = !{ptr @sensor_dev_attr_in3_max, !249, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!251 = !{ptr @.str.78, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/vt8231.c", i32 624, i32 8}
!253 = !{ptr @sensor_dev_attr_in3_alarm, !252, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!254 = !{ptr @.str.79, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/vt8231.c", i32 332, i32 8}
!256 = !{ptr @sensor_dev_attr_in4_input, !255, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!257 = !{ptr @.str.80, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/vt8231.c", i32 333, i32 8}
!259 = !{ptr @sensor_dev_attr_in4_min, !258, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!260 = !{ptr @.str.81, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/vt8231.c", i32 334, i32 8}
!262 = !{ptr @sensor_dev_attr_in4_max, !261, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!263 = !{ptr @.str.82, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/vt8231.c", i32 625, i32 8}
!265 = !{ptr @sensor_dev_attr_in4_alarm, !264, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!266 = !{ptr @.str.83, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/vt8231.c", i32 336, i32 8}
!268 = !{ptr @dev_attr_in5_input, !267, !"dev_attr_in5_input", i1 false, i1 false}
!269 = !{ptr @.str.84, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/vt8231.c", i32 337, i32 8}
!271 = !{ptr @dev_attr_in5_min, !270, !"dev_attr_in5_min", i1 false, i1 false}
!272 = !{ptr @.str.85, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/vt8231.c", i32 338, i32 8}
!274 = !{ptr @dev_attr_in5_max, !273, !"dev_attr_in5_max", i1 false, i1 false}
!275 = !{ptr @.str.86, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/vt8231.c", i32 626, i32 8}
!277 = !{ptr @sensor_dev_attr_in5_alarm, !276, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{!"auto-init"}
!288 = !{i64 2152937265}
!289 = !{i64 5401209}
!290 = !{i64 5401604}
!291 = !{i64 2152935280}
!292 = !{i8 0, i8 2}
!293 = distinct !{!293, !294}
!294 = !{!"llvm.loop.peeled.count", i32 1}
