; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/mach-crag6410-module.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/mach-crag6410-module.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.anon.86 = type { i8, i8, ptr, ptr, i32, ptr, i32, ptr }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.arizona_pdata = type { ptr, %struct.arizona_micsupp_pdata, %struct.arizona_ldo1_pdata, i32, i32, i32, [5 x i32], [3 x i32], i8, i8, i8, i8, i8, i32, i32, i8, i32, i32, i32, i32, i32, i32, i8, ptr, i32, ptr, i32, [4 x i32], [3 x %struct.arizona_micbias], [4 x i32], [6 x i32], [12 x i32], [2 x i32], [2 x i32], i32, i32, i32 }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micbias = type { i32, i8 }
%struct.s3c64xx_spi_csinfo = type { i8, i32 }
%struct.wm9081_pdata = type { i8, i8, ptr, i32 }
%struct.wm0010_pdata = type { i32, i32, i32 }
%struct.wm8996_pdata = type { i32, i32, i32, i32, i32, i32, i32, [5 x i32], i32, ptr }
%struct.wm8996_retune_mobile_config = type { ptr, i32, [20 x i16] }
%struct.wm8962_pdata = type { ptr, i32, [6 x i32], i32, i8, i8, i8 }
%struct.wm5100_pdata = type { i32, i32, i32, i32, i32, [2 x %struct.wm5100_jack_mode], [4 x i32], [4 x i32], [6 x i32] }
%struct.wm5100_jack_mode = type { i32, i32, i32 }
%struct.regulator_init_data = type { ptr, %struct.regulation_constraints, i32, ptr, ptr, ptr }
%struct.regulation_constraints = type { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.wm8994_ldo_pdata = type { ptr }
%struct.wm2200_pdata = type { i32, i32, i32, [4 x i32], [3 x i32], [3 x i32], [2 x %struct.wm2200_micbias] }
%struct.wm2200_micbias = type { i32, i8 }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@__initcall__kmod_mach_crag6410_module__290_445_wlf_gf_module_register6 = internal global ptr @wlf_gf_module_register, section ".initcall6.init", align 4
@wlf_gf_module_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @wlf_gf_module_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wlf_gf_module_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wlf-gf-module\00", [18 x i8] zeroinitializer }, align 32
@wlf_gf_module_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wlf-gf-module\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to read ID: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wlf_gf_module_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"arch/arm/mach-s3c/mach-crag6410-module.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry_ptr = internal global ptr @wlf_gf_module_probe._entry, section ".printk_index", align 4
@gf_mods = internal constant { [26 x %struct.anon.86], [168 x i8] } { [26 x %struct.anon.86] [%struct.anon.86 { i8 1, i8 -1, ptr @.str.17, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 2, i8 -1, ptr @.str.18, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 3, i8 -1, ptr @.str.19, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 6, i8 -1, ptr @.str.20, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 7, i8 -1, ptr @.str.21, ptr null, i32 0, ptr @wm5110_spi_devs, i32 1, ptr null }, %struct.anon.86 { i8 8, i8 -1, ptr @.str.22, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 9, i8 -1, ptr @.str.23, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 10, i8 -1, ptr @.str.24, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 11, i8 -1, ptr @.str.25, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 17, i8 -1, ptr @.str.26, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 20, i8 -1, ptr @.str.27, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 21, i8 -1, ptr @.str.28, ptr @wm6230_i2c_devs, i32 1, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 33, i8 -1, ptr @.str.29, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 37, i8 -1, ptr @.str.30, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 49, i8 -1, ptr @.str.31, ptr null, i32 0, ptr @wm1253_devs, i32 1, ptr null }, %struct.anon.86 { i8 50, i8 -1, ptr @.str.32, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 51, i8 -1, ptr @.str.33, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 52, i8 -1, ptr @.str.34, ptr null, i32 0, ptr @balblair_devs, i32 1, ptr null }, %struct.anon.86 { i8 57, i8 -1, ptr @.str.35, ptr @wm1254_devs, i32 2, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 58, i8 -1, ptr @.str.36, ptr @wm1259_devs, i32 1, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 59, i8 -1, ptr @.str.37, ptr @wm1255_devs, i32 2, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 60, i8 -1, ptr @.str.38, ptr null, i32 0, ptr null, i32 0, ptr null }, %struct.anon.86 { i8 61, i8 -1, ptr @.str.39, ptr @wm1277_devs, i32 1, ptr null, i32 0, ptr @wm8994_gpiod_table }, %struct.anon.86 { i8 62, i8 0, ptr @.str.40, ptr null, i32 0, ptr @wm5102_reva_spi_devs, i32 1, ptr @wm5102_reva_gpiod_table }, %struct.anon.86 { i8 62, i8 -1, ptr @.str.40, ptr null, i32 0, ptr @wm5102_spi_devs, i32 1, ptr @wm5102_gpiod_table }, %struct.anon.86 { i8 63, i8 -1, ptr @.str.41, ptr @wm2200_i2c, i32 1, ptr null, i32 0, ptr null }], [168 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s revision %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry_ptr.9 = internal global ptr @wlf_gf_module_probe._entry.6, section ".printk_index", align 4
@wlf_gf_module_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 409, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to register\0A\00", [44 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry_ptr.12 = internal global ptr @wlf_gf_module_probe._entry.10, section ".printk_index", align 4
@wlf_gf_module_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown module ID 0x%x revision %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wlf_gf_module_probe._entry_ptr.16 = internal global ptr @wlf_gf_module_probe._entry.13, section ".printk_index", align 4
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1250-EV1 Springbank\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"1251-EV1 Jura\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"1252-EV1 Glenlivet\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WM8997-6721-CS96-EV1 Lapraoig\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WM5110-6271 Deanston\00", [43 x i8] zeroinitializer }, align 32
@wm5110_spi_devs = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"wm5110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm5102_reva_pdata, ptr null, ptr @codec_spi_csinfo, i32 231, i32 10000000, i16 0, i16 1, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"WM8903-6102 Tamdhu\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"WM1811A-6305 Adelphi\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"WM8996-6272 Blackadder\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"WM8994-6235 Benromach\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"6249-EV2 Glenfarclas\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"6271-EV1 Lochnagar\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"6320-EV1 Bells\00", [17 x i8] zeroinitializer }, align 32
@wm6230_i2c_devs = internal constant { [1 x %struct.i2c_board_info], [40 x i8] } { [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm9081\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 108, ptr null, ptr @wm9081_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"1275-EV1 Mortlach\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"1274-EV1 Glencadam\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1253-EV1 Tomatin\00", [47 x i8] zeroinitializer }, align 32
@wm1253_devs = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"wm0010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm0010_pdata, ptr null, ptr @wm0010_spi_csinfo, i32 105, i32 26000000, i16 0, i16 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"XXXX-EV1 Caol Illa\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"XXXX-EV1 Oban\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"WM0010-6320-CS42 Balblair\00", [38 x i8] zeroinitializer }, align 32
@balblair_devs = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"wm0010\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm0010_pdata, ptr null, ptr @wm0010_spi_csinfo, i32 105, i32 26000000, i16 0, i16 0, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1254-EV1 Dallas Dhu\00", [44 x i8] zeroinitializer }, align 32
@wm1254_devs = internal constant { [2 x %struct.i2c_board_info], [48 x i8] } { [2 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr @wm8996_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 231 }, %struct.i2c_board_info { [20 x i8] c"wm9081\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 108, ptr null, ptr @wm9081_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"1259-EV1 Tobermory\00", [45 x i8] zeroinitializer }, align 32
@wm1259_devs = internal constant { [1 x %struct.i2c_board_info], [40 x i8] } { [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm8962\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr @wm8962_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 231 }], [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"1255-EV1 Kilchoman\00", [45 x i8] zeroinitializer }, align 32
@wm1255_devs = internal constant { [2 x %struct.i2c_board_info], [48 x i8] } { [2 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm5100\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr null, ptr @wm5100_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 231 }, %struct.i2c_board_info { [20 x i8] c"wm9081\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 108, ptr null, ptr @wm9081_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"1273-EV1 Longmorn\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"1277-EV1 Littlemill\00", [44 x i8] zeroinitializer }, align 32
@wm1277_devs = internal constant { [1 x %struct.i2c_board_info], [40 x i8] } { [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm8958\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 26, ptr @.str.44, ptr @wm8994_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 231 }], [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WM5102-6271-EV1-CS127 Amrut\00", [36 x i8] zeroinitializer }, align 32
@wm5102_reva_spi_devs = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"wm5102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm5102_reva_pdata, ptr null, ptr @codec_spi_csinfo, i32 231, i32 10000000, i16 0, i16 1, i32 0 }], [36 x i8] zeroinitializer }, align 32
@wm5102_spi_devs = internal global { [1 x %struct.spi_board_info], [36 x i8] } { [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"wm5102\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wm5102_pdata, ptr null, ptr @codec_spi_csinfo, i32 231, i32 10000000, i16 0, i16 1, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"WM2200-6271-CS90-M-REV1\00", [40 x i8] zeroinitializer }, align 32
@wm2200_i2c = internal constant { [1 x %struct.i2c_board_info], [40 x i8] } { [1 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"wm2200\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 58, ptr null, ptr @wm2200_pdata, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [40 x i8] zeroinitializer }, align 32
@wm5102_reva_pdata = internal global { %struct.arizona_pdata, [76 x i8] } { %struct.arizona_pdata { ptr null, %struct.arizona_micsupp_pdata zeroinitializer, %struct.arizona_ldo1_pdata zeroinitializer, i32 0, i32 4, i32 212, [5 x i32] [i32 0, i32 0, i32 65536, i32 4, i32 0], [3 x i32] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i32 0, i32 216, i32 0, i32 6, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, [4 x i32] zeroinitializer, [3 x %struct.arizona_micbias] zeroinitializer, [4 x i32] zeroinitializer, [6 x i32] zeroinitializer, [12 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0 }, [76 x i8] zeroinitializer }, align 32
@codec_spi_csinfo = internal global { %struct.s3c64xx_spi_csinfo, [24 x i8] } { %struct.s3c64xx_spi_csinfo { i8 0, i32 149 }, [24 x i8] zeroinitializer }, align 32
@wm9081_pdata = internal global %struct.wm9081_pdata zeroinitializer, section ".init.data", align 4
@wm0010_pdata = internal global { %struct.wm0010_pdata, [20 x i8] } { %struct.wm0010_pdata { i32 150, i32 1, i32 0 }, [20 x i8] zeroinitializer }, align 32
@wm0010_spi_csinfo = internal global { %struct.s3c64xx_spi_csinfo, [24 x i8] } { %struct.s3c64xx_spi_csinfo { i8 0, i32 20 }, [24 x i8] zeroinitializer }, align 32
@wm8996_pdata = internal global %struct.wm8996_pdata { i32 1, i32 151, i32 1, i32 0, i32 0, i32 0, i32 212, [5 x i32] [i32 32769, i32 32769, i32 321, i32 2, i32 526], i32 2, ptr @wm8996_retune }, section ".init.data", align 4
@wm8996_retune = internal global { [2 x %struct.wm8996_retune_mobile_config], [32 x i8] } { [2 x %struct.wm8996_retune_mobile_config] [%struct.wm8996_retune_mobile_config { ptr @.str.42, i32 48000, [20 x i16] [i16 25368, i16 25344, i16 4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 4096, i16 2048, i16 16384] }, %struct.wm8996_retune_mobile_config { ptr @.str.43, i32 48000, [20 x i16] [i16 10, i16 25344, i16 4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 8192, i16 -4096, i16 0, i16 4, i16 4096, i16 2048, i16 16384] }], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub LPF\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Sub HPF\00", [24 x i8] zeroinitializer }, align 32
@wm8962_pdata = internal global %struct.wm8962_pdata { ptr null, i32 0, [6 x i32] [i32 0, i32 18, i32 19, i32 0, i32 32788, i32 3], i32 0, i8 0, i8 0, i8 1 }, section ".init.data", align 4
@wm5100_pdata = internal global { %struct.wm5100_pdata, [60 x i8] } { %struct.wm5100_pdata { i32 0, i32 151, i32 215, i32 4, i32 212, [2 x %struct.wm5100_jack_mode] [%struct.wm5100_jack_mode { i32 2, i32 0, i32 0 }, %struct.wm5100_jack_mode { i32 1, i32 1, i32 1 }], [4 x i32] [i32 1, i32 1, i32 1, i32 0], [4 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 3] }, [60 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8958\00", [25 x i8] zeroinitializer }, align 32
@wm8994_ldo1 = internal global { %struct.regulator_init_data, [60 x i8] } { %struct.regulator_init_data { ptr @.str.46, %struct.regulation_constraints zeroinitializer, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wm8994_ldo2 = internal global { %struct.regulator_init_data, [60 x i8] } { %struct.regulator_init_data { ptr @.str.46, %struct.regulation_constraints zeroinitializer, i32 0, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@wm8994_pdata = internal global { { i32, <{ i32, [10 x i32] }>, [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }, [44 x i8] } { { i32, <{ i32, [10 x i32] }>, [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 } { i32 212, <{ i32, [10 x i32] }> <{ i32 3, [10 x i32] zeroinitializer }>, [2 x %struct.wm8994_ldo_pdata] [%struct.wm8994_ldo_pdata { ptr @wm8994_ldo1 }, %struct.wm8994_ldo_pdata { ptr @wm8994_ldo2 }], i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, i32 150, i8 0, i32 0, i32 0, i32 0, i8 0, [2 x i32] zeroinitializer, i16 0, i8 0, i8 0, i8 0, [3 x i32] zeroinitializer, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WALLVDD\00", [24 x i8] zeroinitializer }, align 32
@wm5102_pdata = internal global { %struct.arizona_pdata, [76 x i8] } { %struct.arizona_pdata { ptr null, %struct.arizona_micsupp_pdata zeroinitializer, %struct.arizona_ldo1_pdata zeroinitializer, i32 0, i32 4, i32 212, [5 x i32] [i32 0, i32 0, i32 65536, i32 4, i32 0], [3 x i32] zeroinitializer, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, i8 0, i32 0, i32 214, i32 0, i32 0, i32 0, i32 0, i8 0, ptr null, i32 0, ptr null, i32 0, [4 x i32] zeroinitializer, [3 x %struct.arizona_micbias] zeroinitializer, [4 x i32] zeroinitializer, [6 x i32] zeroinitializer, [12 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, i32 0, i32 0, i32 0 }, [76 x i8] zeroinitializer }, align 32
@wm2200_pdata = internal global { %struct.wm2200_pdata, [60 x i8] } { %struct.wm2200_pdata { i32 0, i32 151, i32 0, [4 x i32] [i32 0, i32 0, i32 5, i32 0], [3 x i32] zeroinitializer, [3 x i32] zeroinitializer, [2 x %struct.wm2200_micbias] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi0.1\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPION\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wlf,ldoena\00", [21 x i8] zeroinitializer }, align 32
@wm5102_reva_gpiod_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.47, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.48, i16 7, ptr @.str.49, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo1ena\00", [20 x i8] zeroinitializer }, align 32
@wm5102_gpiod_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.47, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.48, i16 7, ptr @.str.51, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-wm8958\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wlf,ldo2ena\00", [20 x i8] zeroinitializer }, align 32
@wm8994_gpiod_table = internal global { { %struct.list_head, ptr, [3 x %struct.gpiod_lookup] }, [56 x i8] } { { %struct.list_head, ptr, [3 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.53, [3 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.48, i16 6, ptr @.str.51, i32 0, i32 0 }, %struct.gpiod_lookup { ptr @.str.48, i16 4, ptr @.str.54, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"wlf_gf_module_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 430, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 432, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"wlf_gf_module_id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 425, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 387, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [8 x i8] c"gf_mods\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 333, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 403, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 409, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 418, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 334, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 335, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 336, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 337, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 338, i32 37 }
@___asan_gen_.125 = private unnamed_addr constant [16 x i8] c"wm5110_spi_devs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 292, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 341, i32 37 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 342, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 343, i32 37 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 344, i32 37 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 345, i32 37 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 346, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 347, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"wm6230_i2c_devs\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 306, i32 36 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 350, i32 37 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 351, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 352, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [12 x i8] c"wm1253_devs\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 44, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 354, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 355, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 356, i32 37 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"balblair_devs\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 57, i32 30 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 359, i32 37 }
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"wm1254_devs\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 157, i32 36 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 361, i32 37 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"wm1259_devs\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 175, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 363, i32 37 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"wm1255_devs\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 166, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 365, i32 37 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 366, i32 37 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"wm1277_devs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 202, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 369, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"wm5102_reva_spi_devs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 236, i32 30 }
@___asan_gen_.209 = private unnamed_addr constant [16 x i8] c"wm5102_spi_devs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 269, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 377, i32 35 }
@___asan_gen_.215 = private unnamed_addr constant [11 x i8] c"wm2200_i2c\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 318, i32 36 }
@___asan_gen_.218 = private unnamed_addr constant [18 x i8] c"wm5102_reva_pdata\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 221, i32 29 }
@___asan_gen_.221 = private unnamed_addr constant [17 x i8] c"codec_spi_csinfo\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 232, i32 34 }
@___asan_gen_.224 = private unnamed_addr constant [13 x i8] c"wm0010_pdata\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 39, i32 28 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"wm0010_spi_csinfo\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 35, i32 34 }
@___asan_gen_.230 = private unnamed_addr constant [14 x i8] c"wm8996_retune\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 98, i32 43 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 100, i32 11 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 109, i32 11 }
@___asan_gen_.239 = private unnamed_addr constant [13 x i8] c"wm5100_pdata\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 70, i32 28 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 206, i32 16 }
@___asan_gen_.245 = private unnamed_addr constant [12 x i8] c"wm8994_ldo1\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 182, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant [12 x i8] c"wm8994_ldo2\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 186, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [13 x i8] c"wm8994_pdata\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 190, i32 28 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 183, i32 22 }
@___asan_gen_.257 = private unnamed_addr constant [13 x i8] c"wm5102_pdata\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 259, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant [13 x i8] c"wm2200_pdata\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 311, i32 28 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 251, i32 12 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 253, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant [24 x i8] c"wm5102_reva_gpiod_table\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 250, i32 34 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 286, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [19 x i8] c"wm5102_gpiod_table\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 283, i32 34 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 211, i32 12 }
@___asan_gen_.284 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 215, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant [19 x i8] c"wm8994_gpiod_table\00", align 1
@___asan_gen_.288 = private constant [44 x i8] c"../arch/arm/mach-s3c/mach-crag6410-module.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 210, i32 34 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__initcall__kmod_mach_crag6410_module__290_445_wlf_gf_module_register6, ptr @wlf_gf_module_probe._entry, ptr @wlf_gf_module_probe._entry.10, ptr @wlf_gf_module_probe._entry.13, ptr @wlf_gf_module_probe._entry.6, ptr @wlf_gf_module_probe._entry_ptr, ptr @wlf_gf_module_probe._entry_ptr.12, ptr @wlf_gf_module_probe._entry_ptr.16, ptr @wlf_gf_module_probe._entry_ptr.9, ptr @wlf_gf_module_driver, ptr @.str, ptr @wlf_gf_module_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @gf_mods, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @wm5110_spi_devs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @wm6230_i2c_devs, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @wm1253_devs, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @balblair_devs, ptr @.str.35, ptr @wm1254_devs, ptr @.str.36, ptr @wm1259_devs, ptr @.str.37, ptr @wm1255_devs, ptr @.str.38, ptr @.str.39, ptr @wm1277_devs, ptr @.str.40, ptr @wm5102_reva_spi_devs, ptr @wm5102_spi_devs, ptr @.str.41, ptr @wm2200_i2c, ptr @wm5102_reva_pdata, ptr @codec_spi_csinfo, ptr @wm0010_pdata, ptr @wm0010_spi_csinfo, ptr @wm8996_retune, ptr @.str.42, ptr @.str.43, ptr @wm5100_pdata, ptr @.str.44, ptr @wm8994_ldo1, ptr @wm8994_ldo2, ptr @wm8994_pdata, ptr @.str.46, ptr @wm5102_pdata, ptr @wm2200_pdata, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @wm5102_reva_gpiod_table, ptr @.str.51, ptr @wm5102_gpiod_table, ptr @.str.53, ptr @.str.54, ptr @wm8994_gpiod_table], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gf_mods to i32), i32 728, i32 896, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wlf_gf_module_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5110_spi_devs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm6230_i2c_devs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1253_devs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balblair_devs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1254_devs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1259_devs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1255_devs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1277_devs to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_reva_spi_devs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_spi_devs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_i2c to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_reva_pdata to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_spi_csinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_pdata to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_csinfo to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8996_retune to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5100_pdata to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo1 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_ldo2 to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_pdata to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_pdata to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm2200_pdata to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_reva_gpiod_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm5102_gpiod_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_gpiod_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wlf_gf_module_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %0 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %0, -4096
  %1 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %entry.return_crit_edge [
    i32 910163968, label %entry.if.end_crit_edge
    i32 910229504, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %call3 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wlf_gf_module_driver) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wlf_gf_module_probe(ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %call, 2
  %0 = and i32 %and, 63
  %and1 = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp14 = icmp eq i32 %and1, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.092 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 4
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %conv)
  %cmp4 = icmp eq i32 %0, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %i.092)
  %cmp9.not = icmp ne i32 %i.092, 23
  %brmerge = select i1 %cmp9.not, i1 true, i1 %cmp14
  %or.cond = select i1 %cmp4, i1 %brmerge, i1 false
  br i1 %or.cond, label %do.end23, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %do.end54.critedge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end23:                                         ; preds = %for.body
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm5102_reva_gpiod_table) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm5102_gpiod_table) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm8994_gpiod_table) #5
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %name = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 2
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %add = add nuw nsw i32 %and1, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev24, ptr noundef nonnull @.str.7, ptr noundef %4, i32 noundef %add) #8
  %5 = and i32 %i.092, 1073741823
  %6 = lshr i32 39585792, %5
  %7 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2894.not = icmp eq i32 %7, 0
  br i1 %cmp2894.not, label %do.end23.for.end43_crit_edge, label %for.body30.lr.ph

do.end23.for.end43_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43

for.body30.lr.ph:                                 ; preds = %do.end23
  %num_i2c_devs = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 4
  %8 = ptrtoint ptr %num_i2c_devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_i2c_devs, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %i2c_devs = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 3
  %10 = ptrtoint ptr %i2c_devs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_devs, align 4
  %smax = call i32 @llvm.smax.i32(i32 %9, i32 1)
  br label %for.body30

for.body30:                                       ; preds = %for.inc41.for.body30_crit_edge, %for.body30.lr.ph
  %j.095 = phi i32 [ 0, %for.body30.lr.ph ], [ %inc42, %for.inc41.for.body30_crit_edge ]
  %12 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter, align 8
  %arrayidx32 = getelementptr %struct.i2c_board_info, ptr %11, i32 %j.095
  %call33 = tail call ptr @i2c_new_client_device(ptr noundef %13, ptr noundef %arrayidx32) #5
  %cmp.i = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end38, label %for.body30.for.inc41_crit_edge

for.body30.for.inc41_crit_edge:                   ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc41

do.end38:                                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.11) #8
  br label %for.inc41

for.inc41:                                        ; preds = %do.end38, %for.body30.for.inc41_crit_edge
  %inc42 = add nuw nsw i32 %j.095, 1
  %exitcond99.not = icmp eq i32 %inc42, %smax
  br i1 %exitcond99.not, label %for.inc41.for.end43_crit_edge, label %for.inc41.for.body30_crit_edge

for.inc41.for.body30_crit_edge:                   ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body30

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end43

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %do.end23.for.end43_crit_edge
  %spi_devs = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 5
  %14 = ptrtoint ptr %spi_devs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %spi_devs, align 4
  %num_spi_devs = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 6
  %16 = ptrtoint ptr %num_spi_devs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_spi_devs, align 4
  %call46 = tail call i32 @spi_register_board_info(ptr noundef %15, i32 noundef %17) #5
  %18 = add nsw i32 %i.092, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %18)
  %tobool.not = icmp ult i32 %18, -3
  br i1 %tobool.not, label %for.end43.cleanup_crit_edge, label %if.then48

for.end43.cleanup_crit_edge:                      ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then48:                                        ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #7
  %gpiod_table = getelementptr [26 x %struct.anon.86], ptr @gf_mods, i32 0, i32 %i.092, i32 7
  %19 = ptrtoint ptr %gpiod_table to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpiod_table, align 4
  tail call void @gpiod_add_lookup_table(ptr noundef %20) #5
  br label %cleanup

do.end54.critedge:                                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm5102_reva_gpiod_table) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm5102_gpiod_table) #5
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @wm8994_gpiod_table) #5
  %dev55 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %add56 = add nuw nsw i32 %and1, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev55, ptr noundef nonnull @.str.14, i32 noundef %0, i32 noundef %add56) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end54.critedge, %if.then48, %for.end43.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.end43.cleanup_crit_edge ], [ 0, %if.then48 ], [ 0, %do.end54.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_board_info(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !143, !145, !147, !149, !151, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__initcall__kmod_mach_crag6410_module__290_445_wlf_gf_module_register6, !1, !"__initcall__kmod_mach_crag6410_module__290_445_wlf_gf_module_register6", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 445, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 432, i32 11}
!4 = !{ptr @wlf_gf_module_driver, !5, !"wlf_gf_module_driver", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 430, i32 26}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 387, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @wlf_gf_module_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @wlf_gf_module_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 403, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wlf_gf_module_probe._entry.6, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @wlf_gf_module_probe._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 409, i32 5}
!21 = !{ptr @wlf_gf_module_probe._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @wlf_gf_module_probe._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 418, i32 3}
!25 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @wlf_gf_module_probe._entry.13, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @wlf_gf_module_probe._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 334, i32 37}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 335, i32 37}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 336, i32 37}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 337, i32 37}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 338, i32 37}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 341, i32 37}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 342, i32 37}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 343, i32 37}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 344, i32 37}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 345, i32 37}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 346, i32 37}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 347, i32 37}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 350, i32 37}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 351, i32 37}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 352, i32 37}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 354, i32 37}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 355, i32 37}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 356, i32 37}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 359, i32 37}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 361, i32 37}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 363, i32 37}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 365, i32 37}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 366, i32 37}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 369, i32 34}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 377, i32 35}
!78 = !{ptr @gf_mods, !79, !"gf_mods", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 333, i32 3}
!80 = !{ptr @wm5110_spi_devs, !81, !"wm5110_spi_devs", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 292, i32 30}
!82 = !{ptr @wm5102_reva_pdata, !83, !"wm5102_reva_pdata", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 221, i32 29}
!84 = !{ptr @codec_spi_csinfo, !85, !"codec_spi_csinfo", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 232, i32 34}
!86 = !{ptr @wm6230_i2c_devs, !87, !"wm6230_i2c_devs", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 306, i32 36}
!88 = !{ptr @wm9081_pdata, !89, !"wm9081_pdata", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 152, i32 28}
!90 = !{ptr @wm1253_devs, !91, !"wm1253_devs", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 44, i32 30}
!92 = !{ptr @wm0010_pdata, !93, !"wm0010_pdata", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 39, i32 28}
!94 = !{ptr @wm0010_spi_csinfo, !95, !"wm0010_spi_csinfo", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 35, i32 34}
!96 = !{ptr @balblair_devs, !97, !"balblair_devs", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 57, i32 30}
!98 = !{ptr @wm1254_devs, !99, !"wm1254_devs", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 157, i32 36}
!100 = !{ptr @wm8996_pdata, !101, !"wm8996_pdata", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 119, i32 28}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 100, i32 11}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 109, i32 11}
!106 = !{ptr @wm8996_retune, !107, !"wm8996_retune", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 98, i32 43}
!108 = !{ptr @wm1259_devs, !109, !"wm1259_devs", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 175, i32 36}
!110 = !{ptr @wm8962_pdata, !111, !"wm8962_pdata", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 140, i32 28}
!112 = !{ptr @wm1255_devs, !113, !"wm1255_devs", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 166, i32 36}
!114 = !{ptr @wm5100_pdata, !115, !"wm5100_pdata", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 70, i32 28}
!116 = !{ptr @.str.44, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 206, i32 16}
!118 = !{ptr @wm1277_devs, !119, !"wm1277_devs", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 202, i32 36}
!120 = !{ptr @wm8994_pdata, !121, !"wm8994_pdata", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 190, i32 28}
!122 = !{ptr @.str.46, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 183, i32 22}
!124 = !{ptr @wm8994_ldo1, !125, !"wm8994_ldo1", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 182, i32 35}
!126 = !{ptr @wm8994_ldo2, !127, !"wm8994_ldo2", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 186, i32 35}
!128 = !{ptr @wm5102_reva_spi_devs, !129, !"wm5102_reva_spi_devs", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 236, i32 30}
!130 = !{ptr @wm5102_spi_devs, !131, !"wm5102_spi_devs", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 269, i32 30}
!132 = !{ptr @wm5102_pdata, !133, !"wm5102_pdata", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 259, i32 29}
!134 = !{ptr @wm2200_i2c, !135, !"wm2200_i2c", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 318, i32 36}
!136 = !{ptr @wm2200_pdata, !137, !"wm2200_pdata", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 311, i32 28}
!138 = !{ptr @.str.47, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 251, i32 12}
!140 = !{ptr @.str.48, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 253, i32 3}
!142 = !{ptr @.str.49, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @wm5102_reva_gpiod_table, !144, !"wm5102_reva_gpiod_table", i1 false, i1 false}
!144 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 250, i32 34}
!145 = !{ptr @.str.51, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 286, i32 3}
!147 = !{ptr @wm5102_gpiod_table, !148, !"wm5102_gpiod_table", i1 false, i1 false}
!148 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 283, i32 34}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 211, i32 12}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 215, i32 3}
!153 = !{ptr @wm8994_gpiod_table, !154, !"wm8994_gpiod_table", i1 false, i1 false}
!154 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 210, i32 34}
!155 = !{ptr @wlf_gf_module_id, !156, !"wlf_gf_module_id", i1 false, i1 false}
!156 = !{!"../arch/arm/mach-s3c/mach-crag6410-module.c", i32 425, i32 35}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
