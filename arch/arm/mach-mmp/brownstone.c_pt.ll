; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/brownstone.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/brownstone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.machine_desc = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spinlock = type { %union.anon.9 }
%union.anon.9 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pxa_gpio_platform_data = type { i32, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sdhci_pxa_platdata = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.sram_platdata = type { ptr, i32 }
%struct.pxa_device_desc = type { ptr, ptr, i32, i32, i32, i32, [2 x i32] }
%struct.max8925_platform_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.regulator_consumer_supply = type { ptr, ptr }
%struct.regulator_state = type { i32, i32, i32, i32, i32, i8 }
%struct.notification_limit = type { i32, i32, i32 }
%struct.gpiod_lookup = type { ptr, i16, ptr, i32, i32 }
%struct.fixed_voltage_config = type { ptr, ptr, i32, i32, i32, i8, ptr }

@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Brownstone Development Platform\00", [32 x i8] zeroinitializer }, align 32
@__mach_desc_BROWNSTONE = internal constant %struct.machine_desc { i32 2957, ptr @.str, i32 0, ptr null, i32 360, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mmp_map_io, ptr null, ptr @mmp2_init_irq, ptr @mmp2_timer_init, ptr @brownstone_init, ptr null, ptr null, ptr @mmp_restart }, section ".arch.info.init", align 4
@brownstone_pin_config = internal global [54 x i32] [i32 361501, i32 361502, i32 361523, i32 361524, i32 360616, i32 360615, i32 360614, i32 360613, i32 360555, i32 360554, i32 360553, i32 360552, i32 360559, i32 360612, i32 360611, i32 360610, i32 360609, i32 360558, i32 360557, i32 360556, i32 360591, i32 360592, i32 360595, i32 360596, i32 360598, i32 360597, i32 360560, i32 360608, i32 1409369, i32 4572291, i32 4572292, i32 4572293, i32 4572294, i32 4572296, i32 377995, i32 2475148, i32 2475149, i32 4572197, i32 4572198, i32 4572199, i32 4572200, i32 4572201, i32 377898, i32 4573349, i32 4573346, i32 4573350, i32 4573347, i32 4573351, i32 4573348, i32 4573352, i32 4573295, i32 4573296, i32 379031, i32 360537], section ".init.data", align 4
@mmp2_device_gpio = external dso_local global %struct.platform_device, align 8
@mmp2_gpio_pdata = internal global { %struct.pxa_gpio_platform_data, [24 x i8] } { %struct.pxa_gpio_platform_data { i32 128, ptr null }, [24 x i8] zeroinitializer }, align 32
@brownstone_twsi1_info = internal global { [2 x %struct.i2c_board_info], [48 x i8] } { [2 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"max8649\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 96, ptr null, ptr @brownstone_max8649_info, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"max8925\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 60, ptr null, ptr @brownstone_max8925_info, ptr null, ptr null, ptr null, ptr null, i32 0, i32 65 }], [48 x i8] zeroinitializer }, align 32
@mmp2_sdh_platdata_mmc0 = internal global { %struct.sdhci_pxa_platdata, [56 x i8] } { %struct.sdhci_pxa_platdata { i32 0, i32 31, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mmp2_sdh_platdata_mmc2 = internal global { %struct.sdhci_pxa_platdata, [56 x i8] } { %struct.sdhci_pxa_platdata { i32 6, i32 31, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@mmp2_asram_platdata = internal global { %struct.sram_platdata, [24 x i8] } { %struct.sram_platdata { ptr @.str.5, i32 512 }, [24 x i8] zeroinitializer }, align 32
@mmp2_isram_platdata = internal global { %struct.sram_platdata, [24 x i8] } { %struct.sram_platdata { ptr @.str.6, i32 512 }, [24 x i8] zeroinitializer }, align 32
@brownstone_v_5vp_device = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.10, i32 1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brownstone_v_5vp, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@mmp2_device_uart1 = external dso_local global %struct.pxa_device_desc, align 4
@mmp2_device_uart3 = external dso_local global %struct.pxa_device_desc, align 4
@mmp2_device_twsi1 = external dso_local global %struct.pxa_device_desc, align 4
@brownstone_max8925_info = internal global { %struct.max8925_platform_data, [48 x i8] } { %struct.max8925_platform_data { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 320, i32 0 }, [48 x i8] zeroinitializer }, align 32
@brownstone_max8649_info = internal global { { ptr, i8, i8 }, [24 x i8] } { { ptr, i8, i8 } { ptr @max8649_init_data, i8 -128, i8 0 }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vcc_core range\00", [17 x i8] zeroinitializer }, align 32
@max8649_supply = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.4 }], [24 x i8] zeroinitializer }, align 32
@max8649_init_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr @.str.2, i32 1150000, i32 1280000, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 1, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 -64, i8 0 }, i32 1, ptr @max8649_supply, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vcc_core\00", [23 x i8] zeroinitializer }, align 32
@mmp2_device_sdh0 = external dso_local global %struct.pxa_device_desc, align 4
@mmp2_device_sdh2 = external dso_local global %struct.pxa_device_desc, align 4
@mmp2_device_asram = external dso_local global %struct.pxa_device_desc, align 4
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"asram\00", [26 x i8] zeroinitializer }, align 32
@mmp2_device_isram = external dso_local global %struct.pxa_device_desc, align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isram\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"reg-fixed-voltage.1\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-pxa\00", [23 x i8] zeroinitializer }, align 32
@brownstone_v_5vp_gpiod_table = internal global { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] }, [44 x i8] } { { %struct.list_head, ptr, [2 x %struct.gpiod_lookup] } { %struct.list_head zeroinitializer, ptr @.str.7, [2 x %struct.gpiod_lookup] [%struct.gpiod_lookup { ptr @.str.8, i16 89, ptr null, i32 0, i32 0 }, %struct.gpiod_lookup zeroinitializer] }, [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"reg-fixed-voltage\00", [46 x i8] zeroinitializer }, align 32
@brownstone_v_5vp = internal global { %struct.fixed_voltage_config, [36 x i8] } { %struct.fixed_voltage_config { ptr @.str.11, ptr null, i32 5000000, i32 0, i32 0, i8 -128, ptr @brownstone_v_5vp_data }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"v_5vp\00", [26 x i8] zeroinitializer }, align 32
@brownstone_v_5vp_supplies = internal global { [1 x %struct.regulator_consumer_supply], [24 x i8] } { [1 x %struct.regulator_consumer_supply] [%struct.regulator_consumer_supply { ptr null, ptr @.str.11 }], [24 x i8] zeroinitializer }, align 32
@brownstone_v_5vp_data = internal global { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr }, [60 x i8] } { { ptr, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }, i32, ptr, ptr, ptr } { ptr null, { ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, %struct.regulator_state, %struct.regulator_state, %struct.regulator_state, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, %struct.notification_limit, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 } { ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 8, i32 0, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.regulator_state zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, %struct.notification_limit zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0 }, i32 1, ptr @brownstone_v_5vp_supplies, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 229, i32 1 }
@___asan_gen_.16 = private unnamed_addr constant [16 x i8] c"mmp2_gpio_pdata\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 106, i32 38 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"brownstone_twsi1_info\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 174, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [23 x i8] c"mmp2_sdh_platdata_mmc0\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 188, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [23 x i8] c"mmp2_sdh_platdata_mmc2\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 192, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"mmp2_asram_platdata\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 198, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"mmp2_isram_platdata\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 203, i32 29 }
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"brownstone_v_5vp_device\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 153, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"brownstone_max8925_info\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 170, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"brownstone_max8649_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 127, i32 37 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 116, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"max8649_supply\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 110, i32 41 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"max8649_init_data\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 114, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 111, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 199, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 204, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 162, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 164, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"brownstone_v_5vp_gpiod_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 161, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 154, i32 11 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"brownstone_v_5vp\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 146, i32 36 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 147, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"brownstone_v_5vp_supplies\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 134, i32 41 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"brownstone_v_5vp_data\00", align 1
@___asan_gen_.83 = private constant [34 x i8] c"../arch/arm/mach-mmp/brownstone.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 138, i32 35 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__mach_desc_BROWNSTONE, ptr @.str, ptr @mmp2_gpio_pdata, ptr @brownstone_twsi1_info, ptr @mmp2_sdh_platdata_mmc0, ptr @mmp2_sdh_platdata_mmc2, ptr @mmp2_asram_platdata, ptr @mmp2_isram_platdata, ptr @brownstone_v_5vp_device, ptr @brownstone_max8925_info, ptr @brownstone_max8649_info, ptr @.str.2, ptr @max8649_supply, ptr @max8649_init_data, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @brownstone_v_5vp_gpiod_table, ptr @.str.10, ptr @brownstone_v_5vp, ptr @.str.11, ptr @brownstone_v_5vp_supplies, ptr @brownstone_v_5vp_data], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_gpio_pdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_twsi1_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_sdh_platdata_mmc0 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_sdh_platdata_mmc2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_asram_platdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_isram_platdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_v_5vp_device to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_max8925_info to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_max8649_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8649_supply to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8649_init_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_v_5vp_gpiod_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_v_5vp to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_v_5vp_supplies to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brownstone_v_5vp_data to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp_map_io() #0 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmp2_init_irq() #0 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp2_timer_init() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brownstone_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mfp_config(ptr noundef nonnull @brownstone_pin_config, i32 noundef 54) #3
  %call.i = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_uart1, ptr noundef null, i32 noundef 0) #3
  %call.i10 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_uart3, ptr noundef null, i32 noundef 0) #3
  %call2 = tail call i32 @platform_device_add_data(ptr noundef nonnull @mmp2_device_gpio, ptr noundef nonnull @mmp2_gpio_pdata, i32 noundef 8) #3
  %call3 = tail call i32 @platform_device_register(ptr noundef nonnull @mmp2_device_gpio) #3
  %call.i11 = tail call i32 @i2c_register_board_info(i32 noundef 0, ptr noundef nonnull @brownstone_twsi1_info, i32 noundef 2) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %tobool.not.i = icmp eq i32 %call.i11, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.mmp2_add_twsi.exit_crit_edge

