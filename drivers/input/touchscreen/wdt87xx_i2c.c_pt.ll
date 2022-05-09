; ModuleID = '/llk/IR_all_yes/drivers/input/touchscreen/wdt87xx_i2c.c_pt.bc'
source_filename = "../drivers/input/touchscreen/wdt87xx_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wdt87xx_data = type { ptr, ptr, %struct.mutex, %struct.wdt87xx_sys_param, [32 x i8] }
%struct.wdt87xx_sys_param = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.firmware = type { i32, ptr, ptr }

@__initcall__kmod_wdt87xx_i2c__301_1181_wdt87xx_driver_init6 = internal global ptr @wdt87xx_driver_init, section ".initcall6.init", align 4
@wdt87xx_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wdt87xx_ts_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wdt87xx_pm_ops, ptr null, ptr null }, ptr @wdt87xx_dev_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wdt87xx_driver_exit = internal global ptr @wdt87xx_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author302 = internal constant [53 x i8] c"wdt87xx_i2c.author=HN Chen <hn.chen@weidahitech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description303 = internal constant [63 x i8] c"wdt87xx_i2c.description=WeidaHiTech WDT87XX Touchscreen driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [55 x i8] c"wdt87xx_i2c.file=drivers/input/touchscreen/wdt87xx_i2c\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [24 x i8] c"wdt87xx_i2c.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wdt87xx_i2c\00", [20 x i8] zeroinitializer }, align 32
@wdt87xx_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @wdt87xx_suspend, ptr @wdt87xx_resume, ptr @wdt87xx_suspend, ptr @wdt87xx_resume, ptr @wdt87xx_suspend, ptr @wdt87xx_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@wdt87xx_dev_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wdt87xx_i2c\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdt87xx_ts_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/input/touchscreen/wdt87xx_i2c.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"adapter=%d, client irq: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&wdt->fw_mutex\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-%u-%04x/input0\00", [45 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 1104, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"request irq failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe._entry_ptr = internal global ptr @wdt87xx_ts_probe._entry, section ".printk_index", align 4
@wdt87xx_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wdt87xx_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 1110, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"create sysfs failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wdt87xx_ts_probe._entry_ptr.11 = internal global ptr @wdt87xx_ts_probe._entry.9, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 442, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get device desc\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wdt87xx_get_sysparam\00", [43 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr = internal global ptr @wdt87xx_get_sysparam._entry, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 451, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get parameters\0A\00", [38 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr.16 = internal global ptr @wdt87xx_get_sysparam._entry.14, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.2, i32 472, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get platform id\0A\00", [37 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr.19 = internal global ptr @wdt87xx_get_sysparam._entry.17, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.2, i32 481, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get firmware id\0A\00", [37 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr.22 = internal global ptr @wdt87xx_get_sysparam._entry.20, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.13, ptr @.str.2, i32 487, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wrong id of fw response: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr.25 = internal global ptr @wdt87xx_get_sysparam._entry.23, section ".printk_index", align 4
@wdt87xx_get_sysparam._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.13, ptr @.str.2, i32 496, ptr @.str.28, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"fw_id: 0x%x, plat_id: 0x%x, xml_id1: %04x, xml_id2: %04x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wdt87xx_get_sysparam._entry_ptr.29 = internal global ptr @wdt87xx_get_sysparam._entry.26, section ".printk_index", align 4
@__const.wdt87xx_get_desc.tx_buf = private unnamed_addr constant [6 x i8] c"\22\00\10\0E#\00", align 1
@wdt87xx_get_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 230, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"get desc failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdt87xx_get_desc\00", [47 x i8] zeroinitializer }, align 32
@wdt87xx_get_desc._entry_ptr = internal global ptr @wdt87xx_get_desc._entry, section ".printk_index", align 4
@wdt87xx_get_desc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 236, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unexpected response to get desc: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wdt87xx_get_desc._entry_ptr.34 = internal global ptr @wdt87xx_get_desc._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wdt87xx_i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 212, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: i2c transfer failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdt87xx_i2c_xfer\00", [47 x i8] zeroinitializer }, align 32
@wdt87xx_i2c_xfer._entry_ptr = internal global ptr @wdt87xx_i2c_xfer._entry, section ".printk_index", align 4
@wdt87xx_get_string._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 259, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get string failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wdt87xx_get_string\00", [45 x i8] zeroinitializer }, align 32
@wdt87xx_get_string._entry_ptr = internal global ptr @wdt87xx_get_string._entry, section ".printk_index", align 4
@wdt87xx_get_string._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 265, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unexpected response to get string: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@wdt87xx_get_string._entry_ptr.41 = internal global ptr @wdt87xx_get_string._entry.39, section ".printk_index", align 4
@wdt87xx_get_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 305, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"get feature failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wdt87xx_get_feature\00", [44 x i8] zeroinitializer }, align 32
@wdt87xx_get_feature._entry_ptr = internal global ptr @wdt87xx_get_feature._entry, section ".printk_index", align 4
@wdt87xx_ts_create_input_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1033, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wdt87xx_ts_create_input_device\00", [33 x i8] zeroinitializer }, align 32
@wdt87xx_ts_create_input_device._entry_ptr = internal global ptr @wdt87xx_ts_create_input_device._entry, section ".printk_index", align 4
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WDT87xx Touchscreen\00", [44 x i8] zeroinitializer }, align 32
@wdt87xx_ts_create_input_device._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 1060, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wdt87xx_ts_create_input_device._entry_ptr.49 = internal global ptr @wdt87xx_ts_create_input_device._entry.47, section ".printk_index", align 4
@wdt87xx_ts_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 1003, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"read v1 raw data failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wdt87xx_ts_interrupt\00", [43 x i8] zeroinitializer }, align 32
@wdt87xx_ts_interrupt._entry_ptr = internal global ptr @wdt87xx_ts_interrupt._entry, section ".printk_index", align 4
@wdt87xx_report_contact.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wdt87xx_report_contact\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tip on (%d), x(%d), y(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@wdt87xx_attrs = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_config_csum, ptr @dev_attr_fw_version, ptr @dev_attr_plat_id, ptr @dev_attr_update_config, ptr @dev_attr_update_fw, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_config_csum = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_csum_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_fw_version = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fw_version_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_plat_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @plat_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_config = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @update_config_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_fw = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @update_fw_store }, [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config_csum\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fw_version\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"plat_id\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"update_config\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wdt87xx_cfg.bin\00", [16 x i8] zeroinitializer }, align 32
@wdt87xx_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.2, i32 869, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to retrieve firmware %s: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wdt87xx_update_firmware\00", [40 x i8] zeroinitializer }, align 32
@wdt87xx_update_firmware._entry_ptr = internal global ptr @wdt87xx_update_firmware._entry, section ".printk_index", align 4
@wdt87xx_do_update_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.2, i32 837, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"firmware load failed (type: %d): %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wdt87xx_do_update_firmware\00", [37 x i8] zeroinitializer }, align 32
@wdt87xx_do_update_firmware._entry_ptr = internal global ptr @wdt87xx_do_update_firmware._entry, section ".printk_index", align 4
@wdt87xx_do_update_firmware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.63, ptr @.str.2, i32 843, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"soft reset failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wdt87xx_do_update_firmware._entry_ptr.66 = internal global ptr @wdt87xx_do_update_firmware._entry.64, section ".printk_index", align 4
@wdt87xx_do_update_firmware._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.63, ptr @.str.2, i32 851, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to refresh system parameters: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wdt87xx_do_update_firmware._entry_ptr.69 = internal global ptr @wdt87xx_do_update_firmware._entry.67, section ".printk_index", align 4
@wdt87xx_validate_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.2, i32 513, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"check fw tag failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wdt87xx_validate_firmware\00", [38 x i8] zeroinitializer }, align 32
@wdt87xx_validate_firmware._entry_ptr = internal global ptr @wdt87xx_validate_firmware._entry, section ".printk_index", align 4
@wdt87xx_validate_firmware._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.71, ptr @.str.2, i32 521, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fw size mismatch: expected %d, actual %zu\0A\00", [53 x i8] zeroinitializer }, align 32
@wdt87xx_validate_firmware._entry_ptr.74 = internal global ptr @wdt87xx_validate_firmware._entry.72, section ".printk_index", align 4
@wdt87xx_validate_firmware._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.71, ptr @.str.2, i32 532, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to locate firmware chunk\0A\00", [63 x i8] zeroinitializer }, align 32
@wdt87xx_validate_firmware._entry_ptr.77 = internal global ptr @wdt87xx_validate_firmware._entry.75, section ".printk_index", align 4
@wdt87xx_validate_firmware._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.71, ptr @.str.2, i32 543, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fw version mismatch: fw %d vs. chip %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wdt87xx_validate_firmware._entry_ptr.80 = internal global ptr @wdt87xx_validate_firmware._entry.78, section ".printk_index", align 4
@wdt87xx_load_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.2, i32 794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to locate chunk (type %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wdt87xx_load_chunk\00", [45 x i8] zeroinitializer }, align 32
@wdt87xx_load_chunk._entry_ptr = internal global ptr @wdt87xx_load_chunk._entry, section ".printk_index", align 4
@wdt87xx_load_chunk._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.2, i32 801, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid chunk (type %d): %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wdt87xx_load_chunk._entry_ptr.85 = internal global ptr @wdt87xx_load_chunk._entry.83, section ".printk_index", align 4
@wdt87xx_load_chunk._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.2, i32 809, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to write fw chunk (type %d): %d\0A\00", [56 x i8] zeroinitializer }, align 32
@wdt87xx_load_chunk._entry_ptr.88 = internal global ptr @wdt87xx_load_chunk._entry.86, section ".printk_index", align 4
@wdt87xx_write_firmware.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wdt87xx_write_firmware\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start 4k page program\0A\00", [41 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.2, i32 701, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stop report mode failed\0A\00", [39 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr = internal global ptr @wdt87xx_write_firmware._entry, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.89, ptr @.str.2, i32 707, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unlock failed\0A\00", [17 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.94 = internal global ptr @wdt87xx_write_firmware._entry.92, section ".printk_index", align 4
@wdt87xx_write_firmware.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.95, i8 0, i8 -78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: %x, %x\0A\00", [20 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.89, ptr @.str.2, i32 725, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"erase failed at %#08x\0A\00", [41 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.98 = internal global ptr @wdt87xx_write_firmware._entry.96, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.89, ptr @.str.2, i32 736, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"write failed at %#08x (%d bytes)\0A\00", [62 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.101 = internal global ptr @wdt87xx_write_firmware._entry.99, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.89, ptr @.str.2, i32 745, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to retrieve checksum for %#08x (len: %d)\0A\00", [47 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.104 = internal global ptr @wdt87xx_write_firmware._entry.102, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.89, ptr @.str.2, i32 757, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"checksum fail: %d vs %d, retry %d\0A\00", [61 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.107 = internal global ptr @wdt87xx_write_firmware._entry.105, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.89, ptr @.str.2, i32 761, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"page write failed\0A\00", [45 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.110 = internal global ptr @wdt87xx_write_firmware._entry.108, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.89, ptr @.str.2, i32 773, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lock failed\0A\00", [19 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.113 = internal global ptr @wdt87xx_write_firmware._entry.111, section ".printk_index", align 4
@wdt87xx_write_firmware._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.89, ptr @.str.2, i32 780, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"start to report failed\0A\00", [40 x i8] zeroinitializer }, align 32
@wdt87xx_write_firmware._entry_ptr.116 = internal global ptr @wdt87xx_write_firmware._entry.114, section ".printk_index", align 4
@wdt87xx_send_command._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 390, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid command: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wdt87xx_send_command\00", [43 x i8] zeroinitializer }, align 32
@wdt87xx_send_command._entry_ptr = internal global ptr @wdt87xx_send_command._entry, section ".printk_index", align 4
@wdt87xx_set_feature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.2, i32 348, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set feature failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wdt87xx_set_feature\00", [44 x i8] zeroinitializer }, align 32
@wdt87xx_set_feature._entry_ptr = internal global ptr @wdt87xx_set_feature._entry, section ".printk_index", align 4
@wdt87xx_write_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 575, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"addr & len must be 4 bytes aligned %x, %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wdt87xx_write_data\00", [45 x i8] zeroinitializer }, align 32
@wdt87xx_write_data._entry_ptr = internal global ptr @wdt87xx_write_data._entry, section ".printk_index", align 4
@wdt87xx_get_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.2, i32 651, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set checksum length\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wdt87xx_get_checksum\00", [43 x i8] zeroinitializer }, align 32
@wdt87xx_get_checksum._entry_ptr = internal global ptr @wdt87xx_get_checksum._entry, section ".printk_index", align 4
@wdt87xx_get_checksum._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.124, ptr @.str.2, i32 657, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set checksum address\0A\00", [32 x i8] zeroinitializer }, align 32
@wdt87xx_get_checksum._entry_ptr.127 = internal global ptr @wdt87xx_get_checksum._entry.125, section ".printk_index", align 4
@wdt87xx_get_checksum._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.2, i32 670, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request checksum\0A\00", [36 x i8] zeroinitializer }, align 32
@wdt87xx_get_checksum._entry_ptr.130 = internal global ptr @wdt87xx_get_checksum._entry.128, section ".printk_index", align 4
@wdt87xx_get_checksum._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.124, ptr @.str.2, i32 678, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read checksum\0A\00", [39 x i8] zeroinitializer }, align 32
@wdt87xx_get_checksum._entry_ptr.133 = internal global ptr @wdt87xx_get_checksum._entry.131, section ".printk_index", align 4
@wdt87xx_sw_reset.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 0, i8 100, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wdt87xx_sw_reset\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"resetting device now\0A\00", [42 x i8] zeroinitializer }, align 32
@wdt87xx_sw_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.2, i32 405, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"reset failed\0A\00", [18 x i8] zeroinitializer }, align 32
@wdt87xx_sw_reset._entry_ptr = internal global ptr @wdt87xx_sw_reset._entry, section ".printk_index", align 4
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"update_fw\00", [22 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdt87xx_fw.bin\00", [17 x i8] zeroinitializer }, align 32
@wdt87xx_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.140, ptr @.str.2, i32 1129, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to stop device when suspending: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wdt87xx_suspend\00", [16 x i8] zeroinitializer }, align 32
@wdt87xx_suspend._entry_ptr = internal global ptr @wdt87xx_suspend._entry, section ".printk_index", align 4
@wdt87xx_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.2, i32 1151, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to start device when resuming: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wdt87xx_resume\00", [17 x i8] zeroinitializer }, align 32
@wdt87xx_resume._entry_ptr = internal global ptr @wdt87xx_resume._entry, section ".printk_index", align 4
@___asan_gen_.143 = private unnamed_addr constant [15 x i8] c"wdt87xx_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1172, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1176, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"wdt87xx_pm_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1158, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant [15 x i8] c"wdt87xx_dev_id\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1160, i32 35 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1073, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1085, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1088, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1104, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [19 x i8] c"wdt87xx_attr_group\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 948, i32 37 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1110, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 442, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 451, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 472, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 481, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 486, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 493, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 230, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 235, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 211, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 259, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 264, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 305, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1033, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1038, i32 16 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1060, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1003, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 982, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant [14 x i8] c"wdt87xx_attrs\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 939, i32 26 }
@___asan_gen_.320 = private unnamed_addr constant [21 x i8] c"dev_attr_config_csum\00", align 1
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c"dev_attr_fw_version\00", align 1
@___asan_gen_.326 = private unnamed_addr constant [17 x i8] c"dev_attr_plat_id\00", align 1
@___asan_gen_.329 = private unnamed_addr constant [23 x i8] c"dev_attr_update_config\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"dev_attr_update_fw\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 933, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 890, i32 35 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 934, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 935, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 936, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 917, i32 39 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 868, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 835, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 843, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 850, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 513, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 519, i32 3 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 531, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 541, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 793, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 800, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 807, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 697, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 701, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 707, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 714, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 724, i32 5 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 734, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 743, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 755, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 761, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 773, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 780, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 390, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 348, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 573, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 651, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 657, i32 3 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 670, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 678, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 401, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 405, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 937, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 928, i32 39 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1127, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.581 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.582 = private constant [43 x i8] c"../drivers/input/touchscreen/wdt87xx_i2c.c\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.582, i32 1149, i32 3 }
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_description303, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wdt87xx_driver_exit, ptr @__initcall__kmod_wdt87xx_i2c__301_1181_wdt87xx_driver_init6, ptr @wdt87xx_do_update_firmware._entry, ptr @wdt87xx_do_update_firmware._entry.64, ptr @wdt87xx_do_update_firmware._entry.67, ptr @wdt87xx_do_update_firmware._entry_ptr, ptr @wdt87xx_do_update_firmware._entry_ptr.66, ptr @wdt87xx_do_update_firmware._entry_ptr.69, ptr @wdt87xx_driver_exit, ptr @wdt87xx_get_checksum._entry, ptr @wdt87xx_get_checksum._entry.125, ptr @wdt87xx_get_checksum._entry.128, ptr @wdt87xx_get_checksum._entry.131, ptr @wdt87xx_get_checksum._entry_ptr, ptr @wdt87xx_get_checksum._entry_ptr.127, ptr @wdt87xx_get_checksum._entry_ptr.130, ptr @wdt87xx_get_checksum._entry_ptr.133, ptr @wdt87xx_get_desc._entry, ptr @wdt87xx_get_desc._entry.32, ptr @wdt87xx_get_desc._entry_ptr, ptr @wdt87xx_get_desc._entry_ptr.34, ptr @wdt87xx_get_feature._entry, ptr @wdt87xx_get_feature._entry_ptr, ptr @wdt87xx_get_string._entry, ptr @wdt87xx_get_string._entry.39, ptr @wdt87xx_get_string._entry_ptr, ptr @wdt87xx_get_string._entry_ptr.41, ptr @wdt87xx_get_sysparam._entry, ptr @wdt87xx_get_sysparam._entry.14, ptr @wdt87xx_get_sysparam._entry.17, ptr @wdt87xx_get_sysparam._entry.20, ptr @wdt87xx_get_sysparam._entry.23, ptr @wdt87xx_get_sysparam._entry.26, ptr @wdt87xx_get_sysparam._entry_ptr, ptr @wdt87xx_get_sysparam._entry_ptr.16, ptr @wdt87xx_get_sysparam._entry_ptr.19, ptr @wdt87xx_get_sysparam._entry_ptr.22, ptr @wdt87xx_get_sysparam._entry_ptr.25, ptr @wdt87xx_get_sysparam._entry_ptr.29, ptr @wdt87xx_i2c_xfer._entry, ptr @wdt87xx_i2c_xfer._entry_ptr, ptr @wdt87xx_load_chunk._entry, ptr @wdt87xx_load_chunk._entry.83, ptr @wdt87xx_load_chunk._entry.86, ptr @wdt87xx_load_chunk._entry_ptr, ptr @wdt87xx_load_chunk._entry_ptr.85, ptr @wdt87xx_load_chunk._entry_ptr.88, ptr @wdt87xx_resume._entry, ptr @wdt87xx_resume._entry_ptr, ptr @wdt87xx_send_command._entry, ptr @wdt87xx_send_command._entry_ptr, ptr @wdt87xx_set_feature._entry, ptr @wdt87xx_set_feature._entry_ptr, ptr @wdt87xx_suspend._entry, ptr @wdt87xx_suspend._entry_ptr, ptr @wdt87xx_sw_reset._entry, ptr @wdt87xx_sw_reset._entry_ptr, ptr @wdt87xx_ts_create_input_device._entry, ptr @wdt87xx_ts_create_input_device._entry.47, ptr @wdt87xx_ts_create_input_device._entry_ptr, ptr @wdt87xx_ts_create_input_device._entry_ptr.49, ptr @wdt87xx_ts_interrupt._entry, ptr @wdt87xx_ts_interrupt._entry_ptr, ptr @wdt87xx_ts_probe._entry, ptr @wdt87xx_ts_probe._entry.9, ptr @wdt87xx_ts_probe._entry_ptr, ptr @wdt87xx_ts_probe._entry_ptr.11, ptr @wdt87xx_update_firmware._entry, ptr @wdt87xx_update_firmware._entry_ptr, ptr @wdt87xx_validate_firmware._entry, ptr @wdt87xx_validate_firmware._entry.72, ptr @wdt87xx_validate_firmware._entry.75, ptr @wdt87xx_validate_firmware._entry.78, ptr @wdt87xx_validate_firmware._entry_ptr, ptr @wdt87xx_validate_firmware._entry_ptr.74, ptr @wdt87xx_validate_firmware._entry_ptr.77, ptr @wdt87xx_validate_firmware._entry_ptr.80, ptr @wdt87xx_write_data._entry, ptr @wdt87xx_write_data._entry_ptr, ptr @wdt87xx_write_firmware._entry, ptr @wdt87xx_write_firmware._entry.102, ptr @wdt87xx_write_firmware._entry.105, ptr @wdt87xx_write_firmware._entry.108, ptr @wdt87xx_write_firmware._entry.111, ptr @wdt87xx_write_firmware._entry.114, ptr @wdt87xx_write_firmware._entry.92, ptr @wdt87xx_write_firmware._entry.96, ptr @wdt87xx_write_firmware._entry.99, ptr @wdt87xx_write_firmware._entry_ptr, ptr @wdt87xx_write_firmware._entry_ptr.101, ptr @wdt87xx_write_firmware._entry_ptr.104, ptr @wdt87xx_write_firmware._entry_ptr.107, ptr @wdt87xx_write_firmware._entry_ptr.110, ptr @wdt87xx_write_firmware._entry_ptr.113, ptr @wdt87xx_write_firmware._entry_ptr.116, ptr @wdt87xx_write_firmware._entry_ptr.94, ptr @wdt87xx_write_firmware._entry_ptr.98, ptr @wdt87xx_driver, ptr @.str, ptr @wdt87xx_pm_ops, ptr @wdt87xx_dev_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @wdt87xx_ts_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @wdt87xx_attr_group, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @wdt87xx_attrs, ptr @dev_attr_config_csum, ptr @dev_attr_fw_version, ptr @dev_attr_plat_id, ptr @dev_attr_update_config, ptr @dev_attr_update_fw, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.73, ptr @.str.76, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_dev_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_sysparam._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_desc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_string._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_string._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_create_input_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_create_input_device._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_ts_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_attrs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_csum to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_fw_version to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_plat_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_fw to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_do_update_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_do_update_firmware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_do_update_firmware._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_validate_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_validate_firmware._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_validate_firmware._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_validate_firmware._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_load_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_load_chunk._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_load_chunk._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_firmware._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_send_command._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_set_feature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_write_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_checksum._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_checksum._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_get_checksum._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_sw_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt87xx_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt87xx_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wdt87xx_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wdt87xx_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wdt87xx_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt87xx_ts_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdt87xx_ts_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdt87xx_ts_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %nr = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdt87xx_ts_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %adapter3 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %6 = ptrtoint ptr %adapter3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter3, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %11(ptr noundef %7) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev8, i32 noundef 164, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %client, ptr %call.i, align 4
  %fw_mutex = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %fw_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @wdt87xx_ts_probe.__key) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %phys = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %adapter3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter3, align 8
  %nr18 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %nr18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr18, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv = zext i16 %19 to i32
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %17, i32 noundef %conv)
  %param = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3
  %call20 = tail call fastcc i32 @wdt87xx_get_sysparam(ptr noundef %client, ptr noundef %param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  %phy_w.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3, i32 6
  %22 = ptrtoint ptr %phy_w.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %phy_w.i, align 4
  %call.i80 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1.i) #7
  %tobool.not.i = icmp eq ptr %call.i80, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %div53.i = lshr i16 %23, 1
  %add.i = add nuw i16 %div53.i, 32767
  %div359.i = udiv i16 %add.i, %23
  %div3.zext.i = zext i16 %div359.i to i32
  %input4.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %input4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i80, ptr %input4.i, align 4
  %25 = ptrtoint ptr %call.i80 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.46, ptr %call.i80, align 8
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i80, i32 0, i32 3
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 24, ptr %id.i, align 4
  %vendor_id.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3, i32 11
  %27 = ptrtoint ptr %vendor_id.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vendor_id.i, align 4
  %vendor.i = getelementptr inbounds %struct.input_dev, ptr %call.i80, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %vendor.i, align 2
  %product_id.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %product_id.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %product_id.i, align 2
  %product.i = getelementptr inbounds %struct.input_dev, ptr %call.i80, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %product.i, align 4
  %phys9.i = getelementptr inbounds %struct.input_dev, ptr %call.i80, i32 0, i32 1
  %33 = ptrtoint ptr %phys9.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %phys, ptr %phys9.i, align 4
  %max_x.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3, i32 9
  %34 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_x.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i80, i32 noundef 53, i32 noundef 0, i32 noundef %35, i32 noundef 0, i32 noundef 0) #7
  %max_y.i = getelementptr inbounds %struct.wdt87xx_data, ptr %call.i, i32 0, i32 3, i32 10
  %36 = ptrtoint ptr %max_y.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_y.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i80, i32 noundef 54, i32 noundef 0, i32 noundef %37, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i80) #7
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i80, i32 0, i32 26
  %38 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i.input_abs_set_res.exit.i_crit_edge, label %if.then.i.i

