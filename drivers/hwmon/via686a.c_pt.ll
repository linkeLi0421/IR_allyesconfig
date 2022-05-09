; ModuleID = '/llk/IR_all_yes/drivers/hwmon/via686a.c_pt.bc'
source_filename = "../drivers/hwmon/via686a.c"
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
%struct.via686a_data = type { i16, ptr, ptr, %struct.mutex, i8, i32, [5 x i8], [5 x i8], [5 x i8], [2 x i8], [2 x i8], [3 x i16], [3 x i8], [3 x i8], [2 x i8], i16 }

@__param_str_force_addr = internal constant [19 x i8] c"via686a.force_addr\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_addr = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_addr = internal constant %struct.kernel_param { ptr @__param_str_force_addr, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.65 { ptr @force_addr } }, section "__param", align 4
@__UNIQUE_ID_force_addrtype236 = internal constant [35 x i8] c"via686a.parmtype=force_addr:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_addr237 = internal constant [67 x i8] c"via686a.parm=force_addr:Initialize the base address of the sensors\00", section ".modinfo", align 1
@via686a_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str, ptr @via686a_pci_ids, ptr @via686a_pci_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@s_bridge = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@via686a_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @via686a_probe, ptr @via686a_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author262 = internal constant [128 x i8] c"via686a.author=Ky\C3\B6sti M\C3\A4lkki <kmalkki@cc.hut.fi>, Mark Studebaker <mdsxyz123@yahoo.com> and Bob Dougherty <bobd@stanford.edu>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [43 x i8] c"via686a.description=VIA 686A Sensor device\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [35 x i8] c"via686a.file=drivers/hwmon/via686a\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [20 x i8] c"via686a.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_via686a__266_948_sm_via686a_init6 = internal global ptr @sm_via686a_init, section ".initcall6.init", align 4
@__exitcall_sm_via686a_exit = internal global ptr @sm_via686a_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"via686a\00", [24 x i8] zeroinitializer }, align 32
@via686a_pci_ids = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12375, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@via686a_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 865, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Forcing ISA address 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"via686a_pci_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/via686a.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@via686a_pci_probe._entry_ptr = internal global ptr @via686a_pci_probe._entry, section ".printk_index", align 4
@via686a_pci_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 877, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"base address not set - upgrade BIOS or use force_addr=0xaddr\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@via686a_pci_probe._entry_ptr.9 = internal global ptr @via686a_pci_probe._entry.6, section ".printk_index", align 4
@via686a_pci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Sensors disabled, enable with force_addr=0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@via686a_pci_probe._entry_ptr.12 = internal global ptr @via686a_pci_probe._entry.10, section ".printk_index", align 4
@via686a_pci_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 892, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Enabling sensors\0A\00", [46 x i8] zeroinitializer }, align 32
@via686a_pci_probe._entry_ptr.15 = internal global ptr @via686a_pci_probe._entry.13, section ".printk_index", align 4
@via686a_device_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 834, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013via686a: Device allocation failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"via686a_device_add\00", [45 x i8] zeroinitializer }, align 32
@via686a_device_add._entry_ptr = internal global ptr @via686a_device_add._entry, section ".printk_index", align 4
@via686a_device_add._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 840, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013via686a: Device resource addition failed (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@via686a_device_add._entry_ptr.20 = internal global ptr @via686a_device_add._entry.18, section ".printk_index", align 4
@via686a_device_add._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.3, i32 846, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013via686a: Device addition failed (%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@via686a_device_add._entry_ptr.23 = internal global ptr @via686a_device_add._entry.21, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@via686a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 677, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Region 0x%lx-0x%lx already in use!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"via686a_probe\00", [18 x i8] zeroinitializer }, align 32
@via686a_probe._entry_ptr = internal global ptr @via686a_probe._entry, section ".printk_index", align 4
@via686a_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@via686a_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @via686a_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@via686a_attributes = internal global { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_over_show, ptr @temp_over_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_over_show, ptr @temp_over_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_over_show, ptr @temp_over_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_hyst_show, ptr @temp_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_hyst_show, ptr @temp_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_hyst_show, ptr @temp_hyst_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_name = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@VIA686A_REG_TEMP_OVER = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9=\1D", [29 x i8] zeroinitializer }, align 32
@VIA686A_REG_TEMP_HYST = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":>\1E", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@temp_lut = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 -709, i16 -688, i16 -667, i16 -646, i16 -627, i16 -607, i16 -589, i16 -570, i16 -553, i16 -536, i16 -519, i16 -503, i16 -487, i16 -471, i16 -456, i16 -442, i16 -428, i16 -414, i16 -400, i16 -387, i16 -375, i16 -362, i16 -350, i16 -339, i16 -327, i16 -316, i16 -305, i16 -295, i16 -285, i16 -275, i16 -265, i16 -255, i16 -246, i16 -237, i16 -229, i16 -220, i16 -212, i16 -204, i16 -196, i16 -188, i16 -180, i16 -173, i16 -166, i16 -159, i16 -152, i16 -145, i16 -139, i16 -132, i16 -126, i16 -120, i16 -114, i16 -108, i16 -102, i16 -96, i16 -91, i16 -85, i16 -80, i16 -74, i16 -69, i16 -64, i16 -59, i16 -54, i16 -49, i16 -44, i16 -39, i16 -34, i16 -29, i16 -25, i16 -20, i16 -15, i16 -11, i16 -6, i16 -2, i16 3, i16 7, i16 12, i16 16, i16 20, i16 25, i16 29, i16 33, i16 37, i16 42, i16 46, i16 50, i16 54, i16 59, i16 63, i16 67, i16 71, i16 75, i16 79, i16 84, i16 88, i16 92, i16 96, i16 100, i16 104, i16 109, i16 113, i16 117, i16 121, i16 125, i16 130, i16 134, i16 138, i16 142, i16 146, i16 151, i16 155, i16 159, i16 163, i16 168, i16 172, i16 176, i16 181, i16 185, i16 189, i16 193, i16 198, i16 202, i16 206, i16 211, i16 215, i16 219, i16 224, i16 228, i16 232, i16 237, i16 241, i16 245, i16 250, i16 254, i16 259, i16 263, i16 267, i16 272, i16 276, i16 281, i16 285, i16 290, i16 294, i16 299, i16 303, i16 307, i16 312, i16 316, i16 321, i16 325, i16 330, i16 334, i16 339, i16 344, i16 348, i16 353, i16 357, i16 362, i16 366, i16 371, i16 376, i16 380, i16 385, i16 390, i16 395, i16 399, i16 404, i16 409, i16 414, i16 419, i16 423, i16 428, i16 433, i16 438, i16 443, i16 449, i16 454, i16 459, i16 464, i16 469, i16 475, i16 480, i16 486, i16 491, i16 497, i16 502, i16 508, i16 514, i16 520, i16 526, i16 532, i16 538, i16 544, i16 551, i16 557, i16 564, i16 571, i16 578, i16 584, i16 592, i16 599, i16 606, i16 614, i16 621, i16 629, i16 637, i16 645, i16 654, i16 662, i16 671, i16 680, i16 689, i16 698, i16 708, i16 718, i16 728, i16 738, i16 749, i16 759, i16 770, i16 782, i16 793, i16 805, i16 818, i16 830, i16 843, i16 856, i16 870, i16 883, i16 898, i16 912, i16 927, i16 943, i16 958, i16 975, i16 991, i16 1008, i16 1026, i16 1044, i16 1062, i16 1081, i16 1101, i16 1121, i16 1141, i16 1162, i16 1184, i16 1206, i16 1229, i16 1252, i16 1276, i16 1301, i16 1326, i16 1352, i16 1378, i16 1406, i16 1434, i16 1462], [128 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@via_lut = internal constant { [161 x i8], [63 x i8] } { [161 x i8] c"\0C\0C\0D\0E\0E\0F\10\10\11\12\12\13\14\14\15\16\17\17\18\19\1A\1B\1C\1D\1E\1F !#$%'()+-.013579;<>@BEGIKMORTVX[]_bdgiknpsuwz|~\81\83\86\88\8A\8C\8F\91\93\96\98\9A\9C\9E\A0\A2\A4\A6\A8\AA\AC\AE\B0\B2\B4\B6\B7\B9\BB\BC\BE\C0\C1\C3\C4\C6\C7\C8\CA\CB\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DE\DF\E0\E1\E2\E2\E3\E4\E4\E5\E6\E6\E7\E8\E8\E9\E9\EA\EB\EB\EC\EC\ED\ED\EE\EE\EF\EF\F0", [63 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"force_addr\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 41, i32 23 }
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"via686a_pci_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 920, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [9 x i8] c"s_bridge\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 322, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 46, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [15 x i8] c"via686a_driver\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 657, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 921, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [16 x i8] c"via686a_pci_ids\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 811, i32 35 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 865, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 876, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 886, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 892, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 834, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 840, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 846, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 676, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 689, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant [14 x i8] c"via686a_group\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 653, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"via686a_attributes\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 604, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [14 x i8] c"dev_attr_name\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 407, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 349, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant [22 x i8] c"VIA686A_REG_TEMP_OVER\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 72, i32 17 }
@___asan_gen_.317 = private unnamed_addr constant [22 x i8] c"VIA686A_REG_TEMP_HYST\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 73, i32 17 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 410, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 413, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 416, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 419, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 408, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 411, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 414, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 417, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 420, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 409, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 412, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 415, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 418, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 421, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 585, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 583, i32 22 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 586, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 587, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 588, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 589, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 486, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant [9 x i8] c"temp_lut\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 202, i32 18 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 489, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 492, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 487, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant [8 x i8] c"via_lut\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 250, i32 17 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 490, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 493, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 488, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 491, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 494, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 590, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 591, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 592, i32 8 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 561, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 502, i32 22 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 564, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 562, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 565, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 563, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 566, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 593, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 594, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 576, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 602, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.456 = private constant [27 x i8] c"../drivers/hwmon/via686a.c\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.456, i32 600, i32 22 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_force_addr237, ptr @__UNIQUE_ID_force_addrtype236, ptr @__UNIQUE_ID_license265, ptr @__exitcall_sm_via686a_exit, ptr @__initcall__kmod_via686a__266_948_sm_via686a_init6, ptr @__param_force_addr, ptr @sm_via686a_exit, ptr @via686a_device_add._entry, ptr @via686a_device_add._entry.18, ptr @via686a_device_add._entry.21, ptr @via686a_device_add._entry_ptr, ptr @via686a_device_add._entry_ptr.20, ptr @via686a_device_add._entry_ptr.23, ptr @via686a_pci_probe._entry, ptr @via686a_pci_probe._entry.10, ptr @via686a_pci_probe._entry.13, ptr @via686a_pci_probe._entry.6, ptr @via686a_pci_probe._entry_ptr, ptr @via686a_pci_probe._entry_ptr.12, ptr @via686a_pci_probe._entry_ptr.15, ptr @via686a_pci_probe._entry_ptr.9, ptr @via686a_probe._entry, ptr @via686a_probe._entry_ptr, ptr @force_addr, ptr @via686a_pci_driver, ptr @s_bridge, ptr @pdev, ptr @via686a_driver, ptr @.str, ptr @via686a_pci_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @via686a_probe.__key, ptr @.str.26, ptr @via686a_group, ptr @via686a_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @dev_attr_alarms, ptr @dev_attr_name, ptr @.str.27, ptr @.str.28, ptr @VIA686A_REG_TEMP_OVER, ptr @VIA686A_REG_TEMP_HYST, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @temp_lut, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @via_lut, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_addr to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s_bridge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_ids to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_pci_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_device_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_device_add._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_device_add._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via686a_attributes to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_name to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VIA686A_REG_TEMP_OVER to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VIA686A_REG_TEMP_HYST to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_lut to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_lut to i32), i32 161, i32 224, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sm_via686a_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @pci_unregister_driver(ptr noundef nonnull @via686a_pci_driver) #8
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
  tail call void @platform_driver_unregister(ptr noundef nonnull @via686a_driver) #8
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
define internal i32 @sm_via686a_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @via686a_pci_driver, ptr noundef null, ptr noundef nonnull @.str) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via686a_pci_probe(ptr noundef %dev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %val = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %val, align 2, !annotation !230
  %1 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %2 = and i16 %1, -128
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  %conv3 = zext i16 %2 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.1, i32 noundef %conv3) #11
  %or = or i16 %2, 1
  %call = tail call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 112, i16 noundef zeroext %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.then.if.end8_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %entry.if.end8_crit_edge
  %call9 = call i32 @pci_read_config_word(ptr noundef %dev, i32 noundef 112, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %val, align 2
  %5 = and i16 %4, -128
  %conv17 = zext i16 %5 to i32
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27.not = icmp eq i32 %call26, 0
  br i1 %cmp27.not, label %if.end30, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %val, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool33.not = icmp eq i16 %8, 0
  br i1 %tobool33.not, label %if.then34, label %if.end30.if.end55_crit_edge

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then34:                                        ; preds = %if.end30
  %9 = load i16, ptr @force_addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool35.not = icmp eq i16 %9, 0
  %dev40 = getelementptr inbounds %struct.pci_dev, ptr %dev, i32 0, i32 44
  br i1 %tobool35.not, label %do.end39, label %do.end45

do.end39:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40, ptr noundef nonnull @.str.11, i32 noundef %conv17) #11
  br label %cleanup

do.end45:                                         ; preds = %if.then34
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev40, ptr noundef nonnull @.str.14) #11
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %val, align 2
  %12 = or i16 %11, 1
  %call50 = call i32 @pci_write_config_word(ptr noundef %dev, i32 noundef 116, i16 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51.not = icmp eq i32 %call50, 0
  br i1 %cmp51.not, label %do.end45.if.end55_crit_edge, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end45.if.end55_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.end55:                                         ; preds = %do.end45.if.end55_crit_edge, %if.end30.if.end55_crit_edge
  %call56 = call i32 @__platform_driver_register(ptr noundef nonnull @via686a_driver, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.cleanup_crit_edge

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #8
  %13 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %14 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 2
  %15 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 3
  %16 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 4
  %17 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv17, ptr %res.i, align 4
  %sub.i = or i32 %conv17, 127
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %13, align 4
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str, ptr %14, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %15, align 4
  %21 = call ptr @memset(ptr %16, i32 0, i32 16)
  %call3.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef %conv17) #8
  store ptr %call3.i, ptr @pdev, align 4
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #11
  br label %exit_unregister

if.end7.i:                                        ; preds = %if.end59
  %call8.i = call i32 @platform_device_add_resources(ptr noundef nonnull %call3.i, ptr noundef nonnull %res.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end16.i, label %do.end13.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call8.i) #11
  br label %exit_device_put.i

if.end16.i:                                       ; preds = %if.end7.i
  %22 = load ptr, ptr @pdev, align 4
  %call17.i = call i32 @platform_device_add(ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end63, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %call24.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %call17.i) #11
  br label %exit_device_put.i

exit_device_put.i:                                ; preds = %do.end22.i, %do.end13.i
  %23 = load ptr, ptr @pdev, align 4
  call void @platform_device_put(ptr noundef %23) #8
  br label %exit_unregister

if.end63:                                         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  %call64 = call ptr @pci_dev_get(ptr noundef %dev) #8
  store ptr %call64, ptr @s_bridge, align 4
  br label %cleanup

exit_unregister:                                  ; preds = %exit_device_put.i, %if.then5.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #8
  call void @platform_driver_unregister(ptr noundef nonnull @via686a_driver) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_unregister, %if.end63, %if.end55.cleanup_crit_edge, %do.end45.cleanup_crit_edge, %do.end39, %if.end25.cleanup_crit_edge, %do.end23, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
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
define internal i32 @via686a_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %2 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @via686a_driver, i32 0, i32 5), align 4
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %4, i32 noundef %6) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #8
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
  %name = getelementptr inbounds %struct.via686a_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str, ptr %name, align 4
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @via686a_probe.__key) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %call.i, align 4
  %conv.i.i = zext i16 %13 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, -18874304
  %14 = inttoptr i32 %add.i.i.i to ptr
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %14) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %16 = and i8 %15, 126
  %conv2.i = or i8 %16, 1
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %call.i, align 4
  %conv.i14.i = zext i16 %18 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %add.i.i16.i = add nuw nsw i32 %conv.i14.i, -18874304
  %19 = inttoptr i32 %add.i.i16.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %conv2.i) #8, !srcloc !234
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %call.i, align 4
  %conv.i17.i = zext i16 %21 to i32
  %add.i.i19.i = add nuw nsw i32 %conv.i17.i, -18874293
  %22 = inttoptr i32 %add.i.i19.i to ptr
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %22) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %conv8.i = and i8 %23, -64
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %call.i, align 4
  %conv.i21.i = zext i16 %25 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @arm_heavy_mb() #8
  %add.i.i23.i = add nuw nsw i32 %conv.i21.i, -18874293
  %26 = inttoptr i32 %add.i.i23.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %26, i8 %conv8.i) #8, !srcloc !234
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %call.i, align 4
  %conv.i.i.i = zext i16 %28 to i32
  %add.i.i.i.i = add nuw nsw i32 %conv.i.i.i, -18874297
  %29 = inttoptr i32 %add.i.i.i.i to ptr
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %29) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %31 = lshr i8 %30, 4
  %conv.i24.i = and i8 %31, 3
  %fan_div.i.i = getelementptr inbounds %struct.via686a_data, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %fan_div.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i24.i, ptr %fan_div.i.i, align 4
  %33 = lshr i8 %30, 6
  %arrayidx4.i.i = getelementptr %struct.via686a_data, ptr %call.i, i32 0, i32 14, i32 1
  %34 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx4.i.i, align 1
  %call14 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @via686a_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end8
  %call19 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %hwmon_dev = getelementptr inbounds %struct.via686a_data, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call19, ptr %hwmon_dev, align 4
  %cmp.i = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call19 to i32
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @via686a_group) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end17.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %36, %if.then22 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call14, %if.end8.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via686a_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @via686a_group) #8
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
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp slt i32 %1, 2
  br i1 %cmp.i, label %entry.IN_FROM_REG.exit_crit_edge, label %if.else.i

