; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sis5595.c_pt.bc'
source_filename = "../drivers/hwmon/sis5595.c"
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
%struct.atomic_t = type { i32 }
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
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.71 = type { ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }
%struct.sis5595_data = type { i16, ptr, ptr, %struct.mutex, %struct.mutex, i8, i32, i8, i8, [5 x i8], [5 x i8], [5 x i8], [2 x i8], [2 x i8], i8, i8, i8, [2 x i8], i16 }

@__param_str_force_addr = internal constant [19 x i8] c"sis5595.force_addr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype236 = internal constant [35 x i8] c"sis5595.parmtype=force_addr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr237 = internal constant [67 x i8] c"sis5595.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1
@sis5595_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @sis5595_pci_ids, ptr @sis5595_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@s_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sis5595_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sis5595_probe, ptr @sis5595_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author251 = internal constant [53 x i8] c"sis5595.author=Aurelien Jarno <aurelien@aurel32.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [43 x i8] c"sis5595.description=SiS 5595 Sensor device\00", section ".modinfo", align 1
@__UNIQUE_ID_file253 = internal constant [35 x i8] c"sis5595.file=drivers/hwmon/sis5595\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [20 x i8] c"sis5595.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sis5595__255_914_sm_sis5595_init6 = internal global ptr @sm_sis5595_init, section ".initcall6.init", align 4
@__exitcall_sm_sis5595_exit = internal global ptr @sm_sis5595_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sis5595\00", [24 x i8] zeroinitializer }, align 32
@sis5595_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4153, i32 8, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@blacklist = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 1344, i32 1360, i32 1584, i32 1605, i32 1840, i32 1845, i32 21777, i32 21911, i32 21912, i32 0], [56 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 816, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Looked for SIS5595 but found unsupported device %.4x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sis5595_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/sis5595.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr = internal global ptr @sis5595_pci_probe._entry, section ".printk_index", align 4
@sis5595_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 824, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing ISA address 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.9 = internal global ptr @sis5595_pci_probe._entry.6, section ".printk_index", align 4
@sis5595_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ISA address\0A\00", [36 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.12 = internal global ptr @sis5595_pci_probe._entry.10, section ".printk_index", align 4
@sis5595_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 837, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", [34 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.15 = internal global ptr @sis5595_pci_probe._entry.13, section ".printk_index", align 4
@sis5595_pci_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 842, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to force ISA address\0A\00", [35 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.18 = internal global ptr @sis5595_pci_probe._entry.16, section ".printk_index", align 4
@sis5595_pci_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 848, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read enable register\0A\00", [32 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.21 = internal global ptr @sis5595_pci_probe._entry.19, section ".printk_index", align 4
@sis5595_pci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 859, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable HWM device\0A\00", [35 x i8] zeroinitializer }, align 32
@sis5595_pci_probe._entry_ptr.24 = internal global ptr @sis5595_pci_probe._entry.22, section ".printk_index", align 4
@sis5595_pci_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.25, i8 0, i8 -40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register sis5595 driver\0A\00", [61 x i8] zeroinitializer }, align 32
@sis5595_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 779, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013sis5595: Device allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sis5595_device_add\00", [45 x i8] zeroinitializer }, align 32
@sis5595_device_add._entry_ptr = internal global ptr @sis5595_device_add._entry, section ".printk_index", align 4
@sis5595_device_add._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013sis5595: Device resource addition failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@sis5595_device_add._entry_ptr.30 = internal global ptr @sis5595_device_add._entry.28, section ".printk_index", align 4
@sis5595_device_add._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013sis5595: Device addition failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@sis5595_device_add._entry_ptr.33 = internal global ptr @sis5595_device_add._entry.31, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@sis5595_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sis5595_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@sis5595_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sis5595_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@sis5595_group_in4 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sis5595_attributes_in4, ptr null }, [44 x i8] zeroinitializer }, align 32
@sis5595_group_temp1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sis5595_attributes_temp1, ptr null }, [44 x i8] zeroinitializer }, align 32
@sis5595_attributes = internal global { [27 x ptr], [52 x i8] } { [27 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan_div_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 450, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fan_div_store\00", [18 x i8] zeroinitializer }, align 32
@fan_div_store._entry_ptr = internal global ptr @fan_div_store._entry, section ".printk_index", align 4
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sis5595_attributes_in4 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@sis5595_attributes_temp1 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_temp1_input, ptr @dev_attr_temp1_max, ptr @dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_temp1_input = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_input_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_max = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_max_show, ptr @temp1_max_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_temp1_max_hyst = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_max_hyst_show, ptr @temp1_max_hyst_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 61, i32 12 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"sis5595_pci_driver\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 888, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant [9 x i8] c"s_bridge\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 192, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 66, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"sis5595_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 202, i32 31 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 889, i32 21 }
@___asan_gen_.97 = private unnamed_addr constant [16 x i8] c"sis5595_pci_ids\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 739, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"blacklist\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 746, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 814, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 824, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 830, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 836, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 842, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 848, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 859, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 865, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 779, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 785, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 791, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 591, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 592, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [14 x i8] c"sis5595_group\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 543, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant [18 x i8] c"sis5595_group_in4\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 555, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"sis5595_group_temp1\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 567, i32 37 }
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"sis5595_attributes\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 511, i32 26 }
@___asan_gen_.208 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 278, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 217, i32 22 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 279, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 280, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 494, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 492, i32 22 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 281, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 282, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 283, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 495, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 284, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 285, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 286, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 496, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 287, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 288, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 289, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 497, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 471, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 472, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 473, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 448, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 499, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 474, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 475, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 476, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 500, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 485, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 509, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 507, i32 22 }
@___asan_gen_.382 = private unnamed_addr constant [23 x i8] c"sis5595_attributes_in4\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 547, i32 26 }
@___asan_gen_.385 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 290, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 291, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 292, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 498, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant [25 x i8] c"sis5595_attributes_temp1\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 559, i32 26 }
@___asan_gen_.412 = private unnamed_addr constant [21 x i8] c"dev_attr_temp1_input\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [19 x i8] c"dev_attr_temp1_max\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [24 x i8] c"dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 354, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 355, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 356, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.434 = private constant [27 x i8] c"../drivers/hwmon/sis5595.c\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.434, i32 501, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_file253, ptr @__UNIQUE_ID_force_addr237, ptr @__UNIQUE_ID_force_addrtype236, ptr @__UNIQUE_ID_license254, ptr @__exitcall_sm_sis5595_exit, ptr @__initcall__kmod_sis5595__255_914_sm_sis5595_init6, ptr @__param_force_addr, ptr @fan_div_store._entry, ptr @fan_div_store._entry_ptr, ptr @sis5595_device_add._entry, ptr @sis5595_device_add._entry.28, ptr @sis5595_device_add._entry.31, ptr @sis5595_device_add._entry_ptr, ptr @sis5595_device_add._entry_ptr.30, ptr @sis5595_device_add._entry_ptr.33, ptr @sis5595_pci_probe._entry, ptr @sis5595_pci_probe._entry.10, ptr @sis5595_pci_probe._entry.13, ptr @sis5595_pci_probe._entry.16, ptr @sis5595_pci_probe._entry.19, ptr @sis5595_pci_probe._entry.22, ptr @sis5595_pci_probe._entry.6, ptr @sis5595_pci_probe._entry_ptr, ptr @sis5595_pci_probe._entry_ptr.12, ptr @sis5595_pci_probe._entry_ptr.15, ptr @sis5595_pci_probe._entry_ptr.18, ptr @sis5595_pci_probe._entry_ptr.21, ptr @sis5595_pci_probe._entry_ptr.24, ptr @sis5595_pci_probe._entry_ptr.9, ptr @sm_sis5595_exit, ptr @force_addr, ptr @sis5595_pci_driver, ptr @s_bridge, ptr @pdev, ptr @sis5595_driver, ptr @.str, ptr @sis5595_pci_ids, ptr @blacklist, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @sis5595_probe.__key, ptr @.str.34, ptr @sis5595_probe.__key.35, ptr @.str.36, ptr @sis5595_group, ptr @sis5595_group_in4, ptr @sis5595_group_temp1, ptr @sis5595_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @sis5595_attributes_in4, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @sis5595_attributes_temp1, ptr @dev_attr_temp1_input, ptr @dev_attr_temp1_max, ptr @dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [120 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @blacklist to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_pci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_device_add._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_device_add._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_group_in4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_group_temp1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_attributes to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_div_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_attributes_in4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sis5595_attributes_temp1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_input to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_max to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_max_hyst to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_sis5595_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @sis5595_pci_driver) #8
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
  tail call void @platform_driver_unregister(ptr noundef nonnull @sis5595_driver) #8
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
define internal i32 @sm_sis5595_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @sis5595_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis5595_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %address = alloca i16, align 2
  %enable = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address) #8
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %address, align 2, !annotation !222
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %enable) #8
  %1 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %enable, align 1, !annotation !222
  %call = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1344, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.inc.critedge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.critedge.7.do.end_crit_edge, %for.inc.critedge.6.do.end_crit_edge, %for.inc.critedge.5.do.end_crit_edge, %for.inc.critedge.4.do.end_crit_edge, %for.inc.critedge.3.do.end_crit_edge, %for.inc.critedge.2.do.end_crit_edge, %for.inc.critedge.1.do.end_crit_edge, %for.inc.critedge.do.end_crit_edge, %entry.do.end_crit_edge
  %i.0121.lcssa = phi ptr [ @blacklist, %entry.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 1), %for.inc.critedge.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 2), %for.inc.critedge.1.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 3), %for.inc.critedge.2.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 4), %for.inc.critedge.3.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 5), %for.inc.critedge.4.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 6), %for.inc.critedge.5.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 7), %for.inc.critedge.6.do.end_crit_edge ], [ getelementptr inbounds ([10 x i32], ptr @blacklist, i32 0, i32 8), %for.inc.critedge.7.do.end_crit_edge ]
  %call.lcssa = phi ptr [ %call, %entry.do.end_crit_edge ], [ %call.1, %for.inc.critedge.do.end_crit_edge ], [ %call.2, %for.inc.critedge.1.do.end_crit_edge ], [ %call.3, %for.inc.critedge.2.do.end_crit_edge ], [ %call.4, %for.inc.critedge.3.do.end_crit_edge ], [ %call.5, %for.inc.critedge.4.do.end_crit_edge ], [ %call.6, %for.inc.critedge.5.do.end_crit_edge ], [ %call.7, %for.inc.critedge.6.do.end_crit_edge ], [ %call.8, %for.inc.critedge.7.do.end_crit_edge ]
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %call.lcssa, i32 0, i32 44
  %2 = ptrtoint ptr %i.0121.lcssa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i.0121.lcssa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %3) #11
  tail call void @pci_dev_put(ptr noundef nonnull %call.lcssa) #8
  br label %cleanup95

