; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ibmaem.c_pt.bc'
source_filename = "../drivers/hwmon/ibmaem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.aem_driver_data = type { %struct.list_head, %struct.ipmi_smi_watcher, %struct.ipmi_user_hndl }
%struct.list_head = type { ptr, ptr }
%struct.ipmi_smi_watcher = type { %struct.list_head, ptr, ptr, ptr }
%struct.ipmi_user_hndl = type { ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.aem_iana_id = type { [3 x i8] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.aem_ro_sensor_template = type { ptr, ptr, i32 }
%struct.aem_rw_sensor_template = type { ptr, ptr, ptr, i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.aem_data = type { %struct.list_head, ptr, ptr, %struct.mutex, i8, i32, i8, i8, i8, i32, %struct.aem_ipmi_data, ptr, ptr, [14 x %struct.sensor_device_attribute], [2 x i64], [2 x i32], [6 x i16], [2 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.aem_ipmi_data = type { %struct.completion, %struct.ipmi_addr, ptr, i32, %struct.kernel_ipmi_msg, i32, ptr, i16, i8, i32, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.ipmi_addr = type { i32, i16, [32 x i8] }
%struct.kernel_ipmi_msg = type { i8, i8, i16, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.aem_find_instance_req = type { %struct.aem_iana_id, i8, i16 }
%struct.aem_find_instance_resp = type <{ %struct.aem_iana_id, i8, i8, i8, i8, i16 }>
%struct.aem_find_firmware_req = type { %struct.aem_iana_id, i8, i16, i16 }
%struct.aem_find_firmware_resp = type { %struct.aem_iana_id, i8 }
%struct.ipmi_recv_msg = type { %struct.list_head, i32, ptr, %struct.ipmi_addr, i32, %struct.kernel_ipmi_msg, ptr, ptr, [272 x i8] }
%struct.aem_read_sensor_req = type { %struct.aem_iana_id, i8, i8, i8, i8, i8 }
%struct.aem_read_sensor_resp = type { %struct.aem_iana_id, [0 x i8] }

@driver_data = internal global { %struct.aem_driver_data, [52 x i8] } { %struct.aem_driver_data { %struct.list_head { ptr @driver_data, ptr @driver_data }, %struct.ipmi_smi_watcher { %struct.list_head zeroinitializer, ptr null, ptr @aem_register_bmc, ptr @aem_bmc_gone }, %struct.ipmi_user_hndl { ptr @aem_msg_handler, ptr null, ptr null, ptr null } }, [52 x i8] zeroinitializer }, align 32
@aem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.14, ptr @platform_bus_type, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author223 = internal constant [56 x i8] c"ibmaem.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description224 = internal constant [59 x i8] c"ibmaem.description=IBM AEM power/temp/energy sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [33 x i8] c"ibmaem.file=drivers/hwmon/ibmaem\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [19 x i8] c"ibmaem.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_ibmaem__227_1094_aem_init6 = internal global ptr @aem_init, section ".initcall6.init", align 4
@__exitcall_aem_exit = internal global ptr @aem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias228 = internal constant [45 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMSystemx3350-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias229 = internal constant [45 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMSystemx3550-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias230 = internal constant [45 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMSystemx3650-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [45 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMSystemx3655-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [45 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMSystemx3755-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias233 = internal constant [48 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBM3850M2/x3950M2-*\00", section ".modinfo", align 1
@__UNIQUE_ID_alias234 = internal constant [43 x i8] c"ibmaem.alias=dmi:bvnIBM:*:pnIBMBladeHC10-*\00", section ".modinfo", align 1
@aem_init_ipmi_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 281, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to register user with IPMI interface %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aem_init_ipmi_data\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ibmaem.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aem_init_ipmi_data._entry_ptr = internal global ptr @aem_init_ipmi_data._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@aem_init_aem1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 621, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error %d initializing AEM1 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aem_init_aem1\00", [18 x i8] zeroinitializer }, align 32
@aem_init_aem1._entry_ptr = internal global ptr @aem_init_aem1._entry, section ".printk_index", align 4
@system_x_id = internal global { %struct.aem_iana_id, [29 x i8] } { %struct.aem_iana_id { [3 x i8] c"MO\00" }, [29 x i8] zeroinitializer }, align 32
@aem_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 305, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"request_settime=%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aem_send_message\00", [47 x i8] zeroinitializer }, align 32
@aem_send_message._entry_ptr = internal global ptr @aem_send_message._entry, section ".printk_index", align 4
@aem_send_message._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"validate_addr=%x\0A\00", [46 x i8] zeroinitializer }, align 32
@aem_send_message._entry_ptr.12 = internal global ptr @aem_send_message._entry.10, section ".printk_index", align 4
@aem_init_aem1_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@aem_ida = internal global { %struct.ida, [44 x i8] } { %struct.ida { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108869, ptr null } }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aem\00", [28 x i8] zeroinitializer }, align 32
@aem_init_aem1_inst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 568, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Unable to register hwmon device for IPMI interface %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aem_init_aem1_inst\00", [45 x i8] zeroinitializer }, align 32
@aem_init_aem1_inst._entry_ptr = internal global ptr @aem_init_aem1_inst._entry, section ".printk_index", align 4
@aem_init_aem1_inst._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.2, i32 590, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Found AEM v%d.%d at 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@aem_init_aem1_inst._entry_ptr.20 = internal global ptr @aem_init_aem1_inst._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aem_ida.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@aem1_ro_sensors = internal constant { [3 x %struct.aem_ro_sensor_template], [60 x i8] } { [3 x %struct.aem_ro_sensor_template] [%struct.aem_ro_sensor_template { ptr @.str.27, ptr @aem_show_energy, i32 0 }, %struct.aem_ro_sensor_template { ptr @.str.28, ptr @aem_show_power, i32 0 }, %struct.aem_ro_sensor_template zeroinitializer], [60 x i8] zeroinitializer }, align 32
@aem1_rw_sensors = internal constant { [2 x %struct.aem_rw_sensor_template], [32 x i8] } { [2 x %struct.aem_rw_sensor_template] [%struct.aem_rw_sensor_template { ptr @.str.30, ptr @aem_show_power_period, ptr @aem_set_power_period, i32 0 }, %struct.aem_rw_sensor_template zeroinitializer], [32 x i8] zeroinitializer }, align 32
@aem_register_sensors.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aem_register_sensors.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sensor_dev_attr_name = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @name_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_version = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @version_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d.%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"energy1_input\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power1_average\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"power1_average_interval\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@aem_init_aem2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 761, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Unknown AEM v%d; please report this to the maintainer.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aem_init_aem2\00", [18 x i8] zeroinitializer }, align 32
@aem_init_aem2._entry_ptr = internal global ptr @aem_init_aem2._entry, section ".printk_index", align 4
@aem_init_aem2._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 769, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error %d initializing AEM2 0x%X\0A\00", [63 x i8] zeroinitializer }, align 32
@aem_init_aem2._entry_ptr.36 = internal global ptr @aem_init_aem2._entry.34, section ".printk_index", align 4
@aem_init_aem2_inst.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@aem_init_aem2_inst._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.37, ptr @.str.2, i32 708, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"aem_init_aem2_inst\00", [45 x i8] zeroinitializer }, align 32
@aem_init_aem2_inst._entry_ptr = internal global ptr @aem_init_aem2_inst._entry, section ".printk_index", align 4
@aem_init_aem2_inst._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.37, ptr @.str.2, i32 730, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@aem_init_aem2_inst._entry_ptr.39 = internal global ptr @aem_init_aem2_inst._entry.38, section ".printk_index", align 4
@aem2_ro_sensors = internal constant { [13 x %struct.aem_ro_sensor_template], [36 x i8] } { [13 x %struct.aem_ro_sensor_template] [%struct.aem_ro_sensor_template { ptr @.str.27, ptr @aem_show_energy, i32 0 }, %struct.aem_ro_sensor_template { ptr @.str.40, ptr @aem_show_energy, i32 1 }, %struct.aem_ro_sensor_template { ptr @.str.28, ptr @aem_show_power, i32 0 }, %struct.aem_ro_sensor_template { ptr @.str.41, ptr @aem_show_power, i32 1 }, %struct.aem_ro_sensor_template { ptr @.str.42, ptr @aem2_show_temp, i32 0 }, %struct.aem_ro_sensor_template { ptr @.str.43, ptr @aem2_show_temp, i32 1 }, %struct.aem_ro_sensor_template { ptr @.str.44, ptr @aem2_show_pcap_value, i32 1 }, %struct.aem_ro_sensor_template { ptr @.str.45, ptr @aem2_show_pcap_value, i32 2 }, %struct.aem_ro_sensor_template { ptr @.str.46, ptr @aem2_show_pcap_value, i32 3 }, %struct.aem_ro_sensor_template { ptr @.str.47, ptr @aem2_show_pcap_value, i32 4 }, %struct.aem_ro_sensor_template { ptr @.str.48, ptr @aem2_show_pcap_value, i32 5 }, %struct.aem_ro_sensor_template { ptr @.str.49, ptr @aem2_show_pcap_value, i32 0 }, %struct.aem_ro_sensor_template zeroinitializer], [36 x i8] zeroinitializer }, align 32
@aem2_rw_sensors = internal constant { [3 x %struct.aem_rw_sensor_template], [48 x i8] } { [3 x %struct.aem_rw_sensor_template] [%struct.aem_rw_sensor_template { ptr @.str.30, ptr @aem_show_power_period, ptr @aem_set_power_period, i32 0 }, %struct.aem_rw_sensor_template { ptr @.str.51, ptr @aem_show_power_period, ptr @aem_set_power_period, i32 1 }, %struct.aem_rw_sensor_template zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"energy2_input\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power2_average\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power4_average\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power5_average\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power6_average\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power7_average\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"power3_average\00", [17 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"power_cap\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"power2_average_interval\00", [40 x i8] zeroinitializer }, align 32
@aem_msg_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.2, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Mismatch between received msgid (%02x) and transmitted msgid (%02x)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aem_msg_handler\00", [16 x i8] zeroinitializer }, align 32
@aem_msg_handler._entry_ptr = internal global ptr @aem_msg_handler._entry, section ".printk_index", align 4
@platform_bus_type = external dso_local global %struct.bus_type, align 4
@aem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.2, i32 1065, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ibmaem: Can't register aem driver\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aem_init\00", [23 x i8] zeroinitializer }, align 32
@aem_init._entry_ptr = internal global ptr @aem_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.57 = private unnamed_addr constant [12 x i8] c"driver_data\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 242, i32 31 }
@___asan_gen_.60 = private unnamed_addr constant [11 x i8] c"aem_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 81, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 279, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 87, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 619, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant [12 x i8] c"system_x_id\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 177, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 305, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 308, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 532, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [8 x i8] c"aem_ida\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 546, i32 37 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 566, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 588, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 79, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant [16 x i8] c"aem1_ro_sensors\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1009, i32 44 }
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"aem1_rw_sensors\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1015, i32 44 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 918, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 935, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_name\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_version\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 810, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 808, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 820, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 818, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1010, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1011, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 867, i32 22 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1016, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 880, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 759, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 767, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 672, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 706, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 728, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [16 x i8] c"aem2_ro_sensors\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1021, i32 44 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"aem2_rw_sensors\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1039, i32 44 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1023, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1025, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1026, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1027, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1029, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1030, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1031, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1032, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1034, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1035, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 973, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1041, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 319, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.277 = private constant [26 x i8] c"../drivers/hwmon/ibmaem.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 1065, i32 3 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_alias229, ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_alias233, ptr @__UNIQUE_ID_alias234, ptr @__UNIQUE_ID_author223, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_aem_exit, ptr @__initcall__kmod_ibmaem__227_1094_aem_init6, ptr @aem_exit, ptr @aem_init._entry, ptr @aem_init._entry_ptr, ptr @aem_init_aem1._entry, ptr @aem_init_aem1._entry_ptr, ptr @aem_init_aem1_inst._entry, ptr @aem_init_aem1_inst._entry.17, ptr @aem_init_aem1_inst._entry_ptr, ptr @aem_init_aem1_inst._entry_ptr.20, ptr @aem_init_aem2._entry, ptr @aem_init_aem2._entry.34, ptr @aem_init_aem2._entry_ptr, ptr @aem_init_aem2._entry_ptr.36, ptr @aem_init_aem2_inst._entry, ptr @aem_init_aem2_inst._entry.38, ptr @aem_init_aem2_inst._entry_ptr, ptr @aem_init_aem2_inst._entry_ptr.39, ptr @aem_init_ipmi_data._entry, ptr @aem_init_ipmi_data._entry_ptr, ptr @aem_msg_handler._entry, ptr @aem_msg_handler._entry_ptr, ptr @aem_send_message._entry, ptr @aem_send_message._entry.10, ptr @aem_send_message._entry_ptr, ptr @aem_send_message._entry_ptr.12, ptr @driver_data, ptr @aem_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @init_completion.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @system_x_id, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @aem_init_aem1_inst.__key, ptr @.str.13, ptr @aem_ida, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @aem1_ro_sensors, ptr @aem1_rw_sensors, ptr @aem_register_sensors.__key, ptr @aem_register_sensors.__key.22, ptr @sensor_dev_attr_name, ptr @sensor_dev_attr_version, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @aem_init_aem2_inst.__key, ptr @.str.37, ptr @aem2_ro_sensors, ptr @aem2_rw_sensors, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @driver_data to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_ipmi_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @system_x_id to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_send_message._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem1_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_ida to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem1_inst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem1_inst._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem1_ro_sensors to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem1_rw_sensors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_register_sensors.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_register_sensors.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_name to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_version to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem2._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem2_inst.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem2_inst._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init_aem2_inst._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem2_ro_sensors to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem2_rw_sensors to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_msg_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @aem_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @ipmi_smi_watcher_unregister(ptr noundef getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 1)) #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @aem_driver, i32 0, i32 5)) #10
  %0 = load ptr, ptr @driver_data, align 4
  %cmp.not13 = icmp eq ptr %0, @driver_data
  br i1 %cmp.not13, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %p1.014 = phi ptr [ %next1.0, %for.body.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %p1.014 to i32
  call void @__asan_load4_noabort(i32 %1)
  %next1.0 = load ptr, ptr %p1.014, align 8
  tail call fastcc void @aem_delete(ptr noundef %p1.014)
  %cmp.not = icmp eq ptr %next1.0, @driver_data
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aem_delete(ptr noundef %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %data) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %data, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %data, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %pdev.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %list_del.exit
  %i.015.i = phi i32 [ 0, %list_del.exit ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 13, i32 %i.015.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef %arrayidx.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %aem_remove_sensors.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

aem_remove_sensors.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev5.i, ptr noundef nonnull @sensor_dev_attr_name) #10
  %14 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev.i, align 4
  %dev7.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev7.i, ptr noundef nonnull @sensor_dev_attr_version) #10
  %rs_resp = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 12
  %16 = ptrtoint ptr %rs_resp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rs_resp, align 4
  tail call void @kfree(ptr noundef %17) #10
  %hwmon_dev = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hwmon_dev, align 8
  tail call void @hwmon_device_unregister(ptr noundef %19) #10
  %user = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user, align 4
  %call = tail call i32 @ipmi_destroy_user(ptr noundef %21) #10
  %22 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %driver_data.i.i, align 4
  %25 = load ptr, ptr %pdev.i, align 4
  tail call void @platform_device_unregister(ptr noundef %25) #10
  %id = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 9
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 8
  tail call void @ida_free(ptr noundef nonnull @aem_ida, i32 noundef %27) #10
  tail call void @kfree(ptr noundef %data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @aem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @driver_register(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @aem_driver, i32 0, i32 5)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @ipmi_smi_watcher_register(ptr noundef getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 1)) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %ipmi_reg_err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

ipmi_reg_err:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.platform_driver, ptr @aem_driver, i32 0, i32 5)) #10
  br label %cleanup

cleanup:                                          ; preds = %ipmi_reg_err, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call2, %ipmi_reg_err ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aem_register_bmc(i32 noundef %iface, ptr noundef %dev) #3 align 64 {
entry:
  %fi_req.i.i = alloca %struct.aem_find_instance_req, align 1
  %fi_resp.i = alloca %struct.aem_find_instance_resp, align 1
  %ff_req.i.i = alloca %struct.aem_find_firmware_req, align 1
  %ff_resp.i.i = alloca %struct.aem_find_firmware_resp, align 4
  %probe = alloca %struct.aem_ipmi_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 132, ptr nonnull %probe) #10
  %0 = getelementptr inbounds i8, ptr %probe, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 128)
  %2 = ptrtoint ptr %probe to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %probe, align 4
  %wait.i.i = getelementptr inbounds %struct.completion, ptr %probe, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #10
  %bmc_device.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 10
  %3 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %bmc_device.i, align 4
  %address.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 1
  %4 = ptrtoint ptr %address.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 12, ptr %address.i, align 4
  %channel.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %channel.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 15, ptr %channel.i, align 4
  %data3.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %data3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %data3.i, align 2
  %interface.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 3
  %7 = ptrtoint ptr %interface.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %iface, ptr %interface.i, align 4
  %tx_msgid.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 5
  %8 = ptrtoint ptr %tx_msgid.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_msgid.i, align 4
  %tx_message.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 4
  %9 = ptrtoint ptr %tx_message.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 46, ptr %tx_message.i, align 4
  %user.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 2
  %call.i = call i32 @ipmi_create_user(i32 noundef %iface, ptr noundef getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 2), ptr noundef nonnull %probe, ptr noundef %user.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %aem_init_ipmi_data.exit, label %if.end

aem_init_ipmi_data.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interface.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %11) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ff_req.i.i) #10
  %12 = getelementptr inbounds %struct.aem_find_firmware_req, ptr %ff_req.i.i, i32 0, i32 2
  %13 = getelementptr inbounds %struct.aem_find_firmware_req, ptr %ff_req.i.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ff_resp.i.i) #10
  %14 = getelementptr inbounds %struct.aem_find_firmware_resp, ptr %ff_resp.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %ff_resp.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %ff_resp.i.i, align 4
  %16 = getelementptr inbounds i8, ptr %ff_req.i.i, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %16, align 1
  %18 = call ptr @memcpy(ptr %ff_req.i.i, ptr @system_x_id, i32 3)
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 2)
  store i16 0, ptr %12, align 1
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 2)
  store i16 1, ptr %13, align 1
  %cmd.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 -128, ptr %cmd.i.i, align 1
  %data2.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 4, i32 3
  %22 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %ff_req.i.i, ptr %data2.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 8, ptr %data_len.i.i, align 2
  %rx_msg_data.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 6
  %24 = ptrtoint ptr %rx_msg_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ff_resp.i.i, ptr %rx_msg_data.i.i, align 4
  %rx_msg_len.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 7
  %25 = ptrtoint ptr %rx_msg_len.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 4, ptr %rx_msg_len.i.i, align 4
  %call.i.i.i = call i32 @ipmi_validate_addr(ptr noundef %address.i, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end9.i.i.i

if.end.i.i.i:                                     ; preds = %if.end
  %26 = ptrtoint ptr %tx_msgid.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_msgid.i, align 4
  %inc.i.i.i = add i32 %27, 1
  store i32 %inc.i.i.i, ptr %tx_msgid.i, align 4
  %28 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %user.i, align 4
  %call3.i.i.i = call i32 @ipmi_request_settime(ptr noundef %29, ptr noundef %address.i, i32 noundef %inc.i.i.i, ptr noundef %tx_message.i, ptr noundef nonnull %probe, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call3.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.aem_send_message.exit.i.i_crit_edge, label %do.end.i.i.i

if.end.i.i.i.aem_send_message.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_send_message.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.8, i32 noundef %call3.i.i.i) #13
  br label %aem_send_message.exit.i.i

do.end9.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i) #13
  br label %aem_send_message.exit.i.i