entry.IN_FROM_REG.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else.i:                                        ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.else19.i [
    i32 2, label %if.else.i.IN_FROM_REG.exit_crit_edge
    i32 3, label %if.then13.i
  ]

if.else.i.IN_FROM_REG.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

IN_FROM_REG.exit:                                 ; preds = %if.else19.i, %if.then13.i, %if.else.i.IN_FROM_REG.exit_crit_edge, %entry.IN_FROM_REG.exit_crit_edge
  %.sink31.i = phi i32 [ 2500000, %if.else19.i ], [ 250000, %if.then13.i ], [ 250000, %entry.IN_FROM_REG.exit_crit_edge ], [ 250000, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink30.i = phi i32 [ 13320857, %if.else19.i ], [ 1335054, %if.then13.i ], [ 1340512, %entry.IN_FROM_REG.exit_crit_edge ], [ 1337868, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink.i = phi i32 [ 41714, %if.else19.i ], [ 10108, %if.then13.i ], [ 21024, %entry.IN_FROM_REG.exit_crit_edge ], [ 15737, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %conv20.i = zext i8 %3 to i32
  %mul21.i = mul nuw nsw i32 %.sink31.i, %conv20.i
  %add23.i = add nuw nsw i32 %mul21.i, %.sink30.i
  %div24.i = udiv i32 %add23.i, %.sink.i
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %div24.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @via686a_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.for.body.preheader_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0193 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %conv = add nuw nsw i32 %i.0193, 34
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  %conv.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv, %conv.i
  %add.i.i = or i32 %add.i, -18874368
  %9 = inttoptr i32 %add.i.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 6, i32 %i.0193
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx, align 1
  %i.0.tr = trunc i32 %i.0193 to i8
  %12 = shl i8 %i.0.tr, 1
  %conv7 = add i8 %12, 44
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %1, align 4
  %conv.i137 = zext i16 %14 to i32
  %conv1.i138 = zext i8 %conv7 to i32
  %add.i139 = add nuw nsw i32 %conv.i137, %conv1.i138
  %add.i.i140 = or i32 %add.i139, -18874368
  %15 = inttoptr i32 %add.i.i140 to ptr
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %15) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx10 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 8, i32 %i.0193
  %17 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %arrayidx10, align 1
  %conv13 = add i8 %12, 43
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv.i142 = zext i16 %19 to i32
  %conv1.i143 = zext i8 %conv13 to i32
  %add.i144 = add nuw nsw i32 %conv.i142, %conv1.i143
  %add.i.i145 = or i32 %add.i144, -18874368
  %20 = inttoptr i32 %add.i.i145 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx16 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 7, i32 %i.0193
  %22 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx16, align 1
  %inc = add nuw nsw i32 %i.0193, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.body20.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body20.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 4
  %conv.i147 = zext i16 %24 to i32
  %add.i149 = add nuw nsw i32 %conv.i147, 41
  %add.i.i150 = or i32 %add.i149, -18874368
  %25 = inttoptr i32 %add.i.i150 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx26 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 9, i32 0
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx26, align 1
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %1, align 4
  %conv.i152 = zext i16 %29 to i32
  %add.i154 = add nuw nsw i32 %conv.i152, 59
  %add.i.i155 = or i32 %add.i154, -18874368
  %30 = inttoptr i32 %add.i.i155 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx32 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 10, i32 0
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx32, align 1
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %1, align 4
  %conv.i147.1 = zext i16 %34 to i32
  %add.i149.1 = add nuw nsw i32 %conv.i147.1, 42
  %add.i.i150.1 = or i32 %add.i149.1, -18874368
  %35 = inttoptr i32 %add.i.i150.1 to ptr
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %35) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx26.1 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx26.1, align 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %1, align 4
  %conv.i152.1 = zext i16 %39 to i32
  %add.i154.1 = add nuw nsw i32 %conv.i152.1, 60
  %add.i.i155.1 = or i32 %add.i154.1, -18874368
  %40 = inttoptr i32 %add.i.i155.1 to ptr
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %40) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx32.1 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 10, i32 1
  %42 = ptrtoint ptr %arrayidx32.1 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %41, ptr %arrayidx32.1, align 1
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %1, align 4
  %conv.i157 = zext i16 %44 to i32
  %add.i159 = add nuw nsw i32 %conv.i157, 32
  %add.i.i160 = or i32 %add.i159, -18874368
  %45 = inttoptr i32 %add.i.i160 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %call41.tr = zext i8 %46 to i16
  %conv42 = shl nuw nsw i16 %call41.tr, 2
  %arrayidx43 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 11, i32 0
  %47 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv42, ptr %arrayidx43, align 2
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %1, align 4
  %conv.i162 = zext i16 %49 to i32
  %add.i164 = add nuw nsw i32 %conv.i162, 57
  %add.i.i165 = or i32 %add.i164, -18874368
  %50 = inttoptr i32 %add.i.i165 to ptr
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %50) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx47 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 12, i32 0
  %52 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx47, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %1, align 4
  %conv.i167 = zext i16 %54 to i32
  %add.i169 = add nuw nsw i32 %conv.i167, 58
  %add.i.i170 = or i32 %add.i169, -18874368
  %55 = inttoptr i32 %add.i.i170 to ptr
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %55) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx51 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 13, i32 0
  %57 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx51, align 1
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %1, align 4
  %conv.i157.1 = zext i16 %59 to i32
  %add.i159.1 = add nuw nsw i32 %conv.i157.1, 33
  %add.i.i160.1 = or i32 %add.i159.1, -18874368
  %60 = inttoptr i32 %add.i.i160.1 to ptr
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %60) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %call41.tr.1 = zext i8 %61 to i16
  %conv42.1 = shl nuw nsw i16 %call41.tr.1, 2
  %arrayidx43.1 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 11, i32 1
  %62 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv42.1, ptr %arrayidx43.1, align 2
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %1, align 4
  %conv.i162.1 = zext i16 %64 to i32
  %add.i164.1 = add nuw nsw i32 %conv.i162.1, 61
  %add.i.i165.1 = or i32 %add.i164.1, -18874368
  %65 = inttoptr i32 %add.i.i165.1 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx47.1 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 12, i32 1
  %67 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx47.1, align 1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %1, align 4
  %conv.i167.1 = zext i16 %69 to i32
  %add.i169.1 = add nuw nsw i32 %conv.i167.1, 62
  %add.i.i170.1 = or i32 %add.i169.1, -18874368
  %70 = inttoptr i32 %add.i.i170.1 to ptr
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %70) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx51.1 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 13, i32 1
  %72 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx51.1, align 1
  %73 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %1, align 4
  %conv.i157.2 = zext i16 %74 to i32
  %add.i159.2 = add nuw nsw i32 %conv.i157.2, 31
  %add.i.i160.2 = or i32 %add.i159.2, -18874368
  %75 = inttoptr i32 %add.i.i160.2 to ptr
  %76 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %75) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %call41.tr.2 = zext i8 %76 to i16
  %conv42.2 = shl nuw nsw i16 %call41.tr.2, 2
  %arrayidx43.2 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 11, i32 2
  %77 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv42.2, ptr %arrayidx43.2, align 2
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %1, align 4
  %conv.i162.2 = zext i16 %79 to i32
  %add.i164.2 = add nuw nsw i32 %conv.i162.2, 29
  %add.i.i165.2 = or i32 %add.i164.2, -18874368
  %80 = inttoptr i32 %add.i.i165.2 to ptr
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %80) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx47.2 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 12, i32 2
  %82 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx47.2, align 1
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %1, align 4
  %conv.i167.2 = zext i16 %84 to i32
  %add.i169.2 = add nuw nsw i32 %conv.i167.2, 30
  %add.i.i170.2 = or i32 %add.i169.2, -18874368
  %85 = inttoptr i32 %add.i.i170.2 to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %arrayidx51.2 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 13, i32 2
  %87 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %86, ptr %arrayidx51.2, align 1
  %88 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %1, align 4
  %conv.i172 = zext i16 %89 to i32
  %add.i.i174 = add nuw nsw i32 %conv.i172, -18874293
  %90 = inttoptr i32 %add.i.i174 to ptr
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %90) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %92 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx43, align 4
  %94 = lshr i8 %91, 6
  %95 = zext i8 %94 to i16
  %conv59 = or i16 %93, %95
  store i16 %conv59, ptr %arrayidx43, align 4
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %1, align 4
  %conv.i176 = zext i16 %97 to i32
  %add.i.i178 = add nuw nsw i32 %conv.i176, -18874295
  %98 = inttoptr i32 %add.i.i178 to ptr
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %98) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %100 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx43.1, align 2
  %102 = lshr i8 %99, 4
  %103 = and i8 %102, 3
  %104 = zext i8 %103 to i16
  %conv67 = or i16 %101, %104
  store i16 %conv67, ptr %arrayidx43.1, align 2
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %1, align 4
  %conv.i180 = zext i16 %106 to i32
  %add.i.i182 = add nuw nsw i32 %conv.i180, -18874295
  %107 = inttoptr i32 %add.i.i182 to ptr
  %108 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %107) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %109 = ptrtoint ptr %arrayidx43.2 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %arrayidx43.2, align 4
  %111 = lshr i8 %108, 6
  %112 = zext i8 %111 to i16
  %conv75 = or i16 %110, %112
  store i16 %conv75, ptr %arrayidx43.2, align 4
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %1, align 4
  %conv.i.i = zext i16 %114 to i32
  %add.i.i.i = add nuw nsw i32 %conv.i.i, -18874297
  %115 = inttoptr i32 %add.i.i.i to ptr
  %116 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %115) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %117 = lshr i8 %116, 4
  %conv.i184 = and i8 %117, 3
  %fan_div.i = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 14
  %118 = ptrtoint ptr %fan_div.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv.i184, ptr %fan_div.i, align 4
  %119 = lshr i8 %116, 6
  %arrayidx4.i = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 14, i32 1
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %119, ptr %arrayidx4.i, align 1
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %1, align 4
  %conv.i185 = zext i16 %122 to i32
  %add.i.i187 = add nuw nsw i32 %conv.i185, -18874303
  %123 = inttoptr i32 %add.i.i187 to ptr
  %124 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %123) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %conv2.i188 = zext i8 %124 to i16
  %125 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %1, align 4
  %conv.i189 = zext i16 %126 to i32
  %add.i.i191 = add nuw nsw i32 %conv.i189, -18874302
  %127 = inttoptr i32 %add.i.i191 to ptr
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %127) #8, !srcloc !231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %conv2.i192 = zext i8 %128 to i16
  %shl78 = shl nuw i16 %conv2.i192, 8
  %or79 = or i16 %shl78, %conv2.i188
  %alarms = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 15
  %129 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %or79, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %130 = load volatile i32, ptr @jiffies, align 128
  %131 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %last_updated, align 4
  %valid82 = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 4
  %132 = ptrtoint ptr %valid82 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %valid82, align 4
  br label %if.end

