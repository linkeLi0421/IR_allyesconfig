; ModuleID = '/llk/IR_all_yes/drivers/hwmon/bt1-pvt.c_pt.bc'
source_filename = "../drivers/hwmon/bt1-pvt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pvt_sensor_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pvt_hwmon = type { ptr, ptr, ptr, i32, [2 x %struct.clk_bulk_data], %struct.mutex, i32, [5 x %struct.pvt_cache], i64 }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.pvt_cache = type { i32, %struct.seqlock_t, i32, i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@__initcall__kmod_bt1_pvt__261_1198_pvt_driver_init6 = internal global ptr @pvt_driver_init, section ".initcall6.init", align 4
@pvt_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pvt_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pvt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pvt_driver_exit = internal global ptr @pvt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author262 = internal constant [66 x i8] c"bt1_pvt.author=Maxim Kaurkin <maxim.kaurkin@baikalelectronics.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description263 = internal constant [41 x i8] c"bt1_pvt.description=Baikal-T1 PVT driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file264 = internal constant [35 x i8] c"bt1_pvt.file=drivers/hwmon/bt1-pvt\00", section ".modinfo", align 1
@__UNIQUE_ID_license265 = internal constant [23 x i8] c"bt1_pvt.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bt1-pvt\00", [24 x i8] zeroinitializer }, align 32
@pvt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-pvt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@pvt_create_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 896, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't add PVT data clear action\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvt_create_data\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/bt1-pvt.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pvt_create_data._entry_ptr = internal global ptr @pvt_create_data._entry, section ".printk_index", align 4
@pvt_create_data.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pvt->iface_mtx\00", [16 x i8] zeroinitializer }, align 32
@pvt_create_data.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"&(&pvt->cache[idx].data_seqlock)->lock\00", [57 x i8] zeroinitializer }, align 32
@pvt_create_data.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@pvt_request_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't find PVT memresource\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvt_request_regs\00", [47 x i8] zeroinitializer }, align 32
@pvt_request_regs._entry_ptr = internal global ptr @pvt_request_regs._entry, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@pvt_request_clks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 949, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't get PVT clocks descriptors\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvt_request_clks\00", [47 x i8] zeroinitializer }, align 32
@pvt_request_clks._entry_ptr = internal global ptr @pvt_request_clks._entry, section ".printk_index", align 4
@pvt_request_clks._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 955, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Couldn't enable the PVT clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@pvt_request_clks._entry_ptr.19 = internal global ptr @pvt_request_clks._entry.17, section ".printk_index", align 4
@pvt_request_clks._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't add PVT clocks disable action\0A\00", [59 x i8] zeroinitializer }, align 32
@pvt_request_clks._entry_ptr.22 = internal global ptr @pvt_request_clks._entry.20, section ".printk_index", align 4
@pvt_check_pwr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 995, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Sensor is powered down\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pvt_check_pwr\00", [18 x i8] zeroinitializer }, align 32
@pvt_check_pwr._entry_ptr = internal global ptr @pvt_check_pwr._entry, section ".printk_index", align 4
@pvt_init_iface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 1010, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid reference clock rate\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pvt_init_iface\00", [17 x i8] zeroinitializer }, align 32
@pvt_init_iface._entry_ptr = internal global ptr @pvt_init_iface._entry, section ".printk_index", align 4
@pvt_info = internal constant { [5 x %struct.pvt_sensor_info], [44 x i8] } { [5 x %struct.pvt_sensor_info] [%struct.pvt_sensor_info { i32 0, ptr @.str.28, i32 0, i32 8, i32 2, i32 4, i32 1, i32 5, i32 7 }, %struct.pvt_sensor_info { i32 0, ptr @.str.29, i32 1, i32 12, i32 8, i32 16, i32 2, i32 2, i32 3 }, %struct.pvt_sensor_info { i32 1, ptr @.str.30, i32 2, i32 16, i32 32, i32 64, i32 2, i32 2, i32 3 }, %struct.pvt_sensor_info { i32 2, ptr @.str.31, i32 4, i32 20, i32 128, i32 256, i32 2, i32 2, i32 3 }, %struct.pvt_sensor_info { i32 3, ptr @.str.32, i32 6, i32 24, i32 512, i32 1024, i32 2, i32 2, i32 3 }], [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"baikal,pvt-temp-offset-millicelsius\00", [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPU Core Temperature\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPU Core Voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CPU Core Low-Vt\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CPU Core High-Vt\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPU Core Standard-Vt\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pvt\00", [28 x i8] zeroinitializer }, align 32
@pvt_request_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1080, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't request PVT IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pvt_request_irq\00", [16 x i8] zeroinitializer }, align 32
@pvt_request_irq._entry_ptr = internal global ptr @pvt_request_irq._entry, section ".printk_index", align 4
@pvt_hwmon_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @pvt_hwmon_ops, ptr @pvt_channel_info }, [24 x i8] zeroinitializer }, align 32
@pvt_create_hwmon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Couldn't create hwmon device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvt_create_hwmon\00", [47 x i8] zeroinitializer }, align 32
@pvt_create_hwmon._entry_ptr = internal global ptr @pvt_create_hwmon._entry, section ".printk_index", align 4
@pvt_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @pvt_hwmon_is_visible, ptr @pvt_hwmon_read, ptr @pvt_hwmon_read_string, ptr @pvt_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@pvt_channel_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.42, ptr @.compoundliteral.44, ptr @.compoundliteral.46, ptr null], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 3244198, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.43 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 13326, i32 13326, i32 13326, i32 13326, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.45 }, [24 x i8] zeroinitializer }, align 32
@pvt_enable_iface._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 1118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Can't add PVT disable interface action\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pvt_enable_iface\00", [47 x i8] zeroinitializer }, align 32
@pvt_enable_iface._entry_ptr = internal global ptr @pvt_enable_iface._entry, section ".printk_index", align 4
@switch.table.pvt_hwmon_is_visible = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292, i16 0, i16 292, i16 292], [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.49 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 5, i64 7, i64 15, i64 16, i64 20, i64 21]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 5, i64 7, i64 15, i64 16, i64 20]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 20]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.57 = private unnamed_addr constant [11 x i8] c"pvt_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1191, i32 31 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1194, i32 11 }
@___asan_gen_.63 = private unnamed_addr constant [13 x i8] c"pvt_of_match\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1185, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 896, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 902, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 906, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 922, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 944, i32 32 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 945, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 949, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 955, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 961, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 995, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1010, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant [9 x i8] c"pvt_info\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 40, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1053, i32 7 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 41, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 42, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 43, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 44, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 45, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1078, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1080, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant [15 x i8] c"pvt_hwmon_info\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 866, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1092, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"pvt_hwmon_ops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 859, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"pvt_channel_info\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 406, i32 41 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private constant [27 x i8] c"../drivers/hwmon/bt1-pvt.c\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1118, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant [34 x i8] c"switch.table.pvt_hwmon_is_visible\00", align 1
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description263, ptr @__UNIQUE_ID_file264, ptr @__UNIQUE_ID_license265, ptr @__exitcall_pvt_driver_exit, ptr @__initcall__kmod_bt1_pvt__261_1198_pvt_driver_init6, ptr @pvt_check_pwr._entry, ptr @pvt_check_pwr._entry_ptr, ptr @pvt_create_data._entry, ptr @pvt_create_data._entry_ptr, ptr @pvt_create_hwmon._entry, ptr @pvt_create_hwmon._entry_ptr, ptr @pvt_driver_exit, ptr @pvt_enable_iface._entry, ptr @pvt_enable_iface._entry_ptr, ptr @pvt_init_iface._entry, ptr @pvt_init_iface._entry_ptr, ptr @pvt_request_clks._entry, ptr @pvt_request_clks._entry.17, ptr @pvt_request_clks._entry.20, ptr @pvt_request_clks._entry_ptr, ptr @pvt_request_clks._entry_ptr.19, ptr @pvt_request_clks._entry_ptr.22, ptr @pvt_request_irq._entry, ptr @pvt_request_irq._entry_ptr, ptr @pvt_request_regs._entry, ptr @pvt_request_regs._entry_ptr, ptr @pvt_driver, ptr @.str, ptr @pvt_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pvt_create_data.__key, ptr @.str.6, ptr @pvt_create_data.__key.7, ptr @.str.8, ptr @pvt_create_data.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pvt_info, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @pvt_hwmon_info, ptr @.str.36, ptr @.str.37, ptr @pvt_hwmon_ops, ptr @pvt_channel_info, ptr @.compoundliteral, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.str.48, ptr @switch.table.pvt_hwmon_is_visible], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_create_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_create_data.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_create_data.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_create_data.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_request_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_request_clks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_request_clks._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_request_clks._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_check_pwr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_init_iface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_info to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_request_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_hwmon_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_create_hwmon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_channel_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvt_enable_iface._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pvt_hwmon_is_visible to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pvt_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pvt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @pvt_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %temp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 600, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.end.i:                                         ; preds = %entry
  %call3.i = tail call i32 @devm_add_action(ptr noundef %dev1.i, ptr noundef nonnull @pvt_clear_data, ptr noundef nonnull %call.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.1) #12
  %0 = inttoptr i32 %call3.i to ptr
  br label %pvt_create_data.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1.i, ptr %call.i.i, align 8
  %sensor.i = getelementptr inbounds %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 6
  %2 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sensor.i, align 4
  %iface_mtx.i = getelementptr inbounds %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %iface_mtx.i, ptr noundef nonnull @.str.6, ptr noundef nonnull @pvt_create_data.__key) #9
  %data_seqlock.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 0, i32 1
  %lock.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pvt_create_data.__key.7, i16 noundef signext 3) #9
  %dep_map.i.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 0, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @pvt_create_data.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %3 = ptrtoint ptr %data_seqlock.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data_seqlock.i, align 4
  %lock29.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %lock29.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %lock.i, ptr %lock29.i, align 4
  %data_seqlock.1.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 1, i32 1
  %lock.1.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 1, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.1.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pvt_create_data.__key.7, i16 noundef signext 3) #9
  %dep_map.i.1.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 1, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.1.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @pvt_create_data.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %5 = ptrtoint ptr %data_seqlock.1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %data_seqlock.1.i, align 4
  %lock29.1.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %lock29.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %lock.1.i, ptr %lock29.1.i, align 4
  %data_seqlock.2.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 2, i32 1
  %lock.2.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 2, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.2.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pvt_create_data.__key.7, i16 noundef signext 3) #9
  %dep_map.i.2.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 2, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.2.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @pvt_create_data.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %7 = ptrtoint ptr %data_seqlock.2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %data_seqlock.2.i, align 4
  %lock29.2.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 2, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %lock29.2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lock.2.i, ptr %lock29.2.i, align 4
  %data_seqlock.3.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 3, i32 1
  %lock.3.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 3, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.3.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pvt_create_data.__key.7, i16 noundef signext 3) #9
  %dep_map.i.3.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 3, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.3.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @pvt_create_data.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %9 = ptrtoint ptr %data_seqlock.3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %data_seqlock.3.i, align 4
  %lock29.3.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 3, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %lock29.3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %lock.3.i, ptr %lock29.3.i, align 4
  %data_seqlock.4.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 4, i32 1
  %lock.4.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 4, i32 1, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock.4.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @pvt_create_data.__key.7, i16 noundef signext 3) #9
  %dep_map.i.4.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 4, i32 1, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.4.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @pvt_create_data.__key.9, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %11 = ptrtoint ptr %data_seqlock.4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %data_seqlock.4.i, align 4
  %lock29.4.i = getelementptr %struct.pvt_hwmon, ptr %call.i.i, i32 0, i32 7, i32 4, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %lock29.4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %lock.4.i, ptr %lock29.4.i, align 4
  br label %pvt_create_data.exit