aem_send_message.exit.i.i:                        ; preds = %do.end9.i.i.i, %do.end.i.i.i, %if.end.i.i.i.aem_send_message.exit.i.i_crit_edge
  %call4.i.i = call i32 @wait_for_completion_timeout(ptr noundef nonnull %probe, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i.i, label %aem_send_message.exit.i.i.aem_find_aem1_count.exit.thread.i_crit_edge, label %if.end.i.i

aem_send_message.exit.i.i.aem_find_aem1_count.exit.thread.i_crit_edge: ; preds = %aem_send_message.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_find_aem1_count.exit.thread.i

if.end.i.i:                                       ; preds = %aem_send_message.exit.i.i
  %rx_result.i.i = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 8
  %34 = ptrtoint ptr %rx_result.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rx_result.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool5.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool5.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.i.aem_find_aem1_count.exit.thread.i_crit_edge

if.end.i.i.aem_find_aem1_count.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_find_aem1_count.exit.thread.i

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %36 = ptrtoint ptr %rx_msg_len.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx_msg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %37)
  %cmp.not.i.i = icmp eq i16 %37, 4
  br i1 %cmp.not.i.i, label %lor.lhs.false9.i.i, label %lor.lhs.false.i.i.aem_find_aem1_count.exit.thread.i_crit_edge

lor.lhs.false.i.i.aem_find_aem1_count.exit.thread.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_find_aem1_count.exit.thread.i

lor.lhs.false9.i.i:                               ; preds = %lor.lhs.false.i.i
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %ff_resp.i.i, ptr noundef nonnull dereferenceable(3) @system_x_id, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool12.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool12.not.i.i, label %aem_find_aem1_count.exit.i, label %lor.lhs.false9.i.i.aem_find_aem1_count.exit.thread.i_crit_edge

lor.lhs.false9.i.i.aem_find_aem1_count.exit.thread.i_crit_edge: ; preds = %lor.lhs.false9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_find_aem1_count.exit.thread.i