if.end.i.input_abs_set_res.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i.i = getelementptr %struct.input_absinfo, ptr %39, i32 53, i32 5
  %40 = ptrtoint ptr %resolution.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div3.zext.i, ptr %resolution.i.i, align 4
  br label %input_abs_set_res.exit.i

input_abs_set_res.exit.i:                         ; preds = %if.then.i.i, %if.end.i.input_abs_set_res.exit.i_crit_edge
  tail call void @input_alloc_absinfo(ptr noundef nonnull %call.i80) #7
  %41 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i55.i = icmp eq ptr %42, null
  br i1 %tobool.not.i55.i, label %input_abs_set_res.exit.i.input_abs_set_res.exit58.i_crit_edge, label %if.then.i57.i

input_abs_set_res.exit.i.input_abs_set_res.exit58.i_crit_edge: ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %input_abs_set_res.exit58.i

if.then.i57.i:                                    ; preds = %input_abs_set_res.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %resolution.i56.i = getelementptr %struct.input_absinfo, ptr %42, i32 54, i32 5
  %43 = ptrtoint ptr %resolution.i56.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div3.zext.i, ptr %resolution.i56.i, align 4
  br label %input_abs_set_res.exit58.i

input_abs_set_res.exit58.i:                       ; preds = %if.then.i57.i, %input_abs_set_res.exit.i.input_abs_set_res.exit58.i_crit_edge
  %44 = ptrtoint ptr %max_x.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_x.i, align 4
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i80, i32 noundef 48, i32 noundef 0, i32 noundef %45, i32 noundef 0, i32 noundef 0) #7
  tail call void @input_set_abs_params(ptr noundef nonnull %call.i80, i32 noundef 58, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  %call14.i = tail call i32 @input_mt_init_slots(ptr noundef nonnull %call.i80, i32 noundef 10, i32 noundef 6) #7
  %call15.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i80) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end27, label %do.end20.i

do.end20.i:                                       ; preds = %input_abs_set_res.exit58.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.48, i32 noundef %call15.i) #10
  br label %cleanup