if.end:                                           ; preds = %for.body20.preheader, %lor.lhs.false.if.end_crit_edge
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
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp slt i32 %1, 2
  br i1 %cmp.i, label %entry.IN_FROM_REG.exit_crit_edge, label %if.else.i

entry.IN_FROM_REG.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else.i:                                        ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %1, label %if.else19.i [
    i32 2, label %if.else.i.IN_FROM_REG.exit_crit_edge
    i32 3, label %if.then13.i
  ]

if.else.i.IN_FROM_REG.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

IN_FROM_REG.exit:                                 ; preds = %if.else19.i, %if.then13.i, %if.else.i.IN_FROM_REG.exit_crit_edge, %entry.IN_FROM_REG.exit_crit_edge
  %.sink31.i = phi i32 [ 2500000, %if.else19.i ], [ 250000, %if.then13.i ], [ 250000, %entry.IN_FROM_REG.exit_crit_edge ], [ 250000, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink30.i = phi i32 [ 13320857, %if.else19.i ], [ 1335054, %if.then13.i ], [ 1340512, %entry.IN_FROM_REG.exit_crit_edge ], [ 1337868, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink.i = phi i32 [ 41714, %if.else19.i ], [ 10108, %if.then13.i ], [ 21024, %entry.IN_FROM_REG.exit_crit_edge ], [ 15737, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %conv20.i = zext i8 %3 to i32
  %mul21.i = mul nuw nsw i32 %.sink31.i, %conv20.i
  %add23.i = add nuw nsw i32 %mul21.i, %.sink30.i
  %div24.i = udiv i32 %add23.i, %.sink.i
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %div24.i)
  ret i32 %call2
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp slt i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %6, 21024
  %sub.i = add i32 %mul.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 249999
  %div.i = sdiv i32 %sub.i, 250000
  br label %IN_TO_REG.exit

if.else.i:                                        ; preds = %if.end
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %3, label %if.else51.i [
    i32 2, label %if.then10.i
    i32 3, label %if.then32.i
  ]

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul11.i = mul i32 %6, 15737
  %sub12.i = add i32 %mul11.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub12.i)
  %cmp15.i = icmp sgt i32 %sub12.i, 249999
  %div13.i = sdiv i32 %sub12.i, 250000
  br label %IN_TO_REG.exit

if.then32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul33.i = mul i32 %6, 10108
  %sub34.i = add i32 %mul33.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub34.i)
  %cmp37.i = icmp sgt i32 %sub34.i, 249999
  %div35.i = sdiv i32 %sub34.i, 250000
  br label %IN_TO_REG.exit