aem_find_aem1_count.exit.thread.i:                ; preds = %lor.lhs.false9.i.i.aem_find_aem1_count.exit.thread.i_crit_edge, %lor.lhs.false.i.i.aem_find_aem1_count.exit.thread.i_crit_edge, %if.end.i.i.aem_find_aem1_count.exit.thread.i_crit_edge, %aem_send_message.exit.i.i.aem_find_aem1_count.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ff_resp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ff_req.i.i) #10
  br label %aem_init_aem1.exit

aem_find_aem1_count.exit.i:                       ; preds = %lor.lhs.false9.i.i
  %38 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %14, align 1
  %conv15.i.i = zext i8 %39 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ff_resp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ff_req.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp25.not.i = icmp eq i8 %39, 0
  br i1 %cmp25.not.i, label %aem_find_aem1_count.exit.i.aem_init_aem1.exit_crit_edge, label %aem_find_aem1_count.exit.i.for.body.i_crit_edge

aem_find_aem1_count.exit.i.for.body.i_crit_edge:  ; preds = %aem_find_aem1_count.exit.i
  br label %for.body.i

aem_find_aem1_count.exit.i.aem_init_aem1.exit_crit_edge: ; preds = %aem_find_aem1_count.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem1.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %aem_find_aem1_count.exit.i.for.body.i_crit_edge
  %i.026.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %aem_find_aem1_count.exit.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 752) #15
  %tobool.not.i8.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i8.i, label %for.body.i.do.end.i2_crit_edge, label %do.body.i.i

for.body.i.do.end.i2_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i2

do.body.i.i:                                      ; preds = %for.body.i
  %conv.i = trunc i32 %i.026.i to i8
  %lock.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @aem_init_aem1_inst.__key) #10
  %ver_major.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 6
  %41 = ptrtoint ptr %ver_major.i.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %ver_major.i.i, align 4
  %ver_minor.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %ver_minor.i.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %ver_minor.i.i, align 1
  %module_handle1.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 8
  %43 = ptrtoint ptr %module_handle1.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i, ptr %module_handle1.i.i, align 2
  %power_period.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 15
  %44 = ptrtoint ptr %power_period.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1000, ptr %power_period.i.i, align 8
  %call2.i.i = call i32 @ida_alloc_range(ptr noundef nonnull @aem_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %id.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call2.i.i, ptr %id.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp4.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp4.i.i, label %aem_init_aem1_inst.exit.thread22.i, label %if.end6.i.i

aem_init_aem1_inst.exit.thread22.i:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %do.end.i2

if.end6.i.i:                                      ; preds = %do.body.i.i
  %call8.i.i = call ptr @platform_device_alloc(ptr noundef nonnull @.str.14, i32 noundef %call2.i.i) #10
  %pdev.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 2
  %46 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i, ptr %pdev.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool10.not.i.i, label %if.end6.i.i.aem_init_aem1_inst.exit.i_crit_edge, label %if.end12.i.i

if.end6.i.i.aem_init_aem1_inst.exit.i_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem1_inst.exit.i

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %driver.i.i = getelementptr inbounds %struct.platform_device, ptr %call8.i.i, i32 0, i32 3, i32 6
  %47 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr getelementptr inbounds (%struct.platform_driver, ptr @aem_driver, i32 0, i32 5), ptr %driver.i.i, align 4
  %48 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i, align 4
  %call15.i.i = call i32 @platform_device_add(ptr noundef %49) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %tobool16.not.i.i = icmp eq i32 %call15.i.i, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.end12.i.i.ipmi_err.i.i_crit_edge

if.end12.i.i.ipmi_err.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmi_err.i.i

if.end18.i.i:                                     ; preds = %if.end12.i.i
  %50 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i.i.i, ptr %driver_data.i.i.i.i, align 4
  %ipmi.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10
  %53 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interface.i, align 4
  %55 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %bmc_device.i, align 4
  %57 = ptrtoint ptr %ipmi.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %ipmi.i.i, align 4
  %wait.i.i.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #10
  %bmc_device.i.i9.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 10
  %58 = ptrtoint ptr %bmc_device.i.i9.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %bmc_device.i.i9.i, align 4
  %address.i.i10.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1
  %59 = ptrtoint ptr %address.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 12, ptr %address.i.i10.i, align 4
  %channel.i.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1, i32 1
  %60 = ptrtoint ptr %channel.i.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 15, ptr %channel.i.i.i, align 8
  %data3.i.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 1, i32 2
  %61 = ptrtoint ptr %data3.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %data3.i.i.i, align 2
  %interface.i.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 3
  %62 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %54, ptr %interface.i.i.i, align 8
  %tx_msgid.i.i11.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 5
  %63 = ptrtoint ptr %tx_msgid.i.i11.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %tx_msgid.i.i11.i, align 4
  %tx_message.i.i12.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 4
  %64 = ptrtoint ptr %tx_message.i.i12.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 46, ptr %tx_message.i.i12.i, align 4
  %user.i.i13.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 10, i32 2
  %call.i.i14.i = call i32 @ipmi_create_user(i32 noundef %54, ptr noundef getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 2), ptr noundef %ipmi.i.i, ptr noundef %user.i.i13.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i14.i, 0
  br i1 %cmp.i.i.i, label %aem_init_ipmi_data.exit.i.i, label %if.end23.i.i

aem_init_ipmi_data.exit.i.i:                      ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %interface.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %interface.i.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str, i32 noundef %66) #13
  br label %ipmi_err.i.i

if.end23.i.i:                                     ; preds = %if.end18.i.i
  %67 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev.i.i, align 4
  %dev25.i.i = getelementptr inbounds %struct.platform_device, ptr %68, i32 0, i32 3
  %call26.i.i = call ptr @hwmon_device_register(ptr noundef %dev25.i.i) #10
  %hwmon_dev.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %hwmon_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call26.i.i, ptr %hwmon_dev.i.i, align 8
  %cmp.i111.i.i = icmp ugt ptr %call26.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111.i.i, label %do.end32.i.i, label %if.end38.i.i

do.end32.i.i:                                     ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pdev.i.i, align 4
  %dev34.i.i = getelementptr inbounds %struct.platform_device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %interface.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i.i, ptr noundef nonnull @.str.15, i32 noundef %73) #13
  %74 = ptrtoint ptr %hwmon_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hwmon_dev.i.i, align 8
  %76 = ptrtoint ptr %75 to i32
  br label %hwmon_reg_err.i.i

if.end38.i.i:                                     ; preds = %if.end23.i.i
  %update.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 11
  %77 = ptrtoint ptr %update.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @update_aem1_sensors, ptr %update.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %78 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i112.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %78, i32 noundef 3520, i32 noundef 11) #15
  %rs_resp.i.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i, i32 0, i32 12
  %79 = ptrtoint ptr %rs_resp.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call7.i.i112.i.i, ptr %rs_resp.i.i, align 4
  %tobool41.not.i.i = icmp eq ptr %call7.i.i112.i.i, null
  br i1 %tobool41.not.i.i, label %if.end38.i.i.alloc_resp_err.i.i_crit_edge, label %if.end43.i.i

if.end38.i.i.alloc_resp_err.i.i_crit_edge:        ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_resp_err.i.i

if.end43.i.i:                                     ; preds = %if.end38.i.i
  %call.i113.i.i = call fastcc i32 @aem_register_sensors(ptr noundef nonnull %call7.i.i.i.i, ptr noundef nonnull @aem1_ro_sensors, ptr noundef nonnull @aem1_rw_sensors) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113.i.i)
  %tobool45.not.i.i = icmp eq i32 %call.i113.i.i, 0
  br i1 %tobool45.not.i.i, label %if.end47.i.i, label %sensor_err.i.i

if.end47.i.i:                                     ; preds = %if.end43.i.i
  %80 = load ptr, ptr getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %80, ptr noundef nonnull @driver_data) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end47.i.i.aem_init_aem1_inst.exit.thread.i_crit_edge

if.end47.i.i.aem_init_aem1_inst.exit.thread.i_crit_edge: ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem1_inst.exit.thread.i

if.end.i.i.i.i:                                   ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i.i.i, ptr getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %81 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @driver_data, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %80, ptr %prev3.i.i.i.i, align 4
  %83 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %call7.i.i.i.i, ptr %80, align 4
  br label %aem_init_aem1_inst.exit.thread.i

aem_init_aem1_inst.exit.thread.i:                 ; preds = %if.end.i.i.i.i, %if.end47.i.i.aem_init_aem1_inst.exit.thread.i_crit_edge
  %84 = ptrtoint ptr %bmc_device.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %bmc_device.i.i9.i, align 4
  %86 = ptrtoint ptr %ver_major.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %ver_major.i.i, align 4
  %conv.i.i = zext i8 %87 to i32
  %88 = ptrtoint ptr %ver_minor.i.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %ver_minor.i.i, align 1
  %conv55.i.i = zext i8 %89 to i32
  %90 = ptrtoint ptr %module_handle1.i.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %module_handle1.i.i, align 2
  %conv57.i.i = zext i8 %91 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.18, i32 noundef %conv.i.i, i32 noundef %conv55.i.i, i32 noundef %conv57.i.i) #13
  br label %for.inc.i

sensor_err.i.i:                                   ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %rs_resp.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rs_resp.i.i, align 4
  call void @kfree(ptr noundef %93) #10
  br label %alloc_resp_err.i.i

alloc_resp_err.i.i:                               ; preds = %sensor_err.i.i, %if.end38.i.i.alloc_resp_err.i.i_crit_edge
  %res.0.i.i = phi i32 [ %call.i113.i.i, %sensor_err.i.i ], [ -12, %if.end38.i.i.alloc_resp_err.i.i_crit_edge ]
  %94 = ptrtoint ptr %hwmon_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hwmon_dev.i.i, align 8
  call void @hwmon_device_unregister(ptr noundef %95) #10
  br label %hwmon_reg_err.i.i

hwmon_reg_err.i.i:                                ; preds = %alloc_resp_err.i.i, %do.end32.i.i
  %res.1.i.i = phi i32 [ %76, %do.end32.i.i ], [ %res.0.i.i, %alloc_resp_err.i.i ]
  %96 = ptrtoint ptr %user.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %user.i.i13.i, align 4
  %call61.i.i = call i32 @ipmi_destroy_user(ptr noundef %97) #10
  br label %ipmi_err.i.i

ipmi_err.i.i:                                     ; preds = %hwmon_reg_err.i.i, %aem_init_ipmi_data.exit.i.i, %if.end12.i.i.ipmi_err.i.i_crit_edge
  %res.2.i.i = phi i32 [ %call15.i.i, %if.end12.i.i.ipmi_err.i.i_crit_edge ], [ %call.i.i14.i, %aem_init_ipmi_data.exit.i.i ], [ %res.1.i.i, %hwmon_reg_err.i.i ]
  %98 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev.i.i, align 4
  %driver_data.i.i114.i.i = getelementptr inbounds %struct.platform_device, ptr %99, i32 0, i32 3, i32 8
  %100 = ptrtoint ptr %driver_data.i.i114.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %driver_data.i.i114.i.i, align 4
  %101 = load ptr, ptr %pdev.i.i, align 4
  call void @platform_device_unregister(ptr noundef %101) #10
  br label %aem_init_aem1_inst.exit.i