pvt_create_data.exit:                             ; preds = %if.end7.i, %do.end.i
  %retval.0.i = phi ptr [ %0, %do.end.i ], [ %call.i.i, %if.end7.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %pvt_create_data.exit.if.then_crit_edge, label %if.end

pvt_create_data.exit.if.then_crit_edge:           ; preds = %pvt_create_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %pvt_create_data.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i80 = phi ptr [ %retval.0.i, %pvt_create_data.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.if.then_crit_edge ]
  %13 = ptrtoint ptr %retval.0.i80 to i32
  br label %cleanup

if.end:                                           ; preds = %pvt_create_data.exit
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %retval.0.i, align 8
  %add.ptr.i = getelementptr i8, ptr %15, i32 -16
  %call.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef 0) #9
  %tobool.not.i52 = icmp eq ptr %call.i, null
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i, align 8
  br i1 %tobool.not.i52, label %pvt_request_regs.exit.thread83, label %if.end.i55

pvt_request_regs.exit.thread83:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end.i55:                                       ; preds = %if.end
  %call3.i54 = tail call ptr @devm_ioremap_resource(ptr noundef %17, ptr noundef nonnull %call.i) #9
  %regs.i = getelementptr inbounds %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3.i54, ptr %regs.i, align 8
  %cmp.i.i.not = icmp ugt ptr %call3.i54, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call3.i54 to i32
  br i1 %cmp.i.i.not, label %if.end.i55.cleanup_crit_edge, label %if.end5

if.end.i55.cleanup_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end.i55
  %clks.i = getelementptr inbounds %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 4
  %20 = ptrtoint ptr %clks.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.13, ptr %clks.i, align 8
  %arrayidx2.i = getelementptr %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @.str.14, ptr %arrayidx2.i, align 8
  %22 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %retval.0.i, align 8
  %call.i57 = tail call i32 @devm_clk_bulk_get(ptr noundef %23, i32 noundef 2, ptr noundef %clks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i58 = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i58, label %if.end.i60, label %if.end5.pvt_request_clks.exit_crit_edge

if.end5.pvt_request_clks.exit_crit_edge:          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvt_request_clks.exit

if.end.i60:                                       ; preds = %if.end5
  %call.i.i59 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool.not.i.i = icmp eq i32 %call.i.i59, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i60.pvt_request_clks.exit_crit_edge

if.end.i60.pvt_request_clks.exit_crit_edge:       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvt_request_clks.exit

if.end.i.i:                                       ; preds = %if.end.i60
  %call1.i.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clks.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end15.i, label %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge

if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split.i

if.end15.i:                                       ; preds = %if.end.i.i
  %24 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %retval.0.i, align 8
  %call.i39.i = tail call i32 @devm_add_action(ptr noundef %25, ptr noundef nonnull @pvt_disable_clks, ptr noundef %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i)
  %tobool.not.i40.i = icmp eq i32 %call.i39.i, 0
  br i1 %tobool.not.i40.i, label %if.end9, label %do.end22.i

do.end22.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks.i) #9
  br label %cleanup.sink.split.sink.split.i

cleanup.sink.split.sink.split.i:                  ; preds = %do.end22.i, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge
  %.str.21.sink.ph.i = phi ptr [ @.str.21, %do.end22.i ], [ @.str.18, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ]
  %retval.0.ph.ph.i = phi i32 [ %call.i39.i, %do.end22.i ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split.sink.split.i_crit_edge ]
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks.i) #9
  br label %pvt_request_clks.exit

pvt_request_clks.exit:                            ; preds = %cleanup.sink.split.sink.split.i, %if.end.i60.pvt_request_clks.exit_crit_edge, %if.end5.pvt_request_clks.exit_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.15, %if.end5.pvt_request_clks.exit_crit_edge ], [ @.str.18, %if.end.i60.pvt_request_clks.exit_crit_edge ], [ %.str.21.sink.ph.i, %cleanup.sink.split.sink.split.i ]
  %retval.0.ph.i = phi i32 [ %call.i57, %if.end5.pvt_request_clks.exit_crit_edge ], [ %call.i.i59, %if.end.i60.pvt_request_clks.exit_crit_edge ], [ %retval.0.ph.ph.i, %cleanup.sink.split.sink.split.i ]
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %retval.0.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %.str.21.sink.i) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end15.i
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr.i63 = getelementptr i8, ptr %29, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %31 = or i32 %30, -16318464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63, i32 %31) #9, !srcloc !120
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %35 = or i32 %34, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %35) #9, !srcloc !120
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #9, !srcloc !118
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i.i = and i32 %39, -2
  %40 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %40) #9, !srcloc !120
  %and2.i.i.i = and i32 %39, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #9, !srcloc !120
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %46 = and i32 %45, -16777217
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #9
  %or.i.i.i = or i32 %47, %and2.i.i.i
  %48 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %48) #9, !srcloc !120
  %49 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %50, i32 4
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !122
  tail call void @usleep_range_state(i32 noundef 333, i32 noundef 666, i32 noundef 2) #9
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr11.i = getelementptr i8, ptr %53, i32 4
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !123
  %55 = and i32 %54, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not.i64 = icmp eq i32 %55, 0
  br i1 %tobool.not.i64, label %if.then.i, label %if.end9.pvt_check_pwr.exit_crit_edge

if.end9.pvt_check_pwr.exit_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pvt_check_pwr.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %retval.0.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.23) #12
  br label %pvt_check_pwr.exit

pvt_check_pwr.exit:                               ; preds = %if.then.i, %if.end9.pvt_check_pwr.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.end9.pvt_check_pwr.exit_crit_edge ], [ -19, %if.then.i ]
  %58 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i, align 8
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %61 = and i32 %60, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %61) #9, !srcloc !120
  br i1 %tobool.not.i64, label %pvt_check_pwr.exit.cleanup_crit_edge, label %if.end13