entry.mmp2_add_twsi.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %mmp2_add_twsi.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call6.i = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_twsi1, ptr noundef null, i32 noundef 12) #3
  br label %mmp2_add_twsi.exit

mmp2_add_twsi.exit:                               ; preds = %if.end.i, %entry.mmp2_add_twsi.exit_crit_edge
  %call.i12 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_sdh0, ptr noundef nonnull @mmp2_sdh_platdata_mmc0, i32 noundef 40) #3
  %call.i13 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_sdh2, ptr noundef nonnull @mmp2_sdh_platdata_mmc2, i32 noundef 40) #3
  %call.i14 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_asram, ptr noundef nonnull @mmp2_asram_platdata, i32 noundef 8) #3
  %call.i15 = tail call i32 @pxa_register_device(ptr noundef nonnull @mmp2_device_isram, ptr noundef nonnull @mmp2_isram_platdata, i32 noundef 8) #3
  tail call void @gpiod_add_lookup_table(ptr noundef nonnull @brownstone_v_5vp_gpiod_table) #3
  %call9 = tail call i32 @platform_device_register(ptr noundef nonnull @brownstone_v_5vp_device) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp_restart(i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mfp_config(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add_data(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_add_lookup_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pxa_register_device(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_board_info(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 229, i32 1}
!2 = !{ptr @__mach_desc_BROWNSTONE, !1, !"__mach_desc_BROWNSTONE", i1 false, i1 false}
!3 = !{ptr @brownstone_pin_config, !4, !"brownstone_pin_config", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 34, i32 22}
!5 = !{ptr @mmp2_gpio_pdata, !6, !"mmp2_gpio_pdata", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 106, i32 38}
!7 = !{ptr @brownstone_twsi1_info, !8, !"brownstone_twsi1_info", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 174, i32 30}
!9 = !{ptr @brownstone_max8649_info, !10, !"brownstone_max8649_info", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 127, i32 37}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 116, i32 12}
!13 = !{ptr @max8649_init_data, !14, !"max8649_init_data", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 114, i32 35}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 111, i32 2}
!17 = !{ptr @max8649_supply, !18, !"max8649_supply", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 110, i32 41}
!19 = !{ptr @brownstone_max8925_info, !20, !"brownstone_max8925_info", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 170, i32 37}
!21 = !{ptr @mmp2_sdh_platdata_mmc0, !22, !"mmp2_sdh_platdata_mmc0", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 188, i32 34}
!23 = !{ptr @mmp2_sdh_platdata_mmc2, !24, !"mmp2_sdh_platdata_mmc2", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 192, i32 34}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 199, i32 15}
!27 = !{ptr @mmp2_asram_platdata, !28, !"mmp2_asram_platdata", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 198, i32 29}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 204, i32 15}
!31 = !{ptr @mmp2_isram_platdata, !32, !"mmp2_isram_platdata", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 203, i32 29}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 162, i32 12}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 164, i32 3}
!37 = !{ptr @brownstone_v_5vp_gpiod_table, !38, !"brownstone_v_5vp_gpiod_table", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 161, i32 34}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 154, i32 11}
!41 = !{ptr @brownstone_v_5vp_device, !42, !"brownstone_v_5vp_device", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 153, i32 31}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 147, i32 18}
!45 = !{ptr @brownstone_v_5vp, !46, !"brownstone_v_5vp", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 146, i32 36}
!47 = !{ptr @brownstone_v_5vp_data, !48, !"brownstone_v_5vp_data", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 138, i32 35}
!49 = !{ptr @brownstone_v_5vp_supplies, !50, !"brownstone_v_5vp_supplies", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-mmp/brownstone.c", i32 134, i32 41}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