if.else51.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul52.i = mul i32 %6, 41714
  %sub53.i = add i32 %mul52.i, -12050000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2499999, i32 %sub53.i)
  %cmp56.i = icmp sgt i32 %sub53.i, 2499999
  %div54.i = sdiv i32 %sub53.i, 2500000
  br label %IN_TO_REG.exit

IN_TO_REG.exit:                                   ; preds = %if.else51.i, %if.then32.i, %if.then10.i, %if.then.i
  %div54.sink.i = phi i32 [ %div54.i, %if.else51.i ], [ %div35.i, %if.then32.i ], [ %div13.i, %if.then10.i ], [ %div.i, %if.then.i ]
  %cmp56.sink.i = phi i1 [ %cmp56.i, %if.else51.i ], [ %cmp37.i, %if.then32.i ], [ %cmp15.i, %if.then10.i ], [ %cmp1.i, %if.then.i ]
  %8 = call i32 @llvm.smin.i32(i32 %div54.sink.i, i32 255) #8
  %9 = trunc i32 %8 to i8
  %retval.0.i = select i1 %cmp56.sink.i, i8 %9, i8 0
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 8, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %11 = shl i32 %3, 1
  %conv = add i32 %11, 44
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %conv1.i = and i32 %conv, 254
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %retval.0.i) #8, !srcloc !234
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %IN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %IN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
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
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp slt i32 %1, 2
  br i1 %cmp.i, label %entry.IN_FROM_REG.exit_crit_edge, label %if.else.i