for.inc.critedge:                                 ; preds = %entry
  %call.1 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1360, ptr noundef null) #8
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.critedge.1, label %for.inc.critedge.do.end_crit_edge

for.inc.critedge.do.end_crit_edge:                ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.1:                               ; preds = %for.inc.critedge
  %call.2 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1584, ptr noundef null) #8
  %tobool.not.2 = icmp eq ptr %call.2, null
  br i1 %tobool.not.2, label %for.inc.critedge.2, label %for.inc.critedge.1.do.end_crit_edge

for.inc.critedge.1.do.end_crit_edge:              ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.2:                               ; preds = %for.inc.critedge.1
  %call.3 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1605, ptr noundef null) #8
  %tobool.not.3 = icmp eq ptr %call.3, null
  br i1 %tobool.not.3, label %for.inc.critedge.3, label %for.inc.critedge.2.do.end_crit_edge

for.inc.critedge.2.do.end_crit_edge:              ; preds = %for.inc.critedge.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.3:                               ; preds = %for.inc.critedge.2
  %call.4 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1840, ptr noundef null) #8
  %tobool.not.4 = icmp eq ptr %call.4, null
  br i1 %tobool.not.4, label %for.inc.critedge.4, label %for.inc.critedge.3.do.end_crit_edge

for.inc.critedge.3.do.end_crit_edge:              ; preds = %for.inc.critedge.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.4:                               ; preds = %for.inc.critedge.3
  %call.5 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 1845, ptr noundef null) #8
  %tobool.not.5 = icmp eq ptr %call.5, null
  br i1 %tobool.not.5, label %for.inc.critedge.5, label %for.inc.critedge.4.do.end_crit_edge

for.inc.critedge.4.do.end_crit_edge:              ; preds = %for.inc.critedge.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.5:                               ; preds = %for.inc.critedge.4
  %call.6 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21777, ptr noundef null) #8
  %tobool.not.6 = icmp eq ptr %call.6, null
  br i1 %tobool.not.6, label %for.inc.critedge.6, label %for.inc.critedge.5.do.end_crit_edge

for.inc.critedge.5.do.end_crit_edge:              ; preds = %for.inc.critedge.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.6:                               ; preds = %for.inc.critedge.5
  %call.7 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21911, ptr noundef null) #8
  %tobool.not.7 = icmp eq ptr %call.7, null
  br i1 %tobool.not.7, label %for.inc.critedge.7, label %for.inc.critedge.6.do.end_crit_edge

for.inc.critedge.6.do.end_crit_edge:              ; preds = %for.inc.critedge.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.7:                               ; preds = %for.inc.critedge.6
  %call.8 = tail call ptr @pci_get_device(i32 noundef 4153, i32 noundef 21912, ptr noundef null) #8
  %tobool.not.8 = icmp eq ptr %call.8, null
  br i1 %tobool.not.8, label %for.inc.critedge.8, label %for.inc.critedge.7.do.end_crit_edge