pvt_check_pwr.exit.cleanup_crit_edge:             ; preds = %pvt_check_pwr.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %pvt_check_pwr.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp.i) #9
  %62 = ptrtoint ptr %temp.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %temp.i, align 4, !annotation !124
  %clk.i = getelementptr %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 4, i32 1, i32 1
  %63 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %clk.i, align 4
  %call.i66 = tail call i32 @clk_get_rate(ptr noundef %64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i67 = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i67, label %pvt_init_iface.exit, label %if.end.i76

if.end.i76:                                       ; preds = %if.end13
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 8
  %add.ptr.i70 = getelementptr i8, ptr %66, i32 36
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %68 = or i32 %67, -16318464
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %68) #9, !srcloc !120
  %69 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs.i, align 8
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %72 = and i32 %71, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %72) #9, !srcloc !120
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 8
  %add.ptr6.i = getelementptr i8, ptr %74, i32 44
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !125
  %76 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs.i, align 8
  %add.ptr12.i = getelementptr i8, ptr %77, i32 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !126
  %sensor.i71 = getelementptr inbounds %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 6
  %79 = ptrtoint ptr %sensor.i71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sensor.i71, align 4
  %mode.i = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %80, i32 2
  %81 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mode.i, align 4
  %shl.i.i = shl i32 %82, 1
  %and13.i.i = and i32 %shl.i.i, 14
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 8
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #9, !srcloc !118
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i.i72 = and i32 %86, -2
  %87 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i72) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %87) #9, !srcloc !120
  %and2.i.i.i73 = and i32 %86, 1
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 8
  %or.i49.i = or i32 %and2.i.i.i73, %and13.i.i
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %91 = and i32 %90, -251658241
  %92 = tail call i32 @llvm.bswap.i32(i32 %91) #9
  %or.i.i.i74 = or i32 %or.i49.i, %92
  %93 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i74) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %89, i32 %93) #9, !srcloc !120
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 8
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !118
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i51.i = and i32 %97, -2
  %98 = tail call i32 @llvm.bswap.i32(i32 %and.i.i51.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %98) #9, !srcloc !120
  %and2.i.i52.i = and i32 %97, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 8
  %add.ptr2.i.i75 = getelementptr i8, ptr %100, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i75, i32 1625948160) #9, !srcloc !120
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 8
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %104 = and i32 %103, -16777217
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #9
  %or.i.i53.i = or i32 %105, %and2.i.i52.i
  %106 = tail call i32 @llvm.bswap.i32(i32 %or.i.i53.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %106) #9, !srcloc !120
  %timeout.i = getelementptr inbounds %struct.pvt_hwmon, ptr %retval.0.i, i32 0, i32 8
  %107 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store8_noabort(i32 %107)
  store i64 300000000000000, ptr %timeout.i, align 8
  %conv.i = zext i32 %call.i66 to i64
  %call215.i.i = tail call i64 @__ktime_divns(i64 noundef 300000000000000, i64 noundef %conv.i) #9
  %add.i = add i64 %call215.i.i, 1666665
  %108 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %add.i, ptr %timeout.i, align 8
  %109 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %retval.0.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %110, i32 0, i32 27
  %111 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %112, ptr noundef nonnull @.str.27, ptr noundef nonnull %temp.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool25.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end.i76.if.end17_crit_edge

if.end.i76.if.end17_crit_edge:                    ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then26.i:                                      ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #11
  %113 = ptrtoint ptr %temp.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %temp.i, align 4
  %115 = call i32 @llvm.smax.i32(i32 %114, i32 0) #9
  %116 = call i32 @llvm.umin.i32(i32 %115, i32 7130) #9
  %117 = trunc i32 %116 to i16
  %div.lhs.trunc.i.i = add nuw nsw i16 %117, 229
  %div12.i.i = udiv i16 %div.lhs.trunc.i.i, 230
  %118 = shl nuw nsw i16 %div12.i.i, 4
  %119 = and i16 %118, 496
  %phi.bo65.i = zext i16 %119 to i32
  br label %if.end17

pvt_init_iface.exit:                              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %retval.0.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.25) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then26.i, %if.end.i76.if.end17_crit_edge
  %trim.0.i = phi i32 [ 0, %if.end.i76.if.end17_crit_edge ], [ %phi.bo65.i, %if.then26.i ]
  %122 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i, align 8
  %124 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #9, !srcloc !118
  %125 = call i32 @llvm.bswap.i32(i32 %124) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %and.i.i61.i = and i32 %125, -2
  %126 = call i32 @llvm.bswap.i32(i32 %and.i.i61.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %126) #9, !srcloc !120
  %and2.i.i62.i = and i32 %125, 1
  %127 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regs.i, align 8
  %or.i63.i = or i32 %and2.i.i62.i, %trim.0.i
  %129 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %128) #9, !srcloc !118
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  call void @arm_heavy_mb() #9
  %130 = and i32 %129, 251592703
  %131 = call i32 @llvm.bswap.i32(i32 %130) #9
  %or.i.i64.i = or i32 %or.i63.i, %131
  %132 = call i32 @llvm.bswap.i32(i32 %or.i.i64.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %132) #9, !srcloc !120
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp.i) #9
  %call18 = call fastcc i32 @pvt_request_irq(ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %call22 = call fastcc i32 @pvt_create_hwmon(ptr noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call fastcc i32 @pvt_enable_iface(ptr noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end21.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %pvt_init_iface.exit, %pvt_check_pwr.exit.cleanup_crit_edge, %pvt_request_clks.exit, %if.end.i55.cleanup_crit_edge, %pvt_request_regs.exit.thread83, %if.then
  %retval.0 = phi i32 [ %13, %if.then ], [ %retval.0.ph.i, %pvt_request_clks.exit ], [ %ret.0.i, %pvt_check_pwr.exit.cleanup_crit_edge ], [ -19, %pvt_init_iface.exit ], [ %call18, %if.end17.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ %call26, %if.end25 ], [ -22, %pvt_request_regs.exit.thread83 ], [ %19, %if.end.i55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_request_irq(ptr noundef %pvt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %call = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pvt, align 8
  %call5 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %call, ptr noundef null, ptr noundef nonnull @pvt_soft_isr, i32 noundef 8324, ptr noundef nonnull @.str.33, ptr noundef %pvt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pvt, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.34) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_create_hwmon(ptr noundef %pvt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt, align 8
  %call = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %pvt, ptr noundef nonnull @pvt_hwmon_info, ptr noundef null) #9
  %hwmon = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hwmon, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pvt, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.36) #12
  %5 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwmon, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %7, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_enable_iface(ptr noundef %pvt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt, align 8
  %call = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @pvt_disable_iface, ptr noundef %pvt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %pvt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %iface_mtx = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %iface_mtx, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %7 = and i32 %6, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #9, !srcloc !120
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %11 = or i32 %10, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %11) #9, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %iface_mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvt_clear_data(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iface_mtx = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 5
  tail call void @mutex_destroy(ptr noundef %iface_mtx) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvt_disable_clks(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %clks = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 4
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clks) #9
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clks) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @__ktime_divns(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_soft_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 40
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !118
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !127
  %sensor = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sensor, align 4
  %arrayidx4 = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp = icmp eq i32 %5, 4
  %add = add i32 %5, 1
  %spec.select = select i1 %cmp, i32 0, i32 %add
  %6 = ptrtoint ptr %sensor to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %sensor, align 4
  %iface_mtx = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %iface_mtx, i32 noundef 0) #9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #9, !srcloc !118
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %or.i = or i32 %10, 1
  %11 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %11) #9, !srcloc !120
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !128
  %15 = ptrtoint ptr %sensor to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sensor, align 4
  %mode = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %16, i32 2
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  %and2.i = and i32 %10, 1
  %arrayidx = getelementptr %struct.pvt_hwmon, ptr %data, i32 0, i32 7, i32 %5
  %shl.i = shl i32 %18, 1
  %and13.i = and i32 %shl.i, 14
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !118
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i = and i32 %22, -2
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %23) #9, !srcloc !120
  %and2.i.i = and i32 %22, 1
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %or.i109 = or i32 %and2.i.i, %and13.i
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %27 = and i32 %26, -251658241
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  %or.i.i = or i32 %or.i109, %28
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %29) #9, !srcloc !120
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr21 = getelementptr i8, ptr %31, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %33 = and i32 %32, -16777217
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %or.i111 = or i32 %34, %and2.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i111) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %35) #9, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %iface_mtx) #9
  %data_seqlock = getelementptr %struct.pvt_hwmon, ptr %data, i32 0, i32 7, i32 %5, i32 1
  %lock.i = getelementptr %struct.pvt_hwmon, ptr %data, i32 0, i32 7, i32 %5, i32 1, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #9
  %36 = ptrtoint ptr %data_seqlock to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_seqlock, align 4
  %inc.i.i.i.i = add i32 %37, 1
  store i32 %inc.i.i.i.i, ptr %data_seqlock, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !129
  %dep_map.i.i.i = getelementptr inbounds %struct.seqcount, ptr %data_seqlock, i32 0, i32 1
  %38 = tail call ptr @llvm.returnaddress(i32 0) #9
  %39 = ptrtoint ptr %38 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %39) #9
  %40 = and i32 %14, -16580608
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %arrayidx, align 4
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %39) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !130
  %43 = ptrtoint ptr %data_seqlock to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data_seqlock, align 4
  %inc.i.i.i = add i32 %44, 1
  store i32 %inc.i.i.i, ptr %data_seqlock, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #9
  %thres_sts_lo = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 4
  %45 = ptrtoint ptr %thres_sts_lo to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %thres_sts_lo, align 4
  %and39 = and i32 %46, %3
  %thres_sts_lo40 = getelementptr %struct.pvt_hwmon, ptr %data, i32 0, i32 7, i32 %5, i32 2
  %47 = ptrtoint ptr %thres_sts_lo40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %thres_sts_lo40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and39, i32 %48)
  %tobool.not = icmp eq i32 %and39, %48
  br i1 %tobool.not, label %if.else, label %do.body45