aem_init_aem1_inst.exit.i:                        ; preds = %ipmi_err.i.i, %if.end6.i.i.aem_init_aem1_inst.exit.i_crit_edge
  %res.3.i.i = phi i32 [ %res.2.i.i, %ipmi_err.i.i ], [ -12, %if.end6.i.i.aem_init_aem1_inst.exit.i_crit_edge ]
  %102 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %id.i.i, align 8
  call void @ida_free(ptr noundef nonnull @aem_ida, i32 noundef %103) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.3.i.i)
  %tobool.not.i = icmp eq i32 %res.3.i.i, 0
  br i1 %tobool.not.i, label %aem_init_aem1_inst.exit.i.for.inc.i_crit_edge, label %aem_init_aem1_inst.exit.i.do.end.i2_crit_edge

aem_init_aem1_inst.exit.i.do.end.i2_crit_edge:    ; preds = %aem_init_aem1_inst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i2

aem_init_aem1_inst.exit.i.for.inc.i_crit_edge:    ; preds = %aem_init_aem1_inst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

do.end.i2:                                        ; preds = %aem_init_aem1_inst.exit.i.do.end.i2_crit_edge, %aem_init_aem1_inst.exit.thread22.i, %for.body.i.do.end.i2_crit_edge
  %retval.0.i1521.i = phi i32 [ %res.3.i.i, %aem_init_aem1_inst.exit.i.do.end.i2_crit_edge ], [ -12, %aem_init_aem1_inst.exit.thread22.i ], [ -12, %for.body.i.do.end.i2_crit_edge ]
  %104 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %105, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i1521.i, i32 noundef %i.026.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i2, %aem_init_aem1_inst.exit.i.for.inc.i_crit_edge, %aem_init_aem1_inst.exit.thread.i
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv15.i.i
  br i1 %exitcond.not.i, label %for.inc.i.aem_init_aem1.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.aem_init_aem1.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem1.exit

aem_init_aem1.exit:                               ; preds = %for.inc.i.aem_init_aem1.exit_crit_edge, %aem_find_aem1_count.exit.i.aem_init_aem1.exit_crit_edge, %aem_find_aem1_count.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %fi_resp.i) #10
  %106 = getelementptr inbounds %struct.aem_find_instance_resp, ptr %fi_resp.i, i32 0, i32 1
  %107 = getelementptr inbounds %struct.aem_find_instance_resp, ptr %fi_resp.i, i32 0, i32 2
  %108 = getelementptr inbounds %struct.aem_find_instance_resp, ptr %fi_resp.i, i32 0, i32 3
  %109 = getelementptr inbounds %struct.aem_find_instance_resp, ptr %fi_resp.i, i32 0, i32 4
  %rx_result.i.i3 = getelementptr inbounds %struct.aem_ipmi_data, ptr %probe, i32 0, i32 8
  %110 = getelementptr inbounds %struct.aem_find_instance_req, ptr %fi_req.i.i, i32 0, i32 1
  %111 = getelementptr inbounds %struct.aem_find_instance_req, ptr %fi_req.i.i, i32 0, i32 2
  %112 = call ptr @memset(ptr %fi_resp.i, i32 255, i32 9)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.backedge.i, %aem_init_aem1.exit
  %i.0.i = phi i32 [ 0, %aem_init_aem1.exit ], [ %i.0.be.i, %while.cond.backedge.i ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %fi_req.i.i) #10
  %113 = call ptr @memcpy(ptr %fi_req.i.i, ptr @system_x_id, i32 3)
  %conv.i.i15 = trunc i32 %i.0.i to i8
  %114 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv.i.i15, ptr %110, align 1
  %115 = ptrtoint ptr %111 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 2)
  store i16 1, ptr %111, align 1
  %116 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 -126, ptr %cmd.i.i, align 1
  %117 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %fi_req.i.i, ptr %data2.i.i, align 4
  %118 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 6, ptr %data_len.i.i, align 2
  %119 = ptrtoint ptr %rx_msg_data.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %fi_resp.i, ptr %rx_msg_data.i.i, align 4
  %120 = ptrtoint ptr %rx_msg_len.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 9, ptr %rx_msg_len.i.i, align 4
  %call.i.i.i16 = call i32 @ipmi_validate_addr(ptr noundef %address.i, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i16)
  %tobool.not.i.i.i17 = icmp eq i32 %call.i.i.i16, 0
  br i1 %tobool.not.i.i.i17, label %if.end.i.i.i21, label %do.end9.i.i.i23

if.end.i.i.i21:                                   ; preds = %while.cond.i
  %121 = ptrtoint ptr %tx_msgid.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %tx_msgid.i, align 4
  %inc.i.i.i18 = add i32 %122, 1
  store i32 %inc.i.i.i18, ptr %tx_msgid.i, align 4
  %123 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %user.i, align 4
  %call3.i.i.i19 = call i32 @ipmi_request_settime(ptr noundef %124, ptr noundef %address.i, i32 noundef %inc.i.i.i18, ptr noundef %tx_message.i, ptr noundef nonnull %probe, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i19)
  %tobool4.not.i.i.i20 = icmp eq i32 %call3.i.i.i19, 0
  br i1 %tobool4.not.i.i.i20, label %if.end.i.i.i21.aem_send_message.exit.i.i26_crit_edge, label %do.end.i.i.i22

if.end.i.i.i21.aem_send_message.exit.i.i26_crit_edge: ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_send_message.exit.i.i26

do.end.i.i.i22:                                   ; preds = %if.end.i.i.i21
  call void @__sanitizer_cov_trace_pc() #12
  %125 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.8, i32 noundef %call3.i.i.i19) #13
  br label %aem_send_message.exit.i.i26

do.end9.i.i.i23:                                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %128, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i16) #13
  br label %aem_send_message.exit.i.i26

aem_send_message.exit.i.i26:                      ; preds = %do.end9.i.i.i23, %do.end.i.i.i22, %if.end.i.i.i21.aem_send_message.exit.i.i26_crit_edge
  %call4.i.i24 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %probe, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %call4.i.i24, 0
  br i1 %tobool.not.i.i25, label %aem_send_message.exit.i.i26.aem_init_aem2.exit_crit_edge, label %if.end.i.i27

aem_send_message.exit.i.i26.aem_init_aem2.exit_crit_edge: ; preds = %aem_send_message.exit.i.i26
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2.exit

if.end.i.i27:                                     ; preds = %aem_send_message.exit.i.i26
  %129 = ptrtoint ptr %rx_result.i.i3 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %rx_result.i.i3, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool6.not.i.i = icmp eq i8 %130, 0
  br i1 %tobool6.not.i.i, label %lor.lhs.false.i.i29, label %if.end.i.i27.aem_init_aem2.exit_crit_edge

if.end.i.i27.aem_init_aem2.exit_crit_edge:        ; preds = %if.end.i.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2.exit

lor.lhs.false.i.i29:                              ; preds = %if.end.i.i27
  %131 = ptrtoint ptr %rx_msg_len.i.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %rx_msg_len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %132)
  %cmp.not.i.i28 = icmp eq i16 %132, 9
  br i1 %cmp.not.i.i28, label %lor.lhs.false10.i.i, label %lor.lhs.false.i.i29.aem_init_aem2.exit_crit_edge

lor.lhs.false.i.i29.aem_init_aem2.exit_crit_edge: ; preds = %lor.lhs.false.i.i29
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2.exit

lor.lhs.false10.i.i:                              ; preds = %lor.lhs.false.i.i29
  %bcmp.i.i30 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %fi_resp.i, ptr noundef nonnull dereferenceable(3) @system_x_id, i32 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i30)
  %tobool13.not.i.i = icmp eq i32 %bcmp.i.i30, 0
  br i1 %tobool13.not.i.i, label %lor.lhs.false14.i.i, label %lor.lhs.false10.i.i.aem_init_aem2.exit_crit_edge

lor.lhs.false10.i.i.aem_init_aem2.exit_crit_edge: ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2.exit

lor.lhs.false14.i.i:                              ; preds = %lor.lhs.false10.i.i
  %133 = ptrtoint ptr %106 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %106, align 1
  %conv15.i.i31 = zext i8 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %conv15.i.i31)
  %cmp16.not.i.i = icmp ult i32 %i.0.i, %conv15.i.i31
  br i1 %cmp16.not.i.i, label %while.body.i, label %lor.lhs.false14.i.i.aem_init_aem2.exit_crit_edge

lor.lhs.false14.i.i.aem_init_aem2.exit_crit_edge: ; preds = %lor.lhs.false14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2.exit

while.body.i:                                     ; preds = %lor.lhs.false14.i.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fi_req.i.i) #10
  %135 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %107, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %136)
  %cmp.not.i = icmp eq i8 %136, 2
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i33

do.end.i33:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i32 = zext i8 %136 to i32
  %137 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.32, i32 noundef %conv.i32) #13
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %do.end9.i, %aem_init_aem2_inst.exit.i.while.cond.backedge.i_crit_edge, %aem_init_aem2_inst.exit.thread.i, %do.end.i33
  %i.0.be.i = add nuw nsw i32 %i.0.i, 1
  br label %while.cond.i

if.end.i:                                         ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %139 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i.i34 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %139, i32 noundef 3520, i32 noundef 752) #15
  %tobool.not.i20.i = icmp eq ptr %call7.i.i.i.i34, null
  br i1 %tobool.not.i20.i, label %if.end.i.do.end9.i_crit_edge, label %do.body.i.i42

if.end.i.do.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

do.body.i.i42:                                    ; preds = %if.end.i
  %lock.i.i35 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 3
  call void @__mutex_init(ptr noundef %lock.i.i35, ptr noundef nonnull @.str.13, ptr noundef nonnull @aem_init_aem2_inst.__key) #10
  %140 = ptrtoint ptr %107 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %107, align 1
  %ver_major.i.i36 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 6
  %142 = ptrtoint ptr %ver_major.i.i36 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %141, ptr %ver_major.i.i36, align 4
  %143 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %108, align 1
  %ver_minor.i.i37 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 7
  %145 = ptrtoint ptr %ver_minor.i.i37 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %ver_minor.i.i37, align 1
  %146 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %109, align 1
  %module_handle1.i.i38 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 8
  %148 = ptrtoint ptr %module_handle1.i.i38 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %147, ptr %module_handle1.i.i38, align 2
  %arrayidx.i.i = getelementptr %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 15, i32 0
  %149 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 1000, ptr %arrayidx.i.i, align 8
  %arrayidx.1.i.i = getelementptr %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 15, i32 1
  %150 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 1000, ptr %arrayidx.1.i.i, align 4
  %call2.i.i39 = call i32 @ida_alloc_range(ptr noundef nonnull @aem_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %id.i.i40 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 9
  %151 = ptrtoint ptr %id.i.i40 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %call2.i.i39, ptr %id.i.i40, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i39)
  %cmp4.i.i41 = icmp slt i32 %call2.i.i39, 0
  br i1 %cmp4.i.i41, label %aem_init_aem2_inst.exit.thread37.i, label %if.end6.i.i46

