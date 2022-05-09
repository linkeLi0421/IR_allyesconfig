; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/board-n8x0.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/board-n8x0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.menelaus_platform_data = type { ptr }
%struct.aic3x_pdata = type { i32, ptr, i32 }
%struct.spi_board_info = type { [32 x i8], ptr, ptr, ptr, i32, i32, i16, i16, i32 }
%struct.omap_mmc_platform_data = type { ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, i8, i16, [2 x %struct.omap_mmc_slot_data] }
%struct.omap_mmc_slot_data = type { i8, i32, i32, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.gpio = type { i32, i32, ptr }
%struct.musb_hdrc_platform_data = type { i8, ptr, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr }
%struct.musb_hdrc_config = type { ptr, i32, i8, i8, i8, i32 }
%struct.omap2_mcspi_device_config = type { i8, [3 x i8] }
%struct.atomic_t = type { i32 }

@n8x0_menelaus_platform_data = dso_local global { %struct.menelaus_platform_data, [28 x i8] } { %struct.menelaus_platform_data { ptr @n8x0_menelaus_late_init }, [28 x i8] zeroinitializer }, align 32
@n810_aic33_data = dso_local global { %struct.aic3x_pdata, [20 x i8] } { %struct.aic3x_pdata { i32 118, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_board_n8x0__307_584___n8x0_late_initcall7 = internal global ptr @__n8x0_late_initcall, section ".initcall7.init", align 4
@n800_spi_board_info = internal global [1 x %struct.spi_board_info] [%struct.spi_board_info { [32 x i8] c"p54spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @p54spi_mcspi_config, i32 0, i32 48000000, i16 2, i16 0, i32 0 }], section ".init.data", align 4
@mmc1_data = internal global { %struct.omap_mmc_platform_data, [36 x i8] } { %struct.omap_mmc_platform_data { ptr null, i8 0, i32 24000000, ptr @n8x0_mmc_switch_slot, ptr @n8x0_mmc_late_init, ptr @n8x0_mmc_cleanup, ptr @n8x0_mmc_shutdown, ptr null, i8 0, i16 0, [2 x %struct.omap_mmc_slot_data] [%struct.omap_mmc_slot_data { i8 4, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr @n8x0_mmc_set_bus_mode, ptr @n8x0_mmc_set_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @n8x0_mmc_get_cover_state, ptr @.str.6, i32 3408000, ptr null, i8 0 }, %struct.omap_mmc_slot_data { i8 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, ptr @n8x0_mmc_set_bus_mode, ptr @n8x0_mmc_set_power, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @n8x0_mmc_get_cover_state, ptr @.str.5, i32 3645312, ptr null, i8 0 }] }, [36 x i8] zeroinitializer }, align 32
@n8x0_auto_voltage_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Could not set VCORE voltage on menelaus: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"n8x0_auto_voltage_scale\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"arch/arm/mach-omap2/board-n8x0.c\00", [63 x i8] zeroinitializer }, align 32
@n8x0_auto_voltage_scale._entry_ptr = internal global ptr @n8x0_auto_voltage_scale._entry, section ".printk_index", align 4
@n8x0_auto_sleep_regulators._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Could not set regulators to sleep on menelaus: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"n8x0_auto_sleep_regulators\00", [37 x i8] zeroinitializer }, align 32
@n8x0_auto_sleep_regulators._entry_ptr = internal global ptr @n8x0_auto_sleep_regulators._entry, section ".printk_index", align 4
@board_caps = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMC slot switch\00", [16 x i8] zeroinitializer }, align 32
@n810_emmc_gpios = internal global [2 x %struct.gpio] [%struct.gpio { i32 23, i32 0, ptr @.str.8 }, %struct.gpio { i32 9, i32 0, ptr @.str.9 }], section ".init.data", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MMC slot 2 Vddf\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MMC slot 2 Vdd\00", [17 x i8] zeroinitializer }, align 32
@n8x0_usb_init.announce = internal constant [13 x i8] c"\016TUSB 6010\0A\00", section ".init.rodata", align 1
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TUSB6010 enable\00", [16 x i8] zeroinitializer }, align 32
@n8x0_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Could not get TUSB power GPIO%i\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"n8x0_usb_init\00", [18 x i8] zeroinitializer }, align 32
@n8x0_usb_init._entry_ptr = internal global ptr @n8x0_usb_init._entry, section ".printk_index", align 4
@tusb_data = internal global { %struct.musb_hdrc_platform_data, [32 x i8] } { %struct.musb_hdrc_platform_data { i8 3, ptr null, ptr null, i8 100, i8 25, i8 0, i8 0, ptr @tusb_set_power, ptr @musb_config, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@n8x0_usb_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr null, ptr @.str.12, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@n8x0_usb_init._entry_ptr.14 = internal global ptr @n8x0_usb_init._entry.13, section ".printk_index", align 4
@tusb_set_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013tusb: powerup failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tusb_set_power\00", [17 x i8] zeroinitializer }, align 32
@tusb_set_power._entry_ptr = internal global ptr @tusb_set_power._entry, section ".printk_index", align 4
@musb_config = internal global { %struct.musb_hdrc_config, [16 x i8] } { %struct.musb_hdrc_config { ptr null, i32 0, i8 -64, i8 16, i8 12, i32 0 }, [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia,n800\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia,n810\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nokia,n810-wimax\00", [47 x i8] zeroinitializer }, align 32
@board_check_revision._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013Unknown board\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"board_check_revision\00", [43 x i8] zeroinitializer }, align 32
@board_check_revision._entry_ptr = internal global ptr @board_check_revision._entry, section ".printk_index", align 4
@p54spi_mcspi_config = internal global { %struct.omap2_mcspi_device_config, [28 x i8] } { %struct.omap2_mcspi_device_config { i8 0, [3 x i8] undef }, [28 x i8] zeroinitializer }, align 32
@n8x0_mmc_switch_slot.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"board_n8x0\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"n8x0_mmc_switch_slot\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Choose slot %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mmc_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@slot2_cover_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@slot1_cover_open = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n8x0_mmc_set_bus_mode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.2, ptr @.str.26, i8 0, i8 73, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"n8x0_mmc_set_bus_mode\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Set slot %d bus mode %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open-drain\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push-pull\00", [22 x i8] zeroinitializer }, align 32
@n8x0_mmc_set_bus_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.25, ptr @.str.2, i32 309, ptr @.str.30, ptr @.str.31 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"MMC: unable to set bus mode for slot %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@n8x0_mmc_set_bus_mode._entry_ptr = internal global ptr @n8x0_mmc_set_bus_mode._entry, section ".printk_index", align 4
@n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.32, ptr @.str.2, ptr @.str.33, i8 0, i8 49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"n8x0_mmc_set_power_menelaus\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Set slot %d power: %s (vdd %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@n810_set_power_emmc.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"n810_set_power_emmc\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Set EMMC power %s\0A\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [8 x i64] [i64 6, i64 32, i64 128, i64 65536, i64 262144, i64 524288, i64 1048576, i64 2097152]
@__sancov_gen_cov_switch_values.39 = internal global [14 x i64] [i64 12, i64 32, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 32768, i64 65536, i64 131072, i64 262144, i64 1048576, i64 2097152]
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"n8x0_menelaus_platform_data\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 566, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"n810_aic33_data\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 570, i32 20 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"mmc1_data\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 435, i32 38 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 540, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 527, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"board_caps\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 45, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 477, i32 29 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 485, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 490, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 468, i32 45 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 469, i32 45 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 119, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 121, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"tusb_data\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 104, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 133, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 86, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"musb_config\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 97, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 53, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 55, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 57, i32 36 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 61, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"p54spi_mcspi_config\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 147, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 185, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"mmc_device\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 180, i32 23 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"slot2_cover_open\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 179, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"slot1_cover_open\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 178, i32 12 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 293, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 308, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 197, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [36 x i8] c"../arch/arm/mach-omap2/board-n8x0.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 263, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__initcall__kmod_board_n8x0__307_584___n8x0_late_initcall7, ptr @__n8x0_late_initcall, ptr @board_check_revision._entry, ptr @board_check_revision._entry_ptr, ptr @n8x0_auto_sleep_regulators._entry, ptr @n8x0_auto_sleep_regulators._entry_ptr, ptr @n8x0_auto_voltage_scale._entry, ptr @n8x0_auto_voltage_scale._entry_ptr, ptr @n8x0_mmc_set_bus_mode._entry, ptr @n8x0_mmc_set_bus_mode._entry_ptr, ptr @n8x0_usb_init._entry, ptr @n8x0_usb_init._entry.13, ptr @n8x0_usb_init._entry_ptr, ptr @n8x0_usb_init._entry_ptr.14, ptr @tusb_set_power._entry, ptr @tusb_set_power._entry_ptr, ptr @n8x0_menelaus_platform_data, ptr @n810_aic33_data, ptr @mmc1_data, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @board_caps, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tusb_data, ptr @.str.15, ptr @.str.16, ptr @musb_config, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @p54spi_mcspi_config, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @mmc_device, ptr @slot2_cover_open, ptr @slot1_cover_open, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_menelaus_platform_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_aic33_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc1_data to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_auto_voltage_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_auto_sleep_regulators._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_caps to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_data to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_usb_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tusb_set_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @musb_config to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @board_check_revision._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p54spi_mcspi_config to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot2_cover_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slot1_cover_open to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n8x0_mmc_set_bus_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_menelaus_late_init(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @menelaus_set_vcore_hw(i32 noundef 1400, i32 noundef 1050) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %n8x0_auto_voltage_scale.exit.thread, label %if.end

n8x0_auto_voltage_scale.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i8 = tail call i32 @menelaus_set_regulator_sleep(i32 noundef 1, i32 noundef 255) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %cmp.i9 = icmp slt i32 %call.i8, 0
  br i1 %cmp.i9, label %0, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

0:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call.i8) #7
  br label %cleanup

cleanup:                                          ; preds = %0, %if.end.cleanup_crit_edge, %n8x0_auto_voltage_scale.exit.thread
  %retval.0 = phi i32 [ %call.i, %n8x0_auto_voltage_scale.exit.thread ], [ %call.i8, %0 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @__n8x0_late_initcall() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call fastcc i32 @n8x0_late_initcall() #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @n8x0_late_initcall() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @board_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @n8x0_mmc_init() #8
  tail call fastcc void @n8x0_usb_init() #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local nonnull ptr @n8x0_legacy_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store i32 1, ptr @board_caps, align 4
  br label %board_check_revision.exit

if.else.i:                                        ; preds = %entry
  %call1.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 2, ptr @board_caps, align 4
  br label %board_check_revision.exit

if.else4.i:                                       ; preds = %if.else.i
  %call5.i = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.19) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end9.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else4.i
  call void @__sanitizer_cov_trace_pc() #6
  store i32 4, ptr @board_caps, align 4
  br label %board_check_revision.exit

if.end9.i:                                        ; preds = %if.else4.i
  %.pr.i = load i32, ptr @board_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool10.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool10.not.i, label %do.end.i, label %if.end9.i.board_check_revision.exit_crit_edge

if.end9.i.board_check_revision.exit_crit_edge:    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %board_check_revision.exit

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #6
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #7
  br label %board_check_revision.exit

board_check_revision.exit:                        ; preds = %do.end.i, %if.end9.i.board_check_revision.exit_crit_edge, %if.then7.i, %if.then3.i, %if.then.i
  %call = tail call i32 @spi_register_board_info(ptr noundef nonnull @n800_spi_board_info, i32 noundef 1) #4
  ret ptr @mmc1_data
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_board_info(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_vcore_hw(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_regulator_sleep(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n8x0_mmc_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @board_caps, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  store ptr @.str.5, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 10, i32 0, i32 15), align 4
  store ptr @.str.6, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 10, i32 1, i32 15), align 4
  %bf.load = load i8, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 10, i32 1, i32 18), align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 10, i32 1, i32 18), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call = tail call i32 @gpio_request_one(i32 noundef 96, i32 noundef 0, ptr noundef nonnull @.str.7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = load i32, ptr @board_caps, align 4
  %and4 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end11_crit_edge, label %if.then6

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  %call7 = tail call i32 @gpio_request_array(ptr noundef nonnull @n810_emmc_gpios, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.if.end11_crit_edge, label %if.then9

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpio_free(i32 noundef 96) #4
  br label %cleanup

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %bf.load12 = load i8, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 1), align 4
  %bf.clear13 = and i8 %bf.load12, 63
  %bf.set14 = or i8 %bf.clear13, -128
  store i8 %bf.set14, ptr getelementptr inbounds (%struct.omap_mmc_platform_data, ptr @mmc1_data, i32 0, i32 1), align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n8x0_usb_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @gpio_request_one(i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @tusb_set_power(i32 noundef 0)
  %call3 = tail call i32 @tusb6010_setup_interface(ptr noundef nonnull @tusb_data, i32 noundef 52083, i32 noundef 2, i32 noundef 1, i32 noundef 4, i32 noundef 58, i32 noundef 63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 0
  br i1 %cmp4.not, label %do.end11, label %err

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @n8x0_usb_init.announce) #7
  br label %cleanup

err:                                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpio_free(i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end11, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_one(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_array(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tusb_set_power(i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %call.i11 = tail call ptr @gpio_to_desc(i32 noundef 0) #4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @gpiod_set_raw_value(ptr noundef %call.i11, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 1) #4
  br label %land.rhs

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %if.then
  %i.012 = phi i32 [ 100, %if.then ], [ %dec, %while.body.land.rhs_crit_edge ]
  %call.i10 = tail call ptr @gpio_to_desc(i32 noundef 58) #4
  %call1.i = tail call i32 @gpiod_get_raw_value(ptr noundef %call.i10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  br i1 %tobool3.not, label %land.rhs.if.end7_crit_edge, label %while.body

land.rhs.if.end7_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

while.body:                                       ; preds = %land.rhs
  tail call void @msleep(i32 noundef 1) #4
  %dec = add nsw i32 %i.012, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %do.end.critedge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.rhs

do.end.critedge:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #7
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpiod_set_raw_value(ptr noundef %call.i11, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 10) #4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %do.end.critedge, %land.rhs.if.end7_crit_edge
  %retval1.0 = phi i32 [ -19, %do.end.critedge ], [ 0, %if.else ], [ 0, %land.rhs.if.end7_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @tusb6010_setup_interface(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_mmc_switch_slot(ptr noundef %dev, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n8x0_mmc_switch_slot.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n8x0_mmc_switch_slot, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %slot, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n8x0_mmc_switch_slot.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %add) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 96) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %slot) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_mmc_late_init(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %dev, ptr @mmc_device, align 4
  %call = tail call i32 @menelaus_set_slot_sel(i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @board_caps, align 4
  %and = shl i32 %0, 1
  %1 = and i32 %and, 2
  %2 = xor i32 %1, 2
  %call3 = tail call i32 @menelaus_set_mmc_slot(i32 noundef 2, i32 noundef 0, i32 noundef %2, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n8x0_mmc_late_init, %if.then.i63)) #4
          to label %n8x0_mmc_set_power_menelaus.exit [label %if.then.i63], !srcloc !113

if.then.i63:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 1, ptr noundef nonnull @.str.34, i32 noundef 16) #4
  br label %n8x0_mmc_set_power_menelaus.exit

n8x0_mmc_set_power_menelaus.exit:                 ; preds = %if.then.i63, %if.end6
  %call18.i = tail call i32 @menelaus_set_vmmc(i32 noundef 2800) #4
  %3 = load i32, ptr @board_caps, align 4
  %and.i60 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60)
  %tobool.not.i61.not = icmp eq i32 %and.i60, 0
  br i1 %tobool.not.i61.not, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %n8x0_mmc_set_power_menelaus.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n8x0_mmc_late_init, %if.then.i65)) #4
          to label %n8x0_mmc_set_power_menelaus.exit67 [label %if.then.i65], !srcloc !113

if.then.i65:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef 16) #4
  br label %n8x0_mmc_set_power_menelaus.exit67

n8x0_mmc_set_power_menelaus.exit67:               ; preds = %if.then.i65, %if.then.i
  %call39.i = tail call i32 @menelaus_set_vdcdc(i32 noundef 3, i32 noundef 2800) #4
  br label %n8x0_mmc_set_power.exit

if.end.i:                                         ; preds = %n8x0_mmc_set_power_menelaus.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @n810_set_power_emmc(ptr noundef %dev, i32 noundef 2) #4
  br label %n8x0_mmc_set_power.exit

n8x0_mmc_set_power.exit:                          ; preds = %if.end.i, %n8x0_mmc_set_power_menelaus.exit67
  %call9 = tail call i32 @menelaus_set_mmc_slot(i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %n8x0_mmc_set_power.exit.cleanup_crit_edge, label %if.end12

n8x0_mmc_set_power.exit.cleanup_crit_edge:        ; preds = %n8x0_mmc_set_power.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %n8x0_mmc_set_power.exit
  %call13 = tail call i32 @menelaus_set_mmc_slot(i32 noundef 2, i32 noundef 1, i32 noundef %2, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @menelaus_get_slot_pin_states() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %4 = load i32, ptr @board_caps, align 4
  %and21 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else24, label %if.end20.if.end25_crit_edge

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  store i32 0, ptr @slot2_cover_open, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.end20.if.end25_crit_edge
  %bit.0 = phi i32 [ 1, %if.else24 ], [ 2, %if.end20.if.end25_crit_edge ]
  %openp.0 = phi ptr [ @slot1_cover_open, %if.else24 ], [ @slot2_cover_open, %if.end20.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call17)
  %cmp26 = icmp eq i32 %call17, 15
  %and27 = xor i32 %bit.0, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %and27)
  %cmp28 = icmp eq i32 %call17, %and27
  %or.cond = or i1 %cmp26, %cmp28
  %neg30 = sext i1 %or.cond to i32
  %r.0 = xor i32 %call17, %neg30
  %and32 = and i32 %r.0, %bit.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp ne i32 %and32, 0
  %storemerge = zext i1 %tobool33.not to i32
  %5 = ptrtoint ptr %openp.0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %storemerge, ptr %openp.0, align 4
  %call37 = tail call i32 @menelaus_register_mmc_callback(ptr noundef nonnull @n8x0_mmc_callback, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %n8x0_mmc_set_power.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call9, %n8x0_mmc_set_power.exit.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n8x0_mmc_cleanup(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @menelaus_unregister_mmc_callback() #4
  tail call void @gpio_free(i32 noundef 96) #4
  %0 = load i32, ptr @board_caps, align 4
  %and = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpio_free(i32 noundef 23) #4
  tail call void @gpio_free(i32 noundef 9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n8x0_mmc_shutdown(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @board_caps, align 4
  %and = shl i32 %0, 1
  %1 = and i32 %and, 2
  %2 = xor i32 %1, 2
  %call = tail call i32 @menelaus_set_mmc_slot(i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #4
  %call1 = tail call i32 @menelaus_set_mmc_slot(i32 noundef 2, i32 noundef 0, i32 noundef %2, i32 noundef 0) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_mmc_set_bus_mode(ptr noundef %dev, i32 noundef %slot, i32 noundef %bus_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n8x0_mmc_set_bus_mode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n8x0_mmc_set_bus_mode, %if.then)) #4
          to label %do.body3 [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %slot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bus_mode)
  %cmp = icmp eq i32 %bus_mode, 1
  %cond = select i1 %cmp, ptr @.str.27, ptr @.str.28
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n8x0_mmc_set_bus_mode.__UNIQUE_ID_ddebug306, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %add, ptr noundef nonnull %cond) #4
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slot)
  %0 = icmp ugt i32 %slot, 1
  br i1 %0, label %do.body13, label %do.end21, !prof !114

do.body13:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/board-n8x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 295, 0\0A.popsection", ""() #4, !srcloc !115
  unreachable

do.end21:                                         ; preds = %do.body3
  %inc = add nuw nsw i32 %slot, 1
  %1 = zext i32 %bus_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %bus_mode, label %do.body25 [
    i32 1, label %do.end21.sw.epilog_crit_edge
    i32 2, label %sw.bb23
  ]

do.end21.sw.epilog_crit_edge:                     ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb23:                                          ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body25:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/board-n8x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 305, 0\0A.popsection", ""() #4, !srcloc !116
  unreachable

sw.epilog:                                        ; preds = %sw.bb23, %do.end21.sw.epilog_crit_edge
  %.sink = phi i32 [ 0, %sw.bb23 ], [ %bus_mode, %do.end21.sw.epilog_crit_edge ]
  %call24 = tail call i32 @menelaus_set_mmc_opendrain(i32 noundef %inc, i32 noundef %.sink) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp31.not = icmp eq i32 %call24, 0
  br i1 %cmp31.not, label %sw.epilog.if.end38_crit_edge, label %land.lhs.true

sw.epilog.if.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true:                                    ; preds = %sw.epilog
  %call32 = tail call i32 @__printk_ratelimit(ptr noundef nonnull @.str.25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true.if.end38_crit_edge, label %do.end37

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

do.end37:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %inc) #7
  br label %if.end38

if.end38:                                         ; preds = %do.end37, %land.lhs.true.if.end38_crit_edge, %sw.epilog.if.end38_crit_edge
  ret i32 %call24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_mmc_set_power(ptr noundef %dev, i32 noundef %slot, i32 noundef %power_on, i32 noundef %vdd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @board_caps, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp eq i32 %slot, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @n8x0_mmc_set_power_menelaus(ptr noundef %dev, i32 noundef %slot, i32 noundef %power_on, i32 noundef %vdd)
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @n810_set_power_emmc(ptr noundef %dev, i32 noundef %power_on)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n8x0_mmc_get_cover_state(ptr nocapture noundef readnone %dev, i32 noundef %slot) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slot)
  %0 = icmp ugt i32 %slot, 1
  br i1 %0, label %do.body3, label %do.end6, !prof !114

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/board-n8x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 316, 0\0A.popsection", ""() #4, !srcloc !117
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  %slot1_cover_open.val = load i32, ptr @slot1_cover_open, align 4
  %slot2_cover_open.val = load i32, ptr @slot2_cover_open, align 4
  %retval.0 = select i1 %cmp.not, i32 %slot1_cover_open.val, i32 %slot2_cover_open.val
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_slot_sel(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_mmc_slot(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_get_slot_pin_states() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_register_mmc_callback(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n8x0_mmc_callback(ptr nocapture noundef readnone %data, i8 noundef zeroext %card_mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @board_caps, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  %slot1_cover_open.slot2_cover_open = select i1 %tobool.not, ptr @slot1_cover_open, ptr @slot2_cover_open
  %not.tobool.not = xor i1 %tobool.not, true
  %.8 = zext i1 %not.tobool.not to i32
  %conv = zext i8 %card_mask to i32
  %and1 = and i32 %., %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  %storemerge = zext i1 %tobool2.not to i32
  %1 = ptrtoint ptr %slot1_cover_open.slot2_cover_open to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %storemerge, ptr %slot1_cover_open.slot2_cover_open, align 4
  %2 = load ptr, ptr @mmc_device, align 4
  tail call void @omap_mmc_notify_cover_event(ptr noundef %2, i32 noundef %.8, i32 noundef %storemerge) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_mmc_notify_cover_event(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @menelaus_unregister_mmc_callback() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_mmc_opendrain(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__printk_ratelimit(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @n8x0_mmc_set_power_menelaus(ptr noundef %dev, i32 noundef %slot, i32 noundef %power_on, i32 noundef %vdd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n8x0_mmc_set_power_menelaus, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %slot, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool3.not = icmp eq i32 %power_on, 0
  %cond = select i1 %tobool3.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %add, ptr noundef nonnull %cond, i32 noundef %vdd) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp = icmp eq i32 %slot, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool5.not = icmp eq i32 %power_on, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %do.end
  br i1 %tobool5.not, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 @menelaus_set_vmmc(i32 noundef 0) #4
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %shl = shl nuw i32 1, %vdd
  %0 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %shl, label %do.body12 [
    i32 2097152, label %if.end8.sw.epilog_crit_edge
    i32 1048576, label %if.end8.sw.epilog_crit_edge47
    i32 524288, label %if.end8.sw.epilog_crit_edge48
    i32 262144, label %sw.bb9
    i32 65536, label %sw.bb10
    i32 128, label %sw.bb11
  ]

if.end8.sw.epilog_crit_edge48:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.sw.epilog_crit_edge47:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end8.sw.epilog_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/board-n8x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 219, 0\0A.popsection", ""() #4, !srcloc !118
  unreachable

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb10, %sw.bb9, %if.end8.sw.epilog_crit_edge, %if.end8.sw.epilog_crit_edge47, %if.end8.sw.epilog_crit_edge48
  %mV.0 = phi i32 [ 1850, %sw.bb11 ], [ 2800, %sw.bb10 ], [ 3000, %sw.bb9 ], [ 3100, %if.end8.sw.epilog_crit_edge ], [ 3100, %if.end8.sw.epilog_crit_edge47 ], [ 3100, %if.end8.sw.epilog_crit_edge48 ]
  %call18 = tail call i32 @menelaus_set_vmmc(i32 noundef %mV.0) #4
  br label %cleanup

if.else:                                          ; preds = %do.end
  br i1 %tobool5.not, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call i32 @menelaus_set_vdcdc(i32 noundef 3, i32 noundef 0) #4
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %shl23 = shl nuw i32 1, %vdd
  %1 = zext i32 %shl23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %shl23, label %do.body32 [
    i32 2097152, label %if.end22.sw.epilog38_crit_edge
    i32 1048576, label %if.end22.sw.epilog38_crit_edge49
    i32 262144, label %if.end22.sw.bb25_crit_edge
    i32 131072, label %if.end22.sw.bb25_crit_edge50
    i32 65536, label %if.end22.sw.bb26_crit_edge
    i32 32768, label %if.end22.sw.bb26_crit_edge51
    i32 4096, label %if.end22.sw.bb27_crit_edge
    i32 2048, label %if.end22.sw.bb27_crit_edge52
    i32 1024, label %if.end22.sw.bb28_crit_edge
    i32 512, label %if.end22.sw.bb28_crit_edge53
    i32 256, label %sw.bb29
    i32 128, label %sw.bb30
  ]

if.end22.sw.bb28_crit_edge53:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb28

if.end22.sw.bb28_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb28

if.end22.sw.bb27_crit_edge52:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb27

if.end22.sw.bb27_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb27

if.end22.sw.bb26_crit_edge51:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.end22.sw.bb26_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb26

if.end22.sw.bb25_crit_edge50:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

if.end22.sw.bb25_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb25

if.end22.sw.epilog38_crit_edge49:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog38

if.end22.sw.epilog38_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog38

sw.bb25:                                          ; preds = %if.end22.sw.bb25_crit_edge, %if.end22.sw.bb25_crit_edge50
  br label %sw.epilog38

sw.bb26:                                          ; preds = %if.end22.sw.bb26_crit_edge, %if.end22.sw.bb26_crit_edge51
  br label %sw.epilog38

sw.bb27:                                          ; preds = %if.end22.sw.bb27_crit_edge, %if.end22.sw.bb27_crit_edge52
  br label %sw.epilog38

sw.bb28:                                          ; preds = %if.end22.sw.bb28_crit_edge, %if.end22.sw.bb28_crit_edge53
  br label %sw.epilog38

sw.bb29:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog38

sw.bb30:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog38

do.body32:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-omap2/board-n8x0.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 253, 0\0A.popsection", ""() #4, !srcloc !119
  unreachable

sw.epilog38:                                      ; preds = %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %if.end22.sw.epilog38_crit_edge, %if.end22.sw.epilog38_crit_edge49
  %mV.1 = phi i32 [ 1800, %sw.bb30 ], [ 2000, %sw.bb29 ], [ 2200, %sw.bb28 ], [ 2400, %sw.bb27 ], [ 2800, %sw.bb26 ], [ 3000, %sw.bb25 ], [ 3300, %if.end22.sw.epilog38_crit_edge ], [ 3300, %if.end22.sw.epilog38_crit_edge49 ]
  %call39 = tail call i32 @menelaus_set_vdcdc(i32 noundef 3, i32 noundef %mV.1) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog38, %if.then20, %sw.epilog, %if.then6
  %retval.0 = phi i32 [ %call18, %sw.epilog ], [ %call7, %if.then6 ], [ %call39, %sw.epilog38 ], [ %call21, %if.then20 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n810_set_power_emmc(ptr noundef %dev, i32 noundef %power_on) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @n810_set_power_emmc.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@n810_set_power_emmc, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !113

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool3.not = icmp eq i32 %power_on, 0
  %cond = select i1 %tobool3.not, ptr @.str.35, ptr @.str.34
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @n810_set_power_emmc.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power_on)
  %tobool4.not = icmp eq i32 %power_on, 0
  %. = select i1 %tobool4.not, i32 9, i32 23
  %not.tobool4.not = xor i1 %tobool4.not, true
  %.17 = zext i1 %not.tobool4.not to i32
  %.18 = select i1 %tobool4.not, i32 50, i32 1
  %.19 = select i1 %tobool4.not, i32 23, i32 9
  %call.i9 = tail call ptr @gpio_to_desc(i32 noundef %.) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i9, i32 noundef %.17) #4
  tail call void @msleep(i32 noundef %.18) #4
  %call.i10 = tail call ptr @gpio_to_desc(i32 noundef %.19) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i10, i32 noundef %.17) #4
  tail call void @msleep(i32 noundef %.18) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_vmmc(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @menelaus_set_vdcdc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !93, !94, !96, !97, !98, !99, !100, !102, !103}
!llvm.module.flags = !{!104, !105, !106, !107, !108, !109, !110, !111}
!llvm.ident = !{!112}

!0 = !{ptr @n8x0_menelaus_platform_data, !1, !"n8x0_menelaus_platform_data", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 566, i32 31}
!2 = !{ptr @n810_aic33_data, !3, !"n810_aic33_data", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 570, i32 20}
!4 = !{ptr @__initcall__kmod_board_n8x0__307_584___n8x0_late_initcall7, !5, !"__initcall__kmod_board_n8x0__307_584___n8x0_late_initcall7", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 584, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 540, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @n8x0_auto_voltage_scale._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @n8x0_auto_voltage_scale._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 527, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @n8x0_auto_sleep_regulators._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @n8x0_auto_sleep_regulators._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @board_caps, !18, !"board_caps", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 45, i32 12}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 477, i32 29}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 485, i32 29}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 490, i32 11}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 468, i32 45}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 469, i32 45}
!29 = !{ptr @n810_emmc_gpios, !30, !"n810_emmc_gpios", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 467, i32 20}
!31 = distinct !{null, !32, !"mmc_data", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 465, i32 39}
!33 = !{ptr @n8x0_usb_init.announce, !34, !"announce", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 115, i32 20}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 119, i32 11}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 121, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @n8x0_usb_init._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @n8x0_usb_init._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @n8x0_usb_init._entry.13, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 133, i32 2}
!44 = !{ptr @n8x0_usb_init._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 86, i32 4}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tusb_set_power._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tusb_set_power._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tusb_data, !51, !"tusb_data", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 104, i32 39}
!52 = !{ptr @musb_config, !53, !"musb_config", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 97, i32 32}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 53, i32 31}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 55, i32 36}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 57, i32 36}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 61, i32 3}
!62 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @board_check_revision._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @board_check_revision._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @n800_spi_board_info, !66, !"n800_spi_board_info", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 151, i32 30}
!67 = !{ptr @p54spi_mcspi_config, !68, !"p54spi_mcspi_config", i1 false, i1 false}
!68 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 147, i32 41}
!69 = !{ptr @mmc1_data, !70, !"mmc1_data", i1 false, i1 false}
!70 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 435, i32 38}
!71 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 185, i32 2}
!73 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @n8x0_mmc_switch_slot.__UNIQUE_ID_ddebug303, !72, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!76 = !{ptr @mmc_device, !77, !"mmc_device", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 180, i32 23}
!78 = !{ptr @slot2_cover_open, !79, !"slot2_cover_open", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 179, i32 12}
!80 = !{ptr @slot1_cover_open, !81, !"slot1_cover_open", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 178, i32 12}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 293, i32 2}
!84 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @n8x0_mmc_set_bus_mode.__UNIQUE_ID_ddebug306, !83, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!86 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 308, i32 3}
!90 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @n8x0_mmc_set_bus_mode._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @n8x0_mmc_set_bus_mode._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 197, i32 2}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @n8x0_mmc_set_power_menelaus.__UNIQUE_ID_ddebug304, !95, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!98 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/board-n8x0.c", i32 263, i32 2}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @n810_set_power_emmc.__UNIQUE_ID_ddebug305, !101, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!104 = !{i32 1, !"wchar_size", i32 2}
!105 = !{i32 1, !"min_enum_size", i32 4}
!106 = !{i32 8, !"branch-target-enforcement", i32 0}
!107 = !{i32 8, !"sign-return-address", i32 0}
!108 = !{i32 8, !"sign-return-address-all", i32 0}
!109 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!110 = !{i32 7, !"uwtable", i32 1}
!111 = !{i32 7, !"frame-pointer", i32 2}
!112 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!113 = !{i64 2148732650, i64 2148732655, i64 2148732668, i64 2148732712, i64 2148732746, i64 2148732767}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{i64 2156390433, i64 2156390930, i64 2156390470, i64 2156390526, i64 2156390560, i64 2156390584, i64 2156390625, i64 2156390646, i64 2156390674, i64 2156390708}
!116 = !{i64 2156391954, i64 2156392451, i64 2156391991, i64 2156392047, i64 2156392081, i64 2156392105, i64 2156392146, i64 2156392167, i64 2156392195, i64 2156392229}
!117 = !{i64 2156395371, i64 2156395868, i64 2156395408, i64 2156395464, i64 2156395498, i64 2156395522, i64 2156395563, i64 2156395584, i64 2156395612, i64 2156395646}
!118 = !{i64 2156382194, i64 2156382691, i64 2156382231, i64 2156382287, i64 2156382321, i64 2156382345, i64 2156382386, i64 2156382407, i64 2156382435, i64 2156382469}
!119 = !{i64 2156383843, i64 2156384340, i64 2156383880, i64 2156383936, i64 2156383970, i64 2156383994, i64 2156384035, i64 2156384056, i64 2156384084, i64 2156384118}