if.end27:                                         ; preds = %input_abs_set_res.exit58.i
  %irq29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %46 = ptrtoint ptr %irq29 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %irq29, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call31 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev8, i32 noundef %47, ptr noundef null, ptr noundef nonnull @wdt87xx_ts_interrupt, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.6, i32 noundef %call31) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end27
  %call40 = tail call i32 @devm_device_add_group(ptr noundef %dev8, ptr noundef nonnull @wdt87xx_attr_group) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end38.cleanup_crit_edge, label %do.end45

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.10, i32 noundef %call40) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %if.end38.cleanup_crit_edge, %do.end36, %do.end20.i, %do.end.i, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %do.end36 ], [ %call40, %do.end45 ], [ -6, %do.end.cleanup_crit_edge ], [ -12, %if.end7.cleanup_crit_edge ], [ %call20, %if.end12.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ -12, %do.end.i ], [ %call15.i, %do.end20.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_get_sysparam(ptr noundef %client, ptr nocapture noundef %param) unnamed_addr #2 align 64 {
entry:
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %tx_buf.i = alloca [6 x i8], align 1
  %buf = alloca [72 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %tx_buf.i) #7
  %1 = call ptr @memcpy(ptr %tx_buf.i, ptr @__const.wdt87xx_get_desc.tx_buf, i32 6)
  %arrayidx.i = getelementptr inbounds [6 x i8], ptr %tx_buf.i, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 17, ptr %arrayidx.i, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %3 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 16)
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i.i, align 2
  %7 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %flags.i.i, align 2
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 6, ptr %3, align 4
  %buf.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %tx_buf.i, ptr %buf.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %11 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %6, ptr %arrayinit.element.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %12 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags4.i.i, align 2
  %len5.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %13 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 18, ptr %len5.i.i, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %14 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf7.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %15 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %wdt87xx_i2c_xfer.exit.thread.i, label %wdt87xx_i2c_xfer.exit.i

wdt87xx_i2c_xfer.exit.thread.i:                   ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 18
  br i1 %cmp.not.i, label %if.end, label %do.end9.i

wdt87xx_i2c_xfer.exit.i:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  %spec.select.i.i = select i1 %cmp9.i.i, i32 %call.i.i, i32 -5
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %spec.select.i.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.30, i32 noundef %spec.select.i.i) #10
  br label %do.end

do.end9.i:                                        ; preds = %wdt87xx_i2c_xfer.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv4.i = zext i8 %18 to i32
  %dev10.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10.i, ptr noundef nonnull @.str.33, i32 noundef %conv4.i) #10
  br label %do.end

do.end:                                           ; preds = %do.end9.i, %wdt87xx_i2c_xfer.exit.i
  %retval.0.i.ph = phi i32 [ -22, %do.end9.i ], [ %spec.select.i.i, %wdt87xx_i2c_xfer.exit.i ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_buf.i) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end:                                           ; preds = %wdt87xx_i2c_xfer.exit.thread.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %tx_buf.i) #7
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr, align 1
  %22 = call i16 @llvm.bswap.i16(i16 %21) #7
  %vendor_id = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 11
  %23 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %vendor_id, align 4
  %add.ptr4 = getelementptr inbounds i8, ptr %buf, i32 10
  %24 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %add.ptr4, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %product_id = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 12
  %27 = ptrtoint ptr %product_id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %product_id, align 2
  %call7 = call fastcc i32 @wdt87xx_get_string(ptr noundef %client, i8 noundef zeroext -127, ptr noundef nonnull %buf, i32 noundef 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %add.ptr16 = getelementptr inbounds i8, ptr %buf, i32 4
  %28 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr16, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %xmls_id1 = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 2
  %31 = ptrtoint ptr %xmls_id1 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %xmls_id1, align 4
  %add.ptr19 = getelementptr inbounds i8, ptr %buf, i32 6
  %32 = ptrtoint ptr %add.ptr19 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %add.ptr19, align 1
  %34 = call i16 @llvm.bswap.i16(i16 %33) #7
  %xmls_id2 = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 3
  %35 = ptrtoint ptr %xmls_id2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %xmls_id2, align 2
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %add.ptr, align 1
  %38 = call i16 @llvm.bswap.i16(i16 %37) #7
  %phy_ch_x = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 4
  %39 = ptrtoint ptr %phy_ch_x to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %phy_ch_x, align 4
  %40 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %add.ptr4, align 1
  %42 = call i16 @llvm.bswap.i16(i16 %41) #7
  %phy_ch_y = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 5
  %43 = ptrtoint ptr %phy_ch_y to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %phy_ch_y, align 2
  %add.ptr28 = getelementptr inbounds i8, ptr %buf, i32 22
  %44 = ptrtoint ptr %add.ptr28 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %add.ptr28, align 1
  %46 = call i16 @llvm.bswap.i16(i16 %45) #7
  %47 = udiv i16 %46, 10
  %phy_w = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 6
  %48 = ptrtoint ptr %phy_w to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %phy_w, align 4
  %add.ptr32 = getelementptr inbounds i8, ptr %buf, i32 24
  %49 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 2)
  %50 = load i16, ptr %add.ptr32, align 1
  %51 = call i16 @llvm.bswap.i16(i16 %50) #7
  %52 = udiv i16 %51, 10
  %phy_h = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 7
  %53 = ptrtoint ptr %phy_h to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %phy_h, align 2
  %add.ptr38 = getelementptr inbounds i8, ptr %buf, i32 32
  %54 = ptrtoint ptr %add.ptr38 to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr38, align 1
  %56 = call i16 @llvm.bswap.i16(i16 %55) #7
  %scaling_factor = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 8
  %57 = ptrtoint ptr %scaling_factor to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %scaling_factor, align 4
  %max_x = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 9
  %58 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 32767, ptr %max_x, align 4
  %conv41 = zext i16 %52 to i32
  %mul = mul nuw nsw i32 %conv41, 32767
  %conv43 = zext i16 %47 to i32
  %div44128 = lshr i32 %conv43, 1
  %add = add nuw nsw i32 %mul, %div44128
  %div46132 = udiv i32 %add, %conv43
  %max_y = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 10
  %59 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div46132, ptr %max_y, align 4
  %call48 = call fastcc i32 @wdt87xx_get_string(ptr noundef %client, i8 noundef zeroext -128, ptr noundef nonnull %buf, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end14
  %arrayidx = getelementptr inbounds [72 x i8], ptr %buf, i32 0, i32 1
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx, align 1
  %conv56 = zext i8 %61 to i16
  %plat_id = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 1
  %62 = ptrtoint ptr %plat_id to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv56, ptr %plat_id, align 2
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 -14, ptr %buf, align 1
  %call59 = call fastcc i32 @wdt87xx_get_feature(ptr noundef %client, ptr noundef nonnull %buf, i32 noundef 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.21) #10
  br label %cleanup

if.end66:                                         ; preds = %if.end55
  %64 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -14, i8 %65)
  %cmp.not = icmp eq i8 %65, -14
  br i1 %cmp.not, label %if.end77, label %do.end73

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %conv68 = zext i8 %65 to i32
  %dev74 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev74, ptr noundef nonnull @.str.24, i32 noundef %conv68) #10
  br label %cleanup

if.end77:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %arrayidx, align 1
  %68 = call i16 @llvm.bswap.i16(i16 %67) #7
  %69 = ptrtoint ptr %param to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %param, align 4
  %dev83 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv85 = zext i16 %68 to i32
  %70 = ptrtoint ptr %plat_id to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %plat_id, align 2
  %conv87 = zext i16 %71 to i32
  %72 = ptrtoint ptr %xmls_id1 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %xmls_id1, align 4
  %conv89 = zext i16 %73 to i32
  %74 = ptrtoint ptr %xmls_id2 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %xmls_id2, align 2
  %conv91 = zext i16 %75 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev83, ptr noundef nonnull @.str.27, i32 noundef %conv85, i32 noundef %conv87, i32 noundef %conv89, i32 noundef %conv91) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end77, %do.end73, %do.end64, %do.end53, %do.end12, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ %call7, %do.end12 ], [ %call48, %do.end53 ], [ %call59, %do.end64 ], [ -22, %do.end73 ], [ 0, %if.end77 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt87xx_ts_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %raw_buf = alloca [74 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  call void @llvm.lifetime.start.p0(i64 74, ptr nonnull %raw_buf) #7
  %2 = call ptr @memset(ptr %raw_buf, i32 0, i32 74)
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %raw_buf, i32 noundef 74, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %call.i) #10
  br label %irq_exit

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 73
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.irq_exit_crit_edge, label %for.cond.preheader

if.end.irq_exit_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_exit

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %input = getelementptr inbounds %struct.wdt87xx_data, ptr %dev_id, i32 0, i32 1
  %param = getelementptr inbounds %struct.wdt87xx_data, ptr %dev_id, i32 0, i32 3
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %arrayidx6 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 1
  call fastcc void @wdt87xx_report_contact(ptr noundef %6, ptr noundef %param, ptr noundef %arrayidx6)
  %7 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %input, align 4
  %arrayidx6.1 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 8
  call fastcc void @wdt87xx_report_contact(ptr noundef %8, ptr noundef %param, ptr noundef %arrayidx6.1)
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input, align 4
  %arrayidx6.2 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 15
  call fastcc void @wdt87xx_report_contact(ptr noundef %10, ptr noundef %param, ptr noundef %arrayidx6.2)
  %11 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input, align 4
  %arrayidx6.3 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 22
  call fastcc void @wdt87xx_report_contact(ptr noundef %12, ptr noundef %param, ptr noundef %arrayidx6.3)
  %13 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input, align 4
  %arrayidx6.4 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 29
  call fastcc void @wdt87xx_report_contact(ptr noundef %14, ptr noundef %param, ptr noundef %arrayidx6.4)
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %arrayidx6.5 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 36
  call fastcc void @wdt87xx_report_contact(ptr noundef %16, ptr noundef %param, ptr noundef %arrayidx6.5)
  %17 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input, align 4
  %arrayidx6.6 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 43
  call fastcc void @wdt87xx_report_contact(ptr noundef %18, ptr noundef %param, ptr noundef %arrayidx6.6)
  %19 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input, align 4
  %arrayidx6.7 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 50
  call fastcc void @wdt87xx_report_contact(ptr noundef %20, ptr noundef %param, ptr noundef %arrayidx6.7)
  %21 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input, align 4
  %arrayidx6.8 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 57
  call fastcc void @wdt87xx_report_contact(ptr noundef %22, ptr noundef %param, ptr noundef %arrayidx6.8)
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  %arrayidx6.9 = getelementptr inbounds [74 x i8], ptr %raw_buf, i32 0, i32 64
  call fastcc void @wdt87xx_report_contact(ptr noundef %24, ptr noundef %param, ptr noundef %arrayidx6.9)
  %25 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input, align 4
  call void @input_mt_sync_frame(ptr noundef %26) #7
  %27 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %irq_exit

irq_exit:                                         ; preds = %for.cond.preheader, %if.end.irq_exit_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 74, ptr nonnull %raw_buf) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_get_string(ptr noundef %client, i8 noundef zeroext %str_idx, ptr nocapture noundef writeonly %buf, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %tx_buf = alloca [7 x i8], align 1
  %rx_buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %tx_buf) #7
  %0 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 1
  %1 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 2
  %2 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 3
  %3 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 4
  %4 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 5
  %5 = getelementptr inbounds [7 x i8], ptr %tx_buf, i32 0, i32 6
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 34, ptr %tx_buf, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 19, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 14, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %str_idx, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 35, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rx_buf) #7
  %13 = call ptr @memset(ptr %rx_buf, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %14 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr1.i, align 2
  %18 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 7, ptr %14, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %tx_buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %17, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %24 = trunc i32 %len to i16
  %conv6.i = add i16 %24, 2
  %25 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv6.i, ptr %len5.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rx_buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %wdt87xx_i2c_xfer.exit.thread, label %wdt87xx_i2c_xfer.exit

wdt87xx_i2c_xfer.exit.thread:                     ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %arrayidx = getelementptr inbounds [80 x i8], ptr %rx_buf, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %30)
  %cmp9.not = icmp eq i8 %30, 3
  br i1 %cmp9.not, label %if.end18, label %do.end14

wdt87xx_i2c_xfer.exit:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp9.i, i32 %call.i, i32 -5
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %spec.select.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %spec.select.i) #10
  br label %cleanup

do.end14:                                         ; preds = %wdt87xx_i2c_xfer.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %30 to i32
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull @.str.40, i32 noundef %conv) #10
  br label %cleanup

if.end18:                                         ; preds = %wdt87xx_i2c_xfer.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rx_buf, align 1
  %conv20 = zext i8 %32 to i32
  %33 = call i32 @llvm.umin.i32(i32 %conv20, i32 %len)
  %arrayidx23 = getelementptr inbounds [80 x i8], ptr %rx_buf, i32 0, i32 2
  %34 = call ptr @memcpy(ptr %buf, ptr %arrayidx23, i32 %33)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 429496000) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end14, %wdt87xx_i2c_xfer.exit
  %retval.0 = phi i32 [ %spec.select.i, %wdt87xx_i2c_xfer.exit ], [ -22, %do.end14 ], [ 0, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rx_buf) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %tx_buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_get_feature(ptr noundef %client, ptr nocapture noundef %buf, i32 noundef %buf_size) unnamed_addr #2 align 64 {