for.inc.critedge.7.do.end_crit_edge:              ; preds = %for.inc.critedge.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.inc.critedge.8:                               ; preds = %for.inc.critedge.7
  %4 = load i16, ptr @force_addr, align 2
  %5 = and i16 %4, -8
  store i16 %5, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %for.inc.critedge.8.if.end11_crit_edge, label %do.end7

for.inc.critedge.8.if.end11_crit_edge:            ; preds = %for.inc.critedge.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end7:                                          ; preds = %for.inc.critedge.8
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %conv9 = zext i16 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev8, ptr noundef nonnull @.str.7, i32 noundef %conv9) #11
  %6 = load i16, ptr @force_addr, align 2
  %call10 = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 104, i16 noundef zeroext %6) #8
  br label %if.end11

if.end11:                                         ; preds = %do.end7, %for.inc.critedge.8.if.end11_crit_edge
  %call12 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 104, ptr noundef nonnull %address) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.11) #11
  br label %cleanup95

if.end20:                                         ; preds = %if.end11
  %7 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %address, align 2
  %9 = and i16 %8, -8
  store i16 %9, ptr %address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool24.not = icmp eq i16 %9, 0
  br i1 %tobool24.not, label %do.end28, label %if.end30

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %dev29 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29, ptr noundef nonnull @.str.14) #11
  br label %cleanup95

if.end30:                                         ; preds = %if.end20
  %10 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool32.not = icmp eq i16 %10, 0
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %10)
  %cmp35.not = icmp eq i16 %9, %10
  %or.cond = select i1 %tobool32.not, i1 true, i1 %cmp35.not
  br i1 %or.cond, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.17) #11
  br label %cleanup95

if.end42:                                         ; preds = %if.end30
  %call43 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 123, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %dev50 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev50, ptr noundef nonnull @.str.20) #11
  br label %cleanup95

if.end51:                                         ; preds = %if.end42
  %11 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %tobool54.not = icmp sgt i8 %12, -1
  br i1 %tobool54.not, label %if.then55, label %if.end51.if.end74_crit_edge

if.end51.if.end74_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then55:                                        ; preds = %if.end51
  %or = or i8 %12, -128
  %call58 = call i32 @pci_write_config_byte(ptr noundef %dev, i32 noundef 123, i8 noundef zeroext %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59.not = icmp eq i32 %call58, 0
  br i1 %cmp59.not, label %lor.lhs.false, label %if.then55.do.end71_crit_edge

if.then55.do.end71_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

lor.lhs.false:                                    ; preds = %if.then55
  %call61 = call i32 @pci_read_config_byte(ptr noundef %dev, i32 noundef 123, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %lor.lhs.false64, label %lor.lhs.false.do.end71_crit_edge

lor.lhs.false.do.end71_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

lor.lhs.false64:                                  ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool67.not = icmp sgt i8 %14, -1
  br i1 %tobool67.not, label %lor.lhs.false64.do.end71_crit_edge, label %lor.lhs.false64.if.end74_crit_edge

lor.lhs.false64.if.end74_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

lor.lhs.false64.do.end71_crit_edge:               ; preds = %lor.lhs.false64
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end71

do.end71:                                         ; preds = %lor.lhs.false64.do.end71_crit_edge, %lor.lhs.false.do.end71_crit_edge, %if.then55.do.end71_crit_edge
  %dev72 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.23) #11
  br label %cleanup95

if.end74:                                         ; preds = %lor.lhs.false64.if.end74_crit_edge, %if.end51.if.end74_crit_edge
  %call75 = call i32 @__platform_driver_register(ptr noundef nonnull @sis5595_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end89, label %do.body78

do.body78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sis5595_pci_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sis5595_pci_probe, %cleanup95)) #8
          to label %if.then84 [label %cleanup95], !srcloc !223

if.then84:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sis5595_pci_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev85, ptr noundef nonnull @.str.25) #8
  br label %cleanup95

if.end89:                                         ; preds = %if.end74
  %call90 = call ptr @pci_dev_get(ptr noundef %dev) #8
  store ptr %call90, ptr @s_bridge, align 4
  %15 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %address, align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %17 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 4
  %conv.i = zext i16 %16 to i32
  %21 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %res.i, align 4
  %sub.i = add nuw nsw i32 %conv.i, 7
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %17, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str, ptr %18, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 256, ptr %19, align 4
  %25 = call ptr @memset(ptr %20, i32 0, i32 16)
  %call3.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv.i) #8
  store ptr %call3.i, ptr @pdev, align 4
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #11
  br label %exit_unregister

if.end7.i:                                        ; preds = %if.end89
  %call8.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call3.i, ptr noundef nonnull %res.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end16.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %call8.i) #11
  br label %exit_device_put.i

if.end16.i:                                       ; preds = %if.end7.i
  %26 = load ptr, ptr @pdev, align 4
  %call17.i = call i32 @platform_device_add(ptr noundef %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %sis5595_device_add.exit, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %call17.i) #11
  br label %exit_device_put.i

exit_device_put.i:                                ; preds = %do.end22.i, %do.end13.i
  %27 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %27) #8
  br label %exit_unregister

sis5595_device_add.exit:                          ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  br label %cleanup95

exit_unregister:                                  ; preds = %exit_device_put.i, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @pci_dev_put(ptr noundef %dev) #8
  call void @platform_driver_unregister(ptr noundef nonnull @sis5595_driver) #8
  br label %cleanup95

cleanup95:                                        ; preds = %exit_unregister, %sis5595_device_add.exit, %if.then84, %do.body78, %do.end71, %do.end49, %do.end40, %do.end28, %do.end18, %do.end
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %enable) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address) #8
  ret i32 -19
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_device(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_word(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_dev_get(ptr noundef) local_unnamed_addr #1

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
define internal i32 @sis5595_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !222
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %3 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sis5595_driver, i32 0, i32 5), align 4
  %call1 = tail call ptr @__devm_request_region(ptr noundef %dev, ptr noundef nonnull @ioport_resource, i32 noundef %2, i32 noundef 8, ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 232, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @sis5595_probe.__key) #8
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @sis5595_probe.__key.35) #8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call, align 4
  %conv = trunc i32 %5 to i16
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str, ptr %name, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = load ptr, ptr @s_bridge, align 4
  %revision = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision, align 4
  %revision11 = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %revision11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %revision11, align 1
  %maxins = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %maxins to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %maxins, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %11)
  %cmp = icmp ugt i8 %11, -81
  br i1 %cmp, label %if.then15, label %do.body.if.end22_crit_edge