do.body45:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %thres_sts_lo40 to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile i32 %and39, ptr %thres_sts_lo40, align 4
  %hwmon = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 1
  %50 = ptrtoint ptr %hwmon to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hwmon, align 4
  %type = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 6
  %52 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type, align 4
  %attr_min_alarm = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 7
  %54 = ptrtoint ptr %attr_min_alarm to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %attr_min_alarm, align 4
  %56 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx4, align 4
  %call53 = tail call i32 @hwmon_notify_event(ptr noundef %51, i32 noundef %53, i32 noundef %55, i32 noundef %57) #9
  br label %if.end75

if.else:                                          ; preds = %entry
  %thres_sts_hi = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 5
  %58 = ptrtoint ptr %thres_sts_hi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %thres_sts_hi, align 4
  %and54 = and i32 %59, %3
  %thres_sts_hi55 = getelementptr %struct.pvt_hwmon, ptr %data, i32 0, i32 7, i32 %5, i32 3
  %60 = ptrtoint ptr %thres_sts_hi55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %thres_sts_hi55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and54, i32 %61)
  %tobool57.not = icmp eq i32 %and54, %61
  br i1 %tobool57.not, label %if.else.if.end75_crit_edge, label %do.body63

if.else.if.end75_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.body63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %thres_sts_hi55 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile i32 %and54, ptr %thres_sts_hi55, align 4
  %hwmon71 = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 1
  %63 = ptrtoint ptr %hwmon71 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hwmon71, align 4
  %type72 = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 6
  %65 = ptrtoint ptr %type72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %type72, align 4
  %attr_max_alarm = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %5, i32 8
  %67 = ptrtoint ptr %attr_max_alarm to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %attr_max_alarm, align 4
  %69 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx4, align 4
  %call74 = tail call i32 @hwmon_notify_event(ptr noundef %64, i32 noundef %66, i32 noundef %68, i32 noundef %70) #9
  br label %if.end75

if.end75:                                         ; preds = %do.body63, %if.else.if.end75_crit_edge, %do.body45
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwmon_notify_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @pvt_hwmon_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %ch) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog18_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 0, label %sw.bb
  ]

entry.sw.epilog18_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch)
  %cmp1.not.i = icmp eq i32 %ch, 0
  br i1 %cmp1.not.i, label %sw.bb2, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch)
  %1 = icmp ugt i32 %ch, 3
  br i1 %1, label %sw.bb2.i.return_crit_edge, label %sw.bb10

sw.bb2.i.return_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog18_crit_edge

sw.bb.sw.epilog18_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %sw.bb.i
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %sw.bb2.sw.epilog18_crit_edge [
    i32 1, label %sw.bb2.return_crit_edge
    i32 2, label %sw.bb2.return_crit_edge29
    i32 21, label %sw.bb2.return_crit_edge30
    i32 5, label %sw.bb2.sw.bb4_crit_edge
    i32 7, label %sw.bb2.sw.bb4_crit_edge31
    i32 15, label %sw.bb2.return_crit_edge32
    i32 16, label %sw.bb2.return_crit_edge33
    i32 20, label %sw.bb8
  ]

sw.bb2.return_crit_edge33:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.return_crit_edge32:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.sw.bb4_crit_edge31:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

sw.bb2.sw.bb4_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

sw.bb2.return_crit_edge30:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.return_crit_edge29:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.sw.epilog18_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18

sw.bb4:                                           ; preds = %sw.bb2.sw.bb4_crit_edge, %sw.bb2.sw.bb4_crit_edge31
  br label %return

sw.bb8:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb10:                                          ; preds = %sw.bb2.i
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %3 = icmp ult i32 %switch.tableidx, 13
  br i1 %3, label %switch.lookup, label %sw.bb10.sw.epilog18_crit_edge

sw.bb10.sw.epilog18_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog18

sw.epilog18:                                      ; preds = %sw.bb10.sw.epilog18_crit_edge, %sw.bb2.sw.epilog18_crit_edge, %sw.bb.sw.epilog18_crit_edge, %entry.sw.epilog18_crit_edge
  br label %return

switch.lookup:                                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i16], ptr @switch.table.pvt_hwmon_is_visible, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog18, %sw.bb8, %sw.bb4, %sw.bb2.return_crit_edge, %sw.bb2.return_crit_edge29, %sw.bb2.return_crit_edge30, %sw.bb2.return_crit_edge32, %sw.bb2.return_crit_edge33, %sw.bb.return_crit_edge, %sw.bb2.i.return_crit_edge, %sw.bb.i.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog18 ], [ 420, %sw.bb8 ], [ 420, %sw.bb4 ], [ 420, %sw.bb.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge29 ], [ 292, %sw.bb2.return_crit_edge30 ], [ 292, %sw.bb2.return_crit_edge32 ], [ 292, %sw.bb2.return_crit_edge33 ], [ 0, %sw.bb.i.return_crit_edge ], [ 0, %sw.bb2.i.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %ch, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 0, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch)
  %cmp1.not.i = icmp eq i32 %ch, 0
  br i1 %cmp1.not.i, label %sw.bb4, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch)
  %3 = icmp ugt i32 %ch, 3
  br i1 %3, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb19

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %iface_mtx.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 5
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iface_mtx.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %timeout.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %timeout.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %timeout.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp8.i.i.i = icmp slt i64 %5, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %5, i1 false) #9
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %6) #13, !srcloc !131
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %6, i64 %7, i32 0) #13, !srcloc !132
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %8, 0
  %div181.i1.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div181.i1.i.i
  %spec.select.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div181.i1.i.i
  %conv.i = trunc i64 %spec.select.i.i.i to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %iface_mtx.i) #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb.i
  %10 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %sw.bb4.cleanup_crit_edge [
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 5, label %sw.bb8
    i32 7, label %sw.bb10
    i32 15, label %sw.bb12
    i32 16, label %sw.bb14
    i32 20, label %sw.bb16
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvt_read_data(ptr noundef %1, i32 noundef 0, ptr noundef %val)
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvt_read_limit(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true, ptr noundef %val)
  br label %cleanup

sw.bb10:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @pvt_read_limit(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, ptr noundef %val)
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %thres_sts_lo.i = getelementptr %struct.pvt_hwmon, ptr %1, i32 0, i32 7, i32 0, i32 2
  %12 = ptrtoint ptr %thres_sts_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %storemerge.in.in.i = load volatile i32, ptr %thres_sts_lo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.in.in.i)
  %storemerge.in.i = icmp ne i32 %storemerge.in.in.i, 0
  %storemerge.i = zext i1 %storemerge.in.i to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge.i, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %thres_sts_hi.i72 = getelementptr %struct.pvt_hwmon, ptr %1, i32 0, i32 7, i32 0, i32 3
  %14 = ptrtoint ptr %thres_sts_hi.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge.in.in.i74 = load volatile i32, ptr %thres_sts_hi.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.in.in.i74)
  %storemerge.in.i75 = icmp ne i32 %storemerge.in.in.i74, 0
  %storemerge.i76 = zext i1 %storemerge.in.i75 to i32
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge.i76, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %regs.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !133
  %19 = and i32 %18, -268369920
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #9
  %shr.i = lshr exact i32 %20, 4
  %mul.i = mul nuw nsw i32 %shr.i, 230
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %sw.bb2.i
  %22 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %attr, label %sw.bb19.cleanup_crit_edge [
    i32 1, label %sw.bb20
    i32 2, label %sw.bb22
    i32 3, label %sw.bb25
    i32 12, label %sw.bb28
    i32 13, label %sw.bb31
  ]

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb20:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %ch, 1
  tail call fastcc void @pvt_read_data(ptr noundef %1, i32 noundef %add, ptr noundef %val)
  br label %cleanup

sw.bb22:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %add23 = add nuw nsw i32 %ch, 1
  tail call fastcc void @pvt_read_limit(ptr noundef %1, i32 noundef %add23, i1 noundef zeroext true, ptr noundef %val)
  br label %cleanup

sw.bb25:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %add26 = add nuw nsw i32 %ch, 1
  tail call fastcc void @pvt_read_limit(ptr noundef %1, i32 noundef %add26, i1 noundef zeroext false, ptr noundef %val)
  br label %cleanup