aem_init_aem2_inst.exit.thread37.i:               ; preds = %do.body.i.i42
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i34) #10
  br label %do.end9.i

if.end6.i.i46:                                    ; preds = %do.body.i.i42
  %call8.i.i43 = call ptr @platform_device_alloc(ptr noundef nonnull @.str.14, i32 noundef %call2.i.i39) #10
  %pdev.i.i44 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 2
  %152 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call8.i.i43, ptr %pdev.i.i44, align 4
  %tobool10.not.i.i45 = icmp eq ptr %call8.i.i43, null
  br i1 %tobool10.not.i.i45, label %if.end6.i.i46.aem_init_aem2_inst.exit.i_crit_edge, label %if.end12.i.i50

if.end6.i.i46.aem_init_aem2_inst.exit.i_crit_edge: ; preds = %if.end6.i.i46
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2_inst.exit.i

if.end12.i.i50:                                   ; preds = %if.end6.i.i46
  %driver.i.i47 = getelementptr inbounds %struct.platform_device, ptr %call8.i.i43, i32 0, i32 3, i32 6
  %153 = ptrtoint ptr %driver.i.i47 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr getelementptr inbounds (%struct.platform_driver, ptr @aem_driver, i32 0, i32 5), ptr %driver.i.i47, align 4
  %154 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %pdev.i.i44, align 4
  %call15.i.i48 = call i32 @platform_device_add(ptr noundef %155) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i48)
  %tobool16.not.i.i49 = icmp eq i32 %call15.i.i48, 0
  br i1 %tobool16.not.i.i49, label %if.end18.i.i58, label %if.end12.i.i50.ipmi_err.i.i85_crit_edge

if.end12.i.i50.ipmi_err.i.i85_crit_edge:          ; preds = %if.end12.i.i50
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipmi_err.i.i85

if.end18.i.i58:                                   ; preds = %if.end12.i.i50
  %156 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %pdev.i.i44, align 4
  %driver_data.i.i.i.i51 = getelementptr inbounds %struct.platform_device, ptr %157, i32 0, i32 3, i32 8
  %158 = ptrtoint ptr %driver_data.i.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %call7.i.i.i.i34, ptr %driver_data.i.i.i.i51, align 4
  %ipmi.i.i52 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10
  %159 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %interface.i, align 4
  %161 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %bmc_device.i, align 4
  %163 = ptrtoint ptr %ipmi.i.i52 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 0, ptr %ipmi.i.i52, align 4
  %wait.i.i.i.i53 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i.i.i53, ptr noundef nonnull @.str.5, ptr noundef nonnull @init_completion.__key) #10
  %bmc_device.i.i21.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 10
  %164 = ptrtoint ptr %bmc_device.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %162, ptr %bmc_device.i.i21.i, align 4
  %address.i.i22.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 1
  %165 = ptrtoint ptr %address.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 12, ptr %address.i.i22.i, align 4
  %channel.i.i.i54 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 1, i32 1
  %166 = ptrtoint ptr %channel.i.i.i54 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 15, ptr %channel.i.i.i54, align 8
  %data3.i.i.i55 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 1, i32 2
  %167 = ptrtoint ptr %data3.i.i.i55 to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %data3.i.i.i55, align 2
  %interface.i.i.i56 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 3
  %168 = ptrtoint ptr %interface.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %160, ptr %interface.i.i.i56, align 8
  %tx_msgid.i.i23.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 5
  %169 = ptrtoint ptr %tx_msgid.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 0, ptr %tx_msgid.i.i23.i, align 4
  %tx_message.i.i24.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 4
  %170 = ptrtoint ptr %tx_message.i.i24.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 46, ptr %tx_message.i.i24.i, align 4
  %user.i.i25.i = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 10, i32 2
  %call.i.i26.i = call i32 @ipmi_create_user(i32 noundef %160, ptr noundef getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 2), ptr noundef %ipmi.i.i52, ptr noundef %user.i.i25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %cmp.i.i.i57 = icmp slt i32 %call.i.i26.i, 0
  br i1 %cmp.i.i.i57, label %aem_init_ipmi_data.exit.i.i59, label %if.end23.i.i63

aem_init_ipmi_data.exit.i.i59:                    ; preds = %if.end18.i.i58
  call void @__sanitizer_cov_trace_pc() #12
  %171 = ptrtoint ptr %interface.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %interface.i.i.i56, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %162, ptr noundef nonnull @.str, i32 noundef %172) #13
  br label %ipmi_err.i.i85

if.end23.i.i63:                                   ; preds = %if.end18.i.i58
  %173 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev.i.i44, align 4
  %dev25.i.i60 = getelementptr inbounds %struct.platform_device, ptr %174, i32 0, i32 3
  %call26.i.i61 = call ptr @hwmon_device_register(ptr noundef %dev25.i.i60) #10
  %hwmon_dev.i.i62 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 1
  %175 = ptrtoint ptr %hwmon_dev.i.i62 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %call26.i.i61, ptr %hwmon_dev.i.i62, align 8
  %cmp.i113.i.i = icmp ugt ptr %call26.i.i61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i113.i.i, label %do.end32.i.i65, label %if.end38.i.i69

do.end32.i.i65:                                   ; preds = %if.end23.i.i63
  call void @__sanitizer_cov_trace_pc() #12
  %176 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %pdev.i.i44, align 4
  %dev34.i.i64 = getelementptr inbounds %struct.platform_device, ptr %177, i32 0, i32 3
  %178 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %interface.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34.i.i64, ptr noundef nonnull @.str.15, i32 noundef %179) #13
  %180 = ptrtoint ptr %hwmon_dev.i.i62 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %hwmon_dev.i.i62, align 8
  %182 = ptrtoint ptr %181 to i32
  br label %hwmon_reg_err.i.i83

if.end38.i.i69:                                   ; preds = %if.end23.i.i63
  %update.i.i66 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 11
  %183 = ptrtoint ptr %update.i.i66 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @update_aem2_sensors, ptr %update.i.i66, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %184 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i114.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3520, i32 noundef 11) #15
  %rs_resp.i.i67 = getelementptr inbounds %struct.aem_data, ptr %call7.i.i.i.i34, i32 0, i32 12
  %185 = ptrtoint ptr %rs_resp.i.i67 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %call7.i.i114.i.i, ptr %rs_resp.i.i67, align 4
  %tobool41.not.i.i68 = icmp eq ptr %call7.i.i114.i.i, null
  br i1 %tobool41.not.i.i68, label %if.end38.i.i69.alloc_resp_err.i.i80_crit_edge, label %if.end43.i.i71

if.end38.i.i69.alloc_resp_err.i.i80_crit_edge:    ; preds = %if.end38.i.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %alloc_resp_err.i.i80

if.end43.i.i71:                                   ; preds = %if.end38.i.i69
  %call.i115.i.i = call fastcc i32 @aem_register_sensors(ptr noundef nonnull %call7.i.i.i.i34, ptr noundef nonnull @aem2_ro_sensors, ptr noundef nonnull @aem2_rw_sensors) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115.i.i)
  %tobool45.not.i.i70 = icmp eq i32 %call.i115.i.i, 0
  br i1 %tobool45.not.i.i70, label %if.end47.i.i73, label %sensor_err.i.i78

if.end47.i.i73:                                   ; preds = %if.end43.i.i71
  %186 = load ptr, ptr getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %call.i.i.i.i72 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i34, ptr noundef %186, ptr noundef nonnull @driver_data) #10
  br i1 %call.i.i.i.i72, label %if.end.i.i.i.i75, label %if.end47.i.i73.aem_init_aem2_inst.exit.thread.i_crit_edge

if.end47.i.i73.aem_init_aem2_inst.exit.thread.i_crit_edge: ; preds = %if.end47.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_init_aem2_inst.exit.thread.i

if.end.i.i.i.i75:                                 ; preds = %if.end47.i.i73
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i.i.i34, ptr getelementptr inbounds (%struct.aem_driver_data, ptr @driver_data, i32 0, i32 0, i32 1), align 4
  %187 = ptrtoint ptr %call7.i.i.i.i34 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @driver_data, ptr %call7.i.i.i.i34, align 8
  %prev3.i.i.i.i74 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i34, i32 0, i32 1
  %188 = ptrtoint ptr %prev3.i.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %186, ptr %prev3.i.i.i.i74, align 4
  %189 = ptrtoint ptr %186 to i32
  call void @__asan_store4_noabort(i32 %189)
  store volatile ptr %call7.i.i.i.i34, ptr %186, align 4
  br label %aem_init_aem2_inst.exit.thread.i

aem_init_aem2_inst.exit.thread.i:                 ; preds = %if.end.i.i.i.i75, %if.end47.i.i73.aem_init_aem2_inst.exit.thread.i_crit_edge
  %190 = ptrtoint ptr %bmc_device.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %bmc_device.i.i21.i, align 4
  %192 = ptrtoint ptr %ver_major.i.i36 to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %ver_major.i.i36, align 4
  %conv.i27.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %ver_minor.i.i37 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ver_minor.i.i37, align 1
  %conv55.i.i76 = zext i8 %195 to i32
  %196 = ptrtoint ptr %module_handle1.i.i38 to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %module_handle1.i.i38, align 2
  %conv57.i.i77 = zext i8 %197 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %191, ptr noundef nonnull @.str.18, i32 noundef %conv.i27.i, i32 noundef %conv55.i.i76, i32 noundef %conv57.i.i77) #13
  br label %while.cond.backedge.i

sensor_err.i.i78:                                 ; preds = %if.end43.i.i71
  call void @__sanitizer_cov_trace_pc() #12
  %198 = ptrtoint ptr %rs_resp.i.i67 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %rs_resp.i.i67, align 4
  call void @kfree(ptr noundef %199) #10
  br label %alloc_resp_err.i.i80

alloc_resp_err.i.i80:                             ; preds = %sensor_err.i.i78, %if.end38.i.i69.alloc_resp_err.i.i80_crit_edge
  %res.0.i.i79 = phi i32 [ %call.i115.i.i, %sensor_err.i.i78 ], [ -12, %if.end38.i.i69.alloc_resp_err.i.i80_crit_edge ]
  %200 = ptrtoint ptr %hwmon_dev.i.i62 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %hwmon_dev.i.i62, align 8
  call void @hwmon_device_unregister(ptr noundef %201) #10
  br label %hwmon_reg_err.i.i83