entry:
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %tx_buf = alloca [8 x i8], align 1
  %rx_buf = alloca [80 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tx_buf) #7
  %0 = getelementptr inbounds [8 x i8], ptr %tx_buf, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %tx_buf, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %tx_buf, i32 0, i32 3
  %3 = getelementptr inbounds i8, ptr %tx_buf, i32 2
  %4 = call ptr @memset(ptr %3, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %rx_buf) #7
  %5 = call ptr @memset(ptr %rx_buf, i32 255, i32 80)
  %6 = ptrtoint ptr %tx_buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 34, ptr %tx_buf, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %9)
  %cmp4 = icmp ugt i8 %9, 15
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = getelementptr inbounds [8 x i8], ptr %tx_buf, i32 0, i32 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 48, ptr %1, align 1
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %2, align 1
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %9, ptr %10, align 1
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i8 %9, 48
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %1, align 1
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %2, align 1
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then6
  %tx_len.0 = phi i32 [ 5, %if.then6 ], [ 4, %if.else ]
  %inc22 = add nuw nsw i32 %tx_len.0, 1
  %arrayidx23 = getelementptr [8 x i8], ptr %tx_buf, i32 0, i32 %tx_len.0
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 35, ptr %arrayidx23, align 1
  %arrayidx25 = getelementptr [8 x i8], ptr %tx_buf, i32 0, i32 %inc22
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx25, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %19 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %20 = call ptr @memset(ptr %19, i32 255, i32 16)
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %21 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr1.i, align 2
  %23 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags.i, align 2
  %25 = trunc i32 %tx_len.0 to i16
  %conv.i = or i16 %25, 2
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %19, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tx_buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %28 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %22, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %29 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %30 = trunc i32 %buf_size to i16
  %conv6.i = add i16 %30, 2
  %31 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv6.i, ptr %len5.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %32 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %rx_buf, ptr %buf7.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %wdt87xx_i2c_xfer.exit.thread, label %wdt87xx_i2c_xfer.exit

wdt87xx_i2c_xfer.exit.thread:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  %35 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %rx_buf, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #7
  %conv31 = zext i16 %37 to i32
  %38 = call i32 @llvm.umin.i32(i32 %conv31, i32 %buf_size)
  %arrayidx34 = getelementptr inbounds [80 x i8], ptr %rx_buf, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %buf, ptr %arrayidx34, i32 %38)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 429496000) #7
  br label %cleanup

wdt87xx_i2c_xfer.exit:                            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp9.i, i32 %call.i, i32 -5
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %spec.select.i) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %spec.select.i) #10
  br label %cleanup

cleanup:                                          ; preds = %wdt87xx_i2c_xfer.exit, %wdt87xx_i2c_xfer.exit.thread
  %retval.0 = phi i32 [ %spec.select.i, %wdt87xx_i2c_xfer.exit ], [ 0, %wdt87xx_i2c_xfer.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %rx_buf) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tx_buf) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wdt87xx_report_contact(ptr noundef %input, ptr nocapture noundef readonly %param, ptr nocapture noundef readonly %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  %conv = zext i8 %1 to i32
  %2 = lshr i32 %conv, 3
  %sub = add nsw i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %1)
  %cmp = icmp ult i8 %1, 8
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %arrayidx6 = getelementptr i8, ptr %buf, i32 1
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %4 to i32
  %scaling_factor = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 8
  %5 = ptrtoint ptr %scaling_factor to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %scaling_factor, align 4
  %conv8 = zext i16 %6 to i32
  %mul = mul nuw nsw i32 %conv8, %conv7
  %arrayidx9 = getelementptr i8, ptr %buf, i32 2
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %add.ptr = getelementptr i8, ptr %buf, i32 3
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr, align 1
  %11 = tail call i16 @llvm.bswap.i16(i16 %10) #7
  %conv10 = zext i16 %11 to i32
  %add.ptr11 = getelementptr i8, ptr %buf, i32 5
  %12 = ptrtoint ptr %add.ptr11 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %add.ptr11, align 1
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #7
  %conv13 = zext i16 %14 to i32
  %phy_h = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 7
  %15 = ptrtoint ptr %phy_h to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %phy_h, align 2
  %conv14 = zext i16 %16 to i32
  %mul15 = mul nuw i32 %conv13, %conv14
  %phy_w = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 6
  %17 = ptrtoint ptr %phy_w to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %phy_w, align 4
  %conv16 = zext i16 %18 to i32
  %div62 = lshr i32 %conv16, 1
  %add = add nuw i32 %div62, %mul15
  %div18 = udiv i32 %add, %conv16
  %max_x = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 9
  %19 = ptrtoint ptr %max_x to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv10)
  %cmp19 = icmp ult i32 %20, %conv10
  br i1 %cmp19, label %if.end5.cleanup_crit_edge, label %lor.lhs.false

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end5
  %max_y = getelementptr inbounds %struct.wdt87xx_sys_param, ptr %param, i32 0, i32 10
  %21 = ptrtoint ptr %max_y to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div18, i32 %22)
  %cmp21 = icmp ugt i32 %div18, %22
  br i1 %cmp21, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdt87xx_report_contact.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdt87xx_report_contact, %if.then30)) #7
          to label %do.end [label %if.then30], !srcloc !287

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdt87xx_report_contact.__UNIQUE_ID_ddebug299, ptr noundef %24, ptr noundef nonnull @.str.53, i32 noundef %sub, i32 noundef %conv10, i32 noundef %div18) #7
  br label %do.end

do.end:                                           ; preds = %if.then30, %do.body
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #7
  %call32 = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %input, i32 noundef 0, i1 noundef zeroext true) #7
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 48, i32 noundef %mul) #7
  %conv33 = zext i8 %8 to i32
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 58, i32 noundef %conv33) #7
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 53, i32 noundef %conv10) #7
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef 54, i32 noundef %div18) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_csum_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %xmls_id1 = getelementptr inbounds %struct.wdt87xx_data, ptr %1, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %xmls_id1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %xmls_id1, align 4
  %conv = zext i16 %3 to i32
  %shl = shl nuw i32 %conv, 16
  %xmls_id2 = getelementptr inbounds %struct.wdt87xx_data, ptr %1, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %xmls_id2 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %xmls_id2, align 2
  %conv2 = zext i16 %5 to i32
  %or = or i32 %shl, %conv2
  %call3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.55, i32 noundef %or) #7
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_version_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %param = getelementptr inbounds %struct.wdt87xx_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %param, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.55, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @plat_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %plat_id = getelementptr inbounds %struct.wdt87xx_data, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %plat_id to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %plat_id, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.55, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_config_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wdt87xx_update_firmware(ptr noundef %dev, ptr noundef nonnull @.str.59, i32 noundef 1195789891)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_update_firmware(ptr noundef %dev, ptr noundef %fw_name, i32 noundef %chunk_id) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !288
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %fw_name, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.60, ptr noundef %fw_name, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %1 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fw, align 4
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %6, align 1
  %add.ptr4.i.i = getelementptr i8, ptr %6, i32 8
  %9 = ptrtoint ptr %add.ptr4.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1380533830, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 1380533830
  call void @__sanitizer_cov_trace_const_cmp4(i32 1464355142, i32 %10)
  %cmp6.not.i.i = icmp eq i32 %10, 1464355142
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 %cmp6.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.70) #10
  br label %wdt87xx_do_update_firmware.exit

if.end.i.i:                                       ; preds = %if.end
  %add.ptr8.i.i = getelementptr i8, ptr %6, i32 4
  %13 = ptrtoint ptr %add.ptr8.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %add.ptr8.i.i, align 1
  %15 = call i32 @llvm.bswap.i32(i32 %14) #7
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11.not.i.i = icmp eq i32 %15, %17
  br i1 %cmp11.not.i.i, label %if.end19.i.i, label %do.end15.i.i

do.end15.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %4, align 4
  %dev17.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17.i.i, ptr noundef nonnull @.str.73, i32 noundef %15, i32 noundef %17) #10
  br label %wdt87xx_do_update_firmware.exit

if.end19.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %15)
  %cmp19.i.i.i = icmp ugt i32 %15, 40
  br i1 %cmp19.i.i.i, label %if.end19.i.i.while.body.i.i.i_crit_edge, label %if.end19.i.i.do.end24.i.i_crit_edge

if.end19.i.i.do.end24.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i.i

if.end19.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end19.i.i
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end.i.i.i.while.body.i.i.i_crit_edge, %if.end19.i.i.while.body.i.i.i_crit_edge
  %pos.020.i.i.i = phi i32 [ %add9.i.i.i, %if.end.i.i.i.while.body.i.i.i_crit_edge ], [ 40, %if.end19.i.i.while.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %pos.020.i.i.i
  %20 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 4)
  %21 = load i32, ptr %add.ptr.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179801426, i32 %21)
  %cmp2.i.i.i = icmp eq i32 %21, 1179801426
  br i1 %cmp2.i.i.i, label %wdt87xx_get_fw_chunk.exit.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %while.body.i.i.i
  %add.ptr7.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 4
  %22 = ptrtoint ptr %add.ptr7.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %23 = load i32, ptr %add.ptr7.i.i.i, align 1
  %24 = call i32 @llvm.bswap.i32(i32 %23) #7
  %add.i.i.i = add i32 %pos.020.i.i.i, 8
  %add9.i.i.i = add i32 %add.i.i.i, %24
  %cmp.i.i.i = icmp ult i32 %add9.i.i.i, %15
  br i1 %cmp.i.i.i, label %if.end.i.i.i.while.body.i.i.i_crit_edge, label %if.end.i.i.i.do.end24.i.i_crit_edge

if.end.i.i.i.do.end24.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i.i

if.end.i.i.i.while.body.i.i.i_crit_edge:          ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i.i

wdt87xx_get_fw_chunk.exit.i.i:                    ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i.i, label %wdt87xx_get_fw_chunk.exit.i.i.do.end24.i.i_crit_edge, label %if.end27.i.i

wdt87xx_get_fw_chunk.exit.i.i.do.end24.i.i_crit_edge: ; preds = %wdt87xx_get_fw_chunk.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i.i

do.end24.i.i:                                     ; preds = %wdt87xx_get_fw_chunk.exit.i.i.do.end24.i.i_crit_edge, %if.end.i.i.i.do.end24.i.i_crit_edge, %if.end19.i.i.do.end24.i.i_crit_edge
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %4, align 4
  %dev26.i.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev26.i.i, ptr noundef nonnull @.str.76) #10
  br label %wdt87xx_do_update_firmware.exit

if.end27.i.i:                                     ; preds = %wdt87xx_get_fw_chunk.exit.i.i
  %add.ptr28.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  %27 = ptrtoint ptr %add.ptr28.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %add.ptr28.i.i, align 1
  %29 = lshr i32 %28, 20
  %conv.i.i = and i32 %29, 15
  %param.i.i = getelementptr inbounds %struct.wdt87xx_data, ptr %4, i32 0, i32 3
  %30 = ptrtoint ptr %param.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %param.i.i, align 4
  %32 = lshr i16 %31, 12
  %conv33.i.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %conv33.i.i)
  %cmp36.not.i.i = icmp eq i32 %conv.i.i, %conv33.i.i
  br i1 %cmp36.not.i.i, label %if.end.i, label %do.end41.i.i

do.end41.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %4, align 4
  %dev43.i.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43.i.i, ptr noundef nonnull @.str.79, i32 noundef %conv.i.i, i32 noundef %conv33.i.i) #10
  br label %wdt87xx_do_update_firmware.exit

if.end.i:                                         ; preds = %if.end27.i.i
  %fw_mutex.i = getelementptr inbounds %struct.wdt87xx_data, ptr %4, i32 0, i32 2
  %call2.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %fw_mutex.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.wdt87xx_do_update_firmware.exit_crit_edge

if.end.i.wdt87xx_do_update_firmware.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %wdt87xx_do_update_firmware.exit

if.end5.i:                                        ; preds = %if.end.i
  %irq.i = getelementptr i8, ptr %dev, i32 932
  %35 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i, align 4
  call void @disable_irq(i32 noundef %36) #7
  %37 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %38)
  %cmp19.i.i54.i = icmp ugt i32 %38, 40
  br i1 %cmp19.i.i54.i, label %while.body.lr.ph.i.i.i, label %if.end5.i.do.end.i67.i_crit_edge

if.end5.i.do.end.i67.i_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i67.i

while.body.lr.ph.i.i.i:                           ; preds = %if.end5.i
  %39 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i, align 4
  br label %while.body.i.i58.i

while.body.i.i58.i:                               ; preds = %if.end.i.i63.i.while.body.i.i58.i_crit_edge, %while.body.lr.ph.i.i.i
  %pos.020.i.i55.i = phi i32 [ 40, %while.body.lr.ph.i.i.i ], [ %add9.i.i61.i, %if.end.i.i63.i.while.body.i.i58.i_crit_edge ]
  %add.ptr.i.i56.i = getelementptr i8, ptr %40, i32 %pos.020.i.i55.i
  %41 = ptrtoint ptr %add.ptr.i.i56.i to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %add.ptr.i.i56.i, align 1
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %chunk_id)
  %cmp2.i.i57.i = icmp eq i32 %43, %chunk_id
  br i1 %cmp2.i.i57.i, label %wdt87xx_get_fw_chunk.exit.i65.i, label %if.end.i.i63.i

if.end.i.i63.i:                                   ; preds = %while.body.i.i58.i
  %add.ptr7.i.i59.i = getelementptr i8, ptr %add.ptr.i.i56.i, i32 4
  %44 = ptrtoint ptr %add.ptr7.i.i59.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %45 = load i32, ptr %add.ptr7.i.i59.i, align 1
  %46 = call i32 @llvm.bswap.i32(i32 %45) #7
  %add.i.i60.i = add i32 %pos.020.i.i55.i, 8
  %add9.i.i61.i = add i32 %add.i.i60.i, %46
  %cmp.i.i62.i = icmp ult i32 %add9.i.i61.i, %38
  br i1 %cmp.i.i62.i, label %if.end.i.i63.i.while.body.i.i58.i_crit_edge, label %if.end.i.i63.i.do.end.i67.i_crit_edge

if.end.i.i63.i.do.end.i67.i_crit_edge:            ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i67.i

if.end.i.i63.i.while.body.i.i58.i_crit_edge:      ; preds = %if.end.i.i63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i58.i