entry.IN_FROM_REG.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else.i:                                        ; preds = %entry
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %1, label %if.else19.i [
    i32 2, label %if.else.i.IN_FROM_REG.exit_crit_edge
    i32 3, label %if.then13.i
  ]

if.else.i.IN_FROM_REG.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.then13.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

if.else19.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %IN_FROM_REG.exit

IN_FROM_REG.exit:                                 ; preds = %if.else19.i, %if.then13.i, %if.else.i.IN_FROM_REG.exit_crit_edge, %entry.IN_FROM_REG.exit_crit_edge
  %.sink31.i = phi i32 [ 2500000, %if.else19.i ], [ 250000, %if.then13.i ], [ 250000, %entry.IN_FROM_REG.exit_crit_edge ], [ 250000, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink30.i = phi i32 [ 13320857, %if.else19.i ], [ 1335054, %if.then13.i ], [ 1340512, %entry.IN_FROM_REG.exit_crit_edge ], [ 1337868, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %.sink.i = phi i32 [ 41714, %if.else19.i ], [ 10108, %if.then13.i ], [ 21024, %entry.IN_FROM_REG.exit_crit_edge ], [ 15737, %if.else.i.IN_FROM_REG.exit_crit_edge ]
  %conv20.i = zext i8 %3 to i32
  %mul21.i = mul nuw nsw i32 %.sink31.i, %conv20.i
  %add23.i = add nuw nsw i32 %mul21.i, %.sink30.i
  %div24.i = udiv i32 %add23.i, %.sink.i
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %div24.i)
  ret i32 %call2
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp slt i32 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %6, 21024
  %sub.i = add i32 %mul.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub.i)
  %cmp1.i = icmp sgt i32 %sub.i, 249999
  %div.i = sdiv i32 %sub.i, 250000
  br label %IN_TO_REG.exit

if.else.i:                                        ; preds = %if.end
  %7 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %if.else51.i [
    i32 2, label %if.then10.i
    i32 3, label %if.then32.i
  ]

if.then10.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul11.i = mul i32 %6, 15737
  %sub12.i = add i32 %mul11.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub12.i)
  %cmp15.i = icmp sgt i32 %sub12.i, 249999
  %div13.i = sdiv i32 %sub12.i, 250000
  br label %IN_TO_REG.exit