hwmon_reg_err.i.i83:                              ; preds = %alloc_resp_err.i.i80, %do.end32.i.i65
  %res.1.i.i81 = phi i32 [ %182, %do.end32.i.i65 ], [ %res.0.i.i79, %alloc_resp_err.i.i80 ]
  %202 = ptrtoint ptr %user.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %user.i.i25.i, align 4
  %call61.i.i82 = call i32 @ipmi_destroy_user(ptr noundef %203) #10
  br label %ipmi_err.i.i85

ipmi_err.i.i85:                                   ; preds = %hwmon_reg_err.i.i83, %aem_init_ipmi_data.exit.i.i59, %if.end12.i.i50.ipmi_err.i.i85_crit_edge
  %res.2.i.i84 = phi i32 [ %call15.i.i48, %if.end12.i.i50.ipmi_err.i.i85_crit_edge ], [ %call.i.i26.i, %aem_init_ipmi_data.exit.i.i59 ], [ %res.1.i.i81, %hwmon_reg_err.i.i83 ]
  %204 = ptrtoint ptr %pdev.i.i44 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %pdev.i.i44, align 4
  %driver_data.i.i116.i.i = getelementptr inbounds %struct.platform_device, ptr %205, i32 0, i32 3, i32 8
  %206 = ptrtoint ptr %driver_data.i.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %driver_data.i.i116.i.i, align 4
  %207 = load ptr, ptr %pdev.i.i44, align 4
  call void @platform_device_unregister(ptr noundef %207) #10
  br label %aem_init_aem2_inst.exit.i

aem_init_aem2_inst.exit.i:                        ; preds = %ipmi_err.i.i85, %if.end6.i.i46.aem_init_aem2_inst.exit.i_crit_edge
  %res.3.i.i86 = phi i32 [ %res.2.i.i84, %ipmi_err.i.i85 ], [ -12, %if.end6.i.i46.aem_init_aem2_inst.exit.i_crit_edge ]
  %208 = ptrtoint ptr %id.i.i40 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %id.i.i40, align 8
  call void @ida_free(ptr noundef nonnull @aem_ida, i32 noundef %209) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i34) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.3.i.i86)
  %tobool5.not.i = icmp eq i32 %res.3.i.i86, 0
  br i1 %tobool5.not.i, label %aem_init_aem2_inst.exit.i.while.cond.backedge.i_crit_edge, label %aem_init_aem2_inst.exit.i.do.end9.i_crit_edge

aem_init_aem2_inst.exit.i.do.end9.i_crit_edge:    ; preds = %aem_init_aem2_inst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9.i

aem_init_aem2_inst.exit.i.while.cond.backedge.i_crit_edge: ; preds = %aem_init_aem2_inst.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge.i

do.end9.i:                                        ; preds = %aem_init_aem2_inst.exit.i.do.end9.i_crit_edge, %aem_init_aem2_inst.exit.thread37.i, %if.end.i.do.end9.i_crit_edge
  %retval.0.i2836.i = phi i32 [ %res.3.i.i86, %aem_init_aem2_inst.exit.i.do.end9.i_crit_edge ], [ -12, %aem_init_aem2_inst.exit.thread37.i ], [ -12, %if.end.i.do.end9.i_crit_edge ]
  %210 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %bmc_device.i, align 4
  %212 = ptrtoint ptr %109 to i32
  call void @__asan_load1_noabort(i32 %212)
  %213 = load i8, ptr %109, align 1
  %conv11.i = zext i8 %213 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %211, ptr noundef nonnull @.str.35, i32 noundef %retval.0.i2836.i, i32 noundef %conv11.i) #13
  br label %while.cond.backedge.i

aem_init_aem2.exit:                               ; preds = %lor.lhs.false14.i.i.aem_init_aem2.exit_crit_edge, %lor.lhs.false10.i.i.aem_init_aem2.exit_crit_edge, %lor.lhs.false.i.i29.aem_init_aem2.exit_crit_edge, %if.end.i.i27.aem_init_aem2.exit_crit_edge, %aem_send_message.exit.i.i26.aem_init_aem2.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %fi_req.i.i) #10
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %fi_resp.i) #10
  %214 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %user.i, align 4
  %call1 = call i32 @ipmi_destroy_user(ptr noundef %215) #10
  br label %cleanup

cleanup:                                          ; preds = %aem_init_aem2.exit, %aem_init_ipmi_data.exit
  call void @llvm.lifetime.end.p0(i64 132, ptr nonnull %probe) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aem_bmc_gone(i32 noundef %iface) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @driver_data, align 4
  %cmp.not16 = icmp eq ptr %0, @driver_data
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %p1.017 = phi ptr [ %next1.018, %for.inc.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %p1.017 to i32
  call void @__asan_load4_noabort(i32 %1)
  %next1.018 = load ptr, ptr %p1.017, align 8
  %interface = getelementptr inbounds %struct.aem_data, ptr %p1.017, i32 0, i32 10, i32 3
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %iface)
  %cmp5 = icmp eq i32 %3, %iface
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @aem_delete(ptr noundef %p1.017)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %next1.018, @driver_data
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aem_msg_handler(ptr noundef %msg, ptr noundef %user_msg_data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %msgid = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 4
  %0 = ptrtoint ptr %msgid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msgid, align 4
  %tx_msgid = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 5
  %2 = ptrtoint ptr %tx_msgid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_msgid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %bmc_device = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 10
  %4 = ptrtoint ptr %bmc_device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmc_device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, i32 noundef %1, i32 noundef %3) #13
  tail call void @ipmi_free_recv_msg(ptr noundef %msg) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %recv_type = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %recv_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %recv_type, align 4
  %rx_recv_type = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 9
  %8 = ptrtoint ptr %rx_recv_type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_recv_type, align 4
  %data_len = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp4.not = icmp eq i16 %10, 0
  br i1 %cmp4.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %data8 = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %11 = ptrtoint ptr %data8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data8, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %.sink = phi i8 [ %14, %if.then6 ], [ -1, %if.end.if.end10_crit_edge ]
  %15 = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 2
  %17 = ptrtoint ptr %data_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %data_len, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %18)
  %cmp14 = icmp ugt i16 %18, 1
  br i1 %cmp14, label %if.then16, label %if.else33

if.then16:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %sub = add i16 %18, -1
  %rx_msg_len = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 7
  %19 = ptrtoint ptr %rx_msg_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %rx_msg_len, align 4
  %21 = tail call i16 @llvm.umin.i16(i16 %20, i16 %sub)
  %22 = ptrtoint ptr %rx_msg_len to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %rx_msg_len, align 4
  %rx_msg_data = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 6
  %23 = ptrtoint ptr %rx_msg_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_msg_data, align 4
  %data30 = getelementptr inbounds %struct.ipmi_recv_msg, ptr %msg, i32 0, i32 5, i32 3
  %25 = ptrtoint ptr %data30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data30, align 4
  %add.ptr = getelementptr i8, ptr %26, i32 1
  %conv32 = zext i16 %21 to i32
  %27 = call ptr @memcpy(ptr %24, ptr %add.ptr, i32 %conv32)
  br label %if.end35

if.else33:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %rx_msg_len34 = getelementptr inbounds %struct.aem_ipmi_data, ptr %user_msg_data, i32 0, i32 7
  %28 = ptrtoint ptr %rx_msg_len34 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %rx_msg_len34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then16
  tail call void @ipmi_free_recv_msg(ptr noundef %msg) #10
  tail call void @complete(ptr noundef %user_msg_data) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_destroy_user(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_create_user(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_validate_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_request_settime(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_aem1_sensors(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_updated = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_updated, align 8
  %add.neg = add i32 %0, -100
  %sub = sub i32 %add.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 14, i32 0
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %arrayidx.i.i, i32 noundef 8) #10
  %ver_major.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %ver_major.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ver_major.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp ult i8 %6, 2
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end.i

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i4.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 14, i32 1
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %arrayidx.i4.i, i32 noundef 8) #10
  br label %out

out:                                              ; preds = %if.end.i, %if.end.out_crit_edge, %land.lhs.true.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext %elt, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %buf, i32 noundef %size) unnamed_addr #3 align 64 {
entry:
  %rs_req = alloca %struct.aem_read_sensor_req, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rs_req) #10
  %rs_resp1 = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %rs_resp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rs_resp1, align 4
  %2 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %size, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge1
    i32 4, label %entry.sw.epilog_crit_edge2
    i32 8, label %entry.sw.epilog_crit_edge3
  ]

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge1, %entry.sw.epilog_crit_edge2, %entry.sw.epilog_crit_edge3
  %3 = getelementptr inbounds %struct.aem_read_sensor_req, ptr %rs_req, i32 0, i32 5
  %4 = getelementptr inbounds %struct.aem_read_sensor_req, ptr %rs_req, i32 0, i32 4
  %5 = getelementptr inbounds %struct.aem_read_sensor_req, ptr %rs_req, i32 0, i32 3
  %6 = getelementptr inbounds %struct.aem_read_sensor_req, ptr %rs_req, i32 0, i32 2
  %7 = getelementptr inbounds %struct.aem_read_sensor_req, ptr %rs_req, i32 0, i32 1
  %ipmi2 = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10
  %8 = call ptr @memcpy(ptr %rs_req, ptr @system_x_id, i32 3)
  %module_handle = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 8
  %9 = ptrtoint ptr %module_handle to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %module_handle, align 2
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %7, align 1
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %elt, ptr %6, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -126, ptr %5, align 1
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %reg, ptr %4, align 1
  %conv = trunc i32 %size to i8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %3, align 1
  %cmd = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 4, i32 1
  %16 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -127, ptr %cmd, align 1
  %data6 = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 4, i32 3
  %17 = ptrtoint ptr %data6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %rs_req, ptr %data6, align 4
  %data_len = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 4, i32 2
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 8, ptr %data_len, align 2
  %add = add nuw nsw i32 %size, 3
  %rx_msg_data = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 6
  %19 = ptrtoint ptr %rx_msg_data to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %rx_msg_data, align 4
  %conv8 = trunc i32 %add to i16
  %rx_msg_len = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 7
  %20 = ptrtoint ptr %rx_msg_len to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv8, ptr %rx_msg_len, align 4
  %address.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 1
  %call.i = call i32 @ipmi_validate_addr(ptr noundef %address.i, i32 noundef 40) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end9.i

if.end.i:                                         ; preds = %sw.epilog
  %tx_msgid.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %tx_msgid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tx_msgid.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %tx_msgid.i, align 4
  %user.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %user.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %user.i, align 4
  %tx_message.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 4
  %call3.i = call i32 @ipmi_request_settime(ptr noundef %24, ptr noundef %address.i, i32 noundef %inc.i, ptr noundef %tx_message.i, ptr noundef %ipmi2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.aem_send_message.exit_crit_edge, label %do.end.i

if.end.i.aem_send_message.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %aem_send_message.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %bmc_device.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 10
  %25 = ptrtoint ptr %bmc_device.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bmc_device.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.8, i32 noundef %call3.i) #13
  br label %aem_send_message.exit