wdt87xx_get_fw_chunk.exit.i65.i:                  ; preds = %while.body.i.i58.i
  %tobool.not.i64.i = icmp eq ptr %add.ptr.i.i56.i, null
  br i1 %tobool.not.i64.i, label %wdt87xx_get_fw_chunk.exit.i65.i.do.end.i67.i_crit_edge, label %if.end.i68.i

wdt87xx_get_fw_chunk.exit.i65.i.do.end.i67.i_crit_edge: ; preds = %wdt87xx_get_fw_chunk.exit.i65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i67.i

do.end.i67.i:                                     ; preds = %wdt87xx_get_fw_chunk.exit.i65.i.do.end.i67.i_crit_edge, %if.end.i.i63.i.do.end.i67.i_crit_edge, %if.end5.i.do.end.i67.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.81, i32 noundef %chunk_id) #10
  br label %do.end.i

if.end.i68.i:                                     ; preds = %wdt87xx_get_fw_chunk.exit.i65.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1381454406, i32 %chunk_id)
  %cmp.i32.i.i = icmp eq i32 %chunk_id, 1381454406
  br i1 %cmp.i32.i.i, label %if.then.i.i.i, label %if.end.i68.i.if.end8.i.i_crit_edge

if.end.i68.i.if.end8.i.i_crit_edge:               ; preds = %if.end.i68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.i:                                    ; preds = %if.end.i68.i
  %add.ptr.i33.i.i = getelementptr i8, ptr %add.ptr.i.i56.i, i32 32
  %47 = ptrtoint ptr %add.ptr.i33.i.i to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %add.ptr.i33.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -177675351, i32 %48)
  %cmp1.not.i.i.i = icmp eq i32 %48, -177675351
  br i1 %cmp1.not.i.i.i, label %if.then.i.i.i.if.end8.i.i_crit_edge, label %do.end6.i.i

if.then.i.i.i.if.end8.i.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end6.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.84, i32 noundef 1381454406, i32 noundef -22) #10
  br label %do.end.i

if.end8.i.i:                                      ; preds = %if.then.i.i.i.if.end8.i.i_crit_edge, %if.end.i68.i.if.end8.i.i_crit_edge
  %call9.i.i = call fastcc i32 @wdt87xx_write_firmware(ptr noundef %add.ptr, ptr noundef nonnull %add.ptr.i.i56.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end9.i, label %do.end14.i.i

do.end14.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.87, i32 noundef %chunk_id, i32 noundef %call9.i.i) #10
  br label %do.end.i

do.end.i:                                         ; preds = %do.end14.i.i, %do.end6.i.i, %do.end.i67.i
  %retval.0.i69.ph.i = phi i32 [ -22, %do.end.i67.i ], [ %call9.i.i, %do.end14.i.i ], [ -22, %do.end6.i.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.62, i32 noundef %chunk_id, i32 noundef %retval.0.i69.ph.i) #10
  br label %out.i

if.end9.i:                                        ; preds = %if.end8.i.i
  %call10.i = call fastcc i32 @wdt87xx_sw_reset(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %do.end15.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %call10.i) #10
  br label %out.i

if.end17.i:                                       ; preds = %if.end9.i
  %call18.i = call fastcc i32 @wdt87xx_get_sysparam(ptr noundef %add.ptr, ptr noundef %param.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.out.i_crit_edge, label %do.end23.i

if.end17.i.out.i_crit_edge:                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, i32 noundef %call18.i) #10
  br label %out.i

out.i:                                            ; preds = %do.end23.i, %if.end17.i.out.i_crit_edge, %do.end15.i, %do.end.i
  %error.0.i = phi i32 [ %retval.0.i69.ph.i, %do.end.i ], [ %call10.i, %do.end15.i ], [ %call18.i, %do.end23.i ], [ 0, %if.end17.i.out.i_crit_edge ]
  %49 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq.i, align 4
  call void @enable_irq(i32 noundef %50) #7
  call void @mutex_unlock(ptr noundef %fw_mutex.i) #7
  br label %wdt87xx_do_update_firmware.exit

wdt87xx_do_update_firmware.exit:                  ; preds = %out.i, %if.end.i.wdt87xx_do_update_firmware.exit_crit_edge, %do.end41.i.i, %do.end24.i.i, %do.end15.i.i, %do.end.i.i
  %retval.0.i = phi i32 [ %error.0.i, %out.i ], [ %call2.i, %if.end.i.wdt87xx_do_update_firmware.exit_crit_edge ], [ -22, %do.end24.i.i ], [ -19, %do.end41.i.i ], [ -22, %do.end15.i.i ], [ -22, %do.end.i.i ]
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %52) #7
  br label %cleanup

cleanup:                                          ; preds = %wdt87xx_do_update_firmware.exit, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %retval.0.i, %wdt87xx_do_update_firmware.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_sw_reset(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdt87xx_sw_reset.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdt87xx_sw_reset, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdt87xx_sw_reset.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.135) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  %0 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 4
  %1 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 16
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %3 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %tx_buf.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %5 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 56, ptr %5, align 1
  %7 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %7, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 35, ptr %0, align 1
  %arrayidx22.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx22.i.i, align 1
  %arrayidx25.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx25.i.i, align 1
  %arrayidx29.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx29.i.i, align 1
  %arrayidx34.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx34.i.i, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 2304, ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp36.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp36.i.i, label %do.end8, label %if.end10

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.136) #10
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  call void @msleep(i32 noundef 2500) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8
  %retval.0 = phi i32 [ %call.i.i.i, %do.end8 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wdt87xx_write_firmware(ptr noundef %client, ptr nocapture noundef readonly %chunk) unnamed_addr #2 align 64 {
entry:
  %tx_buf.i.i266 = alloca [80 x i8], align 1
  %tx_buf.i.i246 = alloca [80 x i8], align 1
  %cmd_buf.sroa.9.i247 = alloca [6 x i8], align 2
  %tx_buf.i.i230 = alloca [80 x i8], align 1
  %tx_buf.i.i50.i = alloca [80 x i8], align 1
  %cmd_buf.sroa.9.i51.i = alloca [6 x i8], align 2
  %tx_buf.i.i.i = alloca [80 x i8], align 1
  %cmd_buf.sroa.9.i.i = alloca [6 x i8], align 2
  %pkt_buf.i = alloca [64 x i8], align 1
  %tx_buf.i.i220 = alloca [80 x i8], align 1
  %pkt_buf.sroa.9.i = alloca [56 x i8], align 1
  %tx_buf.i.i202 = alloca [80 x i8], align 1
  %cmd_buf.sroa.9.i203 = alloca [6 x i8], align 2
  %tx_buf.i.i184 = alloca [80 x i8], align 1
  %cmd_buf.sroa.9.i185 = alloca [6 x i8], align 2
  %tx_buf.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %chunk, i32 8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %add.ptr, align 1
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #7
  %add.ptr1 = getelementptr i8, ptr %chunk, i32 12
  %3 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr1, align 1
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %add.ptr3 = getelementptr i8, ptr %chunk, i32 32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdt87xx_write_firmware.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdt87xx_write_firmware, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !287

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdt87xx_write_firmware.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.90) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  %6 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 4
  %7 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 16
  %8 = call ptr @memset(ptr %7, i32 255, i32 64)
  %9 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 34, ptr %tx_buf.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %11 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 56, ptr %11, align 1
  %13 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 3, ptr %13, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 35, ptr %6, align 1
  %arrayidx22.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx22.i.i, align 1
  %arrayidx25.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %arrayidx25.i.i, align 1
  %arrayidx29.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx29.i.i, align 1
  %arrayidx34.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 8
  %19 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 8, ptr %arrayidx34.i.i, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 256, ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %22, i32 4)
  store i32 -16777216, ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp36.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp36.i.i, label %do.end12, label %if.end14

do.end12:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.91) #10
  br label %cleanup

if.end14:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i185)
  %cmd_buf.sroa.9.i185.2.i185.2..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i185, i32 2
  %24 = ptrtoint ptr %cmd_buf.sroa.9.i185.2.i185.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 -1, ptr %cmd_buf.sroa.9.i185.2.i185.2..sroa_idx, align 2
  %25 = ptrtoint ptr %cmd_buf.sroa.9.i185 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -768, ptr %cmd_buf.sroa.9.i185, align 2
  %cmd_buf.sroa.9.i185.1.i185.1..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i185, i32 1
  %26 = ptrtoint ptr %cmd_buf.sroa.9.i185.1.i185.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %26, i32 2)
  store i16 -9579, ptr %cmd_buf.sroa.9.i185.1.i185.1..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i184) #7
  %27 = getelementptr inbounds i8, ptr %tx_buf.i.i184, i32 4
  %28 = getelementptr inbounds i8, ptr %tx_buf.i.i184, i32 16
  %29 = call ptr @memset(ptr %28, i32 255, i32 64)
  %30 = ptrtoint ptr %tx_buf.i.i184 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 34, ptr %tx_buf.i.i184, align 1
  %arrayidx2.i.i187 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx2.i.i187 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %arrayidx2.i.i187, align 1
  %32 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 2
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 56, ptr %32, align 1
  %34 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 3
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 3, ptr %34, align 1
  %36 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 35, ptr %27, align 1
  %arrayidx22.i.i188 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx22.i.i188 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %arrayidx22.i.i188, align 1
  %arrayidx25.i.i189 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 6
  %38 = ptrtoint ptr %arrayidx25.i.i189 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 8, ptr %arrayidx25.i.i189, align 1
  %arrayidx29.i.i190 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx29.i.i190 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %arrayidx29.i.i190, align 1
  %arrayidx34.i.i191 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 8
  %40 = ptrtoint ptr %arrayidx34.i.i191 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %arrayidx34.i.i191, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i192 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 9
  %41 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i192 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i192, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i193 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i184, i32 0, i32 10
  %42 = call ptr @memcpy(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i193, ptr %cmd_buf.sroa.9.i185, i32 6)
  %call.i.i.i194 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i184, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i194)
  %cmp36.i.i195 = icmp slt i32 %call.i.i.i194, 0
  br i1 %cmp36.i.i195, label %do.end20, label %wdt87xx_send_command.exit201