if.then32.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul33.i = mul i32 %6, 10108
  %sub34.i = add i32 %mul33.i, -1205000
  call void @__sanitizer_cov_trace_const_cmp4(i32 249999, i32 %sub34.i)
  %cmp37.i = icmp sgt i32 %sub34.i, 249999
  %div35.i = sdiv i32 %sub34.i, 250000
  br label %IN_TO_REG.exit

if.else51.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul52.i = mul i32 %6, 41714
  %sub53.i = add i32 %mul52.i, -12050000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2499999, i32 %sub53.i)
  %cmp56.i = icmp sgt i32 %sub53.i, 2499999
  %div54.i = sdiv i32 %sub53.i, 2500000
  br label %IN_TO_REG.exit

IN_TO_REG.exit:                                   ; preds = %if.else51.i, %if.then32.i, %if.then10.i, %if.then.i
  %div54.sink.i = phi i32 [ %div54.i, %if.else51.i ], [ %div35.i, %if.then32.i ], [ %div13.i, %if.then10.i ], [ %div.i, %if.then.i ]
  %cmp56.sink.i = phi i1 [ %cmp56.i, %if.else51.i ], [ %cmp37.i, %if.then32.i ], [ %cmp15.i, %if.then10.i ], [ %cmp1.i, %if.then.i ]
  %8 = call i32 @llvm.smin.i32(i32 %div54.sink.i, i32 255) #8
  %9 = trunc i32 %8 to i8
  %retval.0.i = select i1 %cmp56.sink.i, i8 %9, i8 0
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 7, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %11 = shl i32 %3, 1
  %conv = add i32 %11, 43
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %conv1.i = and i32 %conv, 255
  %add.i = add nuw nsw i32 %conv1.i, %conv.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %retval.0.i) #8, !srcloc !234
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %IN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %IN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
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
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.via686a_data, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarms, align 2
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = lshr i16 %3, 2
  %5 = and i16 %3, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.i = icmp eq i16 %5, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %4)
  %cmp7.i = icmp eq i16 %4, 255
  %or.cond.i = or i1 %cmp.i, %cmp7.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %idxprom.i = zext i16 %4 to i32
  %arrayidx.i = getelementptr [256 x i16], ptr @temp_lut, i32 0, i32 %idxprom.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx.i, align 2
  %conv9.i = sext i16 %7 to i32
  %mul.i = mul nsw i32 %conv9.i, 100
  br label %TEMP_FROM_REG10.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = zext i16 %5 to i32
  %conv6.i = zext i16 %4 to i32
  %arrayidx11.i = getelementptr [256 x i16], ptr @temp_lut, i32 0, i32 %conv6.i
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx11.i, align 2
  %conv12.i = sext i16 %9 to i32
  %sub.i = sub nuw nsw i32 4, %conv4.i
  %mul14.i = mul nsw i32 %sub.i, %conv12.i
  %add.i = add nuw nsw i32 %conv6.i, 1
  %arrayidx16.i = getelementptr [256 x i16], ptr @temp_lut, i32 0, i32 %add.i
  %10 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx16.i, align 2
  %conv17.i = sext i16 %11 to i32
  %mul19.i = mul nsw i32 %conv17.i, %conv4.i
  %add20.i = add nsw i32 %mul19.i, %mul14.i
  %mul21.i = mul nsw i32 %add20.i, 25
  br label %TEMP_FROM_REG10.exit

TEMP_FROM_REG10.exit:                             ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ %mul21.i, %if.end.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_over_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx1 = getelementptr [256 x i16], ptr @temp_lut, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv = sext i16 %5 to i32
  %mul = mul nsw i32 %conv, 100
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_over_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49999, i32 %6)
  %cmp.i = icmp slt i32 %6, -49999
  br i1 %cmp.i, label %if.end.TEMP_TO_REG.exit_crit_edge, label %cond.false.i

if.end.TEMP_TO_REG.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %TEMP_TO_REG.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 109999, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 109999
  br i1 %cmp1.i, label %cond.false.i.TEMP_TO_REG.exit_crit_edge, label %cond.false3.i

cond.false.i.TEMP_TO_REG.exit_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %TEMP_TO_REG.exit

cond.false3.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp slt i32 %6, 0
  %cond.v.i = select i1 %cmp4.i, i32 -500, i32 500
  %cond.i = add nsw i32 %cond.v.i, %6
  %div.i = sdiv i32 %cond.i, 1000
  %add7.i = add nsw i32 %div.i, 50
  br label %TEMP_TO_REG.exit

TEMP_TO_REG.exit:                                 ; preds = %cond.false3.i, %cond.false.i.TEMP_TO_REG.exit_crit_edge, %if.end.TEMP_TO_REG.exit_crit_edge
  %cond11.i = phi i32 [ 0, %if.end.TEMP_TO_REG.exit_crit_edge ], [ %add7.i, %cond.false3.i ], [ 160, %cond.false.i.TEMP_TO_REG.exit_crit_edge ]
  %arrayidx.i = getelementptr [161 x i8], ptr @via_lut, i32 0, i32 %cond11.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 12, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr [3 x i8], ptr @VIA686A_REG_TEMP_OVER, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %conv1.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %8) #8, !srcloc !234
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %TEMP_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %TEMP_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx1 = getelementptr [256 x i16], ptr @temp_lut, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv = sext i16 %5 to i32
  %mul = mul nsw i32 %conv, 100
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.28, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -49999, i32 %6)
  %cmp.i = icmp slt i32 %6, -49999
  br i1 %cmp.i, label %if.end.TEMP_TO_REG.exit_crit_edge, label %cond.false.i

if.end.TEMP_TO_REG.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %TEMP_TO_REG.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 109999, i32 %6)
  %cmp1.i = icmp sgt i32 %6, 109999
  br i1 %cmp1.i, label %cond.false.i.TEMP_TO_REG.exit_crit_edge, label %cond.false3.i

cond.false.i.TEMP_TO_REG.exit_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %TEMP_TO_REG.exit

cond.false3.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp slt i32 %6, 0
  %cond.v.i = select i1 %cmp4.i, i32 -500, i32 500
  %cond.i = add nsw i32 %cond.v.i, %6
  %div.i = sdiv i32 %cond.i, 1000
  %add7.i = add nsw i32 %div.i, 50
  br label %TEMP_TO_REG.exit

TEMP_TO_REG.exit:                                 ; preds = %cond.false3.i, %cond.false.i.TEMP_TO_REG.exit_crit_edge, %if.end.TEMP_TO_REG.exit_crit_edge
  %cond11.i = phi i32 [ 0, %if.end.TEMP_TO_REG.exit_crit_edge ], [ %add7.i, %cond.false3.i ], [ 160, %cond.false.i.TEMP_TO_REG.exit_crit_edge ]
  %arrayidx.i = getelementptr [161 x i8], ptr @via_lut, i32 0, i32 %cond11.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx.i, align 1
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 13, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx, align 1
  %arrayidx3 = getelementptr [3 x i8], ptr @VIA686A_REG_TEMP_HYST, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx3, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %1, align 4
  %conv.i = zext i16 %13 to i32
  %conv1.i = zext i8 %11 to i32
  %add.i = add nuw nsw i32 %conv.i, %conv1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i, -18874368
  %14 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %8) #8, !srcloc !234
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %TEMP_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %TEMP_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %entry.cond.end14_crit_edge23
  ]