do.end9.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %bmc_device10.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 10
  %27 = ptrtoint ptr %bmc_device10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bmc_device10.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call.i) #13
  br label %aem_send_message.exit

aem_send_message.exit:                            ; preds = %do.end9.i, %do.end.i, %if.end.i.aem_send_message.exit_crit_edge
  %call9 = call i32 @wait_for_completion_timeout(ptr noundef %ipmi2, i32 noundef 3000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %aem_send_message.exit.cleanup_crit_edge, label %if.end

aem_send_message.exit.cleanup_crit_edge:          ; preds = %aem_send_message.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %aem_send_message.exit
  %rx_result = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 10, i32 8
  %29 = ptrtoint ptr %rx_result to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx_result, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool11.not = icmp eq i8 %30, 0
  br i1 %tobool11.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %31 = ptrtoint ptr %rx_msg_len to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %rx_msg_len, align 4
  %conv13 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv13)
  %cmp.not = icmp eq i32 %add, %conv13
  br i1 %cmp.not, label %lor.lhs.false15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false15:                                  ; preds = %lor.lhs.false
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(3) %1, ptr noundef nonnull dereferenceable(3) @system_x_id, i32 3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool18.not = icmp eq i32 %bcmp, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false15.cleanup_crit_edge

lor.lhs.false15.cleanup_crit_edge:                ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false15
  %33 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %size, label %if.end20.cleanup_crit_edge [
    i32 1, label %sw.bb21
    i32 2, label %sw.bb22
    i32 4, label %sw.bb26
    i32 8, label %sw.bb31
  ]

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb21:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %bytes = getelementptr inbounds %struct.aem_read_sensor_resp, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %bytes to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bytes, align 1
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %buf, align 1
  br label %cleanup

sw.bb22:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %bytes24 = getelementptr inbounds %struct.aem_read_sensor_resp, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %bytes24 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %bytes24, align 2
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %buf, align 2
  br label %cleanup

sw.bb26:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %bytes28 = getelementptr inbounds %struct.aem_read_sensor_resp, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %bytes28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bytes28, align 4
  %42 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %buf, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %bytes33 = getelementptr inbounds %struct.aem_read_sensor_resp, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %bytes33 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %bytes33, align 8
  %45 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %buf, align 8
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb26, %sw.bb22, %sw.bb21, %if.end20.cleanup_crit_edge, %lor.lhs.false15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %aem_send_message.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rs_req) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aem_register_sensors(ptr noundef %data, ptr nocapture noundef readonly %ro, ptr nocapture noundef readonly %rw) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %sensors2 = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 13
  %2 = ptrtoint ptr %ro to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ro, align 4
  %tobool.not94 = icmp eq ptr %3, null
  br i1 %tobool.not94, label %entry.while.cond17.preheader_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.while.cond17.preheader_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %if.end.while.cond17.preheader_crit_edge, %entry.while.cond17.preheader_crit_edge
  %sensors.0.lcssa = phi ptr [ %sensors2, %entry.while.cond17.preheader_crit_edge ], [ %incdec.ptr, %if.end.while.cond17.preheader_crit_edge ]
  %4 = ptrtoint ptr %rw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rw, align 4
  %tobool19.not97 = icmp eq ptr %5, null
  br i1 %tobool19.not97, label %while.cond17.preheader.while.end50_crit_edge, label %while.cond17.preheader.do.body21_crit_edge

while.cond17.preheader.do.body21_crit_edge:       ; preds = %while.cond17.preheader
  br label %do.body21

while.cond17.preheader.while.end50_crit_edge:     ; preds = %while.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end50

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry.do.body_crit_edge
  %sensors.096 = phi ptr [ %incdec.ptr, %if.end.do.body_crit_edge ], [ %sensors2, %entry.do.body_crit_edge ]
  %ro.addr.095 = phi ptr [ %incdec.ptr16, %if.end.do.body_crit_edge ], [ %ro, %entry.do.body_crit_edge ]
  %key = getelementptr inbounds %struct.attribute, ptr %sensors.096, i32 0, i32 3
  %6 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @aem_register_sensors.__key, ptr %key, align 4
  %7 = ptrtoint ptr %ro.addr.095 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ro.addr.095, align 4
  %9 = ptrtoint ptr %sensors.096 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %sensors.096, align 4
  %mode = getelementptr inbounds %struct.attribute, ptr %sensors.096, i32 0, i32 1
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 292, ptr %mode, align 4
  %show = getelementptr inbounds %struct.aem_ro_sensor_template, ptr %ro.addr.095, i32 0, i32 1
  %11 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %show, align 4
  %show9 = getelementptr inbounds %struct.device_attribute, ptr %sensors.096, i32 0, i32 1
  %13 = ptrtoint ptr %show9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %show9, align 4
  %index = getelementptr inbounds %struct.aem_ro_sensor_template, ptr %ro.addr.095, i32 0, i32 2
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %index10 = getelementptr inbounds %struct.sensor_device_attribute, ptr %sensors.096, i32 0, i32 1
  %16 = ptrtoint ptr %index10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %index10, align 4
  %call = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %sensors.096) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool12.not = icmp eq i32 %call, 0
  br i1 %tobool12.not, label %if.end, label %do.body.error.sink.split_crit_edge

do.body.error.sink.split_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.sink.split

if.end:                                           ; preds = %do.body
  %incdec.ptr = getelementptr %struct.sensor_device_attribute, ptr %sensors.096, i32 1
  %incdec.ptr16 = getelementptr %struct.aem_ro_sensor_template, ptr %ro.addr.095, i32 1
  %17 = ptrtoint ptr %incdec.ptr16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %incdec.ptr16, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %if.end.while.cond17.preheader_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.while.cond17.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond17.preheader

do.body21:                                        ; preds = %if.end47.do.body21_crit_edge, %while.cond17.preheader.do.body21_crit_edge
  %sensors.199 = phi ptr [ %incdec.ptr48, %if.end47.do.body21_crit_edge ], [ %sensors.0.lcssa, %while.cond17.preheader.do.body21_crit_edge ]
  %rw.addr.098 = phi ptr [ %incdec.ptr49, %if.end47.do.body21_crit_edge ], [ %rw, %while.cond17.preheader.do.body21_crit_edge ]
  %key24 = getelementptr inbounds %struct.attribute, ptr %sensors.199, i32 0, i32 3
  %19 = ptrtoint ptr %key24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @aem_register_sensors.__key.22, ptr %key24, align 4
  %20 = ptrtoint ptr %rw.addr.098 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rw.addr.098, align 4
  %22 = ptrtoint ptr %sensors.199 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %sensors.199, align 4
  %mode33 = getelementptr inbounds %struct.attribute, ptr %sensors.199, i32 0, i32 1
  %23 = ptrtoint ptr %mode33 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 420, ptr %mode33, align 4
  %show34 = getelementptr inbounds %struct.aem_rw_sensor_template, ptr %rw.addr.098, i32 0, i32 1
  %24 = ptrtoint ptr %show34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %show34, align 4
  %show36 = getelementptr inbounds %struct.device_attribute, ptr %sensors.199, i32 0, i32 1
  %26 = ptrtoint ptr %show36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %show36, align 4
  %set = getelementptr inbounds %struct.aem_rw_sensor_template, ptr %rw.addr.098, i32 0, i32 2
  %27 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %set, align 4
  %store = getelementptr inbounds %struct.device_attribute, ptr %sensors.199, i32 0, i32 2
  %29 = ptrtoint ptr %store to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %store, align 4
  %index38 = getelementptr inbounds %struct.aem_rw_sensor_template, ptr %rw.addr.098, i32 0, i32 3
  %30 = ptrtoint ptr %index38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index38, align 4
  %index39 = getelementptr inbounds %struct.sensor_device_attribute, ptr %sensors.199, i32 0, i32 1
  %32 = ptrtoint ptr %index39 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %index39, align 4
  %call41 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef %sensors.199) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end47, label %do.body21.error.sink.split_crit_edge

do.body21.error.sink.split_crit_edge:             ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.sink.split

if.end47:                                         ; preds = %do.body21
  %incdec.ptr48 = getelementptr %struct.sensor_device_attribute, ptr %sensors.199, i32 1
  %incdec.ptr49 = getelementptr %struct.aem_rw_sensor_template, ptr %rw.addr.098, i32 1
  %33 = ptrtoint ptr %incdec.ptr49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr49, align 4
  %tobool19.not = icmp eq ptr %34, null
  br i1 %tobool19.not, label %if.end47.while.end50_crit_edge, label %if.end47.do.body21_crit_edge

if.end47.do.body21_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body21

if.end47.while.end50_crit_edge:                   ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end50

while.end50:                                      ; preds = %if.end47.while.end50_crit_edge, %while.cond17.preheader.while.end50_crit_edge
  %call51 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %while.end50.error_crit_edge

while.end50.error_crit_edge:                      ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end54:                                         ; preds = %while.end50
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_version) #10
  br label %cleanup

error.sink.split:                                 ; preds = %do.body21.error.sink.split_crit_edge, %do.body.error.sink.split_crit_edge
  %sensors.199.lcssa.sink = phi ptr [ %sensors.199, %do.body21.error.sink.split_crit_edge ], [ %sensors.096, %do.body.error.sink.split_crit_edge ]
  %err.0.ph = phi i32 [ %call41, %do.body21.error.sink.split_crit_edge ], [ %call, %do.body.error.sink.split_crit_edge ]
  %35 = ptrtoint ptr %sensors.199.lcssa.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %sensors.199.lcssa.sink, align 4
  br label %error

error:                                            ; preds = %error.sink.split, %while.end50.error_crit_edge
  %err.0 = phi i32 [ %call51, %while.end50.error_crit_edge ], [ %err.0.ph, %error.sink.split ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %error
  %i.015.i = phi i32 [ 0, %error ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 13, i32 %i.015.i
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev.i, ptr noundef %arrayidx.i) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 14
  br i1 %exitcond.not.i, label %aem_remove_sensors.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

aem_remove_sensors.exit:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev, align 4
  %dev5.i = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev5.i, ptr noundef nonnull @sensor_dev_attr_name) #10
  %42 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pdev, align 4
  %dev7.i = getelementptr inbounds %struct.platform_device, ptr %43, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev7.i, ptr noundef nonnull @sensor_dev_attr_version) #10
  br label %cleanup