do.body.if.end22_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then15:                                        ; preds = %do.body
  %call16 = call i32 @pci_read_config_byte(ptr noundef %9, i32 noundef 122, ptr noundef nonnull %val) #8
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %tobool18.not = icmp sgt i8 %15, -1
  br i1 %tobool18.not, label %if.then19, label %if.then15.if.end22_crit_edge

if.then15.if.end22_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %maxins to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %maxins, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then15.if.end22_crit_edge, %do.body.if.end22_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call.i, align 4
  %conv.i.i = zext i16 %18 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i.i = add nuw nsw i32 %conv.i.i, -18874363
  %19 = inttoptr i32 %add.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 64) #8, !srcloc !225
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call.i, align 4
  %conv2.i.i = zext i16 %21 to i32
  %add.i10.i.i = add nuw nsw i32 %conv2.i.i, -18874362
  %22 = inttoptr i32 %add.i10.i.i to ptr
  %23 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  call void @mutex_unlock(ptr noundef %lock) #8
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end22.sis5595_init_device.exit_crit_edge

if.end22.sis5595_init_device.exit_crit_edge:      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sis5595_init_device.exit

if.then.i:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %25 = and i8 %23, -10
  %conv4.i = or i8 %25, 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %call.i, align 4
  %conv.i8.i = zext i16 %27 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i9.i = add nuw nsw i32 %conv.i8.i, -18874363
  %28 = inttoptr i32 %add.i.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 64) #8, !srcloc !225
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call.i, align 4
  %conv2.i10.i = zext i16 %30 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i.i = add nuw nsw i32 %conv2.i10.i, -18874362
  %31 = inttoptr i32 %add.i9.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv4.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %sis5595_init_device.exit

sis5595_init_device.exit:                         ; preds = %if.then.i, %if.end22.sis5595_init_device.exit_crit_edge
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %32 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %call.i, align 4
  %conv.i = zext i16 %33 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874363
  %34 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 59) #8, !srcloc !225
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %call.i, align 4
  %conv2.i = zext i16 %36 to i32
  %add.i10.i = add nuw nsw i32 %conv2.i, -18874362
  %37 = inttoptr i32 %add.i10.i to ptr
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  call void @mutex_unlock(ptr noundef %lock) #8
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call.i, i32 0, i32 13, i32 0
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %arrayidx, align 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %call.i, align 4
  %conv.i.1 = zext i16 %41 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i.1 = add nuw nsw i32 %conv.i.1, -18874363
  %42 = inttoptr i32 %add.i.i.1 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %42, i8 60) #8, !srcloc !225
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %call.i, align 4
  %conv2.i.1 = zext i16 %44 to i32
  %add.i10.i.1 = add nuw nsw i32 %conv2.i.1, -18874362
  %45 = inttoptr i32 %add.i10.i.1 to ptr
  %46 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  call void @mutex_unlock(ptr noundef %lock) #8
  %arrayidx.1 = getelementptr %struct.sis5595_data, ptr %call.i, i32 0, i32 13, i32 1
  %47 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %arrayidx.1, align 1
  %call29 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sis5595_init_device.exit.cleanup_crit_edge

sis5595_init_device.exit.cleanup_crit_edge:       ; preds = %sis5595_init_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %sis5595_init_device.exit
  %48 = ptrtoint ptr %maxins to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %maxins, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %49)
  %cmp35 = icmp eq i8 %49, 4
  br i1 %cmp35, label %if.then37, label %if.else

if.then37:                                        ; preds = %if.end32
  %call40 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_in4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.then37.if.end50_crit_edge, label %if.then37.exit_remove_files_crit_edge

if.then37.exit_remove_files_crit_edge:            ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then37.if.end50_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.else:                                          ; preds = %if.end32
  %call46 = call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_temp1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else.if.end50_crit_edge, label %if.else.exit_remove_files_crit_edge

if.else.exit_remove_files_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.else.if.end50_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.end50:                                         ; preds = %if.else.if.end50_crit_edge, %if.then37.if.end50_crit_edge
  %call52 = call ptr @hwmon_device_register(ptr noundef %dev) #8
  %hwmon_dev = getelementptr inbounds %struct.sis5595_data, ptr %call.i, i32 0, i32 2
  %50 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call52, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %call52 to i32
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then55, %if.else.exit_remove_files_crit_edge, %if.then37.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %call40, %if.then37.exit_remove_files_crit_edge ], [ %51, %if.then55 ], [ %call46, %if.else.exit_remove_files_crit_edge ]
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group) #8
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_in4) #8
  call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_temp1) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %if.end50.cleanup_crit_edge, %sis5595_init_device.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_remove_files ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call29, %sis5595_init_device.exit.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sis5595_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_in4) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @sis5595_group_temp1) #8
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
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sis5595_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 6
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
  %valid = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !228
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end75_crit_edge

lor.lhs.false.if.end75_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %maxins = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  br label %for.body

for.cond19.preheader:                             ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i138 = zext i16 %8 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i139 = add nuw nsw i32 %conv.i138, -18874363
  %9 = inttoptr i32 %add.i.i139 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 40) #8, !srcloc !225
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv2.i140 = zext i16 %11 to i32
  %add.i10.i141 = add nuw nsw i32 %conv2.i140, -18874362
  %12 = inttoptr i32 %add.i10.i141 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx27 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 12, i32 0
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %arrayidx27, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 4
  %conv.i144 = zext i16 %16 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i145 = add nuw nsw i32 %conv.i144, -18874363
  %17 = inttoptr i32 %add.i.i145 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 59) #8, !srcloc !225
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv2.i146 = zext i16 %19 to i32
  %add.i10.i147 = add nuw nsw i32 %conv2.i146, -18874362
  %20 = inttoptr i32 %add.i10.i147 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx32 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 13, i32 0
  %22 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx32, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv.i138.1 = zext i16 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i139.1 = add nuw nsw i32 %conv.i138.1, -18874363
  %25 = inttoptr i32 %add.i.i139.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 41) #8, !srcloc !225
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv2.i140.1 = zext i16 %27 to i32
  %add.i10.i141.1 = add nuw nsw i32 %conv2.i140.1, -18874362
  %28 = inttoptr i32 %add.i10.i141.1 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx27.1 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 12, i32 1
  %30 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx27.1, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %1, align 4
  %conv.i144.1 = zext i16 %32 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i145.1 = add nuw nsw i32 %conv.i144.1, -18874363
  %33 = inttoptr i32 %add.i.i145.1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 60) #8, !srcloc !225
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 4
  %conv2.i146.1 = zext i16 %35 to i32
  %add.i10.i147.1 = add nuw nsw i32 %conv2.i146.1, -18874362
  %36 = inttoptr i32 %add.i10.i147.1 to ptr
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %36) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx32.1 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 13, i32 1
  %38 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %arrayidx32.1, align 1
  %39 = ptrtoint ptr %maxins to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %maxins, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %40)
  %cmp38 = icmp eq i8 %40, 3
  br i1 %cmp38, label %if.then40, label %for.cond19.preheader.if.end_crit_edge