wdt87xx_send_command.exit201:                     ; preds = %if.end14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %43(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i184) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i185)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %44(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %45(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %46(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %47(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %49(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %50(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %51(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %52(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %53(i32 noundef 214748000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool25.not341 = icmp eq i32 %4, 0
  br i1 %tobool25.not341, label %wdt87xx_send_command.exit201.out_lock_device_crit_edge, label %do.body27.lr.ph

wdt87xx_send_command.exit201.out_lock_device_crit_edge: ; preds = %wdt87xx_send_command.exit201
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_lock_device

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i196 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i196, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i194) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i184) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i185)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i196, ptr noundef nonnull @.str.93) #10
  br label %out_enable_reporting

do.body27.lr.ph:                                  ; preds = %wdt87xx_send_command.exit201
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %54 = getelementptr inbounds i8, ptr %tx_buf.i.i202, i32 4
  %55 = getelementptr inbounds i8, ptr %tx_buf.i.i202, i32 16
  %arrayidx2.i.i205 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 1
  %56 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 2
  %57 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 3
  %arrayidx22.i.i206 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 5
  %arrayidx25.i.i207 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 6
  %arrayidx29.i.i208 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 7
  %arrayidx34.i.i209 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 8
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i210 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 9
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i211 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i202, i32 0, i32 10
  %58 = getelementptr inbounds i8, ptr %tx_buf.i.i220, i32 4
  %arrayidx2.i.i221 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 1
  %59 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 2
  %60 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 3
  %arrayidx22.i.i222 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 5
  %arrayidx25.i.i223 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 6
  %arrayidx29.i.i224 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 7
  %arrayidx34.i.i225 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 8
  %pkt_buf.sroa.6.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 9
  %pkt_buf.sroa.7.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 10
  %pkt_buf.sroa.8.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 12
  %pkt_buf.sroa.9.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i220, i32 0, i32 16
  %61 = getelementptr inbounds i8, ptr %tx_buf.i.i220, i32 72
  %62 = getelementptr inbounds i8, ptr %tx_buf.i.i.i, i32 4
  %63 = getelementptr inbounds i8, ptr %tx_buf.i.i.i, i32 16
  %arrayidx2.i.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 1
  %64 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 2
  %65 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 3
  %arrayidx22.i.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 5
  %arrayidx25.i.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 6
  %arrayidx29.i.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 7
  %arrayidx34.i.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 8
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 9
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i.i, i32 0, i32 10
  %66 = getelementptr inbounds i8, ptr %tx_buf.i.i50.i, i32 4
  %67 = getelementptr inbounds i8, ptr %tx_buf.i.i50.i, i32 16
  %arrayidx2.i.i53.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 1
  %68 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 2
  %69 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 3
  %arrayidx22.i.i54.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 5
  %arrayidx25.i.i55.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 6
  %arrayidx29.i.i56.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 7
  %arrayidx34.i.i57.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 8
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i58.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 9
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i59.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i50.i, i32 0, i32 10
  %70 = getelementptr inbounds i8, ptr %tx_buf.i.i230, i32 4
  %71 = getelementptr inbounds i8, ptr %tx_buf.i.i230, i32 16
  %arrayidx2.i.i233 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 1
  %72 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 2
  %73 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 3
  %arrayidx22.i.i234 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 5
  %arrayidx25.i.i235 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 6
  %arrayidx29.i.i236 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 7
  %arrayidx34.i.i237 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 8
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i238 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 9
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i239 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i230, i32 0, i32 10
  %74 = getelementptr inbounds i8, ptr %pkt_buf.i, i32 1
  %arrayidx30.i = getelementptr inbounds [64 x i8], ptr %pkt_buf.i, i32 0, i32 8
  %cmd_buf.sroa.9.i203.2.i203.2..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i203, i32 2
  %cmd_buf.sroa.9.i203.1.i203.1..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i203, i32 1
  %cmd_buf.sroa.9.i.i.2.i.i.2.i.2.i.2..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i.i, i32 2
  %cmd_buf.sroa.9.i.i.1.i.i.1.i.1.i.1..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i.i, i32 1
  %cmd_buf.sroa.9.i51.i.2.i51.i.2.i51.2.i51.2..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i51.i, i32 2
  %cmd_buf.sroa.9.i51.i.1.i51.i.1.i51.1.i51.1..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i51.i, i32 1
  br label %do.body27

do.body27:                                        ; preds = %if.end89.do.body27_crit_edge, %do.body27.lr.ph
  %start_addr.0349 = phi i32 [ %2, %do.body27.lr.ph ], [ %add, %if.end89.do.body27_crit_edge ]
  %size.0348 = phi i32 [ %5, %do.body27.lr.ph ], [ %sub, %if.end89.do.body27_crit_edge ]
  %data.0342 = phi ptr [ %add.ptr3, %do.body27.lr.ph ], [ %add.ptr90, %if.end89.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wdt87xx_write_firmware.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wdt87xx_write_firmware, %if.then39)) #7
          to label %do.end43 [label %if.then39], !srcloc !287

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wdt87xx_write_firmware.__UNIQUE_ID_ddebug296, ptr noundef %dev40, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.89, i32 noundef %start_addr.0349, i32 noundef %size.0348) #7
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body27
  %75 = call i32 @llvm.umin.i32(i32 %size.0348, i32 4096)
  %sub = sub i32 %size.0348, %75
  %76 = call i32 @llvm.bswap.i32(i32 %start_addr.0349) #7
  %77 = or i32 %75, %start_addr.0349
  %78 = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %79 = icmp eq i32 %78, 0
  %80 = call i32 @llvm.bswap.i32(i32 %75) #7
  %sub.i232 = add nuw nsw i32 %75, 1023
  %div.i314 = lshr i32 %sub.i232, 10
  %mul.i = mul nuw nsw i32 %div.i314, 30
  br label %for.body

for.body:                                         ; preds = %do.end78.for.body_crit_edge, %do.end43
  %retry.0340 = phi i32 [ 0, %do.end43 ], [ %inc, %do.end78.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i203)
  %81 = ptrtoint ptr %cmd_buf.sroa.9.i203.2.i203.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %81, i32 4)
  store i32 -1, ptr %cmd_buf.sroa.9.i203.2.i203.2..sroa_idx, align 2
  %82 = ptrtoint ptr %cmd_buf.sroa.9.i203 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 6656, ptr %cmd_buf.sroa.9.i203, align 2
  %83 = ptrtoint ptr %cmd_buf.sroa.9.i203.1.i203.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %83, i32 4)
  store i32 %76, ptr %cmd_buf.sroa.9.i203.1.i203.1..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i202) #7
  %84 = call ptr @memset(ptr %55, i32 255, i32 64)
  %85 = ptrtoint ptr %tx_buf.i.i202 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 34, ptr %tx_buf.i.i202, align 1
  %86 = ptrtoint ptr %arrayidx2.i.i205 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %arrayidx2.i.i205, align 1
  %87 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 56, ptr %56, align 1
  %88 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 3, ptr %57, align 1
  %89 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 35, ptr %54, align 1
  %90 = ptrtoint ptr %arrayidx22.i.i206 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 0, ptr %arrayidx22.i.i206, align 1
  %91 = ptrtoint ptr %arrayidx25.i.i207 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 8, ptr %arrayidx25.i.i207, align 1
  %92 = ptrtoint ptr %arrayidx29.i.i208 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx29.i.i208, align 1
  %93 = ptrtoint ptr %arrayidx34.i.i209 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 8, ptr %arrayidx34.i.i209, align 1
  %94 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i210 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i210, align 1
  %95 = call ptr @memcpy(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i211, ptr %cmd_buf.sroa.9.i203, i32 6)
  %call.i.i.i212 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i202, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i212)
  %cmp36.i.i213 = icmp slt i32 %call.i.i.i212, 0
  br i1 %cmp36.i.i213, label %for.end.thread, label %if.end53

for.end.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i212) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i202) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i203)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.97, i32 noundef %start_addr.0349) #10
  br label %if.end89

if.end53:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %96(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i202) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i203)
  call void @msleep(i32 noundef 200) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pkt_buf.sroa.9.i)
  %97 = call ptr @memset(ptr %pkt_buf.sroa.9.i, i32 255, i32 56)
  br i1 %79, label %if.end53.if.end.i.i_crit_edge, label %do.end.i

if.end53.if.end.i.i_crit_edge:                    ; preds = %if.end53
  br label %if.end.i.i

do.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.121, i32 noundef %start_addr.0349, i32 noundef %75) #10
  br label %do.end59

if.end.i.i:                                       ; preds = %if.end21.i.if.end.i.i_crit_edge, %if.end53.if.end.i.i_crit_edge
  %count.050.i = phi i32 [ %inc.i, %if.end21.i.if.end.i.i_crit_edge ], [ 0, %if.end53.if.end.i.i_crit_edge ]
  %length.addr.049.i = phi i32 [ %sub.i, %if.end21.i.if.end.i.i_crit_edge ], [ %75, %if.end53.if.end.i.i_crit_edge ]
  %address.addr.048.i = phi i32 [ %add.i, %if.end21.i.if.end.i.i_crit_edge ], [ %start_addr.0349, %if.end53.if.end.i.i_crit_edge ]
  %data.addr.047.i = phi ptr [ %add.ptr.i, %if.end21.i.if.end.i.i_crit_edge ], [ %data.0342, %if.end53.if.end.i.i_crit_edge ]
  %98 = call i32 @llvm.smin.i32(i32 %length.addr.049.i, i32 56) #7
  %conv.i = trunc i32 %98 to i16
  %99 = call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %100 = call i32 @llvm.bswap.i32(i32 %address.addr.048.i) #7
  %conv8.i = and i32 %98, 65535
  %101 = call ptr @memcpy(ptr %pkt_buf.sroa.9.i, ptr %data.addr.047.i, i32 %conv8.i)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i220) #7
  %102 = ptrtoint ptr %61 to i32
  call void @__asan_storeN_noabort(i32 %102, i32 8)
  store i64 -1, ptr %61, align 1, !annotation !288
  %103 = ptrtoint ptr %tx_buf.i.i220 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 34, ptr %tx_buf.i.i220, align 1
  %104 = ptrtoint ptr %arrayidx2.i.i221 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %arrayidx2.i.i221, align 1
  %105 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 56, ptr %59, align 1
  %106 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 3, ptr %60, align 1
  %107 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 35, ptr %58, align 1
  %108 = ptrtoint ptr %arrayidx22.i.i222 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 0, ptr %arrayidx22.i.i222, align 1
  %109 = ptrtoint ptr %arrayidx25.i.i223 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 64, ptr %arrayidx25.i.i223, align 1
  %110 = ptrtoint ptr %arrayidx29.i.i224 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %arrayidx29.i.i224, align 1
  %111 = ptrtoint ptr %arrayidx34.i.i225 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 8, ptr %arrayidx34.i.i225, align 1
  %112 = ptrtoint ptr %pkt_buf.sroa.6.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 -125, ptr %pkt_buf.sroa.6.0.arrayidx34.i.sroa_idx.i, align 1
  %113 = ptrtoint ptr %pkt_buf.sroa.7.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %113, i32 2)
  store i16 %99, ptr %pkt_buf.sroa.7.0.arrayidx34.i.sroa_idx.i, align 1
  %114 = ptrtoint ptr %pkt_buf.sroa.8.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 4)
  store i32 %100, ptr %pkt_buf.sroa.8.0.arrayidx34.i.sroa_idx.i, align 1
  %115 = call ptr @memcpy(ptr %pkt_buf.sroa.9.0.arrayidx34.i.sroa_idx.i, ptr %pkt_buf.sroa.9.i, i32 56)
  %call.i.i.i226 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i220, i32 noundef 72, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i226)
  %cmp36.i.i227 = icmp slt i32 %call.i.i.i226, 0
  br i1 %cmp36.i.i227, label %wdt87xx_set_feature.exit.i, label %if.end11.i

wdt87xx_set_feature.exit.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i226) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i220) #7
  br label %do.end59

if.end11.i:                                       ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %116(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i220) #7
  %add.ptr.i = getelementptr i8, ptr %data.addr.047.i, i32 %conv8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %117 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %117(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %118(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %119 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %119(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %120(i32 noundef 214748000) #7
  %sub.i = sub i32 %length.addr.049.i, %conv8.i
  %add.i = add i32 %conv8.i, %address.addr.048.i
  %inc.i = add i32 %count.050.i, 1
  %121 = and i32 %inc.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp18.i = icmp eq i32 %121, 0
  br i1 %cmp18.i, label %if.then20.i, label %if.end11.i.if.end21.i_crit_edge

if.end11.i.if.end21.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 20) #7
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %if.end11.i.if.end21.i_crit_edge
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %if.end61, label %if.end21.i.if.end.i.i_crit_edge

if.end21.i.if.end.i.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end59:                                         ; preds = %wdt87xx_set_feature.exit.i, %do.end.i
  %retry.0340371 = phi i32 [ %retry.0340, %wdt87xx_set_feature.exit.i ], [ 0, %do.end.i ]
  %retval.0.i229.ph = phi i32 [ %call.i.i.i226, %wdt87xx_set_feature.exit.i ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pkt_buf.sroa.9.i)
  br label %for.end.sink.split

if.end61:                                         ; preds = %if.end21.i
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pkt_buf.sroa.9.i)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %pkt_buf.i) #7
  %122 = call ptr @memset(ptr %pkt_buf.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i.i)
  %123 = ptrtoint ptr %cmd_buf.sroa.9.i.i.2.i.i.2.i.2.i.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 -1, ptr %cmd_buf.sroa.9.i.i.2.i.i.2.i.2.i.2..sroa_idx, align 2
  %124 = ptrtoint ptr %cmd_buf.sroa.9.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 -30976, ptr %cmd_buf.sroa.9.i.i, align 2
  %125 = ptrtoint ptr %cmd_buf.sroa.9.i.i.1.i.i.1.i.1.i.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %125, i32 4)
  store i32 %80, ptr %cmd_buf.sroa.9.i.i.1.i.i.1.i.1.i.1..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i.i) #7
  %126 = call ptr @memset(ptr %63, i32 255, i32 64)
  %127 = ptrtoint ptr %tx_buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 34, ptr %tx_buf.i.i.i, align 1
  %128 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 0, ptr %arrayidx2.i.i.i, align 1
  %129 = ptrtoint ptr %64 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 56, ptr %64, align 1
  %130 = ptrtoint ptr %65 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 3, ptr %65, align 1
  %131 = ptrtoint ptr %62 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 35, ptr %62, align 1
  %132 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %arrayidx22.i.i.i, align 1
  %133 = ptrtoint ptr %arrayidx25.i.i.i to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 8, ptr %arrayidx25.i.i.i, align 1
  %134 = ptrtoint ptr %arrayidx29.i.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %arrayidx29.i.i.i, align 1
  %135 = ptrtoint ptr %arrayidx34.i.i.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 8, ptr %arrayidx34.i.i.i, align 1
  %136 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i.i, align 1
  %137 = call ptr @memcpy(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.i, ptr %cmd_buf.sroa.9.i.i, i32 6)
  %call.i.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp36.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp36.i.i.i, label %do.end.i231, label %if.end.i

do.end.i231:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i.i)
  br label %do.end67

if.end.i:                                         ; preds = %if.end61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %138 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %138(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i.i)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i51.i)
  %139 = ptrtoint ptr %cmd_buf.sroa.9.i51.i.2.i51.i.2.i51.2.i51.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %139, i32 4)
  store i32 -1, ptr %cmd_buf.sroa.9.i51.i.2.i51.i.2.i51.2.i51.2..sroa_idx, align 2
  %140 = ptrtoint ptr %cmd_buf.sroa.9.i51.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 -31232, ptr %cmd_buf.sroa.9.i51.i, align 2
  %141 = ptrtoint ptr %cmd_buf.sroa.9.i51.i.1.i51.i.1.i51.1.i51.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %141, i32 4)
  store i32 %76, ptr %cmd_buf.sroa.9.i51.i.1.i51.i.1.i51.1.i51.1..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i50.i) #7
  %142 = call ptr @memset(ptr %67, i32 255, i32 64)
  %143 = ptrtoint ptr %tx_buf.i.i50.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 34, ptr %tx_buf.i.i50.i, align 1
  %144 = ptrtoint ptr %arrayidx2.i.i53.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 0, ptr %arrayidx2.i.i53.i, align 1
  %145 = ptrtoint ptr %68 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 56, ptr %68, align 1
  %146 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 3, ptr %69, align 1
  %147 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 35, ptr %66, align 1
  %148 = ptrtoint ptr %arrayidx22.i.i54.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %arrayidx22.i.i54.i, align 1
  %149 = ptrtoint ptr %arrayidx25.i.i55.i to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 8, ptr %arrayidx25.i.i55.i, align 1
  %150 = ptrtoint ptr %arrayidx29.i.i56.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %arrayidx29.i.i56.i, align 1
  %151 = ptrtoint ptr %arrayidx34.i.i57.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 8, ptr %arrayidx34.i.i57.i, align 1
  %152 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i58.i to i32
  call void @__asan_store1_noabort(i32 %152)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i58.i, align 1
  %153 = call ptr @memcpy(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i59.i, ptr %cmd_buf.sroa.9.i51.i, i32 6)
  %call.i.i.i60.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i50.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i60.i)
  %cmp36.i.i61.i = icmp slt i32 %call.i.i.i60.i, 0
  br i1 %cmp36.i.i61.i, label %do.end6.i, label %if.end.i.i242

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i60.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i51.i)
  br label %do.end67