entry.cond.end14_crit_edge23:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 14, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false8, %entry.cond.end14_crit_edge, %entry.cond.end14_crit_edge23
  %cond15 = phi i32 [ 0, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %entry.cond.end14_crit_edge23 ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %entry.cond.end14_crit_edge23
  ]

entry.cond.end14_crit_edge23:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 14, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false8, %entry.cond.end14_crit_edge, %entry.cond.end14_crit_edge23
  %cond15 = phi i32 [ 0, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %entry.cond.end14_crit_edge23 ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %cond15)
  ret i32 %call16
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 14, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 1) #8
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 1000000) #8
  %mul.i = shl i32 %10, %conv
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #8
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 255) #8
  %conv.i = trunc i32 %12 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ 0, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 10, i32 %3
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %conv5 = add i32 %3, 59
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 4
  %conv.i22 = zext i16 %15 to i32
  %conv1.i = and i32 %conv5, 255
  %add.i23 = add nuw nsw i32 %conv1.i, %conv.i22
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i = or i32 %add.i23, -18874368
  %16 = inttoptr i32 %add.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %retval.0.i) #8, !srcloc !234
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
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.via686a_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !230
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %1, align 4
  %conv.i = zext i16 %6 to i32
  %add.i.i = add nuw nsw i32 %conv.i, -18874297
  %7 = inttoptr i32 %add.i.i to ptr
  %8 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #8, !srcloc !231
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %10, label %cond.false5 [
    i32 8, label %if.end.cond.end8_crit_edge
    i32 4, label %cond.end8.fold.split
  ]

if.end.cond.end8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8

cond.false5:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp6 = icmp ne i32 %10, 1
  %phi.cast = zext i1 %cmp6 to i8
  br label %cond.end8

cond.end8.fold.split:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end8

cond.end8:                                        ; preds = %cond.end8.fold.split, %cond.false5, %if.end.cond.end8_crit_edge
  %cond9 = phi i8 [ 3, %if.end.cond.end8_crit_edge ], [ %phi.cast, %cond.false5 ], [ 2, %cond.end8.fold.split ]
  %fan_div = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 14
  %arrayidx = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 14, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %cond9, ptr %arrayidx, align 1
  %13 = and i8 %8, 15
  %arrayidx11 = getelementptr %struct.via686a_data, ptr %1, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx11, align 1
  %shl = shl i8 %15, 6
  %or = or i8 %shl, %13
  %16 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %fan_div, align 4
  %shl16 = shl i8 %17, 4
  %or17 = or i8 %or, %shl16
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv.i33 = zext i16 %19 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  call void @arm_heavy_mb() #8
  %add.i.i35 = add nuw nsw i32 %conv.i33, -18874297
  %20 = inttoptr i32 %add.i.i35 to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %or17) #8, !srcloc !234
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end8 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @via686a_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.via686a_data, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.44, i32 noundef %conv)
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
  %name = getelementptr inbounds %struct.via686a_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.72, ptr noundef %3)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !75, !77, !79, !80, !82, !84, !86, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !154, !155, !157, !158, !160, !161, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219}
!llvm.module.flags = !{!221, !222, !223, !224, !225, !226, !227, !228}
!llvm.ident = !{!229}