sw.bb28:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %add29 = add nuw nsw i32 %ch, 1
  %thres_sts_lo.i78 = getelementptr %struct.pvt_hwmon, ptr %1, i32 0, i32 7, i32 %add29, i32 2
  %23 = ptrtoint ptr %thres_sts_lo.i78 to i32
  call void @__asan_load4_noabort(i32 %23)
  %storemerge.in.in.i79 = load volatile i32, ptr %thres_sts_lo.i78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.in.in.i79)
  %storemerge.in.i80 = icmp ne i32 %storemerge.in.in.i79, 0
  %storemerge.i81 = zext i1 %storemerge.in.i80 to i32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge.i81, ptr %val, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %add32 = add nuw nsw i32 %ch, 1
  %thres_sts_hi.i82 = getelementptr %struct.pvt_hwmon, ptr %1, i32 0, i32 7, i32 %add32, i32 3
  %25 = ptrtoint ptr %thres_sts_hi.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %storemerge.in.in.i84 = load volatile i32, ptr %thres_sts_hi.i82, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %storemerge.in.in.i84)
  %storemerge.in.i85 = icmp ne i32 %storemerge.in.in.i84, 0
  %storemerge.i86 = zext i1 %storemerge.in.i85 to i32
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge.i86, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb28, %sw.bb25, %sw.bb22, %sw.bb20, %sw.bb19.cleanup_crit_edge, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb7, %sw.bb5, %sw.bb4.cleanup_crit_edge, %if.end.i, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb31 ], [ 0, %sw.bb28 ], [ 0, %sw.bb25 ], [ 0, %sw.bb22 ], [ 0, %sw.bb20 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ -95, %sw.bb19.cleanup_crit_edge ], [ -95, %sw.bb4.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ %call.i, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pvt_hwmon_read_string(ptr nocapture noundef readnone %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %ch, ptr nocapture noundef writeonly %str) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %type, label %entry.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch)
  %cmp1.not.i = icmp eq i32 %ch, 0
  br i1 %cmp1.not.i, label %sw.bb, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch)
  %1 = icmp ugt i32 %ch, 3
  br i1 %1, label %sw.bb2.i.return_crit_edge, label %sw.bb2

sw.bb2.i.return_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cond8 = icmp eq i32 %attr, 21
  br i1 %cond8, label %sw.bb.return.sink.split_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return.sink.split

sw.bb2:                                           ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %attr)
  %cond = icmp eq i32 %attr, 10
  br i1 %cond, label %sw.bb3, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb3:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %ch, 1
  %label5 = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %add, i32 1
  %2 = ptrtoint ptr %label5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %label5, align 4
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb3, %sw.bb.return.sink.split_crit_edge
  %.sink = phi ptr [ %3, %sw.bb3 ], [ @.str.28, %sw.bb.return.sink.split_crit_edge ]
  %4 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %.sink, ptr %str, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %sw.bb2.i.return_crit_edge, %sw.bb.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %sw.bb2.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ -22, %sw.bb2.i.return_crit_edge ], [ -95, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvt_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %ch, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 0, label %sw.bb
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch)
  %cmp1.not.i = icmp eq i32 %ch, 0
  br i1 %cmp1.not.i, label %sw.bb4, label %sw.bb.i.cleanup_crit_edge

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch)
  %3 = icmp ugt i32 %ch, 3
  br i1 %3, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb12

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb2, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %sw.bb
  %clk.i = getelementptr %struct.pvt_hwmon, ptr %1, i32 0, i32 4, i32 1, i32 1
  %4 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_get_rate(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb2.cleanup_crit_edge, label %if.end.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  %conv.i = sext i32 %val to i64
  %mul.i.i = mul nsw i64 %conv.i, 1000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp8.i.i = icmp slt i32 %val, 0
  %6 = tail call i64 @llvm.abs.i64(i64 %mul.i.i, i1 true) #9
  %7 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %6, i64 3689348814741910323) #13, !srcloc !134
  %8 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %6, i64 %7) #13, !srcloc !135
  %sub210.i.i = sub i64 0, %8
  %spec.select.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %8
  %sub.i = add i64 %spec.select.i.i, -333333
  %9 = tail call i64 @llvm.smax.i64(i64 %sub.i, i64 0) #9
  %conv8.i = zext i32 %call.i to i64
  %mul.i = mul i64 %9, %conv8.i
  %10 = tail call i64 @llvm.abs.i64(i64 %mul.i, i1 false) #9
  %11 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -8543223759426509417, i64 %10, i32 0) #13, !srcloc !136
  %asmresult.i.i.i = extractvalue { i64, i32 } %11, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %11, 1
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -8543223759426509417, i64 %10, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #13, !srcloc !132
  %iface_mtx.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 5
  %call11.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iface_mtx.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %mul.i)
  %cmp8.i30.i = icmp slt i64 %mul.i, 0
  %asmresult10.i.i.i = extractvalue { i64, i32 } %12, 0
  %div181.i39.i = lshr i64 %asmresult10.i.i.i, 29
  %sub210.i36.i = sub nsw i64 0, %div181.i39.i
  %spec.select.i37.i = select i1 %cmp8.i30.i, i64 %sub210.i36.i, i64 %div181.i39.i
  %conv10.i = trunc i64 %spec.select.i37.i to i32
  %regs.i.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #9, !srcloc !118
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i38.i = and i32 %16, -2
  %17 = tail call i32 @llvm.bswap.i32(i32 %and.i.i38.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %17) #9, !srcloc !120
  %and2.i.i.i = and i32 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !121
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %conv10.i) #9
  %19 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i, align 8
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %18) #9, !srcloc !120
  %21 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i, align 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %24 = and i32 %23, -16777217
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %or.i.i.i = or i32 %25, %and2.i.i.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %26) #9, !srcloc !120
  %timeout.i = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %mul.i.i, ptr %timeout.i, align 8
  tail call void @mutex_unlock(ptr noundef %iface_mtx.i) #9
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb.i
  %28 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %attr, label %sw.bb4.cleanup_crit_edge [
    i32 5, label %sw.bb5
    i32 7, label %sw.bb7
    i32 20, label %sw.bb9
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call fastcc i32 @pvt_write_limit(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true, i32 noundef %val)
  br label %cleanup

sw.bb7:                                           ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @pvt_write_limit(ptr noundef %1, i32 noundef 0, i1 noundef zeroext false, i32 noundef %val)
  br label %cleanup

sw.bb9:                                           ; preds = %sw.bb4
  %iface_mtx.i38 = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 5
  %call.i39 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iface_mtx.i38, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool.not.i40 = icmp eq i32 %call.i39, 0
  br i1 %tobool.not.i40, label %pvt_set_trim.exit.i, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pvt_set_trim.exit.i:                              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %29 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #9
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 7130) #9
  %31 = trunc i32 %30 to i16
  %div.lhs.trunc.i.i = add nuw nsw i16 %31, 229
  %div12.i.i = udiv i16 %div.lhs.trunc.i.i, 230
  %32 = shl nuw nsw i16 %div12.i.i, 4
  %33 = and i16 %32, 496
  %and13.i.i = zext i16 %33 to i32
  %regs.i.i41 = getelementptr inbounds %struct.pvt_hwmon, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i.i41, align 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #9, !srcloc !118
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %and.i.i.i = and i32 %37, -2
  %38 = tail call i32 @llvm.bswap.i32(i32 %and.i.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %38) #9, !srcloc !120
  %and2.i.i.i42 = and i32 %37, 1
  %39 = ptrtoint ptr %regs.i.i41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i41, align 8
  %or.i.i = or i32 %and2.i.i.i42, %and13.i.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %42 = and i32 %41, 251592703
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #9
  %or.i.i.i43 = or i32 %or.i.i, %43
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i43) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %44) #9, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %iface_mtx.i38) #9
  br label %cleanup