if.end.i.i242:                                    ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %154(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i50.i) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i51.i)
  call void @msleep(i32 noundef %mul.i) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i230) #7
  %155 = call ptr @memset(ptr %71, i32 255, i32 64)
  %156 = ptrtoint ptr %tx_buf.i.i230 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 34, ptr %tx_buf.i.i230, align 1
  %157 = ptrtoint ptr %arrayidx2.i.i233 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %arrayidx2.i.i233, align 1
  %158 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 54, ptr %72, align 1
  %159 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 3, ptr %73, align 1
  %160 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 35, ptr %70, align 1
  %161 = ptrtoint ptr %arrayidx22.i.i234 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %arrayidx22.i.i234, align 1
  %162 = ptrtoint ptr %arrayidx25.i.i235 to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 8, ptr %arrayidx25.i.i235, align 1
  %163 = ptrtoint ptr %arrayidx29.i.i236 to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 0, ptr %arrayidx29.i.i236, align 1
  %164 = ptrtoint ptr %arrayidx34.i.i237 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 6, ptr %arrayidx34.i.i237, align 1
  %165 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i238 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 102, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i238, align 1
  %166 = call ptr @memset(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i239, i32 0, i32 6)
  %call.i.i.i240 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i230, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i240)
  %cmp36.i.i241 = icmp slt i32 %call.i.i.i240, 0
  br i1 %cmp36.i.i241, label %do.end16.i, label %if.end18.i

do.end16.i:                                       ; preds = %if.end.i.i242
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i240) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i230) #7
  br label %do.end67

if.end18.i:                                       ; preds = %if.end.i.i242
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %167(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i230) #7
  %168 = call ptr @memset(ptr %74, i32 0, i32 63)
  %169 = ptrtoint ptr %pkt_buf.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 7, ptr %pkt_buf.i, align 1
  %call22.i = call fastcc i32 @wdt87xx_get_feature(ptr noundef %client, ptr noundef nonnull %pkt_buf.i, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end69, label %if.end18.i.do.end67_crit_edge

if.end18.i.do.end67_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end67:                                         ; preds = %if.end18.i.do.end67_crit_edge, %do.end16.i, %do.end6.i, %do.end.i231
  %.str.123.sink = phi ptr [ @.str.123, %do.end.i231 ], [ @.str.126, %do.end6.i ], [ @.str.129, %do.end16.i ], [ @.str.132, %if.end18.i.do.end67_crit_edge ]
  %retval.0.i244.ph = phi i32 [ %call.i.i.i.i, %do.end.i231 ], [ %call.i.i.i60.i, %do.end6.i ], [ %call.i.i.i240, %do.end16.i ], [ %call22.i, %if.end18.i.do.end67_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull %.str.123.sink) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pkt_buf.i) #7
  br label %for.end.sink.split

if.end69:                                         ; preds = %if.end18.i
  %170 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_loadN_noabort(i32 %170, i32 2)
  %171 = load i16, ptr %arrayidx30.i, align 1
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %pkt_buf.i) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end69
  %i.06.i = phi i32 [ %inc.i245, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end69 ]
  %checksum.05.i = phi i32 [ %or.i.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end69 ]
  %arrayidx.i = getelementptr i8, ptr %data.0342, i32 %i.06.i
  %172 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %arrayidx.i, align 1
  %conv.i.i = and i32 %checksum.05.i, 65535
  %conv1.i.i = zext i8 %173 to i32
  %shr.i.i = lshr i32 %conv.i.i, 1
  %shr3.i.i = lshr i32 %conv.i.i, 2
  %shr5.i.i = lshr i32 %checksum.05.i, 4
  %shr7.i.i = lshr i32 %checksum.05.i, 5
  %shr9.i.i = lshr i32 %checksum.05.i, 7
  %shr11.i.i = lshr i32 %checksum.05.i, 11
  %xor.i.i = xor i32 %shr9.i.i, %conv.i.i
  %xor2.i.i = xor i32 %xor.i.i, %shr11.i.i
  %xor4.i.i = xor i32 %xor2.i.i, %shr.i.i
  %xor6.i.i = xor i32 %xor4.i.i, %shr3.i.i
  %xor8.i.i = xor i32 %xor6.i.i, %shr5.i.i
  %xor10.i.i = xor i32 %xor8.i.i, %shr7.i.i
  %xor12.i.i = xor i32 %xor10.i.i, %conv1.i.i
  %shr13.i.i = lshr i32 %conv.i.i, 15
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %conv1.masked.i.i = and i32 %conv1.i.i, 254
  %and16.i.i = xor i32 %conv1.masked.i.i, %shl.i.i
  %xor12.masked.i.i = and i32 %xor12.i.i, 1
  %and17.i.i = xor i32 %xor12.masked.i.i, %shr13.i.i
  %or.i.i = or i32 %and17.i.i, %and16.i.i
  %inc.i245 = add nuw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i245, %75
  br i1 %exitcond.not.i, label %wdt87xx_calculate_checksum.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

wdt87xx_calculate_checksum.exit:                  ; preds = %for.body.i
  %174 = call i16 @llvm.bswap.i16(i16 %171) #7
  %conv18.i.le.i = trunc i32 %or.i.i to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %174, i16 %conv18.i.le.i)
  %cmp72 = icmp eq i16 %174, %conv18.i.le.i
  br i1 %cmp72, label %wdt87xx_calculate_checksum.exit.for.end_crit_edge, label %do.end78

wdt87xx_calculate_checksum.exit.for.end_crit_edge: ; preds = %wdt87xx_calculate_checksum.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.end78:                                         ; preds = %wdt87xx_calculate_checksum.exit
  %conv71 = and i32 %or.i.i, 65535
  %conv = zext i16 %174 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.106, i32 noundef %conv, i32 noundef %conv71, i32 noundef %retry.0340) #10
  %inc = add nuw nsw i32 %retry.0340, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %do.end78.do.end87_crit_edge, label %do.end78.for.body_crit_edge

do.end78.for.body_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end78.do.end87_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

for.end.sink.split:                               ; preds = %do.end67, %do.end59
  %.str.103.sink = phi ptr [ @.str.103, %do.end67 ], [ @.str.100, %do.end59 ]
  %retry.0335.ph = phi i32 [ %retry.0340, %do.end67 ], [ %retry.0340371, %do.end59 ]
  %error.2.ph = phi i32 [ %retval.0.i244.ph, %do.end67 ], [ %retval.0.i229.ph, %do.end59 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull %.str.103.sink, i32 noundef %start_addr.0349, i32 noundef %75) #10
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %wdt87xx_calculate_checksum.exit.for.end_crit_edge
  %retry.0335 = phi i32 [ %retry.0335.ph, %for.end.sink.split ], [ %retry.0340, %wdt87xx_calculate_checksum.exit.for.end_crit_edge ]
  %error.2 = phi i32 [ %error.2.ph, %for.end.sink.split ], [ 0, %wdt87xx_calculate_checksum.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %retry.0335)
  %cmp82 = icmp eq i32 %retry.0335, 3
  br i1 %cmp82, label %for.end.do.end87_crit_edge, label %for.end.if.end89_crit_edge

for.end.if.end89_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

for.end.do.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end87

do.end87:                                         ; preds = %for.end.do.end87_crit_edge, %do.end78.do.end87_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40, ptr noundef nonnull @.str.109) #10
  br label %out_lock_device

if.end89:                                         ; preds = %for.end.if.end89_crit_edge, %for.end.thread
  %error.2308 = phi i32 [ %call.i.i.i212, %for.end.thread ], [ %error.2, %for.end.if.end89_crit_edge ]
  %add = add i32 %start_addr.0349, %75
  %add.ptr90 = getelementptr i8, ptr %data.0342, i32 %75
  %tobool25.not = icmp eq i32 %sub, 0
  br i1 %tobool25.not, label %if.end89.out_lock_device_crit_edge, label %if.end89.do.body27_crit_edge

if.end89.do.body27_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body27

if.end89.out_lock_device_crit_edge:               ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_lock_device

out_lock_device:                                  ; preds = %if.end89.out_lock_device_crit_edge, %do.end87, %wdt87xx_send_command.exit201.out_lock_device_crit_edge
  %error.3 = phi i32 [ -5, %do.end87 ], [ 0, %wdt87xx_send_command.exit201.out_lock_device_crit_edge ], [ %error.2308, %if.end89.out_lock_device_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i247)
  %cmd_buf.sroa.9.i247.2.i247.2..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i247, i32 2
  %175 = ptrtoint ptr %cmd_buf.sroa.9.i247.2.i247.2..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %175, i32 4)
  store i32 -1, ptr %cmd_buf.sroa.9.i247.2.i247.2..sroa_idx, align 2
  %176 = ptrtoint ptr %cmd_buf.sroa.9.i247 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 -1024, ptr %cmd_buf.sroa.9.i247, align 2
  %cmd_buf.sroa.9.i247.1.i247.1..sroa_idx = getelementptr inbounds i8, ptr %cmd_buf.sroa.9.i247, i32 1
  %177 = ptrtoint ptr %cmd_buf.sroa.9.i247.1.i247.1..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %177, i32 2)
  store i16 -25661, ptr %cmd_buf.sroa.9.i247.1.i247.1..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i246) #7
  %178 = getelementptr inbounds i8, ptr %tx_buf.i.i246, i32 4
  %179 = getelementptr inbounds i8, ptr %tx_buf.i.i246, i32 16
  %180 = call ptr @memset(ptr %179, i32 255, i32 64)
  %181 = ptrtoint ptr %tx_buf.i.i246 to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 34, ptr %tx_buf.i.i246, align 1
  %arrayidx2.i.i249 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 1
  %182 = ptrtoint ptr %arrayidx2.i.i249 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 0, ptr %arrayidx2.i.i249, align 1
  %183 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 2
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 56, ptr %183, align 1
  %185 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 3
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 3, ptr %185, align 1
  %187 = ptrtoint ptr %178 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 35, ptr %178, align 1
  %arrayidx22.i.i250 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 5
  %188 = ptrtoint ptr %arrayidx22.i.i250 to i32
  call void @__asan_store1_noabort(i32 %188)
  store i8 0, ptr %arrayidx22.i.i250, align 1
  %arrayidx25.i.i251 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 6
  %189 = ptrtoint ptr %arrayidx25.i.i251 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 8, ptr %arrayidx25.i.i251, align 1
  %arrayidx29.i.i252 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 7
  %190 = ptrtoint ptr %arrayidx29.i.i252 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %arrayidx29.i.i252, align 1
  %arrayidx34.i.i253 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 8
  %191 = ptrtoint ptr %arrayidx34.i.i253 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 8, ptr %arrayidx34.i.i253, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i254 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 9
  %192 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i254 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i254, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i255 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i246, i32 0, i32 10
  %193 = call ptr @memcpy(ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i255, ptr %cmd_buf.sroa.9.i247, i32 6)
  %call.i.i.i256 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i246, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i256)
  %cmp36.i.i257 = icmp slt i32 %call.i.i.i256, 0
  br i1 %cmp36.i.i257, label %do.end97, label %wdt87xx_send_command.exit265.thread

wdt87xx_send_command.exit265.thread:              ; preds = %out_lock_device
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %194(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i246) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i247)
  br label %if.end99

do.end97:                                         ; preds = %out_lock_device
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i259 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i259, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i256) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i246) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cmd_buf.sroa.9.i247)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i259, ptr noundef nonnull @.str.112) #10
  br label %if.end99