!0 = !{ptr @__param_force_addr, !1, !"__param_force_addr", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/via686a.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_addrtype236, !1, !"__UNIQUE_ID_force_addrtype236", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_addr237, !4, !"__UNIQUE_ID_force_addr237", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/via686a.c", i32 43, i32 1}
!5 = !{ptr @__UNIQUE_ID_author262, !6, !"__UNIQUE_ID_author262", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/via686a.c", i32 942, i32 1}
!7 = !{ptr @__UNIQUE_ID_description263, !8, !"__UNIQUE_ID_description263", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/via686a.c", i32 945, i32 1}
!9 = !{ptr @__UNIQUE_ID_file264, !10, !"__UNIQUE_ID_file264", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/via686a.c", i32 946, i32 1}
!11 = !{ptr @__UNIQUE_ID_license265, !10, !"__UNIQUE_ID_license265", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_via686a__266_948_sm_via686a_init6, !13, !"__initcall__kmod_via686a__266_948_sm_via686a_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/via686a.c", i32 948, i32 1}
!14 = !{ptr @__exitcall_sm_via686a_exit, !15, !"__exitcall_sm_via686a_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/via686a.c", i32 949, i32 1}
!16 = !{ptr @force_addr, !17, !"force_addr", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/via686a.c", i32 41, i32 23}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/via686a.c", i32 46, i32 32}
!20 = !{ptr @s_bridge, !21, !"s_bridge", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/via686a.c", i32 322, i32 24}
!22 = !{ptr @__param_str_force_addr, !1, !"__param_str_force_addr", i1 false, i1 false}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/via686a.c", i32 921, i32 11}
!25 = !{ptr @via686a_pci_driver, !26, !"via686a_pci_driver", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/via686a.c", i32 920, i32 26}
!27 = !{ptr @via686a_pci_ids, !28, !"via686a_pci_ids", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/via686a.c", i32 811, i32 35}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/via686a.c", i32 865, i32 3}
!31 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @via686a_pci_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @via686a_pci_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/via686a.c", i32 876, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @via686a_pci_probe._entry.6, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @via686a_pci_probe._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/via686a.c", i32 886, i32 4}
!44 = !{ptr @via686a_pci_probe._entry.10, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @via686a_pci_probe._entry_ptr.12, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/via686a.c", i32 892, i32 3}
!48 = !{ptr @via686a_pci_probe._entry.13, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @via686a_pci_probe._entry_ptr.15, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/via686a.c", i32 834, i32 3}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @via686a_device_add._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @via686a_device_add._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/via686a.c", i32 840, i32 3}
!57 = !{ptr @via686a_device_add._entry.18, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @via686a_device_add._entry_ptr.20, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/via686a.c", i32 846, i32 3}
!61 = !{ptr @via686a_device_add._entry.21, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @via686a_device_add._entry_ptr.23, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @via686a_driver, !64, !"via686a_driver", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/via686a.c", i32 657, i32 31}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/via686a.c", i32 676, i32 3}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @via686a_probe._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @via686a_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @via686a_probe.__key, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/via686a.c", i32 689, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @via686a_group, !74, !"via686a_group", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/via686a.c", i32 653, i32 37}
!75 = !{ptr @via686a_attributes, !76, !"via686a_attributes", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/via686a.c", i32 604, i32 26}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/via686a.c", i32 407, i32 8}
!79 = !{ptr @sensor_dev_attr_in0_input, !78, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/via686a.c", i32 349, i32 22}
!82 = distinct !{null, !83, !"VIA686A_REG_TEMP", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/via686a.c", i32 71, i32 17}
!84 = !{ptr @VIA686A_REG_TEMP_OVER, !85, !"VIA686A_REG_TEMP_OVER", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/via686a.c", i32 72, i32 17}
!86 = !{ptr @VIA686A_REG_TEMP_HYST, !87, !"VIA686A_REG_TEMP_HYST", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/via686a.c", i32 73, i32 17}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/via686a.c", i32 410, i32 8}
!90 = !{ptr @sensor_dev_attr_in1_input, !89, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/via686a.c", i32 413, i32 8}
!93 = !{ptr @sensor_dev_attr_in2_input, !92, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/via686a.c", i32 416, i32 8}
!96 = !{ptr @sensor_dev_attr_in3_input, !95, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/via686a.c", i32 419, i32 8}
!99 = !{ptr @sensor_dev_attr_in4_input, !98, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/via686a.c", i32 408, i32 8}
!102 = !{ptr @sensor_dev_attr_in0_min, !101, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/via686a.c", i32 411, i32 8}
!105 = !{ptr @sensor_dev_attr_in1_min, !104, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!106 = !{ptr @.str.35, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/via686a.c", i32 414, i32 8}
!108 = !{ptr @sensor_dev_attr_in2_min, !107, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/via686a.c", i32 417, i32 8}
!111 = !{ptr @sensor_dev_attr_in3_min, !110, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!112 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/via686a.c", i32 420, i32 8}
!114 = !{ptr @sensor_dev_attr_in4_min, !113, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/via686a.c", i32 409, i32 8}
!117 = !{ptr @sensor_dev_attr_in0_max, !116, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!118 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/via686a.c", i32 412, i32 8}
!120 = !{ptr @sensor_dev_attr_in1_max, !119, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!121 = !{ptr @.str.40, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/via686a.c", i32 415, i32 8}
!123 = !{ptr @sensor_dev_attr_in2_max, !122, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!124 = !{ptr @.str.41, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/via686a.c", i32 418, i32 8}
!126 = !{ptr @sensor_dev_attr_in3_max, !125, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!127 = !{ptr @.str.42, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/via686a.c", i32 421, i32 8}
!129 = !{ptr @sensor_dev_attr_in4_max, !128, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!130 = !{ptr @.str.43, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/via686a.c", i32 585, i32 8}
!132 = !{ptr @sensor_dev_attr_in0_alarm, !131, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/via686a.c", i32 583, i32 22}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/via686a.c", i32 586, i32 8}
!137 = !{ptr @sensor_dev_attr_in1_alarm, !136, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/via686a.c", i32 587, i32 8}
!140 = !{ptr @sensor_dev_attr_in2_alarm, !139, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/via686a.c", i32 588, i32 8}
!143 = !{ptr @sensor_dev_attr_in3_alarm, !142, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/via686a.c", i32 589, i32 8}
!146 = !{ptr @sensor_dev_attr_in4_alarm, !145, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/via686a.c", i32 486, i32 8}
!149 = !{ptr @sensor_dev_attr_temp1_input, !148, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!150 = !{ptr @temp_lut, !151, !"temp_lut", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/via686a.c", i32 202, i32 18}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/via686a.c", i32 489, i32 8}
!154 = !{ptr @sensor_dev_attr_temp2_input, !153, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/via686a.c", i32 492, i32 8}
!157 = !{ptr @sensor_dev_attr_temp3_input, !156, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/via686a.c", i32 487, i32 8}
!160 = !{ptr @sensor_dev_attr_temp1_max, !159, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!161 = !{ptr @via_lut, !162, !"via_lut", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/via686a.c", i32 250, i32 17}
!163 = !{ptr @.str.53, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/via686a.c", i32 490, i32 8}
!165 = !{ptr @sensor_dev_attr_temp2_max, !164, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!166 = !{ptr @.str.54, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/via686a.c", i32 493, i32 8}
!168 = !{ptr @sensor_dev_attr_temp3_max, !167, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!169 = !{ptr @.str.55, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/via686a.c", i32 488, i32 8}
!171 = !{ptr @sensor_dev_attr_temp1_max_hyst, !170, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!172 = !{ptr @.str.56, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/via686a.c", i32 491, i32 8}
!174 = !{ptr @sensor_dev_attr_temp2_max_hyst, !173, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!175 = !{ptr @.str.57, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/via686a.c", i32 494, i32 8}
!177 = !{ptr @sensor_dev_attr_temp3_max_hyst, !176, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!178 = !{ptr @.str.58, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/via686a.c", i32 590, i32 8}
!180 = !{ptr @sensor_dev_attr_temp1_alarm, !179, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!181 = !{ptr @.str.59, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/via686a.c", i32 591, i32 8}
!183 = !{ptr @sensor_dev_attr_temp2_alarm, !182, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!184 = !{ptr @.str.60, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/via686a.c", i32 592, i32 8}
!186 = !{ptr @sensor_dev_attr_temp3_alarm, !185, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!187 = !{ptr @.str.61, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/via686a.c", i32 561, i32 8}
!189 = !{ptr @sensor_dev_attr_fan1_input, !188, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!190 = !{ptr @.str.62, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/via686a.c", i32 502, i32 22}
!192 = !{ptr @.str.63, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/via686a.c", i32 564, i32 8}
!194 = !{ptr @sensor_dev_attr_fan2_input, !193, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!195 = !{ptr @.str.64, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/via686a.c", i32 562, i32 8}
!197 = !{ptr @sensor_dev_attr_fan1_min, !196, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!198 = !{ptr @.str.65, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/via686a.c", i32 565, i32 8}
!200 = !{ptr @sensor_dev_attr_fan2_min, !199, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!201 = !{ptr @.str.66, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/via686a.c", i32 563, i32 8}
!203 = !{ptr @sensor_dev_attr_fan1_div, !202, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!204 = !{ptr @.str.67, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/via686a.c", i32 566, i32 8}
!206 = !{ptr @sensor_dev_attr_fan2_div, !205, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!207 = !{ptr @.str.68, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/via686a.c", i32 593, i32 8}
!209 = !{ptr @sensor_dev_attr_fan1_alarm, !208, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!210 = !{ptr @.str.69, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/via686a.c", i32 594, i32 8}
!212 = !{ptr @sensor_dev_attr_fan2_alarm, !211, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!213 = !{ptr @.str.70, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/via686a.c", i32 576, i32 8}
!215 = !{ptr @dev_attr_alarms, !214, !"dev_attr_alarms", i1 false, i1 false}
!216 = !{ptr @.str.71, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/via686a.c", i32 602, i32 8}
!218 = !{ptr @dev_attr_name, !217, !"dev_attr_name", i1 false, i1 false}
!219 = !{ptr @.str.72, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/via686a.c", i32 600, i32 22}
!221 = !{i32 1, !"wchar_size", i32 2}
!222 = !{i32 1, !"min_enum_size", i32 4}
!223 = !{i32 8, !"branch-target-enforcement", i32 0}
!224 = !{i32 8, !"sign-return-address", i32 0}
!225 = !{i32 8, !"sign-return-address-all", i32 0}
!226 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!227 = !{i32 7, !"uwtable", i32 1}
!228 = !{i32 7, !"frame-pointer", i32 2}
!229 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!230 = !{!"auto-init"}
!231 = !{i64 5401646}
!232 = !{i64 2152935322}
!233 = !{i64 2152937307}
!234 = !{i64 5401251}
!235 = !{i8 0, i8 2}