for.cond19.preheader.if.end_crit_edge:            ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.0186 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %41 = trunc i32 %i.0186 to i8
  %conv5 = add i8 %41, 32
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %1, align 4
  %conv.i = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i, -18874363
  %44 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 %conv5) #8, !srcloc !225
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %46 to i32
  %add.i10.i = add nuw nsw i32 %conv2.i, -18874362
  %47 = inttoptr i32 %add.i10.i to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 9, i32 %i.0186
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %arrayidx, align 1
  %50 = shl i8 %41, 1
  %conv9 = add i8 %50, 44
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %1, align 4
  %conv.i126 = zext i16 %52 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i127 = add nuw nsw i32 %conv.i126, -18874363
  %53 = inttoptr i32 %add.i.i127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv9) #8, !srcloc !225
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %1, align 4
  %conv2.i128 = zext i16 %55 to i32
  %add.i10.i129 = add nuw nsw i32 %conv2.i128, -18874362
  %56 = inttoptr i32 %add.i10.i129 to ptr
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %56) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx12 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 11, i32 %i.0186
  %58 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx12, align 1
  %conv15 = add i8 %50, 43
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %1, align 4
  %conv.i132 = zext i16 %60 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i133 = add nuw nsw i32 %conv.i132, -18874363
  %61 = inttoptr i32 %add.i.i133 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %conv15) #8, !srcloc !225
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %1, align 4
  %conv2.i134 = zext i16 %63 to i32
  %add.i10.i135 = add nuw nsw i32 %conv2.i134, -18874362
  %64 = inttoptr i32 %add.i10.i135 to ptr
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %64) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %arrayidx18 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 10, i32 %i.0186
  %66 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx18, align 1
  %inc = add nuw nsw i32 %i.0186, 1
  %67 = ptrtoint ptr %maxins to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %maxins, align 4
  %conv = zext i8 %68 to i32
  %cmp2.not.not = icmp ult i32 %i.0186, %conv
  br i1 %cmp2.not.not, label %for.body.for.body_crit_edge, label %for.cond19.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then40:                                        ; preds = %for.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %revision = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 8
  %69 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %70)
  %cmp42 = icmp ugt i8 %70, -81
  %conv44 = select i1 %cmp42, i8 36, i8 39
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %1, align 4
  %conv.i150 = zext i16 %72 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i151 = add nuw nsw i32 %conv.i150, -18874363
  %73 = inttoptr i32 %add.i.i151 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %conv44) #8, !srcloc !225
  %74 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %1, align 4
  %conv2.i152 = zext i16 %75 to i32
  %add.i10.i153 = add nuw nsw i32 %conv2.i152, -18874362
  %76 = inttoptr i32 %add.i10.i153 to ptr
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %76) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %temp = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 14
  %78 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %temp, align 1
  %79 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %80)
  %cmp49 = icmp ugt i8 %80, -81
  %conv52 = select i1 %cmp49, i8 51, i8 57
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %1, align 4
  %conv.i156 = zext i16 %82 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i157 = add nuw nsw i32 %conv.i156, -18874363
  %83 = inttoptr i32 %add.i.i157 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv52) #8, !srcloc !225
  %84 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %1, align 4
  %conv2.i158 = zext i16 %85 to i32
  %add.i10.i159 = add nuw nsw i32 %conv2.i158, -18874362
  %86 = inttoptr i32 %add.i10.i159 to ptr
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %temp_over = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 15
  %88 = ptrtoint ptr %temp_over to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %87, ptr %temp_over, align 2
  %89 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %90)
  %cmp57 = icmp ugt i8 %90, -81
  %conv60 = select i1 %cmp57, i8 52, i8 58
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %1, align 4
  %conv.i162 = zext i16 %92 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i163 = add nuw nsw i32 %conv.i162, -18874363
  %93 = inttoptr i32 %add.i.i163 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %conv60) #8, !srcloc !225
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %1, align 4
  %conv2.i164 = zext i16 %95 to i32
  %add.i10.i165 = add nuw nsw i32 %conv2.i164, -18874362
  %96 = inttoptr i32 %add.i10.i165 to ptr
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %96) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 16
  %98 = ptrtoint ptr %temp_hyst to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %97, ptr %temp_hyst, align 1
  br label %if.end

if.end:                                           ; preds = %if.then40, %for.cond19.preheader.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %1, align 4
  %conv.i168 = zext i16 %100 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i169 = add nuw nsw i32 %conv.i168, -18874363
  %101 = inttoptr i32 %add.i.i169 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 71) #8, !srcloc !225
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %1, align 4
  %conv2.i170 = zext i16 %103 to i32
  %add.i10.i171 = add nuw nsw i32 %conv2.i170, -18874362
  %104 = inttoptr i32 %add.i10.i171 to ptr
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %104) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %106 = lshr i8 %105, 4
  %conv64 = and i8 %106, 3
  %fan_div = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 17
  %107 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv64, ptr %fan_div, align 4
  %108 = lshr i8 %105, 6
  %arrayidx69 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 17, i32 1
  %109 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %108, ptr %arrayidx69, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %1, align 4
  %conv.i174 = zext i16 %111 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i175 = add nuw nsw i32 %conv.i174, -18874363
  %112 = inttoptr i32 %add.i.i175 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %112, i8 65) #8, !srcloc !225
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %1, align 4
  %conv2.i176 = zext i16 %114 to i32
  %add.i10.i177 = add nuw nsw i32 %conv2.i176, -18874362
  %115 = inttoptr i32 %add.i10.i177 to ptr
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %115) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %conv4.i178 = zext i8 %116 to i16
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %1, align 4
  %conv.i180 = zext i16 %118 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  tail call void @arm_heavy_mb() #8
  %add.i.i181 = add nuw nsw i32 %conv.i180, -18874363
  %119 = inttoptr i32 %add.i.i181 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 66) #8, !srcloc !225
  %120 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %1, align 4
  %conv2.i182 = zext i16 %121 to i32
  %add.i10.i183 = add nuw nsw i32 %conv2.i182, -18874362
  %122 = inttoptr i32 %add.i10.i183 to ptr
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %122) #8, !srcloc !226
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %conv4.i184 = zext i8 %123 to i16
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %shl = shl nuw i16 %conv4.i184, 8
  %or = or i16 %shl, %conv4.i178
  %alarms = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 18
  %124 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %or, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %125 = load volatile i32, ptr @jiffies, align 128
  %126 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %last_updated, align 4
  %valid74 = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 5
  %127 = ptrtoint ptr %valid74 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %valid74, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end, %lor.lhs.false.if.end75_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 4080) #8
  %add.i = add nuw nsw i32 %7, 8
  %div11.i = lshr i32 %add.i, 4
  %conv.i = trunc i32 %div11.i to i8
  %arrayidx = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 11, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %9 = shl i8 %.tr, 1
  %conv = add i8 %9, 44
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i17, -18874363
  %12 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #8, !srcloc !225
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i, -18874362
  %15 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 4080) #8
  %add.i = add nuw nsw i32 %7, 8
  %div11.i = lshr i32 %add.i, 4
  %conv.i = trunc i32 %div11.i to i8
  %arrayidx = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 10, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv.i, ptr %arrayidx, align 1
  %.tr = trunc i32 %3 to i8
  %9 = shl i8 %.tr, 1
  %conv = add i8 %9, 43
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i17 = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i17, -18874363
  %12 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv) #8, !srcloc !225
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i, -18874362
  %15 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.sis5595_data, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarms, align 2
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.42, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %cond.false6.i [
    i8 0, label %entry.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %cond.end9.fold.split.i
  ]