cleanup:                                          ; preds = %aem_remove_sensors.exit, %if.end54
  %retval.0 = phi i32 [ %err.0, %aem_remove_sensors.exit ], [ %call55, %if.end54 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @name_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ver_major = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ver_major to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ver_major, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.14, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ver_major = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ver_major to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ver_major, align 4
  %conv = zext i8 %3 to i32
  %ver_minor = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ver_minor to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ver_minor, align 1
  %conv1 = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %conv, i32 noundef %conv1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem_show_energy(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %conv.i = trunc i32 %3 to i8
  %arrayidx.i = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %3
  tail call fastcc void @aem_read_sensor(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv.i, ptr noundef %arrayidx.i, i32 noundef 8) #10
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %mul = mul i64 %7, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i64 noundef %mul)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem_show_power(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %conv.i = trunc i32 %3 to i8
  %arrayidx.i = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %3
  tail call fastcc void @aem_read_sensor(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv.i, ptr noundef %arrayidx.i, i32 noundef 8) #10
  %call.i = tail call i64 @ktime_get() #10
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx, align 8
  %arrayidx4 = getelementptr %struct.aem_data, ptr %1, i32 0, i32 15, i32 %5
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #10
  %call6 = tail call i32 @schedule_timeout_interruptible(i32 noundef %call2.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %conv.i36 = trunc i32 %11 to i8
  %arrayidx.i37 = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %11
  tail call fastcc void @aem_read_sensor(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv.i36, ptr noundef %arrayidx.i37, i32 noundef 8) #10
  %call.i38 = tail call i64 @ktime_get() #10
  %sub = sub i64 %call.i38, %call.i
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx12 = getelementptr %struct.aem_data, ptr %1, i32 0, i32 14, i32 %13
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx12, align 8
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %sub14 = sub i64 %15, %7
  %mul15 = mul i64 %sub14, 1000000000000
  %call16 = tail call i64 @div64_u64(i64 noundef %mul15, i64 noundef %sub) #10
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.29, i64 noundef %call16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call17, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_interruptible(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem_show_power_period(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 8
  tail call void %3(ptr noundef %1) #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 15, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %7)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem_set_power_period(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #10
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !168
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %4)
  %cmp = icmp ult i32 %4, 200
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 15, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %arrayidx, align 4
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_aem2_sensors(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_updated = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 5
  %1 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_updated, align 8
  %add.neg = add i32 %0, -100
  %sub = sub i32 %add.neg, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 14, i32 0
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef %arrayidx.i.i, i32 noundef 8) #10
  %ver_major.i = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 6
  %5 = ptrtoint ptr %ver_major.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ver_major.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp.i = icmp ult i8 %6, 2
  br i1 %cmp.i, label %if.end.update_aem_energy.exit_crit_edge, label %if.end.i

if.end.update_aem_energy.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %update_aem_energy.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i4.i = getelementptr %struct.aem_data, ptr %data, i32 0, i32 14, i32 1
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef %arrayidx.i4.i, i32 noundef 8) #10
  br label %update_aem_energy.exit

update_aem_energy.exit:                           ; preds = %if.end.i, %if.end.update_aem_energy.exit_crit_edge
  %temp = getelementptr inbounds %struct.aem_data, ptr %data, i32 0, i32 17
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef %temp, i32 noundef 1)
  %arrayidx2 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 17, i32 1
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 9, i8 noundef zeroext 1, ptr noundef %arrayidx2, i32 noundef 1)
  %arrayidx5 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 0
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 0, ptr noundef %arrayidx5, i32 noundef 2)
  %arrayidx5.1 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 1
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 1, ptr noundef %arrayidx5.1, i32 noundef 2)
  %arrayidx5.2 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 2
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 2, ptr noundef %arrayidx5.2, i32 noundef 2)
  %arrayidx5.3 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 3
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 3, ptr noundef %arrayidx5.3, i32 noundef 2)
  %arrayidx5.4 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 4
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 4, ptr noundef %arrayidx5.4, i32 noundef 2)
  %arrayidx5.5 = getelementptr %struct.aem_data, ptr %data, i32 0, i32 16, i32 5
  tail call fastcc void @aem_read_sensor(ptr noundef %data, i8 noundef zeroext 7, i8 noundef zeroext 5, ptr noundef %arrayidx5.5, i32 noundef 2)
  br label %out

out:                                              ; preds = %update_aem_energy.exit, %land.lhs.true.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem2_show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 8
  tail call void %3(ptr noundef %1) #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 17, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.50, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aem2_show_pcap_value(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update = getelementptr inbounds %struct.aem_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %update, align 8
  tail call void %3(ptr noundef %1) #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.aem_data, ptr %1, i32 0, i32 16, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %mul = mul i32 %conv, 100000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.50, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipmi_free_recv_msg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @driver_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipmi_smi_watcher_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !69, !71, !72, !74, !76, !78, !79, !81, !83, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !105, !107, !108, !109, !111, !113, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !149, !150, !151, !153, !155, !156, !157}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__UNIQUE_ID_author223, !1, !"__UNIQUE_ID_author223", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ibmaem.c", i32 1090, i32 1}
!2 = !{ptr @__UNIQUE_ID_description224, !3, !"__UNIQUE_ID_description224", i1 false, i1 false}
!3 = !{!"../drivers/hwmon/ibmaem.c", i32 1091, i32 1}
!4 = !{ptr @__UNIQUE_ID_file225, !5, !"__UNIQUE_ID_file225", i1 false, i1 false}
!5 = !{!"../drivers/hwmon/ibmaem.c", i32 1092, i32 1}
!6 = !{ptr @__UNIQUE_ID_license226, !5, !"__UNIQUE_ID_license226", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_ibmaem__227_1094_aem_init6, !8, !"__initcall__kmod_ibmaem__227_1094_aem_init6", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ibmaem.c", i32 1094, i32 1}
!9 = !{ptr @__exitcall_aem_exit, !10, !"__exitcall_aem_exit", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/ibmaem.c", i32 1095, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias228, !12, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/ibmaem.c", i32 1097, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias229, !14, !"__UNIQUE_ID_alias229", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/ibmaem.c", i32 1098, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias230, !16, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/ibmaem.c", i32 1099, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias231, !18, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ibmaem.c", i32 1100, i32 1}
!19 = !{ptr @__UNIQUE_ID_alias232, !20, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ibmaem.c", i32 1101, i32 1}
!21 = !{ptr @__UNIQUE_ID_alias233, !22, !"__UNIQUE_ID_alias233", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/ibmaem.c", i32 1102, i32 1}
!23 = !{ptr @__UNIQUE_ID_alias234, !24, !"__UNIQUE_ID_alias234", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/ibmaem.c", i32 1103, i32 1}
!25 = !{ptr @driver_data, !26, !"driver_data", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ibmaem.c", i32 242, i32 31}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ibmaem.c", i32 279, i32 3}
!29 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @aem_init_ipmi_data._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @aem_init_ipmi_data._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @init_completion.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../include/linux/completion.h", i32 87, i32 2}
!37 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ibmaem.c", i32 619, i32 4}
!40 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @aem_init_aem1._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @aem_init_aem1._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @system_x_id, !44, !"system_x_id", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ibmaem.c", i32 177, i32 27}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ibmaem.c", i32 305, i32 2}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @aem_send_message._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @aem_send_message._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ibmaem.c", i32 308, i32 2}
!52 = !{ptr @aem_send_message._entry.10, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @aem_send_message._entry_ptr.12, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @aem_init_aem1_inst.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/ibmaem.c", i32 532, i32 2}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/ibmaem.c", i32 546, i32 37}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ibmaem.c", i32 566, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @aem_init_aem1_inst._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @aem_init_aem1_inst._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/ibmaem.c", i32 588, i32 2}
!66 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @aem_init_aem1_inst._entry.17, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @aem_init_aem1_inst._entry_ptr.20, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ibmaem.c", i32 79, i32 8}
!71 = !{ptr @aem_ida, !70, !"aem_ida", i1 false, i1 false}
!72 = !{ptr @aem_register_sensors.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/ibmaem.c", i32 918, i32 3}
!74 = !{ptr @aem_register_sensors.__key.22, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/ibmaem.c", i32 935, i32 3}
!76 = !{ptr @.str.23, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/ibmaem.c", i32 810, i32 8}
!78 = !{ptr @sensor_dev_attr_name, !77, !"sensor_dev_attr_name", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/ibmaem.c", i32 808, i32 22}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/ibmaem.c", i32 820, i32 8}
!83 = !{ptr @sensor_dev_attr_version, !82, !"sensor_dev_attr_version", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/ibmaem.c", i32 818, i32 22}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/ibmaem.c", i32 1010, i32 2}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/ibmaem.c", i32 1011, i32 2}
!90 = !{ptr @aem1_ro_sensors, !91, !"aem1_ro_sensors", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/ibmaem.c", i32 1009, i32 44}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/ibmaem.c", i32 867, i32 22}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/ibmaem.c", i32 1016, i32 2}
!96 = !{ptr @aem1_rw_sensors, !97, !"aem1_rw_sensors", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/ibmaem.c", i32 1015, i32 44}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/ibmaem.c", i32 880, i32 22}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/ibmaem.c", i32 759, i32 4}
!102 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @aem_init_aem2._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @aem_init_aem2._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/ibmaem.c", i32 767, i32 4}
!107 = !{ptr @aem_init_aem2._entry.34, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @aem_init_aem2._entry_ptr.36, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @aem_init_aem2_inst.__key, !110, !"__key", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/ibmaem.c", i32 672, i32 2}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/ibmaem.c", i32 706, i32 3}
!113 = !{ptr @aem_init_aem2_inst._entry, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @aem_init_aem2_inst._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @aem_init_aem2_inst._entry.38, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/ibmaem.c", i32 728, i32 2}
!117 = !{ptr @aem_init_aem2_inst._entry_ptr.39, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/ibmaem.c", i32 1023, i32 2}
!120 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/ibmaem.c", i32 1025, i32 2}
!122 = !{ptr @.str.42, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/ibmaem.c", i32 1026, i32 2}
!124 = !{ptr @.str.43, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/ibmaem.c", i32 1027, i32 2}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/ibmaem.c", i32 1029, i32 2}
!128 = !{ptr @.str.45, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/ibmaem.c", i32 1030, i32 2}
!130 = !{ptr @.str.46, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/ibmaem.c", i32 1031, i32 2}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/ibmaem.c", i32 1032, i32 2}
!134 = !{ptr @.str.48, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/ibmaem.c", i32 1034, i32 2}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/ibmaem.c", i32 1035, i32 2}
!138 = !{ptr @aem2_ro_sensors, !139, !"aem2_ro_sensors", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/ibmaem.c", i32 1021, i32 44}
!140 = !{ptr @.str.50, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/ibmaem.c", i32 973, i32 22}
!142 = !{ptr @.str.51, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/ibmaem.c", i32 1041, i32 2}
!144 = !{ptr @aem2_rw_sensors, !145, !"aem2_rw_sensors", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/ibmaem.c", i32 1039, i32 44}
!146 = !{ptr @.str.52, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/ibmaem.c", i32 319, i32 3}
!148 = !{ptr @.str.53, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @aem_msg_handler._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @aem_msg_handler._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @aem_driver, !152, !"aem_driver", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/ibmaem.c", i32 81, i32 31}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/ibmaem.c", i32 1065, i32 3}
!155 = !{ptr @.str.55, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @aem_init._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @aem_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i8 0, i8 2}
!168 = !{!"auto-init"}