if.end99:                                         ; preds = %do.end97, %wdt87xx_send_command.exit265.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %195(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %196(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %197(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %198 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %198(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %199 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %199(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %200(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %201(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %202(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %203(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %204(i32 noundef 214748000) #7
  br label %out_enable_reporting

out_enable_reporting:                             ; preds = %if.end99, %do.end20
  %error.4 = phi i32 [ %call.i.i.i194, %do.end20 ], [ %error.3, %if.end99 ]
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i266) #7
  %205 = getelementptr inbounds i8, ptr %tx_buf.i.i266, i32 4
  %206 = getelementptr inbounds i8, ptr %tx_buf.i.i266, i32 16
  %207 = call ptr @memset(ptr %206, i32 255, i32 64)
  %208 = ptrtoint ptr %tx_buf.i.i266 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 34, ptr %tx_buf.i.i266, align 1
  %arrayidx2.i.i270 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx2.i.i270 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 0, ptr %arrayidx2.i.i270, align 1
  %210 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 2
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store1_noabort(i32 %211)
  store i8 56, ptr %210, align 1
  %212 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 3
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 3, ptr %212, align 1
  %214 = ptrtoint ptr %205 to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 35, ptr %205, align 1
  %arrayidx22.i.i271 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 5
  %215 = ptrtoint ptr %arrayidx22.i.i271 to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 0, ptr %arrayidx22.i.i271, align 1
  %arrayidx25.i.i272 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 6
  %216 = ptrtoint ptr %arrayidx25.i.i272 to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 8, ptr %arrayidx25.i.i272, align 1
  %arrayidx29.i.i273 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 7
  %217 = ptrtoint ptr %arrayidx29.i.i273 to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 0, ptr %arrayidx29.i.i273, align 1
  %arrayidx34.i.i274 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 8
  %218 = ptrtoint ptr %arrayidx34.i.i274 to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 8, ptr %arrayidx34.i.i274, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i275 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 9
  %219 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i275 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i275, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 10
  %220 = ptrtoint ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276 to i32
  call void @__asan_storeN_noabort(i32 %220, i32 2)
  store i16 0, ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276, align 1
  %cmd_buf.sroa.9.i267.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276.sroa_idx = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i266, i32 0, i32 12
  %221 = ptrtoint ptr %cmd_buf.sroa.9.i267.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %221, i32 4)
  store i32 0, ptr %cmd_buf.sroa.9.i267.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i276.sroa_idx, align 1
  %call.i.i.i277 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %tx_buf.i.i266, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i277)
  %cmp36.i.i278 = icmp slt i32 %call.i.i.i277, 0
  br i1 %cmp36.i.i278, label %do.end111, label %wdt87xx_send_command.exit286.thread

wdt87xx_send_command.exit286.thread:              ; preds = %out_enable_reporting
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %222(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i266) #7
  br label %if.end113

do.end111:                                        ; preds = %out_enable_reporting
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i280 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i280, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i277) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i266) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i280, ptr noundef nonnull @.str.115) #10
  br label %if.end113

if.end113:                                        ; preds = %do.end111, %wdt87xx_send_command.exit286.thread
  %retval.0.i.i283313 = phi i32 [ 0, %wdt87xx_send_command.exit286.thread ], [ %call.i.i.i277, %do.end111 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.4)
  %tobool114.not = icmp eq i32 %error.4, 0
  %call106.error.4 = select i1 %tobool114.not, i32 %retval.0.i.i283313, i32 %error.4
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %do.end12
  %retval.0 = phi i32 [ %call.i.i.i, %do.end12 ], [ %call106.error.4, %if.end113 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_fw_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wdt87xx_update_firmware(ptr noundef %dev, ptr noundef nonnull @.str.138, i32 noundef 1381454406)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %count.call = select i1 %tobool.not, i32 %count, i32 %call
  ret i32 %count.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt87xx_suspend(ptr noundef %dev) #2 align 64 {
entry:
  %tx_buf.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %irq = getelementptr i8, ptr %dev, i32 932
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  %2 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 4
  %3 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 16
  %4 = call ptr @memset(ptr %3, i32 255, i32 64)
  %5 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 34, ptr %tx_buf.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %7 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 56, ptr %7, align 1
  %9 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %9, align 1
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 35, ptr %2, align 1
  %arrayidx22.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx22.i.i, align 1
  %arrayidx25.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx25.i.i, align 1
  %arrayidx29.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx29.i.i, align 1
  %arrayidx34.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %arrayidx34.i.i, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 9
  %16 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %17, i32 2)
  store i16 256, ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 50331648, ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf.i.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp36.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp36.i.i, label %if.then, label %wdt87xx_send_command.exit.thread

wdt87xx_send_command.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %21) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.139, i32 noundef %call.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %wdt87xx_send_command.exit.thread
  %retval.0 = phi i32 [ %call.i.i.i, %if.then ], [ 0, %wdt87xx_send_command.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wdt87xx_resume(ptr noundef %dev) #2 align 64 {
entry:
  %tx_buf.i.i = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  tail call void @msleep(i32 noundef 100) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  %0 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 4
  %1 = getelementptr inbounds i8, ptr %tx_buf.i.i, i32 16
  %2 = call ptr @memset(ptr %1, i32 255, i32 64)
  %3 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 34, ptr %tx_buf.i.i, align 1
  %arrayidx2.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx2.i.i, align 1
  %5 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 56, ptr %5, align 1
  %7 = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %7, align 1
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 35, ptr %0, align 1
  %arrayidx22.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx22.i.i, align 1
  %arrayidx25.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 8, ptr %arrayidx25.i.i, align 1
  %arrayidx29.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx29.i.i, align 1
  %arrayidx34.i.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 8, ptr %arrayidx34.i.i, align 1
  %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -124, ptr %cmd_buf.sroa.7.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 0, ptr %cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i, align 1
  %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx = getelementptr inbounds [80 x i8], ptr %tx_buf.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 0, ptr %cmd_buf.sroa.9.i.sroa.4.0.cmd_buf.sroa.9.0.arrayidx34.i.sroa_idx.i.sroa_idx, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %add.ptr, ptr noundef nonnull %tx_buf.i.i, i32 noundef 16, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp36.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp36.i.i, label %do.end, label %wdt87xx_send_command.exit.thread

wdt87xx_send_command.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %17(i32 noundef 429496000) #7
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.119, i32 noundef %call.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %tx_buf.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.141, i32 noundef %call.i.i.i) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %wdt87xx_send_command.exit.thread
  %irq = getelementptr i8, ptr %dev, i32 932
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %19) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !112, !114, !115, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !264, !266, !268, !269, !270, !271, !273, !274, !275, !276}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__initcall__kmod_wdt87xx_i2c__301_1181_wdt87xx_driver_init6, !1, !"__initcall__kmod_wdt87xx_i2c__301_1181_wdt87xx_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1181, i32 1}
!2 = !{ptr @__exitcall_wdt87xx_driver_exit, !1, !"__exitcall_wdt87xx_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author302, !4, !"__UNIQUE_ID_author302", i1 false, i1 false}
!4 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1183, i32 1}
!5 = !{ptr @__UNIQUE_ID_description303, !6, !"__UNIQUE_ID_description303", i1 false, i1 false}
!6 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1184, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1185, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1176, i32 11}
!12 = !{ptr @wdt87xx_driver, !13, !"wdt87xx_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1172, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1073, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @wdt87xx_ts_probe.__UNIQUE_ID_ddebug300, !15, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!19 = !{ptr @wdt87xx_ts_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1085, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1088, i32 41}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1104, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wdt87xx_ts_probe._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @wdt87xx_ts_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1110, i32 3}
!32 = !{ptr @wdt87xx_ts_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @wdt87xx_ts_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 442, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @wdt87xx_get_sysparam._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @wdt87xx_get_sysparam._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 451, i32 3}
!41 = !{ptr @wdt87xx_get_sysparam._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @wdt87xx_get_sysparam._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 472, i32 3}
!45 = !{ptr @wdt87xx_get_sysparam._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @wdt87xx_get_sysparam._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 481, i32 3}
!49 = !{ptr @wdt87xx_get_sysparam._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @wdt87xx_get_sysparam._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 486, i32 3}
!53 = !{ptr @wdt87xx_get_sysparam._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @wdt87xx_get_sysparam._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 493, i32 2}
!57 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @wdt87xx_get_sysparam._entry.26, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @wdt87xx_get_sysparam._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 230, i32 3}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @wdt87xx_get_desc._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @wdt87xx_get_desc._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 235, i32 3}
!67 = !{ptr @wdt87xx_get_desc._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @wdt87xx_get_desc._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 211, i32 3}
!71 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @wdt87xx_i2c_xfer._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @wdt87xx_i2c_xfer._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 259, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wdt87xx_get_string._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @wdt87xx_get_string._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 264, i32 3}
!81 = !{ptr @wdt87xx_get_string._entry.39, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @wdt87xx_get_string._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 305, i32 3}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @wdt87xx_get_feature._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @wdt87xx_get_feature._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1033, i32 3}
!90 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @wdt87xx_ts_create_input_device._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @wdt87xx_ts_create_input_device._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1038, i32 16}
!95 = !{ptr @.str.48, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1060, i32 3}
!97 = !{ptr @wdt87xx_ts_create_input_device._entry.47, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @wdt87xx_ts_create_input_device._entry_ptr.49, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1003, i32 3}
!101 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @wdt87xx_ts_interrupt._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @wdt87xx_ts_interrupt._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 982, i32 2}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @wdt87xx_report_contact.__UNIQUE_ID_ddebug299, !105, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!108 = !{ptr @wdt87xx_attr_group, !109, !"wdt87xx_attr_group", i1 false, i1 false}
!109 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 948, i32 37}
!110 = !{ptr @wdt87xx_attrs, !111, !"wdt87xx_attrs", i1 false, i1 false}
!111 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 939, i32 26}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 933, i32 8}
!114 = !{ptr @dev_attr_config_csum, !113, !"dev_attr_config_csum", i1 false, i1 false}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 890, i32 35}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 934, i32 8}
!119 = !{ptr @dev_attr_fw_version, !118, !"dev_attr_fw_version", i1 false, i1 false}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 935, i32 8}
!122 = !{ptr @dev_attr_plat_id, !121, !"dev_attr_plat_id", i1 false, i1 false}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 936, i32 8}
!125 = !{ptr @dev_attr_update_config, !124, !"dev_attr_update_config", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 917, i32 39}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 868, i32 3}
!130 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wdt87xx_update_firmware._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @wdt87xx_update_firmware._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.62, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 835, i32 3}
!135 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @wdt87xx_do_update_firmware._entry, !134, !"_entry", i1 false, i1 false}
!137 = !{ptr @wdt87xx_do_update_firmware._entry_ptr, !134, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 843, i32 3}
!140 = !{ptr @wdt87xx_do_update_firmware._entry.64, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @wdt87xx_do_update_firmware._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 850, i32 3}
!144 = !{ptr @wdt87xx_do_update_firmware._entry.67, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @wdt87xx_do_update_firmware._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 513, i32 3}
!148 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @wdt87xx_validate_firmware._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @wdt87xx_validate_firmware._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 519, i32 3}
!153 = !{ptr @wdt87xx_validate_firmware._entry.72, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @wdt87xx_validate_firmware._entry_ptr.74, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.76, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 531, i32 3}
!157 = !{ptr @wdt87xx_validate_firmware._entry.75, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @wdt87xx_validate_firmware._entry_ptr.77, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.79, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 541, i32 3}
!161 = !{ptr @wdt87xx_validate_firmware._entry.78, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @wdt87xx_validate_firmware._entry_ptr.80, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 793, i32 3}
!165 = !{ptr @.str.82, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @wdt87xx_load_chunk._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @wdt87xx_load_chunk._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 800, i32 3}
!170 = !{ptr @wdt87xx_load_chunk._entry.83, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @wdt87xx_load_chunk._entry_ptr.85, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.87, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 807, i32 3}
!174 = !{ptr @wdt87xx_load_chunk._entry.86, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @wdt87xx_load_chunk._entry_ptr.88, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 697, i32 2}
!178 = !{ptr @.str.90, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @wdt87xx_write_firmware.__UNIQUE_ID_ddebug295, !177, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!180 = !{ptr @.str.91, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 701, i32 3}
!182 = !{ptr @wdt87xx_write_firmware._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @wdt87xx_write_firmware._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.93, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 707, i32 3}
!186 = !{ptr @wdt87xx_write_firmware._entry.92, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @wdt87xx_write_firmware._entry_ptr.94, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.95, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 714, i32 3}
!190 = !{ptr @wdt87xx_write_firmware.__UNIQUE_ID_ddebug296, !189, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!191 = !{ptr @.str.97, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 724, i32 5}
!193 = !{ptr @wdt87xx_write_firmware._entry.96, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @wdt87xx_write_firmware._entry_ptr.98, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 734, i32 5}
!197 = !{ptr @wdt87xx_write_firmware._entry.99, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @wdt87xx_write_firmware._entry_ptr.101, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.103, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 743, i32 5}
!201 = !{ptr @wdt87xx_write_firmware._entry.102, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @wdt87xx_write_firmware._entry_ptr.104, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.106, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 755, i32 4}
!205 = !{ptr @wdt87xx_write_firmware._entry.105, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @wdt87xx_write_firmware._entry_ptr.107, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.109, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 761, i32 4}
!209 = !{ptr @wdt87xx_write_firmware._entry.108, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @wdt87xx_write_firmware._entry_ptr.110, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.112, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 773, i32 3}
!213 = !{ptr @wdt87xx_write_firmware._entry.111, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @wdt87xx_write_firmware._entry_ptr.113, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 780, i32 3}
!217 = !{ptr @wdt87xx_write_firmware._entry.114, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @wdt87xx_write_firmware._entry_ptr.116, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 390, i32 3}
!221 = !{ptr @.str.118, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @wdt87xx_send_command._entry, !220, !"_entry", i1 false, i1 false}
!223 = !{ptr @wdt87xx_send_command._entry_ptr, !220, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.119, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 348, i32 3}
!226 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @wdt87xx_set_feature._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @wdt87xx_set_feature._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 573, i32 3}
!231 = !{ptr @.str.122, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @wdt87xx_write_data._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @wdt87xx_write_data._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.123, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 651, i32 3}
!236 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @wdt87xx_get_checksum._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @wdt87xx_get_checksum._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.126, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 657, i32 3}
!241 = !{ptr @wdt87xx_get_checksum._entry.125, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @wdt87xx_get_checksum._entry_ptr.127, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 670, i32 3}
!245 = !{ptr @wdt87xx_get_checksum._entry.128, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @wdt87xx_get_checksum._entry_ptr.130, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.132, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 678, i32 3}
!249 = !{ptr @wdt87xx_get_checksum._entry.131, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @wdt87xx_get_checksum._entry_ptr.133, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.134, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 401, i32 2}
!253 = !{ptr @.str.135, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @wdt87xx_sw_reset.__UNIQUE_ID_ddebug292, !252, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!255 = !{ptr @.str.136, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 405, i32 3}
!257 = !{ptr @wdt87xx_sw_reset._entry, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @wdt87xx_sw_reset._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.137, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 937, i32 8}
!261 = !{ptr @dev_attr_update_fw, !260, !"dev_attr_update_fw", i1 false, i1 false}
!262 = !{ptr @.str.138, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 928, i32 39}
!264 = !{ptr @wdt87xx_pm_ops, !265, !"wdt87xx_pm_ops", i1 false, i1 false}
!265 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1158, i32 8}
!266 = !{ptr @.str.139, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1127, i32 3}
!268 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @wdt87xx_suspend._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @wdt87xx_suspend._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.141, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1149, i32 3}
!273 = !{ptr @.str.142, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @wdt87xx_resume._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @wdt87xx_resume._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @wdt87xx_dev_id, !277, !"wdt87xx_dev_id", i1 false, i1 false}
!277 = !{!"../drivers/input/touchscreen/wdt87xx_i2c.c", i32 1160, i32 35}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{i64 2149013783, i64 2149013788, i64 2149013801, i64 2149013845, i64 2149013879, i64 2149013900}
!288 = !{!"auto-init"}