sw.bb12:                                          ; preds = %sw.bb2.i
  %45 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %attr, label %sw.bb12.cleanup_crit_edge [
    i32 2, label %sw.bb13
    i32 3, label %sw.bb15
  ]

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb13:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %ch, 1
  %call14 = tail call fastcc i32 @pvt_write_limit(ptr noundef %1, i32 noundef %add, i1 noundef zeroext true, i32 noundef %val)
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #11
  %add16 = add nuw nsw i32 %ch, 1
  %call17 = tail call fastcc i32 @pvt_write_limit(ptr noundef %1, i32 noundef %add16, i1 noundef zeroext false, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb13, %sw.bb12.cleanup_crit_edge, %pvt_set_trim.exit.i, %sw.bb9.cleanup_crit_edge, %sw.bb7, %sw.bb5, %sw.bb4.cleanup_crit_edge, %if.end14.i, %if.end.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ -95, %sw.bb12.cleanup_crit_edge ], [ -95, %sw.bb4.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ 0, %if.end14.i ], [ -19, %sw.bb2.cleanup_crit_edge ], [ %call11.i, %if.end.i.cleanup_crit_edge ], [ %call.i39, %sw.bb9.cleanup_crit_edge ], [ 0, %pvt_set_trim.exit.i ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvt_read_data(ptr noundef %pvt, i32 noundef %type, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.pvt_hwmon, ptr %pvt, i32 0, i32 7, i32 %type
  %data_seqlock = getelementptr %struct.pvt_hwmon, ptr %pvt, i32 0, i32 7, i32 %type, i32 1
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %data_seqlock, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %read_seqbegin.exit.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !137
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  %1 = tail call ptr @llvm.returnaddress(i32 0) #9
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %2) #9
  tail call void @trace_hardirqs_on() #9
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = tail call ptr @llvm.returnaddress(i32 0) #9
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #9
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #9
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !138
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !139

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #9, !srcloc !140
  %6 = ptrtoint ptr %data_seqlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %data_seqlock, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !141
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !142
  %8 = ptrtoint ptr %data_seqlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %data_seqlock, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.read_seqbegin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i.read_seqbegin.exit_crit_edge:            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %read_seqbegin.exit

read_seqbegin.exit:                               ; preds = %do.end.i.read_seqbegin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.read_seqbegin.exit_crit_edge ], [ %9, %do.end.i.read_seqbegin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !144
  %12 = ptrtoint ptr %data_seqlock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %data_seqlock, align 4
  %cmp.i.i.i.not = icmp eq i32 %13, %.lcssa.i
  br i1 %cmp.i.i.i.not, label %do.end, label %read_seqbegin.exit.do.body_crit_edge

read_seqbegin.exit.do.body_crit_edge:             ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %read_seqbegin.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %for.body.lr.ph.i.preheader, label %for.end.i28

for.body.lr.ph.i.preheader:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %11, -16
  %mul5.i = mul i32 %11, -743
  %div7.i = sdiv i32 %mul5.i, 1000
  %add.i = add i32 %div7.i, %mul.i
  %add.i.frozen = freeze i32 %add.i
  %div.i.1 = sdiv i32 %add.i.frozen, 1000
  %14 = mul i32 %div.i.1, 1000
  %rem3.i.1.decomposed = sub i32 %add.i.frozen, %14
  %mul.i.142 = mul i32 %div.i.1, %11
  %mul5.i.143 = mul i32 %rem3.i.1.decomposed, %11
  %div7.i.144 = sdiv i32 %mul5.i.143, 1000
  %add.i.145 = add i32 %div7.i.144, %mul.i.142
  %add.i.145.frozen = freeze i32 %add.i.145
  %div.i.2 = sdiv i32 %add.i.145.frozen, 1000
  %15 = mul i32 %div.i.2, 1000
  %rem3.i.2.decomposed = sub i32 %add.i.145.frozen, %15
  %mul.i.247 = mul i32 %div.i.2, %11
  %mul5.i.248 = mul i32 %rem3.i.2.decomposed, %11
  %div7.i.249 = sdiv i32 %mul5.i.248, 1000
  %add.i.250 = add i32 %div7.i.249, %mul.i.247
  %add.i.250.frozen = freeze i32 %add.i.250
  %div.i.353 = sdiv i32 %add.i.250.frozen, 1000
  %16 = mul i32 %div.i.353, 1000
  %rem3.i.354.decomposed = sub i32 %add.i.250.frozen, %16
  %mul.i.355 = mul i32 %div.i.353, %11
  %mul5.i.356 = mul i32 %rem3.i.354.decomposed, %11
  %div7.i.357 = sdiv i32 %mul5.i.356, 1000
  %add.i.358 = add i32 %div7.i.357, %mul.i.355
  %mul.i.1 = mul i32 %11, 81
  %mul5.i.1 = mul i32 %11, 542
  %div7.i.1 = sdiv i32 %mul5.i.1, 1000
  %add.i.1 = add i32 %div7.i.1, %mul.i.1
  %add.i.1.frozen = freeze i32 %add.i.1
  %div.i.1.1 = sdiv i32 %add.i.1.frozen, 1000
  %17 = mul i32 %div.i.1.1, 1000
  %rem3.i.1.1.decomposed = sub i32 %add.i.1.frozen, %17
  %mul.i.1.1 = mul i32 %div.i.1.1, %11
  %mul5.i.1.1 = mul i32 %rem3.i.1.1.decomposed, %11
  %div7.i.1.1 = sdiv i32 %mul5.i.1.1, 1000
  %add.i.1.1 = add i32 %div7.i.1.1, %mul.i.1.1
  %add.i.1.1.frozen = freeze i32 %add.i.1.1
  %div.i.1.2 = sdiv i32 %add.i.1.1.frozen, 1000
  %18 = mul i32 %div.i.1.2, 1000
  %rem3.i.1.2.decomposed = sub i32 %add.i.1.1.frozen, %18
  %mul.i.1.2 = mul i32 %div.i.1.2, %11
  %mul5.i.1.2 = mul i32 %rem3.i.1.2.decomposed, %11
  %div7.i.1.2 = sdiv i32 %mul5.i.1.2, 1000
  %add.i.1.2 = add i32 %div7.i.1.2, %mul.i.1.2
  %mul.i.2 = mul i32 %11, -182
  %mul5.i.2 = mul i32 %11, -10
  %div7.i.2 = sdiv i32 %mul5.i.2, 1000
  %add.i.2 = add i32 %div7.i.2, %mul.i.2
  %add.i.2.frozen = freeze i32 %add.i.2
  %div.i.2.1 = sdiv i32 %add.i.2.frozen, 1000
  %19 = mul i32 %div.i.2.1, 1000
  %rem3.i.2.1.decomposed = sub i32 %add.i.2.frozen, %19
  %mul.i.2.1 = mul i32 %div.i.2.1, %11
  %mul5.i.2.1 = mul i32 %rem3.i.2.1.decomposed, %11
  %div7.i.2.1 = sdiv i32 %mul5.i.2.1, 1000
  %add.i.2.1 = add i32 %div7.i.2.1, %mul.i.2.1
  %add9.i.1 = add i32 %add.i.1.2, %add.i.358
  %mul.i.3 = mul i32 %11, 310
  %mul5.i.3 = mul i32 %11, 200
  %div7.i.3 = sdiv i32 %mul5.i.3, 1000
  %add.i.3 = add i32 %div7.i.3, %mul.i.3
  %add9.i.2 = add i32 %add.i.2.1, %add9.i.1
  %add9.i.3 = add i32 %add.i.3, %add9.i.2
  %add931.i = add i32 %add9.i.3, -48380
  br label %if.end

for.end.i28:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul5.i18 = mul i32 %11, 6710
  %div7.i19 = sdiv i32 %mul5.i18, 18658
  %mul.i17 = mul i32 %11, 5
  %add.i20 = add i32 %div7.i19, %mul.i17
  %add931.i9 = add i32 %add.i20, 6202
  %div11.i = sdiv i32 %add931.i9, 10
  br label %if.end

if.end:                                           ; preds = %for.end.i28, %for.body.lr.ph.i.preheader
  %storemerge = phi i32 [ %div11.i, %for.end.i28 ], [ %add931.i, %for.body.lr.ph.i.preheader ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %val, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pvt_read_limit(ptr nocapture noundef readonly %pvt, i32 noundef %type, i1 noundef zeroext %is_low, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %thres_base = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %type, i32 3
  %2 = ptrtoint ptr %thres_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %thres_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !118
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %and31 = lshr i32 %5, 10
  %data.0.in = select i1 %is_low, i32 %5, i32 %and31
  %data.0 = and i32 %data.0.in, 1023
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %for.body.lr.ph.i.preheader, label %for.end.i27

for.body.lr.ph.i.preheader:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nsw i32 %data.0, -16
  %mul5.i.neg = mul nuw nsw i32 %data.0, 743
  %div7.i54 = udiv i32 %mul5.i.neg, 1000
  %add.i = sub nsw i32 %mul.i, %div7.i54
  %6 = trunc i32 %add.i to i16
  %div.i.155.lhs.trunc = sub i16 0, %6
  %div.i.15556 = udiv i16 %div.i.155.lhs.trunc, 1000
  %div.i.155.zext = zext i16 %div.i.15556 to i32
  %7 = trunc i32 %add.i to i16
  %rem3.i.158.lhs.trunc = sub i16 0, %7
  %rem3.i.15859 = urem i16 %rem3.i.158.lhs.trunc, 1000
  %rem3.i.158.zext = zext i16 %rem3.i.15859 to i32
  %8 = mul nuw nsw i32 %data.0, %div.i.155.zext
  %9 = mul nuw nsw i32 %data.0, %rem3.i.158.zext
  %div7.i.13860 = udiv i32 %9, 1000
  %10 = add nuw nsw i32 %div7.i.13860, %8
  %div.i.261.lhs.trunc = trunc i32 %10 to i16
  %div.i.26162 = udiv i16 %div.i.261.lhs.trunc, 1000
  %div.i.261.zext = zext i16 %div.i.26162 to i32
  %rem3.i.264.lhs.trunc = trunc i32 %10 to i16
  %rem3.i.26465 = urem i16 %rem3.i.264.lhs.trunc, 1000
  %rem3.i.264.zext = zext i16 %rem3.i.26465 to i32
  %11 = mul nuw nsw i32 %data.0, %div.i.261.zext
  %12 = mul nuw nsw i32 %data.0, %rem3.i.264.zext
  %div7.i.24366 = udiv i32 %12, 1000
  %13 = add nuw nsw i32 %div7.i.24366, %11
  %div.i.34767.lhs.trunc = trunc i32 %13 to i16
  %div.i.3476768 = udiv i16 %div.i.34767.lhs.trunc, 1000
  %div.i.34767.zext = zext i16 %div.i.3476768 to i32
  %rem3.i.34870.lhs.trunc = trunc i32 %13 to i16
  %rem3.i.3487071 = urem i16 %rem3.i.34870.lhs.trunc, 1000
  %rem3.i.34870.zext = zext i16 %rem3.i.3487071 to i32
  %14 = mul nuw nsw i32 %data.0, %div.i.34767.zext
  %15 = mul nuw nsw i32 %data.0, %rem3.i.34870.zext
  %div7.i.35172 = udiv i32 %15, 1000
  %16 = add nuw nsw i32 %div7.i.35172, %14
  %mul.i.1 = mul nuw nsw i32 %data.0, 81
  %mul5.i.1 = mul nuw nsw i32 %data.0, 542
  %div7.i.1 = udiv i32 %mul5.i.1, 1000
  %add.i.1 = add nuw nsw i32 %div7.i.1, %mul.i.1
  %add.i.1.frozen = freeze i32 %add.i.1
  %div.i.1.1 = udiv i32 %add.i.1.frozen, 1000
  %17 = mul i32 %div.i.1.1, 1000
  %rem3.i.1.1.decomposed = sub i32 %add.i.1.frozen, %17
  %mul.i.1.1 = mul nuw nsw i32 %div.i.1.1, %data.0
  %mul5.i.1.1 = mul nuw nsw i32 %rem3.i.1.1.decomposed, %data.0
  %div7.i.1.1 = udiv i32 %mul5.i.1.1, 1000
  %add.i.1.1 = add nuw nsw i32 %div7.i.1.1, %mul.i.1.1
  %add.i.1.1.frozen = freeze i32 %add.i.1.1
  %div.i.1.2 = udiv i32 %add.i.1.1.frozen, 1000
  %18 = mul i32 %div.i.1.2, 1000
  %rem3.i.1.2.decomposed = sub i32 %add.i.1.1.frozen, %18
  %mul.i.1.2 = mul nuw nsw i32 %div.i.1.2, %data.0
  %mul5.i.1.2 = mul nuw nsw i32 %rem3.i.1.2.decomposed, %data.0
  %div7.i.1.2 = udiv i32 %mul5.i.1.2, 1000
  %add.i.1.2 = add nuw nsw i32 %div7.i.1.2, %mul.i.1.2
  %mul.i.2 = mul nsw i32 %data.0, -182
  %div7.i.273.lhs.trunc = trunc i32 %data.0 to i16
  %div7.i.27374 = udiv i16 %div7.i.273.lhs.trunc, 100
  %div7.i.273.zext = zext i16 %div7.i.27374 to i32
  %add.i.2 = sub nsw i32 %mul.i.2, %div7.i.273.zext
  %add.i.2.nonneg = sub nsw i32 0, %add.i.2
  %div.i.2.175 = udiv i32 %add.i.2.nonneg, 1000
  %add.i.2.nonneg76 = sub nsw i32 0, %add.i.2
  %rem3.i.2.177 = urem i32 %add.i.2.nonneg76, 1000
  %19 = mul i32 %div.i.2.175, %data.0
  %20 = mul nuw nsw i32 %rem3.i.2.177, %data.0
  %div7.i.2.178 = udiv i32 %20, 1000
  %21 = add i32 %div7.i.2.178, %19
  %mul.i.3 = mul nuw nsw i32 %data.0, 310
  %div7.i.3.lhs.trunc = trunc i32 %data.0 to i16
  %div7.i.379 = udiv i16 %div7.i.3.lhs.trunc, 5
  %div7.i.3.zext = zext i16 %div7.i.379 to i32
  %add.i.3 = add nuw nsw i32 %mul.i.3, %div7.i.3.zext
  %22 = add i32 %16, %21
  %add9.i.2 = sub i32 %add.i.1.2, %22
  %add9.i.3 = add nsw i32 %add.i.3, %add9.i.2
  %add931.i = add nsw i32 %add9.i.3, -48380
  br label %if.end37

for.end.i27:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul5.i17 = mul nuw nsw i32 %data.0, 6710
  %div7.i18 = udiv i32 %mul5.i17, 18658
  %mul.i16 = mul nuw nsw i32 %data.0, 5
  %add.i19 = add nuw nsw i32 %div7.i18, %mul.i16
  %23 = trunc i32 %add.i19 to i16
  %div11.i.lhs.trunc = add nuw nsw i16 %23, 6202
  %div11.i80 = udiv i16 %div11.i.lhs.trunc, 10
  %div11.i.zext = zext i16 %div11.i80 to i32
  br label %if.end37

if.end37:                                         ; preds = %for.end.i27, %for.body.lr.ph.i.preheader
  %storemerge = phi i32 [ %div11.i.zext, %for.end.i27 ], [ %add931.i, %for.body.lr.ph.i.preheader ]
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %val, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pvt_write_limit(ptr noundef %pvt, i32 noundef %type, i1 noundef zeroext %is_low, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %for.end.i207

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.smax.i32(i32 %val, i32 -48380)
  %1 = tail call i32 @llvm.smin.i32(i32 %0, i32 147438)
  %mul5.i = mul nsw i32 %1, 8322
  %div7.i = sdiv i32 %mul5.i, 10000
  %add.i = add nsw i32 %div7.i, %1
  %add.i.frozen = freeze i32 %add.i
  %div.i.1 = sdiv i32 %add.i.frozen, 10000
  %2 = mul i32 %div.i.1, 10000
  %rem3.i.1.decomposed = sub i32 %add.i.frozen, %2
  %mul.i.1 = mul nsw i32 %div.i.1, %1
  %mul5.i.1217 = mul nsw i32 %rem3.i.1.decomposed, %1
  %div7.i.1218 = sdiv i32 %mul5.i.1217, 10000
  %add.i.1 = add nsw i32 %div7.i.1218, %mul.i.1
  %add.i.1.frozen = freeze i32 %add.i.1
  %div.i.2 = sdiv i32 %add.i.1.frozen, 10000
  %3 = mul i32 %div.i.2, 10000
  %rem3.i.2.decomposed = sub i32 %add.i.1.frozen, %3
  %mul.i.2220 = mul nsw i32 %div.i.2, %1
  %mul5.i.2221 = mul nsw i32 %rem3.i.2.decomposed, %1
  %div7.i.2222 = sdiv i32 %mul5.i.2221, 10000
  %add.i.2223 = add nsw i32 %div7.i.2222, %mul.i.2220
  %add.i.2223.frozen = freeze i32 %add.i.2223
  %div.i.3226 = sdiv i32 %add.i.2223.frozen, 10000
  %4 = mul i32 %div.i.3226, 10000
  %rem3.i.3227.decomposed = sub i32 %add.i.2223.frozen, %4
  %mul.i.3228 = mul nsw i32 %div.i.3226, %1
  %mul5.i.3229 = mul nsw i32 %rem3.i.3227.decomposed, %1
  %div7.i.3230 = sdiv i32 %mul5.i.3229, 10000
  %add.i.3231 = add nsw i32 %div7.i.3230, %mul.i.3228
  %mul5.i.1 = mul nsw i32 %1, 2343
  %div7.i.1 = sdiv i32 %mul5.i.1, 10000
  %div.i.1.1 = sdiv i32 %mul5.i.1, 100000000
  %rem3.i.1.1 = srem i32 %div7.i.1, 10000
  %mul.i.1.1 = mul nsw i32 %div.i.1.1, %1
  %mul5.i.1.1 = mul nsw i32 %rem3.i.1.1, %1
  %div7.i.1.1 = sdiv i32 %mul5.i.1.1, 10000
  %add.i.1.1 = add nsw i32 %div7.i.1.1, %mul.i.1.1
  %add.i.1.1.frozen = freeze i32 %add.i.1.1
  %div.i.1.2 = sdiv i32 %add.i.1.1.frozen, 10000
  %5 = mul i32 %div.i.1.2, 10000
  %rem3.i.1.2.decomposed = sub i32 %add.i.1.1.frozen, %5
  %mul.i.1.2 = mul nsw i32 %div.i.1.2, %1
  %mul5.i.1.2 = mul nsw i32 %rem3.i.1.2.decomposed, %1
  %div7.i.1.2 = sdiv i32 %mul5.i.1.2, 10000
  %add.i.1.2 = add nsw i32 %div7.i.1.2, %mul.i.1.2
  %div8.i = sdiv i32 %add.i.3231, 10000
  %div8.i.1 = sdiv i32 %add.i.1.2, 10
  %mul.i.2 = shl nsw i32 %1, 3
  %mul5.i.2 = mul nsw i32 %1, 7018
  %div7.i.2 = sdiv i32 %mul5.i.2, 10000
  %add.i.2 = add nsw i32 %div7.i.2, %mul.i.2
  %add.i.2.frozen = freeze i32 %add.i.2
  %div.i.2.1 = sdiv i32 %add.i.2.frozen, 10000
  %6 = mul i32 %div.i.2.1, 10000
  %rem3.i.2.1.decomposed = sub i32 %add.i.2.frozen, %6
  %mul.i.2.1 = mul nsw i32 %div.i.2.1, %1
  %mul5.i.2.1 = mul nsw i32 %rem3.i.2.1.decomposed, %1
  %div7.i.2.1 = sdiv i32 %mul5.i.2.1, 10000
  %add.i.2.1 = add nsw i32 %div7.i.2.1, %mul.i.2.1
  %add9.i.1 = add nsw i32 %div8.i.1, %div8.i
  %div8.i.2 = sdiv i32 %add.i.2.1, 10
  %mul.i.3 = mul nsw i32 %1, 39
  %mul5.i.3 = mul nsw i32 %1, 269
  %div7.i.3 = sdiv i32 %mul5.i.3, 1000
  %add.i.3 = add nsw i32 %div7.i.3, %mul.i.3
  %add9.i.2 = add nsw i32 %div8.i.2, %add9.i.1
  %add9.i.3 = add nsw i32 %add.i.3, %add9.i.2
  %add931.i = add nsw i32 %add9.i.3, 1720400
  %div11.i = sdiv i32 %add931.i, 10000
  br label %if.end

for.end.i207:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = tail call i32 @llvm.smax.i32(i32 %val, i32 620)
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 1168)
  %mul5.i197 = mul nuw nsw i32 %8, 658
  %div7.i198 = udiv i32 %mul5.i197, 1000
  %mul.i196 = mul nuw nsw i32 %8, 18
  %add.i199 = add nuw nsw i32 %div7.i198, %mul.i196
  %9 = trunc i32 %add.i199 to i16
  %div11.i209.lhs.trunc = add i16 %9, -11572
  %div11.i209233 = sdiv i16 %div11.i209.lhs.trunc, 10
  %div11.i209.sext = sext i16 %div11.i209233 to i32
  br label %if.end

if.end:                                           ; preds = %for.end.i207, %if.then
  %data.0 = phi i32 [ %div11.i, %if.then ], [ %div11.i209.sext, %for.end.i207 ]
  %iface_mtx = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 5
  %call21 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %iface_mtx, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %regs = getelementptr inbounds %struct.pvt_hwmon, ptr %pvt, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %thres_base = getelementptr [5 x %struct.pvt_sensor_info], ptr @pvt_info, i32 0, i32 %type, i32 3
  %12 = ptrtoint ptr %thres_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %thres_base, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !118
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  br i1 %is_low, label %do.end40, label %do.end128

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %and = lshr i32 %15, 10
  %shr = and i32 %and, 1023
  %16 = tail call i32 @llvm.umin.i32(i32 %data.0, i32 %shr)
  br label %if.end132

do.end128:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %and94 = and i32 %15, 1023
  %17 = tail call i32 @llvm.umax.i32(i32 %data.0, i32 %and94)
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 1023)
  %shl130 = shl nuw nsw i32 %18, 10
  br label %if.end132

if.end132:                                        ; preds = %do.end128, %do.end40
  %mask.0 = phi i32 [ 1047552, %do.end128 ], [ 1023, %do.end40 ]
  %data.1 = phi i32 [ %shl130, %do.end128 ], [ %16, %do.end40 ]
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr136 = getelementptr i8, ptr %20, i32 %13
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136) #9, !srcloc !118
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %neg.i = xor i32 %mask.0, -1
  %and.i = and i32 %22, %neg.i
  %and1.i = and i32 %data.1, %mask.0
  %or.i = or i32 %and.i, %and1.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 %23) #9, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %iface_mtx) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end.cleanup_crit_edge
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pvt_disable_iface(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iface_mtx = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %iface_mtx, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.pvt_hwmon, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %3) #9, !srcloc !120
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr2 = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #9, !srcloc !118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !119
  tail call void @arm_heavy_mb() #9
  %7 = or i32 %6, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %7) #9, !srcloc !120
  tail call void @mutex_unlock(ptr noundef %iface_mtx) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_bt1_pvt__261_1198_pvt_driver_init6, !1, !"__initcall__kmod_bt1_pvt__261_1198_pvt_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1198, i32 1}