entry.FAN_FROM_REG.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

cond.false6.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1 = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 17, i32 %1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %6 to i32
  %conv.i = zext i8 %3 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

cond.end9.fold.split.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %cond.end9.fold.split.i, %cond.false6.i, %entry.FAN_FROM_REG.exit_crit_edge
  %cond10.i = phi i32 [ -1, %entry.FAN_FROM_REG.exit_crit_edge ], [ %div8.i, %cond.false6.i ], [ 0, %cond.end9.fold.split.i ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %cond10.i)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %3, label %cond.false6.i [
    i8 0, label %entry.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %cond.end9.fold.split.i
  ]

entry.FAN_FROM_REG.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

cond.false6.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx1 = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 17, i32 %1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  %conv = zext i8 %6 to i32
  %conv.i = zext i8 %3 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

cond.end9.fold.split.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %cond.end9.fold.split.i, %cond.false6.i, %entry.FAN_FROM_REG.exit_crit_edge
  %cond10.i = phi i32 [ -1, %entry.FAN_FROM_REG.exit_crit_edge ], [ %div8.i, %cond.false6.i ], [ 0, %cond.end9.fold.split.i ]
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %cond10.i)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 17, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 1350000
  br i1 %cmp1.i, label %if.end.i.FAN_TO_REG.exit_crit_edge, label %if.end3.i

if.end.i.FAN_TO_REG.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %6, %conv
  %div4.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div4.i, 1350000
  %div6.i = sdiv i32 %add.i, %mul.i
  %9 = call i32 @llvm.smax.i32(i32 %div6.i, i32 1) #8
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 254) #8
  %conv.i = trunc i32 %10 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end3.i, %if.end.i.FAN_TO_REG.exit_crit_edge, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end3.i ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ], [ 1, %if.end.i.FAN_TO_REG.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 13, i32 %3
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %12 = trunc i32 %3 to i8
  %conv4 = add i8 %12, 59
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i21 = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i21, -18874363
  %15 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv4) #8, !srcloc !225
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %17 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i, -18874362
  %18 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %retval.0.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.sis5595_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 13, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct.sis5595_data, ptr %1, i32 0, i32 17, i32 %3
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %6, label %cond.false6.i [
    i8 0, label %if.end.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %cond.end9.fold.split.i
  ]

if.end.FAN_FROM_REG.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

cond.false6.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %9 to i32
  %conv.i = zext i8 %6 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

cond.end9.fold.split.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %cond.end9.fold.split.i, %cond.false6.i, %if.end.FAN_FROM_REG.exit_crit_edge
  %cond10.i = phi i32 [ -1, %if.end.FAN_FROM_REG.exit_crit_edge ], [ %div8.i, %cond.false6.i ], [ 0, %cond.end9.fold.split.i ]
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i80 = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i80, -18874363
  %12 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 71) #8, !srcloc !225
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %14 to i32
  %add.i10.i = add nuw nsw i32 %conv2.i, -18874362
  %15 = inttoptr i32 %add.i10.i to ptr
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !226
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 8
  br i1 %19, label %switch.hole_check, label %FAN_FROM_REG.exit.do.end_crit_edge

FAN_FROM_REG.exit.do.end_crit_edge:               ; preds = %FAN_FROM_REG.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %FAN_FROM_REG.exit.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %18) #11
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %FAN_FROM_REG.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %20 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %switch.lobit.not = icmp eq i8 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %21 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %21)
  %switch.load = load i8, ptr %switch.gep, align 1
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %switch.load, ptr %arrayidx2, align 1
  %23 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %3, label %switch.lookup.sw.epilog29_crit_edge [
    i32 0, label %switch.lookup.sw.epilog29.sink.split_crit_edge
    i32 1, label %sw.bb22
  ]

switch.lookup.sw.epilog29.sink.split_crit_edge:   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split

switch.lookup.sw.epilog29_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29

sw.bb22:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog29.sink.split

sw.epilog29.sink.split:                           ; preds = %sw.bb22, %switch.lookup.sw.epilog29.sink.split_crit_edge
  %.sink94 = phi i8 [ 63, %sw.bb22 ], [ -49, %switch.lookup.sw.epilog29.sink.split_crit_edge ]
  %.sink93 = phi i8 [ 6, %sw.bb22 ], [ 4, %switch.lookup.sw.epilog29.sink.split_crit_edge ]
  %and23 = and i8 %16, %.sink94
  %24 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2, align 1
  %shl27 = shl i8 %25, %.sink93
  %or28 = or i8 %shl27, %and23
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.epilog29.sink.split, %switch.lookup.sw.epilog29_crit_edge
  %reg.0 = phi i8 [ %16, %switch.lookup.sw.epilog29_crit_edge ], [ %or28, %sw.epilog29.sink.split ]
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %1, align 4
  %conv.i82 = zext i16 %27 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i83 = add nuw nsw i32 %conv.i82, -18874363
  %28 = inttoptr i32 %add.i.i83 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 71) #8, !srcloc !225
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %1, align 4
  %conv2.i84 = zext i16 %30 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i84, -18874362
  %31 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %reg.0) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cond10.i)
  %cmp.i = icmp slt i32 %cond10.i, 1
  br i1 %cmp.i, label %sw.epilog29.FAN_TO_REG.exit_crit_edge, label %if.end3.i

