; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-designware-pcidrv.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-designware-pcidrv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dw_pci_controller = type { i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dw_scl_sda_cfg = type { i16, i16, i16, i16, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.dw_i2c_dev = type { ptr, ptr, ptr, ptr, ptr, %struct.completion, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.i2c_adapter, i32, i32, i32, i32, i32, i32, %struct.i2c_timings, i32, i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, %struct.i2c_bus_recovery_info, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_bus_recovery_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_i2c_designware_pci__293_412_dw_i2c_driver_init6 = internal global ptr @dw_i2c_driver_init, section ".initcall6.init", align 4
@dw_i2c_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @i2_designware_pci_ids, ptr @i2c_dw_pci_probe, ptr @i2c_dw_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_dw_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_dw_i2c_driver_exit = internal global ptr @dw_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias294 = internal constant [44 x i8] c"i2c_designware_pci.alias=i2c_designware-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [59 x i8] c"i2c_designware_pci.author=Baruch Siach <baruch@tkos.co.il>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [71 x i8] c"i2c_designware_pci.description=Synopsys DesignWare PCI I2C bus adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [62 x i8] c"i2c_designware_pci.file=drivers/i2c/busses/i2c-designware-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [31 x i8] c"i2c_designware_pci.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_designware_pci\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c-designware-pci\00", [45 x i8] zeroinitializer }, align 32
@i2_designware_pci_ids = internal constant { [37 x %struct.pci_device_id], [288 x i8] } { [37 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2071, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2072, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2073, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2092, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2093, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2094, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 4501, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 4502, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 32902, i32 3905, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3906, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3907, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3908, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3909, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3910, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 3911, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 32902, i32 40033, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 40034, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 32902, i32 8897, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8898, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8899, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8900, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8901, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8902, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 8903, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 32902, i32 19385, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19386, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19387, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19388, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19389, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19390, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19391, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 32902, i32 19392, i32 -1, i32 -1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 4098, i32 29460, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 29604, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 29668, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4098, i32 29636, i32 -1, i32 -1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id zeroinitializer], [288 x i8] zeroinitializer }, align 32
@i2c_dw_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @i2c_dw_pci_suspend, ptr @i2c_dw_pci_resume, ptr @i2c_dw_pci_suspend, ptr @i2c_dw_pci_resume, ptr @i2c_dw_pci_suspend, ptr @i2c_dw_pci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @i2c_dw_pci_suspend, ptr @i2c_dw_pci_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid driver data %ld\0A\00", [39 x i8] zeroinitializer }, align 32
@dw_pci_controllers = internal global { [7 x %struct.dw_pci_controller], [52 x i8] } { [7 x %struct.dw_pci_controller] [%struct.dw_pci_controller { i32 -1, i32 0, ptr null, ptr @mfld_setup, ptr @mfld_get_clk_rate_khz }, %struct.dw_pci_controller { i32 -1, i32 0, ptr @mrfld_config, ptr @mrfld_setup, ptr null }, %struct.dw_pci_controller { i32 -1, i32 0, ptr @byt_config, ptr null, ptr null }, %struct.dw_pci_controller { i32 -1, i32 0, ptr @byt_config, ptr null, ptr null }, %struct.dw_pci_controller { i32 -1, i32 0, ptr @hsw_config, ptr null, ptr null }, %struct.dw_pci_controller { i32 -1, i32 0, ptr null, ptr null, ptr @ehl_get_clk_rate_khz }, %struct.dw_pci_controller { i32 -1, i32 0, ptr @navi_amd_config, ptr @navi_amd_setup, ptr @navi_amd_get_clk_rate_khz }], [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable I2C PCI device\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"I/O memory remapping failed\0A\00", [35 x i8] zeroinitializer }, align 32
@i2c_dw_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 330, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"register client failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"i2c_dw_pci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/i2c/busses/i2c-designware-pcidrv.c\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_dw_pci_probe._entry_ptr = internal global ptr @i2c_dw_pci_probe._entry, section ".printk_index", align 4
@mrfld_config = internal global { %struct.dw_scl_sda_cfg, [20 x i8] } { %struct.dw_scl_sda_cfg { i16 760, i16 135, i16 891, i16 266, i32 0 }, [20 x i8] zeroinitializer }, align 32
@byt_config = internal global { %struct.dw_scl_sda_cfg, [20 x i8] } { %struct.dw_scl_sda_cfg { i16 512, i16 85, i16 512, i16 153, i32 6 }, [20 x i8] zeroinitializer }, align 32
@hsw_config = internal global { %struct.dw_scl_sda_cfg, [20 x i8] } { %struct.dw_scl_sda_cfg { i16 432, i16 72, i16 507, i16 160, i32 9 }, [20 x i8] zeroinitializer }, align 32
@navi_amd_config = internal global { %struct.dw_scl_sda_cfg, [20 x i8] } { %struct.dw_scl_sda_cfg { i16 430, i16 0, i16 570, i16 0, i32 9 }, [20 x i8] zeroinitializer }, align 32
@i2c_dw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 359, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Wrong operation mode: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c_dw_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/i2c/busses/i2c-designware-core.h\00", [55 x i8] zeroinitializer }, align 32
@i2c_dw_probe._entry_ptr = internal global ptr @i2c_dw_probe._entry, section ".printk_index", align 4
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ccgx-ucsi\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [8 x i64] [i64 6, i64 16, i64 2071, i64 2072, i64 2073, i64 2092, i64 2093, i64 2094]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 9]
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"dw_i2c_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 403, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 412, i32 1 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 404, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"i2_designware_pci_ids\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 356, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"i2c_dw_pm_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 237, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 251, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [19 x i8] c"dw_pci_controllers\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 181, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 259, i32 10 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 266, i32 10 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 330, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"mrfld_config\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 65, i32 30 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"byt_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 73, i32 30 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"hsw_config\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 82, i32 30 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"navi_amd_config\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 91, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [44 x i8] c"../drivers/i2c/busses/i2c-designware-core.h\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 359, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [46 x i8] c"../drivers/i2c/busses/i2c-designware-pcidrv.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 137, i32 21 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_dw_i2c_driver_exit, ptr @__initcall__kmod_i2c_designware_pci__293_412_dw_i2c_driver_init6, ptr @dw_i2c_driver_exit, ptr @i2c_dw_pci_probe._entry, ptr @i2c_dw_pci_probe._entry_ptr, ptr @i2c_dw_probe._entry, ptr @i2c_dw_probe._entry_ptr, ptr @dw_i2c_driver, ptr @.str, ptr @.str.1, ptr @i2_designware_pci_ids, ptr @i2c_dw_pm_ops, ptr @.str.2, ptr @dw_pci_controllers, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mrfld_config, ptr @byt_config, ptr @hsw_config, ptr @navi_amd_config, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_i2c_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2_designware_pci_ids to i32), i32 1184, i32 1472, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_pci_controllers to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrfld_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @byt_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsw_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @navi_amd_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_dw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @dw_i2c_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dw_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_unregister_driver(ptr noundef nonnull @dw_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %id, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ugt i32 %1, 6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -22, ptr noundef nonnull @.str.2, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [7 x %struct.dw_pci_controller], ptr @dw_pci_controllers, i32 0, i32 %1
  %call4 = tail call i32 @pcim_enable_device(ptr noundef %pdev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call7 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev6, i32 noundef %call4, ptr noundef nonnull @.str.3) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  tail call void @pci_set_master(ptr noundef %pdev) #10
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end8.pci_name.exit_crit_edge

if.end8.pci_name.exit_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end8.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.end8.pci_name.exit_crit_edge ]
  %call10 = tail call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef 1, ptr noundef %retval.0.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %dev16 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call14 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev16, i32 noundef %call10, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end15:                                         ; preds = %pci_name.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev16, i32 noundef 1680, i32 noundef 3520) #10
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call.i156 = tail call i32 @pci_alloc_irq_vectors_affinity(ptr noundef %pdev, i32 noundef 1, i32 noundef 1, i32 noundef 7, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp22 = icmp slt i32 %call.i156, 0
  br i1 %cmp22, label %if.end20.cleanup_crit_edge, label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %get_clk_rate_khz = getelementptr [7 x %struct.dw_pci_controller], ptr @dw_pci_controllers, i32 0, i32 %1, i32 4
  %6 = ptrtoint ptr %get_clk_rate_khz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_clk_rate_khz, align 4
  %get_clk_rate_khz25 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %get_clk_rate_khz25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %get_clk_rate_khz25, align 4
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 32
  %9 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 400000, ptr %timings, align 8
  %call26 = tail call ptr @pcim_iomap_table(ptr noundef %pdev) #10
  %10 = ptrtoint ptr %call26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call26, align 4
  %base = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %base, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev16, ptr %call.i, align 8
  %call30 = tail call i32 @pci_irq_vector(ptr noundef %pdev, i32 noundef 0) #10
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 23
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call30, ptr %irq, align 8
  %flags = getelementptr [7 x %struct.dw_pci_controller], ptr @dw_pci_controllers, i32 0, i32 %1, i32 1
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  %flags31 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 24
  %17 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags31, align 4
  %or = or i32 %18, %16
  store i32 %or, ptr %flags31, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %setup = getelementptr [7 x %struct.dw_pci_controller], ptr @dw_pci_controllers, i32 0, i32 %1, i32 3
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %setup, align 4
  %tobool32.not = icmp eq ptr %21, null
  br i1 %tobool32.not, label %if.end24.if.end39_crit_edge, label %if.then33

if.end24.if.end39_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then33:                                        ; preds = %if.end24
  %call35 = tail call i32 %21(ptr noundef %pdev, ptr noundef %arrayidx) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end39_crit_edge, label %if.then37

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #10
  br label %cleanup

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end24.if.end39_crit_edge
  tail call void @i2c_dw_adjust_bus_speed(ptr noundef nonnull %call.i) #10
  %call46 = tail call i32 @i2c_dw_validate_speed(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.then48

if.then48:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #10
  br label %cleanup

if.end49:                                         ; preds = %if.end39
  tail call fastcc void @i2c_dw_configure(ptr noundef nonnull %call.i)
  %scl_sda_cfg = getelementptr [7 x %struct.dw_pci_controller], ptr @dw_pci_controllers, i32 0, i32 %1, i32 2
  %22 = ptrtoint ptr %scl_sda_cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scl_sda_cfg, align 4
  %tobool50.not = icmp eq ptr %23, null
  br i1 %tobool50.not, label %if.end49.if.end57_crit_edge, label %if.then51

if.end49.if.end57_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %23, align 4
  %ss_hcnt53 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 34
  %26 = ptrtoint ptr %ss_hcnt53 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ss_hcnt53, align 4
  %fs_hcnt = getelementptr inbounds %struct.dw_scl_sda_cfg, ptr %23, i32 0, i32 1
  %27 = ptrtoint ptr %fs_hcnt to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %fs_hcnt, align 2
  %fs_hcnt54 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 36
  %29 = ptrtoint ptr %fs_hcnt54 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %fs_hcnt54, align 8
  %ss_lcnt = getelementptr inbounds %struct.dw_scl_sda_cfg, ptr %23, i32 0, i32 2
  %30 = ptrtoint ptr %ss_lcnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %ss_lcnt, align 4
  %ss_lcnt55 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 35
  %32 = ptrtoint ptr %ss_lcnt55 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %ss_lcnt55, align 2
  %fs_lcnt = getelementptr inbounds %struct.dw_scl_sda_cfg, ptr %23, i32 0, i32 3
  %33 = ptrtoint ptr %fs_lcnt to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %fs_lcnt, align 2
  %fs_lcnt56 = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 37
  %35 = ptrtoint ptr %fs_lcnt56 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %fs_lcnt56, align 2
  %sda_hold = getelementptr inbounds %struct.dw_scl_sda_cfg, ptr %23, i32 0, i32 4
  %36 = ptrtoint ptr %sda_hold to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sda_hold, align 4
  %sda_hold_time = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 33
  %38 = ptrtoint ptr %sda_hold_time to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sda_hold_time, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then51, %if.end49.if.end57_crit_edge
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25
  %39 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %adapter, align 8
  %class = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25, i32 1
  %40 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %class, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %nr = getelementptr inbounds %struct.dw_i2c_dev, ptr %call.i, i32 0, i32 25, i32 11
  %43 = ptrtoint ptr %nr to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %nr, align 4
  %call58 = tail call fastcc i32 @i2c_dw_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.then60

if.then60:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #10
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %44 = ptrtoint ptr %flags31 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags31, align 4
  %and = and i32 %45, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %and)
  %cmp63 = icmp eq i32 %and, 1024
  br i1 %cmp63, label %if.then64, label %if.end61.if.end73_crit_edge

if.end61.if.end73_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.then64:                                        ; preds = %if.end61
  %call65 = tail call fastcc i32 @navi_amd_register_client(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.then64.if.end73_crit_edge, label %do.end70

if.then64.if.end73_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end70:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.5, i32 noundef %call65) #13
  br label %cleanup

if.end73:                                         ; preds = %if.then64.if.end73_crit_edge, %if.end61.if.end73_crit_edge
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev16, i32 noundef 1000) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev16, i1 noundef zeroext true) #10
  %call.i157 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev16, i32 noundef 13) #10
  tail call void @pm_runtime_allow(ptr noundef %dev16) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %do.end70, %if.then60, %if.then48, %if.then37, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then12, %if.then5, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call7, %if.then5 ], [ %call14, %if.then12 ], [ %call35, %if.then37 ], [ %call46, %if.then48 ], [ %call58, %if.then60 ], [ %call65, %do.end70 ], [ 0, %if.end73 ], [ -12, %if.end15.cleanup_crit_edge ], [ %call.i156, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @i2c_dw_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 45
  %2 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disable, align 8
  tail call void %3(ptr noundef %1) #10
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @pm_runtime_forbid(ptr noundef %dev1) #10
  %usage_count.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #10, !srcloc !62
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 25
  tail call void @i2c_del_adapter(ptr noundef %adapter) #10
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 23
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 8
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %6, ptr noundef %1) #10
  tail call void @pci_free_irq_vectors(ptr noundef %pdev) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_irq_vector(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_free_irq_vectors(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_adjust_bus_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_validate_speed(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @i2c_dw_configure(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call zeroext i1 @i2c_detect_slave_mode(ptr noundef %1) #10
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_dw_configure_slave(ptr noundef %dev) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_dw_configure_master(ptr noundef %dev) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_dw_probe(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %mode = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 49
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @i2c_dw_probe_slave(ptr noundef %dev) #10
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @i2c_dw_probe_master(ptr noundef %dev) #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef %1) #13
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2, %sw.bb1 ], [ %call, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @navi_amd_register_client(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #10
  %0 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str.13, i32 noundef 20) #10
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 8, ptr %addr, align 2
  %irq = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 23
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 8
  %irq1 = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 10
  %4 = ptrtoint ptr %irq1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %irq1, align 4
  %adapter = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 25
  %call2 = call ptr @i2c_new_client_device(ptr noundef %adapter, ptr noundef nonnull %info) #10
  %slave = getelementptr inbounds %struct.dw_i2c_dev, ptr %dev, i32 0, i32 9
  %5 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %slave, align 8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call2 to i32
  %spec.select = select i1 %cmp.i, i32 %6, i32 0
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #10
  ret i32 %spec.select
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_allow(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mfld_setup(ptr nocapture noundef readonly %pdev, ptr nocapture noundef writeonly %c) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %device, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %1, label %entry.cleanup_crit_edge [
    i16 2071, label %sw.bb
    i16 2072, label %entry.sw.bb2_crit_edge
    i16 2073, label %entry.sw.bb2_crit_edge16
    i16 2092, label %entry.cleanup.sink.split_crit_edge
    i16 2093, label %entry.cleanup.sink.split_crit_edge17
    i16 2094, label %entry.cleanup.sink.split_crit_edge18
  ]

entry.cleanup.sink.split_crit_edge18:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge17:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

entry.sw.bb2_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %4, i32 0, i32 32
  %5 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 100000, ptr %timings, align 8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge16
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device, align 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb2, %entry.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge17, %entry.cleanup.sink.split_crit_edge18
  %.sink15 = phi i16 [ %7, %sw.bb2 ], [ %1, %entry.cleanup.sink.split_crit_edge ], [ %1, %entry.cleanup.sink.split_crit_edge17 ], [ %1, %entry.cleanup.sink.split_crit_edge18 ]
  %.sink = phi i32 [ -2068, %sw.bb2 ], [ -2092, %entry.cleanup.sink.split_crit_edge ], [ -2092, %entry.cleanup.sink.split_crit_edge17 ], [ -2092, %entry.cleanup.sink.split_crit_edge18 ]
  %conv7 = zext i16 %.sink15 to i32
  %sub8 = add nsw i32 %.sink, %conv7
  %8 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub8, ptr %c, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mfld_get_clk_rate_khz(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 25000
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mrfld_setup(ptr nocapture noundef readonly %pdev, ptr nocapture noundef writeonly %c) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn, align 4
  %shr = lshr i32 %1, 3
  %and = and i32 %shr, 31
  %2 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %and, label %entry.return_crit_edge [
    i32 8, label %entry.return.sink.split_crit_edge
    i32 9, label %sw.bb4
  ]

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %sw.bb4, %entry.return.sink.split_crit_edge
  %.sink = phi i32 [ 5, %sw.bb4 ], [ 1, %entry.return.sink.split_crit_edge ]
  %and6 = and i32 %1, 7
  %add8 = add nuw nsw i32 %and6, %.sink
  %3 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add8, ptr %c, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ehl_get_clk_rate_khz(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 100000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi_amd_setup(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readnone %c) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 1024
  store i32 %or, ptr %flags, align 4
  %timings = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 32
  %4 = ptrtoint ptr %timings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100000, ptr %timings, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @navi_amd_get_clk_rate_khz(ptr nocapture noundef readnone %dev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 100000
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_alloc_irq_vectors_affinity(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @i2c_detect_slave_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_configure_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_dw_configure_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_probe_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_dw_probe_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_forbid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_pci_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %suspended = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %suspended, align 8
  %disable = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 45
  %3 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %disable, align 8
  tail call void %4(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_dw_pci_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %init = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init, align 8
  %call1 = tail call i32 %3(ptr noundef %1) #10
  %suspended = getelementptr inbounds %struct.dw_i2c_dev, ptr %1, i32 0, i32 51
  %4 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %suspended, align 8
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_i2c_designware_pci__293_412_dw_i2c_driver_init6, !1, !"__initcall__kmod_i2c_designware_pci__293_412_dw_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 412, i32 1}
!2 = !{ptr @__exitcall_dw_i2c_driver_exit, !1, !"__exitcall_dw_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias294, !4, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 415, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 416, i32 1}
!7 = !{ptr @__UNIQUE_ID_description296, !8, !"__UNIQUE_ID_description296", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 417, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 418, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 404, i32 11}
!15 = !{ptr @dw_i2c_driver, !16, !"dw_i2c_driver", i1 false, i1 false}
!16 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 403, i32 26}
!17 = !{ptr @i2_designware_pci_ids, !18, !"i2_designware_pci_ids", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 356, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 251, i32 10}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 259, i32 10}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 266, i32 10}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 330, i32 4}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_dw_pci_probe._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_dw_pci_probe._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @dw_pci_controllers, !34, !"dw_pci_controllers", i1 false, i1 false}
!34 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 181, i32 33}
!35 = !{ptr @mrfld_config, !36, !"mrfld_config", i1 false, i1 false}
!36 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 65, i32 30}
!37 = !{ptr @byt_config, !38, !"byt_config", i1 false, i1 false}
!38 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 73, i32 30}
!39 = !{ptr @hsw_config, !40, !"hsw_config", i1 false, i1 false}
!40 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 82, i32 30}
!41 = !{ptr @navi_amd_config, !42, !"navi_amd_config", i1 false, i1 false}
!42 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 91, i32 30}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/busses/i2c-designware-core.h", i32 359, i32 3}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @i2c_dw_probe._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @i2c_dw_probe._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 137, i32 21}
!51 = !{ptr @i2c_dw_pm_ops, !52, !"i2c_dw_pm_ops", i1 false, i1 false}
!52 = !{!"../drivers/i2c/busses/i2c-designware-pcidrv.c", i32 237, i32 8}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i64 2148311858, i64 2148311884, i64 2148311913, i64 2148311947, i64 2148311978, i64 2148312001}