!2 = !{ptr @__exitcall_pvt_driver_exit, !1, !"__exitcall_pvt_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author262, !4, !"__UNIQUE_ID_author262", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1200, i32 1}
!5 = !{ptr @__UNIQUE_ID_description263, !6, !"__UNIQUE_ID_description263", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1201, i32 1}
!7 = !{ptr @__UNIQUE_ID_file264, !8, !"__UNIQUE_ID_file264", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1202, i32 1}
!9 = !{ptr @__UNIQUE_ID_license265, !8, !"__UNIQUE_ID_license265", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1194, i32 11}
!12 = !{ptr @pvt_driver, !13, !"pvt_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1191, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/bt1-pvt.c", i32 896, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pvt_create_data._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pvt_create_data._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @pvt_create_data.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/bt1-pvt.c", i32 902, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @pvt_create_data.__key.7, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/bt1-pvt.c", i32 906, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @pvt_create_data.__key.9, !26, !"__key", i1 false, i1 false}
!29 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/bt1-pvt.c", i32 922, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pvt_request_regs._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pvt_request_regs._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/bt1-pvt.c", i32 944, i32 32}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/bt1-pvt.c", i32 945, i32 32}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/bt1-pvt.c", i32 949, i32 3}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pvt_request_clks._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @pvt_request_clks._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/bt1-pvt.c", i32 955, i32 3}
!46 = !{ptr @pvt_request_clks._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @pvt_request_clks._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/bt1-pvt.c", i32 961, i32 3}
!50 = !{ptr @pvt_request_clks._entry.20, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pvt_request_clks._entry_ptr.22, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/bt1-pvt.c", i32 995, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pvt_check_pwr._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @pvt_check_pwr._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1010, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pvt_init_iface._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @pvt_init_iface._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1053, i32 7}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/bt1-pvt.c", i32 41, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/bt1-pvt.c", i32 42, i32 2}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/bt1-pvt.c", i32 43, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/bt1-pvt.c", i32 44, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/bt1-pvt.c", i32 45, i32 2}
!74 = !{ptr @pvt_info, !75, !"pvt_info", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/bt1-pvt.c", i32 40, i32 37}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1078, i32 6}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1080, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pvt_request_irq._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pvt_request_irq._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1092, i32 3}
!85 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @pvt_create_hwmon._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @pvt_create_hwmon._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @pvt_hwmon_info, !89, !"pvt_hwmon_info", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/bt1-pvt.c", i32 866, i32 37}
!90 = !{ptr @pvt_hwmon_ops, !91, !"pvt_hwmon_ops", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/bt1-pvt.c", i32 859, i32 31}
!92 = distinct !{null, !93, !"poly_N_to_temp", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/bt1-pvt.c", i32 79, i32 30}
!94 = distinct !{null, !95, !"poly_N_to_volt", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/bt1-pvt.c", i32 108, i32 30}
!96 = distinct !{null, !97, !"poly_temp_to_N", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/bt1-pvt.c", i32 68, i32 45}
!98 = distinct !{null, !99, !"poly_volt_to_N", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/bt1-pvt.c", i32 100, i32 45}
!100 = !{ptr @pvt_channel_info, !101, !"pvt_channel_info", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/bt1-pvt.c", i32 406, i32 41}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1118, i32 3}
!104 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @pvt_enable_iface._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @pvt_enable_iface._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @pvt_of_match, !108, !"pvt_of_match", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/bt1-pvt.c", i32 1185, i32 34}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i64 4973554}
!119 = !{i64 2153202787}
!120 = !{i64 4973136}
!121 = !{i64 2153303913}
!122 = !{i64 2153721822}
!123 = !{i64 2153722349}
!124 = !{!"auto-init"}
!125 = !{i64 2153727700}
!126 = !{i64 2153728187}
!127 = !{i64 2153304664}
!128 = !{i64 2153305363}
!129 = !{i64 2150331659}
!130 = !{i64 2150331984}
!131 = !{i64 1205761, i64 1205788}
!132 = !{i64 1206456, i64 1206483, i64 1206516, i64 1206537, i64 1206564, i64 1206590}
!133 = !{i64 2153668055}
!134 = !{i64 1205931, i64 1205958}
!135 = !{i64 1206271, i64 1206298, i64 1206332, i64 1206353}
!136 = !{i64 1206048, i64 1206075, i64 1206097, i64 1206125}
!137 = !{i64 643408, i64 643469}
!138 = !{i64 646140}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 646425}
!141 = !{i64 2150342032}
!142 = !{i64 2150341874}
!143 = !{i64 2150342202}
!144 = !{i64 2150331334}
!145 = !{i64 2153350538}
!146 = !{i64 2153453687}