sw.epilog29.FAN_TO_REG.exit_crit_edge:            ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end3.i:                                        ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx2, align 1
  %conv33 = zext i8 %33 to i32
  %mul.i85 = shl i32 %cond10.i, %conv33
  %div4.i = sdiv i32 %mul.i85, 2
  %add.i = add nsw i32 %div4.i, 1350000
  %div6.i = sdiv i32 %add.i, %mul.i85
  %34 = call i32 @llvm.smax.i32(i32 %div6.i, i32 1) #8
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 254) #8
  %conv.i86 = trunc i32 %35 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end3.i, %sw.epilog29.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i86, %if.end3.i ], [ -1, %sw.epilog29.FAN_TO_REG.exit_crit_edge ]
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %37 = trunc i32 %3 to i8
  %conv38 = add i8 %37, 59
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv.i88 = zext i16 %39 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i89 = add nuw nsw i32 %conv.i88, -18874363
  %40 = inttoptr i32 %add.i.i89 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %40, i8 %conv38) #8, !srcloc !225
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %1, align 4
  %conv2.i90 = zext i16 %42 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i91 = add nuw nsw i32 %conv2.i90, -18874362
  %43 = inttoptr i32 %add.i9.i91 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %retval.0.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %FAN_TO_REG.exit, %do.end
  %retval.0.ph = phi i32 [ %count, %FAN_TO_REG.exit ], [ -22, %do.end ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.sis5595_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %name = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.67, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %temp = getelementptr inbounds %struct.sis5595_data, ptr %call, i32 0, i32 14
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp, align 1
  %conv.i = sext i8 %1 to i32
  %mul.i = mul nsw i32 %conv.i, 830
  %add.i = add nsw i32 %mul.i, 52120
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %add.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %temp_over = getelementptr inbounds %struct.sis5595_data, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %temp_over to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_over, align 2
  %conv.i = sext i8 %1 to i32
  %mul.i = mul nsw i32 %conv.i, 830
  %add.i = add nsw i32 %mul.i, 52120
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %add.i)
  ret i32 %call2
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
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -54120) #8
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 157530) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.i = icmp slt i32 %6, 0
  %cond14.in.v.i = select i1 %cmp7.i, i32 -5627, i32 -4797
  %cond14.in.i = add nsw i32 %cond14.in.v.i, %6
  %cond14.i = sdiv i32 %cond14.in.i, 830
  %conv.i = trunc i32 %cond14.i to i8
  %temp_over = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %temp_over to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %temp_over, align 2
  %revision = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %9)
  %cmp = icmp ugt i8 %9, -81
  %conv4 = select i1 %cmp, i8 51, i8 57
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i15 = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i15, -18874363
  %12 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4) #8, !srcloc !225
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i, -18874362
  %15 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
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
define internal i32 @temp1_max_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sis5595_update_device(ptr noundef %dev)
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %temp_hyst to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_hyst, align 1
  %conv.i = sext i8 %1 to i32
  %mul.i = mul nsw i32 %conv.i, 830
  %add.i = add nsw i32 %mul.i, 52120
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %add.i)
  ret i32 %call2
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
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -54120) #8
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 157530) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7.i = icmp slt i32 %6, 0
  %cond14.in.v.i = select i1 %cmp7.i, i32 -5627, i32 -4797
  %cond14.in.i = add nsw i32 %cond14.in.v.i, %6
  %cond14.i = sdiv i32 %cond14.in.i, 830
  %conv.i = trunc i32 %cond14.i to i8
  %temp_hyst = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %temp_hyst to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %temp_hyst, align 1
  %revision = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -81, i8 %9)
  %cmp = icmp ugt i8 %9, -81
  %conv4 = select i1 %cmp, i8 52, i8 58
  %lock.i = getelementptr inbounds %struct.sis5595_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %1, align 4
  %conv.i15 = zext i16 %11 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i.i = add nuw nsw i32 %conv.i15, -18874363
  %12 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 %conv4) #8, !srcloc !225
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv2.i = zext i16 %14 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !224
  call void @arm_heavy_mb() #8
  %add.i9.i = add nuw nsw i32 %conv2.i, -18874362
  %15 = inttoptr i32 %add.i9.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv.i) #8, !srcloc !225
  call void @mutex_unlock(ptr noundef %lock.i) #8
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
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 120)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !85, !87, !88, !90, !92, !94, !95, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !183, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !201, !203, !204, !206, !207, !209, !210, !212}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__param_force_addr, !1, !"__param_force_addr", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sis5595.c", i32 62, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_addrtype236, !1, !"__UNIQUE_ID_force_addrtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_addr237, !4, !"__UNIQUE_ID_force_addr237", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sis5595.c", i32 63, i32 1}
!5 = !{ptr @__UNIQUE_ID_author251, !6, !"__UNIQUE_ID_author251", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sis5595.c", i32 910, i32 1}
!7 = !{ptr @__UNIQUE_ID_description252, !8, !"__UNIQUE_ID_description252", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sis5595.c", i32 911, i32 1}
!9 = !{ptr @__UNIQUE_ID_file253, !10, !"__UNIQUE_ID_file253", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/sis5595.c", i32 912, i32 1}
!11 = !{ptr @__UNIQUE_ID_license254, !10, !"__UNIQUE_ID_license254", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_sis5595__255_914_sm_sis5595_init6, !13, !"__initcall__kmod_sis5595__255_914_sm_sis5595_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sis5595.c", i32 914, i32 1}
!14 = !{ptr @__exitcall_sm_sis5595_exit, !15, !"__exitcall_sm_sis5595_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sis5595.c", i32 915, i32 1}
!16 = !{ptr @force_addr, !17, !"force_addr", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/sis5595.c", i32 61, i32 12}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/sis5595.c", i32 66, i32 32}
!20 = !{ptr @s_bridge, !21, !"s_bridge", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/sis5595.c", i32 192, i32 24}
!22 = !{ptr @__param_str_force_addr, !1, !"__param_str_force_addr", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/sis5595.c", i32 889, i32 21}
!25 = !{ptr @sis5595_pci_driver, !26, !"sis5595_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/sis5595.c", i32 888, i32 26}
!27 = !{ptr @sis5595_pci_ids, !28, !"sis5595_pci_ids", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/sis5595.c", i32 739, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/sis5595.c", i32 814, i32 4}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @sis5595_pci_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @sis5595_pci_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/sis5595.c", i32 824, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sis5595_pci_probe._entry.6, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @sis5595_pci_probe._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/sis5595.c", i32 830, i32 3}
!44 = !{ptr @sis5595_pci_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sis5595_pci_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/sis5595.c", i32 836, i32 3}
!48 = !{ptr @sis5595_pci_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sis5595_pci_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/sis5595.c", i32 842, i32 3}
!52 = !{ptr @sis5595_pci_probe._entry.16, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @sis5595_pci_probe._entry_ptr.18, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/sis5595.c", i32 848, i32 3}
!56 = !{ptr @sis5595_pci_probe._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sis5595_pci_probe._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/sis5595.c", i32 859, i32 4}
!60 = !{ptr @sis5595_pci_probe._entry.22, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sis5595_pci_probe._entry_ptr.24, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/sis5595.c", i32 865, i32 3}
!64 = !{ptr @sis5595_pci_probe.__UNIQUE_ID_ddebug250, !63, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!65 = !{ptr @blacklist, !66, !"blacklist", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/sis5595.c", i32 746, i32 12}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/sis5595.c", i32 779, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sis5595_device_add._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sis5595_device_add._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/sis5595.c", i32 785, i32 3}
!74 = !{ptr @sis5595_device_add._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sis5595_device_add._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/sis5595.c", i32 791, i32 3}
!78 = !{ptr @sis5595_device_add._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @sis5595_device_add._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @sis5595_driver, !81, !"sis5595_driver", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/sis5595.c", i32 202, i32 31}
!82 = !{ptr @sis5595_probe.__key, !83, !"__key", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/sis5595.c", i32 591, i32 2}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sis5595_probe.__key.35, !86, !"__key", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/sis5595.c", i32 592, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @sis5595_group, !89, !"sis5595_group", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/sis5595.c", i32 543, i32 37}
!90 = !{ptr @sis5595_attributes, !91, !"sis5595_attributes", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/sis5595.c", i32 511, i32 26}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/sis5595.c", i32 278, i32 8}
!94 = !{ptr @sensor_dev_attr_in0_input, !93, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/sis5595.c", i32 217, i32 22}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/sis5595.c", i32 279, i32 8}
!99 = !{ptr @sensor_dev_attr_in0_min, !98, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/sis5595.c", i32 280, i32 8}
!102 = !{ptr @sensor_dev_attr_in0_max, !101, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!103 = !{ptr @.str.41, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/sis5595.c", i32 494, i32 8}
!105 = !{ptr @sensor_dev_attr_in0_alarm, !104, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/sis5595.c", i32 492, i32 22}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/sis5595.c", i32 281, i32 8}
!110 = !{ptr @sensor_dev_attr_in1_input, !109, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/sis5595.c", i32 282, i32 8}
!113 = !{ptr @sensor_dev_attr_in1_min, !112, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/sis5595.c", i32 283, i32 8}
!116 = !{ptr @sensor_dev_attr_in1_max, !115, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/sis5595.c", i32 495, i32 8}
!119 = !{ptr @sensor_dev_attr_in1_alarm, !118, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!120 = !{ptr @.str.47, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/sis5595.c", i32 284, i32 8}
!122 = !{ptr @sensor_dev_attr_in2_input, !121, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/sis5595.c", i32 285, i32 8}
!125 = !{ptr @sensor_dev_attr_in2_min, !124, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/sis5595.c", i32 286, i32 8}
!128 = !{ptr @sensor_dev_attr_in2_max, !127, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!129 = !{ptr @.str.50, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/sis5595.c", i32 496, i32 8}
!131 = !{ptr @sensor_dev_attr_in2_alarm, !130, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/sis5595.c", i32 287, i32 8}
!134 = !{ptr @sensor_dev_attr_in3_input, !133, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/sis5595.c", i32 288, i32 8}
!137 = !{ptr @sensor_dev_attr_in3_min, !136, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!138 = !{ptr @.str.53, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/sis5595.c", i32 289, i32 8}
!140 = !{ptr @sensor_dev_attr_in3_max, !139, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!141 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/sis5595.c", i32 497, i32 8}
!143 = !{ptr @sensor_dev_attr_in3_alarm, !142, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/sis5595.c", i32 471, i32 8}
!146 = !{ptr @sensor_dev_attr_fan1_input, !145, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!147 = !{ptr @.str.56, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/sis5595.c", i32 472, i32 8}
!149 = !{ptr @sensor_dev_attr_fan1_min, !148, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/sis5595.c", i32 473, i32 8}
!152 = !{ptr @sensor_dev_attr_fan1_div, !151, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/sis5595.c", i32 448, i32 3}
!155 = !{ptr @.str.59, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @fan_div_store._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @fan_div_store._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.60, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/sis5595.c", i32 499, i32 8}
!160 = !{ptr @sensor_dev_attr_fan1_alarm, !159, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!161 = !{ptr @.str.61, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/sis5595.c", i32 474, i32 8}
!163 = !{ptr @sensor_dev_attr_fan2_input, !162, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!164 = !{ptr @.str.62, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/sis5595.c", i32 475, i32 8}
!166 = !{ptr @sensor_dev_attr_fan2_min, !165, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/sis5595.c", i32 476, i32 8}
!169 = !{ptr @sensor_dev_attr_fan2_div, !168, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!170 = !{ptr @.str.64, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/sis5595.c", i32 500, i32 8}
!172 = !{ptr @sensor_dev_attr_fan2_alarm, !171, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!173 = !{ptr @.str.65, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/sis5595.c", i32 485, i32 8}
!175 = !{ptr @dev_attr_alarms, !174, !"dev_attr_alarms", i1 false, i1 false}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/sis5595.c", i32 509, i32 8}
!178 = !{ptr @dev_attr_name, !177, !"dev_attr_name", i1 false, i1 false}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/sis5595.c", i32 507, i32 22}
!181 = !{ptr @sis5595_group_in4, !182, !"sis5595_group_in4", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/sis5595.c", i32 555, i32 37}
!183 = !{ptr @sis5595_attributes_in4, !184, !"sis5595_attributes_in4", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/sis5595.c", i32 547, i32 26}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/sis5595.c", i32 290, i32 8}
!187 = !{ptr @sensor_dev_attr_in4_input, !186, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/sis5595.c", i32 291, i32 8}
!190 = !{ptr @sensor_dev_attr_in4_min, !189, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/sis5595.c", i32 292, i32 8}
!193 = !{ptr @sensor_dev_attr_in4_max, !192, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/sis5595.c", i32 498, i32 8}
!196 = !{ptr @sensor_dev_attr_in4_alarm, !195, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!197 = !{ptr @sis5595_group_temp1, !198, !"sis5595_group_temp1", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/sis5595.c", i32 567, i32 37}
!199 = !{ptr @sis5595_attributes_temp1, !200, !"sis5595_attributes_temp1", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/sis5595.c", i32 559, i32 26}
!201 = !{ptr @.str.72, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/sis5595.c", i32 354, i32 8}
!203 = !{ptr @dev_attr_temp1_input, !202, !"dev_attr_temp1_input", i1 false, i1 false}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/sis5595.c", i32 355, i32 8}
!206 = !{ptr @dev_attr_temp1_max, !205, !"dev_attr_temp1_max", i1 false, i1 false}
!207 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/sis5595.c", i32 356, i32 8}
!209 = !{ptr @dev_attr_temp1_max_hyst, !208, !"dev_attr_temp1_max_hyst", i1 false, i1 false}
!210 = !{ptr @.str.75, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/sis5595.c", i32 501, i32 8}
!212 = !{ptr @sensor_dev_attr_temp1_alarm, !211, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
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
!223 = !{i64 2148976667, i64 2148976672, i64 2148976685, i64 2148976729, i64 2148976763, i64 2148976784}
!224 = !{i64 2152931282}
!225 = !{i64 5395226}
!226 = !{i64 5395621}
!227 = !{i64 2152929297}
!228 = !{i8 0, i8 2}
