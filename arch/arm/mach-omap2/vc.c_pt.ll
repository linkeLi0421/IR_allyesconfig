; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/vc.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/vc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.omap3_vc = type { ptr, i32, i32, i32, [2 x %struct.omap3_vc_timings] }
%struct.omap3_vc_timings = type { i32, i32 }
%struct.omap_vc_channel_cfg = type { i8, i8, i8, i8, i8 }
%struct.i2c_init_data = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.voltagedomain = type { ptr, i8, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, ptr, i32, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon = type { ptr }
%struct.omap_voltdm_pmic = type { i32, i32, i16, i16, i16, i8, i8, i8, i32, i32, i8, i8, i32, i8, ptr, ptr }
%struct.omap_vc_channel = type { i16, i16, i16, i8, i8, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_common = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.omap_vc_param = type { i32, i32, i32, i32 }
%struct.omap_vfsm_instance = type { i32, i8, i8 }

@omap_vc_pre_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 148, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s: Insufficient pmic info to scale the vdd_%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"omap_vc_pre_scale\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-omap2/vc.c\00", [39 x i8] zeroinitializer }, align 32
@omap_vc_pre_scale._entry_ptr = internal global ptr @omap_vc_pre_scale._entry, section ".printk_index", align 4
@omap_vc_pre_scale._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\013%s: PMIC function to convert voltage in uV to vsel not registered. Hence unable to scale voltage for vdd_%s\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_vc_pre_scale._entry_ptr.5 = internal global ptr @omap_vc_pre_scale._entry.3, section ".printk_index", align 4
@omap_vc_pre_scale._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: No read/write API for accessing vdd_%s regs\0A\00", [45 x i8] zeroinitializer }, align 32
@omap_vc_pre_scale._entry_ptr.8 = internal global ptr @omap_vc_pre_scale._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_vc_bypass_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: Retry count exceeded\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_vc_bypass_scale\00", [43 x i8] zeroinitializer }, align 32
@omap_vc_bypass_scale._entry_ptr = internal global ptr @omap_vc_bypass_scale._entry, section ".printk_index", align 4
@vc = internal global { %struct.omap3_vc, [32 x i8] } zeroinitializer, align 32
@sr_i2c_pcb_length = internal global { i32, [28 x i8] } { i32 63, [28 x i8] zeroinitializer }, align 32
@omap_vc_init_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: No PMIC info for vdd_%s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_vc_init_channel\00", [43 x i8] zeroinitializer }, align 32
@omap_vc_init_channel._entry_ptr = internal global ptr @omap_vc_init_channel._entry, section ".printk_index", align 4
@omap_vc_init_channel._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.12, ptr @.str.2, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap_vc_init_channel._entry_ptr.14 = internal global ptr @omap_vc_init_channel._entry.13, section ".printk_index", align 4
@vc_mutant_channel_cfg = internal global { %struct.omap_vc_channel_cfg, [27 x i8] } { %struct.omap_vc_channel_cfg { i8 1, i8 4, i8 8, i8 16, i8 2 }, [27 x i8] zeroinitializer }, align 32
@vc_cfg_bits = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@vc_default_channel_cfg = internal global { %struct.omap_vc_channel_cfg, [27 x i8] } { %struct.omap_vc_channel_cfg { i8 1, i8 2, i8 4, i8 8, i8 16 }, [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: voltage not supported by pmic: %u vs max %u\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.omap_vc_calc_vsel = private unnamed_addr constant [18 x i8] c"omap_vc_calc_vsel\00", align 1
@omap_vc_i2c_init.initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@omap_vc_i2c_init.i2c_high_speed = internal global { i8, [31 x i8] } zeroinitializer, align 32
@omap_vc_i2c_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014%s: I2C config for vdd_%s does not match other channels (%u).\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_vc_i2c_init\00", [47 x i8] zeroinitializer }, align 32
@omap_vc_i2c_init._entry_ptr = internal global ptr @omap_vc_i2c_init._entry, section ".printk_index", align 4
@omap4_vc_i2c_timing_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: using bootloader low-speed timings\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap4_vc_i2c_timing_init\00", [39 x i8] zeroinitializer }, align 32
@omap4_vc_i2c_timing_init._entry_ptr = internal global ptr @omap4_vc_i2c_timing_init._entry, section ".printk_index", align 4
@omap4_i2c_timing_data = internal unnamed_addr constant [4 x %struct.i2c_init_data] [%struct.i2c_init_data { i8 3, i8 50, i8 13, i8 11, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 2, i8 25, i8 13, i8 11, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 1, i8 12, i8 11, i8 10, i8 9, i8 9, i8 8 }, %struct.i2c_init_data { i8 0, i8 0, i8 12, i8 10, i8 9, i8 8, i8 8 }], section ".init.rodata", align 1
@omap4_vc_i2c_timing_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 711, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: unsupported sysclk rate: %d!\0A\00", [60 x i8] zeroinitializer }, align 32
@omap4_vc_i2c_timing_init._entry_ptr.22 = internal global ptr @omap4_vc_i2c_timing_init._entry.20, section ".printk_index", align 4
@omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug154 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vc\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap3_vc_init_pmic_signaling\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"PM: fixing sys_clkreq and sys_off_mode polarity to 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug155 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.26, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"PM: setting voltctrl sys_off_mode signaling to 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@omap3_set_off_timings.__UNIQUE_ID_ddebug156 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"omap3_set_off_timings\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"PM: oscillator start-up time not initialized, using 10ms\0A\00", [38 x i8] zeroinitializer }, align 32
@omap4_calc_volt_ramp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 511, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: invalid setuptime for vdd_%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap4_calc_volt_ramp\00", [43 x i8] zeroinitializer }, align 32
@omap4_calc_volt_ramp._entry_ptr = internal global ptr @omap4_calc_volt_ramp._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 12000000, i64 16800000, i64 19200000, i64 26000000, i64 38400000]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 147, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 153, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 159, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 226, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [3 x i8] c"vc\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 260, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"sr_i2c_pcb_length\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 100, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 830, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 835, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant [22 x i8] c"vc_mutant_channel_cfg\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 89, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"vc_cfg_bits\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 97, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant [23 x i8] c"vc_default_channel_cfg\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 75, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 799, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [29 x i8] c"omap_vc_i2c_init.initialized\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"i2c_high_speed\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 749, i32 14 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 754, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 673, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 710, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 347, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 366, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 439, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [28 x i8] c"../arch/arm/mach-omap2/vc.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 510, i32 3 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @omap4_calc_volt_ramp._entry, ptr @omap4_calc_volt_ramp._entry_ptr, ptr @omap4_vc_i2c_timing_init._entry, ptr @omap4_vc_i2c_timing_init._entry.20, ptr @omap4_vc_i2c_timing_init._entry_ptr, ptr @omap4_vc_i2c_timing_init._entry_ptr.22, ptr @omap_vc_bypass_scale._entry, ptr @omap_vc_bypass_scale._entry_ptr, ptr @omap_vc_i2c_init._entry, ptr @omap_vc_i2c_init._entry_ptr, ptr @omap_vc_init_channel._entry, ptr @omap_vc_init_channel._entry.13, ptr @omap_vc_init_channel._entry_ptr, ptr @omap_vc_init_channel._entry_ptr.14, ptr @omap_vc_pre_scale._entry, ptr @omap_vc_pre_scale._entry.3, ptr @omap_vc_pre_scale._entry.6, ptr @omap_vc_pre_scale._entry_ptr, ptr @omap_vc_pre_scale._entry_ptr.5, ptr @omap_vc_pre_scale._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @vc, ptr @sr_i2c_pcb_length, ptr @.str.11, ptr @.str.12, ptr @vc_mutant_channel_cfg, ptr @vc_cfg_bits, ptr @vc_default_channel_cfg, ptr @.str.15, ptr @omap_vc_i2c_init.initialized, ptr @omap_vc_i2c_init.i2c_high_speed, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_pre_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_pre_scale._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_pre_scale._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_bypass_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sr_i2c_pcb_length to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_init_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_init_channel._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_mutant_channel_cfg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_cfg_bits to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc_default_channel_cfg to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_i2c_init.initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_i2c_init.i2c_high_speed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_vc_i2c_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vc_i2c_timing_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_vc_i2c_timing_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_calc_volt_ramp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vc_pre_scale(ptr noundef %voltdm, i32 noundef %target_volt, ptr nocapture noundef %target_vsel, ptr nocapture noundef writeonly %current_vsel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vc1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 3
  %0 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc1, align 4
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %2 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %voltdm, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %uv_to_vsel = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %uv_to_vsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %uv_to_vsel, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %do.end7, label %if.end11

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voltdm, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, ptr noundef %9) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %10 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %read, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end11.do.end17_crit_edge, label %lor.lhs.false

if.end11.do.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

lor.lhs.false:                                    ; preds = %if.end11
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %12 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %write, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %lor.lhs.false.do.end17_crit_edge, label %if.end21

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false.do.end17_crit_edge, %if.end11.do.end17_crit_edge
  %14 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %voltdm, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, ptr noundef %15) #10
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call zeroext i8 %7(i32 noundef %target_volt) #7
  %16 = ptrtoint ptr %target_vsel to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call24, ptr %target_vsel, align 1
  %17 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pmic, align 4
  %uv_to_vsel26 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %uv_to_vsel26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %uv_to_vsel26, align 4
  %nominal_volt = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 14
  %21 = ptrtoint ptr %nominal_volt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nominal_volt, align 4
  %call27 = tail call zeroext i8 %20(i32 noundef %22) #7
  %23 = ptrtoint ptr %current_vsel to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %call27, ptr %current_vsel, align 1
  %24 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %read, align 4
  %cmdval_reg = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %cmdval_reg to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %cmdval_reg, align 4
  %call29 = tail call i32 %25(i8 noundef zeroext %27) #7
  %common = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %common, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %neg = xor i32 %31, -1
  %and = and i32 %call29, %neg
  %32 = ptrtoint ptr %target_vsel to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %target_vsel, align 1
  %conv = zext i8 %33 to i32
  %cmd_on_shift = getelementptr inbounds %struct.omap_vc_common, ptr %29, i32 0, i32 6
  %34 = ptrtoint ptr %cmd_on_shift to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %cmd_on_shift, align 4
  %conv31 = zext i8 %35 to i32
  %shl = shl i32 %conv, %conv31
  %or = or i32 %shl, %and
  %36 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %write, align 4
  %38 = ptrtoint ptr %cmdval_reg to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cmdval_reg, align 4
  tail call void %37(i32 noundef %or, i8 noundef zeroext %39) #7
  %vc_param = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 8
  %40 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vc_param, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %target_volt, ptr %41, align 4
  %call34 = tail call i32 @omap_vp_update_errorgain(ptr noundef %voltdm, i32 noundef %target_volt) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %do.end17 ], [ -61, %do.end7 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_vp_update_errorgain(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vc_post_scale(ptr nocapture noundef readonly %voltdm, i32 %target_volt, i8 noundef zeroext %target_vsel, i8 noundef zeroext %current_vsel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %0 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmic, align 4
  %step_size = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %step_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %step_size, align 4
  %conv = zext i8 %target_vsel to i32
  %conv1 = zext i8 %current_vsel to i32
  %sub = sub nsw i32 %conv, %conv1
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 true)
  %mul = mul i32 %3, %4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %div = udiv i32 %mul, %6
  %add = add i32 %div, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %add) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_vc_bypass_scale(ptr noundef %voltdm, i32 noundef %target_volt) local_unnamed_addr #0 align 64 {
entry:
  %target_vsel = alloca i8, align 1
  %current_vsel = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vc1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 3
  %0 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %target_vsel) #7
  %2 = ptrtoint ptr %target_vsel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %target_vsel, align 1, !annotation !86
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %current_vsel) #7
  %3 = ptrtoint ptr %current_vsel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %current_vsel, align 1, !annotation !86
  %call = call i32 @omap_vc_pre_scale(ptr noundef %voltdm, i32 noundef %target_volt, ptr noundef nonnull %target_vsel, ptr noundef nonnull %current_vsel)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %common = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common, align 4
  %valid = getelementptr inbounds %struct.omap_vc_common, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %valid, align 4
  %bypass_val_reg = getelementptr inbounds %struct.omap_vc_common, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %bypass_val_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bypass_val_reg, align 4
  %10 = ptrtoint ptr %target_vsel to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %target_vsel, align 1
  %conv3 = zext i8 %11 to i32
  %data_shift = getelementptr inbounds %struct.omap_vc_common, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %data_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %data_shift, align 1
  %conv5 = zext i8 %13 to i32
  %shl = shl i32 %conv3, %conv5
  %volt_reg_addr = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %volt_reg_addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %volt_reg_addr, align 2
  %conv6 = zext i16 %15 to i32
  %regaddr_shift = getelementptr inbounds %struct.omap_vc_common, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %regaddr_shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %regaddr_shift, align 1
  %conv8 = zext i8 %17 to i32
  %shl9 = shl i32 %conv6, %conv8
  %or = or i32 %shl9, %shl
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %1, align 4
  %conv10 = zext i16 %19 to i32
  %slaveaddr_shift = getelementptr inbounds %struct.omap_vc_common, ptr %5, i32 0, i32 4
  %20 = ptrtoint ptr %slaveaddr_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %slaveaddr_shift, align 2
  %conv12 = zext i8 %21 to i32
  %shl13 = shl i32 %conv10, %conv12
  %or14 = or i32 %or, %shl13
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %22 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %write, align 4
  tail call void %23(i32 noundef %or14, i8 noundef zeroext %9) #7
  %24 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write, align 4
  %or17 = or i32 %or14, %7
  tail call void %25(i32 noundef %or17, i8 noundef zeroext %9) #7
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %26 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read, align 4
  %call20 = tail call i32 %27(i8 noundef zeroext %9) #7
  %and64 = and i32 %call20, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool21.not65 = icmp eq i32 %and64, 0
  br i1 %tobool21.not65, label %if.end.while.body_crit_edge, label %if.end.cond.false12.i_crit_edge

if.end.cond.false12.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false12.i

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %if.end.while.body_crit_edge
  %retries_cnt.067 = phi i32 [ %retries_cnt.1, %if.end30.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  %loop_cnt.066 = phi i32 [ %loop_cnt.1, %if.end30.while.body_crit_edge ], [ 0, %if.end.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %retries_cnt.067)
  %cmp = icmp ugt i32 %retries_cnt.067, 10
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.end25:                                         ; preds = %while.body
  %inc = add i32 %loop_cnt.066, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %inc)
  %cmp26 = icmp ugt i32 %inc, 50
  br i1 %cmp26, label %if.then28, label %if.end25.if.end30_crit_edge

if.end25.if.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %inc29 = add nuw nsw i32 %retries_cnt.067, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 2147480) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end25.if.end30_crit_edge
  %loop_cnt.1 = phi i32 [ 0, %if.then28 ], [ %inc, %if.end25.if.end30_crit_edge ]
  %retries_cnt.1 = phi i32 [ %inc29, %if.then28 ], [ %retries_cnt.067, %if.end25.if.end30_crit_edge ]
  %29 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %read, align 4
  %call33 = tail call i32 %30(i8 noundef zeroext %9) #7
  %and = and i32 %call33, %7
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end30.while.body_crit_edge, label %if.end30.cond.false12.i_crit_edge

if.end30.cond.false12.i_crit_edge:                ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false12.i

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

cond.false12.i:                                   ; preds = %if.end30.cond.false12.i_crit_edge, %if.end.cond.false12.i_crit_edge
  %31 = ptrtoint ptr %current_vsel to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %current_vsel, align 1
  %conv1.i = zext i8 %32 to i32
  %sub.i = sub nsw i32 %conv3, %conv1.i
  %33 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 true) #7
  %pmic.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %34 = ptrtoint ptr %pmic.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pmic.i, align 4
  %step_size.i = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %step_size.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %step_size.i, align 4
  %mul.i = mul i32 %33, %37
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %div.i = udiv i32 %mul.i, %39
  %add.i = add i32 %div.i, 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %40(i32 noundef %add.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.false12.i, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %cond.false12.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %current_vsel) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %target_vsel) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_vc_set_pmic_signaling(i32 noundef %core_next_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc, align 4
  %1 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  %2 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %core_next_state)
  %cond = icmp eq i32 %core_next_state, 0
  %and = and i32 %1, -8
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %or = or i32 %and, 4
  %and1 = and i32 %1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %and, 2
  %6 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %if.then
  %c.0 = phi ptr [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), %if.then ], [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), %if.else ], [ getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), %sw.default ]
  %voltctrl.0 = phi i32 [ %or, %if.then ], [ %or, %if.else ], [ %or6, %sw.default ]
  %voltsetup1.0 = phi i32 [ %2, %if.then ], [ %5, %if.else ], [ %6, %sw.default ]
  %voltsetup2.0 = phi i32 [ %4, %if.then ], [ %3, %if.else ], [ %3, %sw.default ]
  call void @__sanitizer_cov_trace_cmp4(i32 %voltctrl.0, i32 %1)
  %cmp.not = icmp eq i32 %voltctrl.0, %1
  br i1 %cmp.not, label %sw.epilog.if.end9_crit_edge, label %if.then8

sw.epilog.if.end9_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %write = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  tail call void %8(i32 noundef %voltctrl.0, i8 noundef zeroext 96) #7
  store i32 %voltctrl.0, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %sw.epilog.if.end9_crit_edge
  %9 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %voltsetup1.0, i32 %9)
  %cmp10.not = icmp eq i32 %voltsetup1.0, %9
  br i1 %cmp10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %write12 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %10 = ptrtoint ptr %write12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write12, align 4
  %12 = ptrtoint ptr %c.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c.0, align 4
  tail call void %11(i32 noundef %13, i8 noundef zeroext -112) #7
  store i32 %voltsetup1.0, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 2), align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %14 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %voltsetup2.0, i32 %14)
  %cmp15.not = icmp eq i32 %voltsetup2.0, %14
  br i1 %cmp15.not, label %if.end14.if.end19_crit_edge, label %if.then16

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %write17 = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %15 = ptrtoint ptr %write17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write17, align 4
  %voltsetup218 = getelementptr inbounds %struct.omap3_vc_timings, ptr %c.0, i32 0, i32 1
  %17 = ptrtoint ptr %voltsetup218 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %voltsetup218, align 4
  tail call void %16(i32 noundef %18, i8 noundef zeroext -96) #7
  store i32 %voltsetup2.0, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 3), align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap4_vc_set_pmic_signaling(i32 noundef %core_next_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %core_next_state)
  %cond = icmp eq i32 %core_next_state, 1
  %. = select i1 %cond, i32 810, i32 29482
  %write = getelementptr inbounds %struct.voltagedomain, ptr %0, i32 0, i32 10
  %1 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write, align 4
  tail call void %2(i32 noundef %., i8 noundef zeroext 16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @omap_pm_setup_sr_i2c_pcb_length(i32 noundef %mm) local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 %mm, ptr @sr_i2c_pcb_length, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_vc_init_channel(ptr noundef %voltdm) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vc1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 3
  %0 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc1, align 4
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %2 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.lhs.false

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %uv_to_vsel = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %uv_to_vsel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uv_to_vsel, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %voltdm, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %7) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.end.do.end10_crit_edge, label %lor.lhs.false5

if.end.do.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

lor.lhs.false5:                                   ; preds = %if.end
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %10 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %lor.lhs.false5.do.end10_crit_edge, label %if.end14

lor.lhs.false5.do.end10_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10

do.end10:                                         ; preds = %lor.lhs.false5.do.end10_crit_edge, %if.end.do.end10_crit_edge
  %12 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %voltdm, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.12, ptr noundef %13) #10
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false5
  %cfg_channel = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %cfg_channel, align 2
  %flags = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %flags, align 2
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool15.not = icmp eq i8 %17, 0
  %vc_default_channel_cfg.vc_mutant_channel_cfg = select i1 %tobool15.not, ptr @vc_default_channel_cfg, ptr @vc_mutant_channel_cfg
  store ptr %vc_default_channel_cfg.vc_mutant_channel_cfg, ptr @vc_cfg_bits, align 4
  %18 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pmic, align 4
  %i2c_slave_addr = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %i2c_slave_addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %i2c_slave_addr, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %1, align 4
  %23 = load ptr, ptr %pmic, align 4
  %volt_reg_addr = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %volt_reg_addr to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %volt_reg_addr, align 2
  %volt_reg_addr21 = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %volt_reg_addr21 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %volt_reg_addr21, align 2
  %27 = load ptr, ptr %pmic, align 4
  %cmd_reg_addr = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %cmd_reg_addr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd_reg_addr, align 4
  %cmd_reg_addr23 = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %cmd_reg_addr23 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %cmd_reg_addr23, align 4
  %rmw = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 11
  %31 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmw, align 4
  %smps_sa_mask = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %smps_sa_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %smps_sa_mask, align 4
  %conv25 = zext i16 %21 to i32
  %35 = tail call i32 @llvm.cttz.i32(i32 %34, i1 false) #7, !range !87
  %shl = shl i32 %conv25, %35
  %smps_sa_reg = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 10
  %36 = ptrtoint ptr %smps_sa_reg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %smps_sa_reg, align 1
  %call28 = tail call i32 %32(i32 noundef %34, i32 noundef %shl, i8 noundef zeroext %37) #7
  %38 = load ptr, ptr @vc_cfg_bits, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %38, align 1
  %41 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %cfg_channel, align 2
  %or174 = or i8 %42, %40
  store i8 %or174, ptr %cfg_channel, align 2
  %43 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmw, align 4
  %smps_volra_mask = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %smps_volra_mask to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %smps_volra_mask, align 4
  %47 = ptrtoint ptr %volt_reg_addr21 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %volt_reg_addr21, align 2
  %conv35 = zext i16 %48 to i32
  %49 = tail call i32 @llvm.cttz.i32(i32 %46, i1 false) #7, !range !87
  %shl38 = shl i32 %conv35, %49
  %smps_volra_reg = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 11
  %50 = ptrtoint ptr %smps_volra_reg to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %smps_volra_reg, align 2
  %call39 = tail call i32 %44(i32 noundef %46, i32 noundef %shl38, i8 noundef zeroext %51) #7
  %52 = load ptr, ptr @vc_cfg_bits, align 4
  %rav = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %rav to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %rav, align 1
  %55 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cfg_channel, align 2
  %or43175 = or i8 %56, %54
  store i8 %or43175, ptr %cfg_channel, align 2
  %57 = ptrtoint ptr %cmd_reg_addr23 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %cmd_reg_addr23, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool46.not = icmp eq i16 %58, 0
  br i1 %tobool46.not, label %if.end14.if.end60_crit_edge, label %if.then47

if.end14.if.end60_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then47:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmw, align 4
  %smps_cmdra_mask = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 8
  %61 = ptrtoint ptr %smps_cmdra_mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %smps_cmdra_mask, align 4
  %conv50 = zext i16 %58 to i32
  %63 = tail call i32 @llvm.cttz.i32(i32 %62, i1 false) #7, !range !87
  %shl53 = shl i32 %conv50, %63
  %smps_cmdra_reg = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 12
  %64 = ptrtoint ptr %smps_cmdra_reg to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %smps_cmdra_reg, align 1
  %call54 = tail call i32 %60(i32 noundef %62, i32 noundef %shl53, i8 noundef zeroext %65) #7
  %66 = load ptr, ptr @vc_cfg_bits, align 4
  %rac = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %rac to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %rac, align 1
  %69 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %cfg_channel, align 2
  %or58178 = or i8 %70, %68
  store i8 %or58178, ptr %cfg_channel, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then47, %if.end14.if.end60_crit_edge
  %71 = ptrtoint ptr %cmd_reg_addr23 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cmd_reg_addr23, align 4
  %73 = ptrtoint ptr %volt_reg_addr21 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %volt_reg_addr21, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %72, i16 %74)
  %cmp = icmp eq i16 %72, %74
  br i1 %cmp, label %if.then66, label %if.end60.if.end72_crit_edge

if.end60.if.end72_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then66:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %75 = load ptr, ptr @vc_cfg_bits, align 4
  %racen = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %racen to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %racen, align 1
  %78 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %cfg_channel, align 2
  %or70177 = or i8 %79, %77
  store i8 %or70177, ptr %cfg_channel, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %if.end60.if.end72_crit_edge
  %vc_param = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 8
  %80 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vc_param, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  %call73 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %voltdm, i32 noundef %83)
  %84 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %vc_param, align 4
  %onlp = getelementptr inbounds %struct.omap_vc_param, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %onlp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %onlp, align 4
  %call75 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %voltdm, i32 noundef %87)
  %88 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vc_param, align 4
  %ret = getelementptr inbounds %struct.omap_vc_param, ptr %89, i32 0, i32 2
  %90 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ret, align 4
  %call77 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %voltdm, i32 noundef %91)
  %92 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %vc_param, align 4
  %off = getelementptr inbounds %struct.omap_vc_param, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %off, align 4
  %call79 = tail call fastcc zeroext i8 @omap_vc_calc_vsel(ptr noundef %voltdm, i32 noundef %95)
  %conv80 = zext i8 %call73 to i32
  %common = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 5
  %96 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %common, align 4
  %cmd_on_shift = getelementptr inbounds %struct.omap_vc_common, ptr %97, i32 0, i32 6
  %98 = ptrtoint ptr %cmd_on_shift to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %cmd_on_shift, align 4
  %conv81 = zext i8 %99 to i32
  %shl82 = shl i32 %conv80, %conv81
  %conv83 = zext i8 %call75 to i32
  %cmd_onlp_shift = getelementptr inbounds %struct.omap_vc_common, ptr %97, i32 0, i32 7
  %100 = ptrtoint ptr %cmd_onlp_shift to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %cmd_onlp_shift, align 1
  %conv85 = zext i8 %101 to i32
  %shl86 = shl i32 %conv83, %conv85
  %or87 = or i32 %shl86, %shl82
  %conv88 = zext i8 %call77 to i32
  %cmd_ret_shift = getelementptr inbounds %struct.omap_vc_common, ptr %97, i32 0, i32 8
  %102 = ptrtoint ptr %cmd_ret_shift to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %cmd_ret_shift, align 2
  %conv90 = zext i8 %103 to i32
  %shl91 = shl i32 %conv88, %conv90
  %or92 = or i32 %or87, %shl91
  %conv93 = zext i8 %call79 to i32
  %cmd_off_shift = getelementptr inbounds %struct.omap_vc_common, ptr %97, i32 0, i32 9
  %104 = ptrtoint ptr %cmd_off_shift to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %cmd_off_shift, align 1
  %conv95 = zext i8 %105 to i32
  %shl96 = shl i32 %conv93, %conv95
  %or97 = or i32 %or92, %shl96
  %106 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %write, align 4
  %cmdval_reg = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 9
  %108 = ptrtoint ptr %cmdval_reg to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %cmdval_reg, align 4
  tail call void %107(i32 noundef %or97, i8 noundef zeroext %109) #7
  %110 = load ptr, ptr @vc_cfg_bits, align 4
  %cmd = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %110, i32 0, i32 4
  %111 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %cmd, align 1
  %113 = ptrtoint ptr %cfg_channel to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %cfg_channel, align 2
  %or102176 = or i8 %114, %112
  store i8 %or102176, ptr %cfg_channel, align 2
  %115 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %vc1, align 4
  %flags.i = getelementptr inbounds %struct.omap_vc_channel, ptr %116, i32 0, i32 15
  %117 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %flags.i, align 2
  %119 = and i8 %118, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i = icmp eq i8 %119, 0
  br i1 %tobool.not.i, label %if.end72.omap_vc_config_channel.exit_crit_edge, label %if.then.i

if.end72.omap_vc_config_channel.exit_crit_edge:   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap_vc_config_channel.exit

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %racen.i = getelementptr inbounds %struct.omap_vc_channel_cfg, ptr %110, i32 0, i32 3
  %120 = ptrtoint ptr %racen.i to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %racen.i, align 1
  %cfg_channel.i = getelementptr inbounds %struct.omap_vc_channel, ptr %116, i32 0, i32 3
  %122 = ptrtoint ptr %cfg_channel.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %cfg_channel.i, align 2
  %and41.i = and i8 %123, %121
  store i8 %and41.i, ptr %cfg_channel.i, align 2
  br label %omap_vc_config_channel.exit

omap_vc_config_channel.exit:                      ; preds = %if.then.i, %if.end72.omap_vc_config_channel.exit_crit_edge
  %124 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmw, align 4
  %cfg_channel_sa_shift.i = getelementptr inbounds %struct.omap_vc_channel, ptr %116, i32 0, i32 14
  %126 = ptrtoint ptr %cfg_channel_sa_shift.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %cfg_channel_sa_shift.i, align 1
  %conv6.i = zext i8 %127 to i32
  %shl.i = shl i32 31, %conv6.i
  %cfg_channel7.i = getelementptr inbounds %struct.omap_vc_channel, ptr %116, i32 0, i32 3
  %128 = ptrtoint ptr %cfg_channel7.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %cfg_channel7.i, align 2
  %conv8.i = zext i8 %129 to i32
  %shl11.i = shl i32 %conv8.i, %conv6.i
  %cfg_channel_reg.i = getelementptr inbounds %struct.omap_vc_channel, ptr %116, i32 0, i32 13
  %130 = ptrtoint ptr %cfg_channel_reg.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %cfg_channel_reg.i, align 4
  %call.i = tail call i32 %125(i32 noundef %shl.i, i32 noundef %shl11.i, i8 noundef zeroext %131) #7
  tail call fastcc void @omap_vc_i2c_init(ptr noundef %voltdm) #11
  %call.i179 = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i179, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i.not, label %if.then107, label %if.else108

if.then107:                                       ; preds = %omap_vc_config_channel.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @omap3_vc_init_channel(ptr noundef %voltdm) #11
  br label %cleanup

if.else108:                                       ; preds = %omap_vc_config_channel.exit
  %call.i180 = tail call i32 @omap_rev() #7
  %and.i181 = and i32 %call.i180, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i181)
  %cmp.i182.not = icmp eq i32 %and.i181, 68
  br i1 %cmp.i182.not, label %if.then111, label %if.else108.cleanup_crit_edge

if.else108.cleanup_crit_edge:                     ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then111:                                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @omap4_vc_init_channel(ptr noundef %voltdm) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then111, %if.else108.cleanup_crit_edge, %if.then107, %do.end10, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @omap_vc_calc_vsel(ptr nocapture noundef readonly %voltdm, i32 noundef %uvolt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %0 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmic, align 4
  %vddmin = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %vddmin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vddmin, align 4
  %4 = tail call i32 @llvm.umax.i32(i32 %3, i32 %uvolt)
  %vddmax = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %vddmax to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vddmax, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp4 = icmp ult i32 %6, %4
  br i1 %cmp4, label %do.end, label %entry.if.end26_crit_edge

entry.if.end26_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 800, i32 noundef 9, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.omap_vc_calc_vsel, i32 noundef %4, i32 noundef %6) #7
  %7 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pmic, align 4
  %vddmax25 = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %vddmax25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vddmax25, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end, %entry.if.end26_crit_edge
  %uvolt.addr.1 = phi i32 [ %10, %do.end ], [ %4, %entry.if.end26_crit_edge ]
  %11 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmic, align 4
  %uv_to_vsel = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %uv_to_vsel to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %uv_to_vsel, align 4
  %call = tail call zeroext i8 %14(i32 noundef %uvolt.addr.1) #7
  ret i8 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_vc_i2c_init(ptr nocapture noundef readonly %voltdm) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vc1 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 3
  %0 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc1, align 4
  %.b54 = load i1, ptr @omap_vc_i2c_init.initialized, align 1
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %2 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pmic, align 4
  %i2c_high_speed = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %i2c_high_speed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_high_speed, align 1, !range !88
  br i1 %.b54, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %6 = load i8, ptr @omap_vc_i2c_init.i2c_high_speed, align 1, !range !88
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %6)
  %cmp.not = icmp eq i8 %5, %6
  br i1 %cmp.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = zext i8 %6 to i32
  %8 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %voltdm, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef %9, i32 noundef %7) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool12.not = icmp eq i8 %5, 0
  store i8 %5, ptr @omap_vc_i2c_init.i2c_high_speed, align 1
  br i1 %tobool12.not, label %if.end9.if.end20_crit_edge, label %if.then14

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %rmw = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 11
  %10 = ptrtoint ptr %rmw to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmw, align 4
  %common = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %i2c_cfg_clear_mask = getelementptr inbounds %struct.omap_vc_common, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %i2c_cfg_clear_mask to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_cfg_clear_mask, align 1
  %conv15 = zext i8 %15 to i32
  %i2c_cfg_hsen_mask = getelementptr inbounds %struct.omap_vc_common, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %i2c_cfg_hsen_mask to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %i2c_cfg_hsen_mask, align 2
  %conv17 = zext i8 %17 to i32
  %i2c_cfg_reg = getelementptr inbounds %struct.omap_vc_common, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %i2c_cfg_reg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %i2c_cfg_reg, align 4
  %call19 = tail call i32 %11(i32 noundef %conv15, i32 noundef %conv17, i8 noundef zeroext %19) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %if.end9.if.end20_crit_edge
  %20 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmic, align 4
  %i2c_mcode = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %i2c_mcode to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_mcode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool22.not = icmp eq i8 %23, 0
  br i1 %tobool22.not, label %if.end20.if.end35_crit_edge, label %if.then23

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %rmw24 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 11
  %24 = ptrtoint ptr %rmw24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmw24, align 4
  %common25 = getelementptr inbounds %struct.omap_vc_channel, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %common25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common25, align 4
  %i2c_mcode_mask = getelementptr inbounds %struct.omap_vc_common, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %i2c_mcode_mask to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %i2c_mcode_mask, align 1
  %conv26 = zext i8 %29 to i32
  %conv27 = zext i8 %23 to i32
  %30 = tail call i32 @llvm.cttz.i32(i32 %conv26, i1 false) #7, !range !87
  %shl = shl i32 %conv27, %30
  %i2c_cfg_reg33 = getelementptr inbounds %struct.omap_vc_common, ptr %27, i32 0, i32 10
  %31 = ptrtoint ptr %i2c_cfg_reg33 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %i2c_cfg_reg33, align 4
  %call34 = tail call i32 %25(i32 noundef %conv26, i32 noundef %shl, i8 noundef zeroext %32) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then23, %if.end20.if.end35_crit_edge
  %call.i = tail call i32 @omap_rev() #7
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @omap4_vc_i2c_timing_init(ptr noundef %voltdm) #11
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  store i1 true, ptr @omap_vc_i2c_init.initialized, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_vc_init_channel(ptr noundef %voltdm) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @omap3_vc_init_pmic_signaling(ptr noundef %voltdm) #11
  tail call fastcc void @omap3_set_off_timings(ptr noundef %voltdm)
  %vc_param.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 8
  %0 = ptrtoint ptr %vc_param.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc_param.i, align 4
  %off.i = getelementptr inbounds %struct.omap_vc_param, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %off.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i.i = sub i32 %5, %3
  %pmic.i.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %6 = ptrtoint ptr %pmic.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmic.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %div.i.i = udiv i32 %sub.i.i, %9
  %sys_clk.i.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 12
  %10 = ptrtoint ptr %sys_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sys_clk.i.i, align 4
  %div2.i.i = udiv i32 %11, 8000000
  %add.i.i = add nuw nsw i32 %div2.i.i, 1
  %mul.i.i = mul i32 %add.i.i, %div.i.i
  %vfsm.i.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 4
  %12 = ptrtoint ptr %vfsm.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vfsm.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = tail call i32 @llvm.cttz.i32(i32 %15, i1 false) #7, !range !87
  %shl.i.i = shl i32 %mul.i.i, %16
  %neg.i.i = xor i32 %15, -1
  %17 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  %and.i.i = and i32 %17, %neg.i.i
  %or.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or.i.i, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4), align 4
  %ret.i = getelementptr inbounds %struct.omap_vc_param, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret.i, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  %sub.i8.i = sub i32 %21, %19
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %div.i10.i = udiv i32 %sub.i8.i, %23
  %mul.i14.i = mul i32 %div.i10.i, %add.i.i
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  %26 = tail call i32 @llvm.cttz.i32(i32 %25, i1 false) #7, !range !87
  %shl.i16.i = shl i32 %mul.i14.i, %26
  %neg.i17.i = xor i32 %25, -1
  %27 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  %and.i18.i = and i32 %27, %neg.i17.i
  %or.i19.i = or i32 %and.i18.i, %shl.i16.i
  store i32 %or.i19.i, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 1), align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_vc_init_channel(ptr noundef %voltdm) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.omap4_vc_init_pmic_signaling.exit_crit_edge

entry.omap4_vc_init_pmic_signaling.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %omap4_vc_init_pmic_signaling.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %voltdm, ptr @vc, align 4
  %write.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %1 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %write.i, align 4
  tail call void %2(i32 noundef 29482, i8 noundef zeroext 16) #7
  br label %omap4_vc_init_pmic_signaling.exit

omap4_vc_init_pmic_signaling.exit:                ; preds = %if.end.i, %entry.omap4_vc_init_pmic_signaling.exit_crit_edge
  tail call fastcc void @omap4_set_timings(ptr noundef %voltdm, i1 noundef zeroext true)
  tail call fastcc void @omap4_set_timings(ptr noundef %voltdm, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_vc_i2c_timing_init(ptr nocapture noundef readonly %voltdm) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pmic = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %0 = ptrtoint ptr %pmic to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pmic, align 4
  %i2c_high_speed = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %i2c_high_speed to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_high_speed, align 1, !range !88
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @sr_i2c_pcb_length, align 4
  %sub = add i32 %4, 7
  %div46 = lshr i32 %sub, 3
  %i2c_pad_load = getelementptr inbounds %struct.omap_voltdm_pmic, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %i2c_pad_load to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_pad_load, align 4
  %add1 = add i32 %6, 4
  %add3 = add i32 %add1, %div46
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %i2c_data.0 = phi ptr [ @omap4_i2c_timing_data, %if.end ], [ %incdec.ptr, %while.cond.while.cond_crit_edge ]
  %load = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 1
  %7 = ptrtoint ptr %load to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %load, align 1
  %conv = zext i8 %8 to i32
  %cmp = icmp ult i32 %add3, %conv
  %incdec.ptr = getelementptr %struct.i2c_init_data, ptr %i2c_data.0, i32 1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %sys_clk = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 12
  %9 = ptrtoint ptr %sys_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sys_clk, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %do.end16 [
    i32 38400000, label %sw.bb
    i32 26000000, label %sw.bb6
    i32 19200000, label %sw.bb8
    i32 16800000, label %sw.bb10
    i32 12000000, label %sw.bb12
  ]

sw.bb:                                            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %hsscll_38_4 = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 2
  br label %sw.epilog

sw.bb6:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %hsscll_26 = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 3
  br label %sw.epilog

sw.bb8:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %hsscll_19_2 = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %hsscll_16_8 = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 5
  br label %sw.epilog

sw.bb12:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %hsscll_12 = getelementptr inbounds %struct.i2c_init_data, ptr %i2c_data.0, i32 0, i32 6
  br label %sw.epilog

do.end16:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %10) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %hsscll.0.in.in = phi ptr [ %hsscll_12, %sw.bb12 ], [ %hsscll_16_8, %sw.bb10 ], [ %hsscll_19_2, %sw.bb8 ], [ %hsscll_26, %sw.bb6 ], [ %hsscll_38_4, %sw.bb ]
  %12 = ptrtoint ptr %hsscll.0.in.in to i32
  call void @__asan_load1_noabort(i32 %12)
  %hsscll.0.in = load i8, ptr %hsscll.0.in.in, align 1
  %13 = ptrtoint ptr %i2c_data.0 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_data.0, align 1
  %conv20 = zext i8 %14 to i32
  %shl = shl i32 %conv20, 25
  %shl23 = shl i32 %conv20, 29
  %or = or i32 %shl, %shl23
  %15 = lshr exact i32 %or, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -63838716 to ptr), i32 %15) #7, !srcloc !89
  %conv24 = zext i8 %hsscll.0.in to i32
  %shl25 = shl nuw i32 %conv24, 24
  %or26 = or i32 %shl25, 10284
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  tail call void %17(i32 noundef %or26, i8 noundef zeroext -84) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end16, %do.end
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_vc_init_pmic_signaling(ptr noundef %voltdm) unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vc, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  store ptr %voltdm, ptr @vc, align 4
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %1 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %read, align 4
  %call = tail call i32 %2(i8 noundef zeroext -100) #7
  %3 = and i32 %call, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %or = and i32 %call, -11
  %and5 = or i32 %or, 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug154, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap3_vc_init_pmic_signaling, %if.then10)) #7
          to label %do.end [label %if.then10], !srcloc !90

if.then10:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug154, ptr noundef nonnull @.str.25, i32 noundef %and5) #7
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.then4
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %5 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write, align 4
  tail call void %6(i32 noundef %and5, i8 noundef zeroext -100) #7
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %call14 = tail call i32 %8(i8 noundef zeroext 96) #7
  %and15 = and i32 %call14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end12.if.end36_crit_edge

if.end12.if.end36_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then17:                                        ; preds = %if.end12
  %or18 = or i32 %call14, 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug155, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap3_vc_init_pmic_signaling, %if.then31)) #7
          to label %do.end34 [label %if.then31], !srcloc !90

if.then31:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug155, ptr noundef nonnull @.str.26, i32 noundef %or18) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then31, %if.then17
  %write35 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %9 = ptrtoint ptr %write35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write35, align 4
  tail call void %10(i32 noundef %or18, i8 noundef zeroext 96) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end34, %if.end12.if.end36_crit_edge
  %val.0 = phi i32 [ %call14, %if.end12.if.end36_crit_edge ], [ %or18, %do.end34 ]
  store i32 %val.0, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 1), align 4
  tail call void @omap3_vc_set_pmic_signaling(i32 noundef 3)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_set_off_timings(ptr nocapture noundef readonly %voltdm) unnamed_addr #0 align 64 {
entry:
  %tstart = alloca i32, align 4
  %tshut = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstart) #7
  %0 = ptrtoint ptr %tstart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tstart, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tshut) #7
  %1 = ptrtoint ptr %tshut to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tshut, align 4, !annotation !86
  %2 = load i32, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @omap_pm_get_oscillator(ptr noundef nonnull %tstart, ptr noundef nonnull %tshut) #7
  %3 = ptrtoint ptr %tstart to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tstart, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap3_set_off_timings.__UNIQUE_ID_ddebug156, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@omap3_set_off_timings, %if.then5)) #7
          to label %do.end [label %if.then5], !srcloc !90

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @omap3_set_off_timings.__UNIQUE_ID_ddebug156, ptr noundef nonnull @.str.28) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %5 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 328679999) #12, !srcloc !91
  %6 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 328679999, i64 %5, i32 0) #12, !srcloc !92
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i32 %4 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 15
  %sub.i = add nuw nsw i64 %mul.i, 999999
  %7 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i) #12, !srcloc !91
  %8 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i, i64 %7, i32 0) #12, !srcloc !92
  br label %if.end9

if.end9:                                          ; preds = %if.else, %do.end
  %.sink = phi { i64, i32 } [ %8, %if.else ], [ %6, %do.end ]
  %asmresult10.i.i21 = extractvalue { i64, i32 } %.sink, 0
  %div163266.i22 = lshr i64 %asmresult10.i.i21, 18
  %conv186.i23 = trunc i64 %div163266.i22 to i32
  %9 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 16990783) #12, !srcloc !91
  %10 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 16990783, i64 %9, i32 0) #12, !srcloc !92
  %asmresult10.i.i24 = extractvalue { i64, i32 } %10, 0
  %div163266.i25 = lshr i64 %asmresult10.i.i24, 18
  %conv186.i26 = trunc i64 %div163266.i25 to i32
  %sub = sub i32 %conv186.i23, %conv186.i26
  store i32 %sub, ptr getelementptr inbounds (%struct.omap3_vc, ptr @vc, i32 0, i32 4, i32 0, i32 1), align 4
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %11 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write, align 4
  call void %12(i32 noundef %conv186.i23, i8 noundef zeroext -104) #7
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  call void %14(i32 noundef %conv186.i26, i8 noundef zeroext -108) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstart) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_pm_get_oscillator(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap4_set_timings(ptr nocapture noundef readonly %voltdm, i1 noundef zeroext %off_mode) unnamed_addr #0 align 64 {
entry:
  %tstart = alloca i32, align 4
  %tshut = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tstart) #7
  %0 = ptrtoint ptr %tstart to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tstart, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tshut) #7
  %1 = ptrtoint ptr %tshut to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tshut, align 4, !annotation !86
  %vc_param = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 8
  %2 = ptrtoint ptr %vc_param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc_param, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  br i1 %off_mode, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %off = getelementptr inbounds %struct.omap_vc_param, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %off, align 4
  %sub = sub i32 %5, %7
  %pmic.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %8 = ptrtoint ptr %pmic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pmic.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %div.i = udiv i32 %sub, %11
  %sys_clk.i = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 12
  %12 = ptrtoint ptr %sys_clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sys_clk.i, align 4
  %div1.i = udiv i32 %13, 1000
  %mul.i = mul i32 %div1.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095999, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 4095999
  %spec.select.v.i = select i1 %cmp.i, i32 256000, i32 64000
  %spec.select.i = udiv i32 %mul.i, %spec.select.v.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.select.i)
  %cmp5.i = icmp ugt i32 %spec.select.i, 63
  %div737.i = zext i1 %cmp5.i to i32
  %cycles.1.i = lshr i32 %spec.select.i, %div737.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cycles.1.i)
  %cmp10.i = icmp ugt i32 %cycles.1.i, 63
  %div1236.i = lshr i32 %cycles.1.i, 2
  %cycles.2.i = select i1 %cmp10.i, i32 %div1236.i, i32 %cycles.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cycles.2.i)
  %cmp15.i = icmp ugt i32 %cycles.2.i, 63
  br i1 %cmp15.i, label %do.end.i, label %if.end17.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %voltdm, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %15) #10
  br label %omap4_calc_volt_ramp.exit

if.end17.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %inc8.i = select i1 %cmp.i, i32 2, i32 1
  %spec.select38.i = zext i1 %cmp.i to i32
  %prescaler.1.i = select i1 %cmp5.i, i32 %inc8.i, i32 %spec.select38.i
  %inc13.i = zext i1 %cmp10.i to i32
  %prescaler.2.i = add nuw nsw i32 %prescaler.1.i, %inc13.i
  %inc18.i = add nuw nsw i32 %cycles.2.i, 1
  %shl.i = shl nuw nsw i32 %prescaler.2.i, 8
  %or.i = or i32 %shl.i, %inc18.i
  br label %omap4_calc_volt_ramp.exit

omap4_calc_volt_ramp.exit:                        ; preds = %if.end17.i, %do.end.i
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ %or.i, %if.end17.i ]
  %vfsm = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 4
  %16 = ptrtoint ptr %vfsm to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfsm, align 4
  %voltsetup_off_reg = getelementptr inbounds %struct.omap_vfsm_instance, ptr %17, i32 0, i32 2
  br label %if.end

if.else:                                          ; preds = %entry
  %ret = getelementptr inbounds %struct.omap_vc_param, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ret, align 4
  %sub5 = sub i32 %5, %19
  %pmic.i41 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 6
  %20 = ptrtoint ptr %pmic.i41 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmic.i41, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %div.i42 = udiv i32 %sub5, %23
  %sys_clk.i43 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 12
  %24 = ptrtoint ptr %sys_clk.i43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sys_clk.i43, align 4
  %div1.i44 = udiv i32 %25, 1000
  %mul.i45 = mul i32 %div1.i44, %div.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095999, i32 %mul.i45)
  %cmp.i46 = icmp ugt i32 %mul.i45, 4095999
  %spec.select.v.i47 = select i1 %cmp.i46, i32 256000, i32 64000
  %spec.select.i48 = udiv i32 %mul.i45, %spec.select.v.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %spec.select.i48)
  %cmp5.i49 = icmp ugt i32 %spec.select.i48, 63
  %div737.i50 = zext i1 %cmp5.i49 to i32
  %cycles.1.i51 = lshr i32 %spec.select.i48, %div737.i50
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cycles.1.i51)
  %cmp10.i52 = icmp ugt i32 %cycles.1.i51, 63
  %div1236.i53 = lshr i32 %cycles.1.i51, 2
  %cycles.2.i54 = select i1 %cmp10.i52, i32 %div1236.i53, i32 %cycles.1.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %cycles.2.i54)
  %cmp15.i55 = icmp ugt i32 %cycles.2.i54, 63
  br i1 %cmp15.i55, label %do.end.i57, label %if.end17.i66

do.end.i57:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %voltdm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %voltdm, align 4
  %call.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef %27) #10
  br label %omap4_calc_volt_ramp.exit68

if.end17.i66:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %inc8.i58 = select i1 %cmp.i46, i32 2, i32 1
  %spec.select38.i59 = zext i1 %cmp.i46 to i32
  %prescaler.1.i60 = select i1 %cmp5.i49, i32 %inc8.i58, i32 %spec.select38.i59
  %inc13.i61 = zext i1 %cmp10.i52 to i32
  %prescaler.2.i62 = add nuw nsw i32 %prescaler.1.i60, %inc13.i61
  %inc18.i63 = add nuw nsw i32 %cycles.2.i54, 1
  %shl.i64 = shl nuw nsw i32 %prescaler.2.i62, 8
  %or.i65 = or i32 %shl.i64, %inc18.i63
  br label %omap4_calc_volt_ramp.exit68

omap4_calc_volt_ramp.exit68:                      ; preds = %if.end17.i66, %do.end.i57
  %retval.0.i67 = phi i32 [ 0, %do.end.i57 ], [ %or.i65, %if.end17.i66 ]
  %vfsm7 = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 4
  %28 = ptrtoint ptr %vfsm7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vfsm7, align 4
  %voltsetup_reg = getelementptr inbounds %struct.omap_vfsm_instance, ptr %29, i32 0, i32 1
  br label %if.end

if.end:                                           ; preds = %omap4_calc_volt_ramp.exit68, %omap4_calc_volt_ramp.exit
  %ramp.0 = phi i32 [ %retval.0.i, %omap4_calc_volt_ramp.exit ], [ %retval.0.i67, %omap4_calc_volt_ramp.exit68 ]
  %offset.0.in.in = phi ptr [ %voltsetup_off_reg, %omap4_calc_volt_ramp.exit ], [ %voltsetup_reg, %omap4_calc_volt_ramp.exit68 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ramp.0)
  %tobool9.not = icmp eq i32 %ramp.0, 0
  br i1 %tobool9.not, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %offset.0.in.in to i32
  call void @__asan_load1_noabort(i32 %30)
  %offset.0.in40 = load i8, ptr %offset.0.in.in, align 1
  %read = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 9
  %31 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %read, align 4
  %call13 = tail call i32 %32(i8 noundef zeroext %offset.0.in40) #7
  %shl = shl i32 %ramp.0, 16
  %or = or i32 %shl, %ramp.0
  %or15 = or i32 %or, %call13
  %write = getelementptr inbounds %struct.voltagedomain, ptr %voltdm, i32 0, i32 10
  %33 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write, align 4
  tail call void %34(i32 noundef %or15, i8 noundef zeroext %offset.0.in40) #7
  call void @omap_pm_get_oscillator(ptr noundef nonnull %tstart, ptr noundef nonnull %tshut) #7
  %35 = ptrtoint ptr %tstart to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tstart, align 4
  %conv.i.i = zext i32 %36 to i64
  %mul.i.i = shl nuw nsw i64 %conv.i.i, 15
  %sub.i.i = add nuw nsw i64 %mul.i.i, 999999
  %37 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i.i) #12, !srcloc !91
  %38 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i.i, i64 %37, i32 0) #12, !srcloc !92
  %asmresult10.i.i.i = extractvalue { i64, i32 } %38, 0
  %div163266.i.i = lshr i64 %asmresult10.i.i.i, 18
  %conv186.i.i = trunc i64 %div163266.i.i to i32
  %39 = call i32 @llvm.umin.i32(i32 %conv186.i.i, i32 4095) #7
  %40 = ptrtoint ptr %tshut to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tshut, align 4
  %conv.i.i69 = zext i32 %41 to i64
  %mul.i.i70 = shl nuw nsw i64 %conv.i.i69, 15
  %sub.i.i71 = add nuw nsw i64 %mul.i.i70, 999999
  %42 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %sub.i.i71) #12, !srcloc !91
  %43 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %sub.i.i71, i64 %42, i32 0) #12, !srcloc !92
  %asmresult10.i.i.i72 = extractvalue { i64, i32 } %43, 0
  %sh.diff = lshr i64 %asmresult10.i.i.i72, 2
  %tr.sh.diff = trunc i64 %sh.diff to i32
  %shl.i75 = and i32 %tr.sh.diff, -65536
  %44 = call i32 @llvm.umin.i32(i32 %shl.i75, i32 4128768) #7
  %or19 = or i32 %44, %39
  %45 = call i32 @llvm.bswap.i32(i32 %or19)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -63921920 to ptr), i32 %45) #7, !srcloc !89
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tshut) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tstart) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !76}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/vc.c", i32 147, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_vc_pre_scale._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_vc_pre_scale._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/vc.c", i32 153, i32 3}
!8 = !{ptr @omap_vc_pre_scale._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap_vc_pre_scale._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/vc.c", i32 159, i32 3}
!12 = !{ptr @omap_vc_pre_scale._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @omap_vc_pre_scale._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/vc.c", i32 226, i32 4}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @omap_vc_bypass_scale._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @omap_vc_bypass_scale._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/vc.c", i32 830, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @omap_vc_init_channel._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap_vc_init_channel._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @omap_vc_init_channel._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/vc.c", i32 835, i32 3}
!26 = !{ptr @omap_vc_init_channel._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @vc_cfg_bits, !28, !"vc_cfg_bits", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/vc.c", i32 97, i32 36}
!29 = !{ptr @vc, !30, !"vc", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/vc.c", i32 260, i32 24}
!31 = !{ptr @sr_i2c_pcb_length, !32, !"sr_i2c_pcb_length", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/vc.c", i32 100, i32 12}
!33 = !{ptr @vc_mutant_channel_cfg, !34, !"vc_mutant_channel_cfg", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/vc.c", i32 89, i32 35}
!35 = !{ptr @vc_default_channel_cfg, !36, !"vc_default_channel_cfg", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/vc.c", i32 75, i32 35}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/vc.c", i32 799, i32 3}
!39 = !{ptr @__func__.omap_vc_calc_vsel, !38, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"initialized", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/vc.c", i32 748, i32 14}
!42 = !{ptr @omap_vc_i2c_init.i2c_high_speed, !43, !"i2c_high_speed", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/vc.c", i32 749, i32 14}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/vc.c", i32 754, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @omap_vc_i2c_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_vc_i2c_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/vc.c", i32 673, i32 3}
!51 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @omap4_vc_i2c_timing_init._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @omap4_vc_i2c_timing_init._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/vc.c", i32 710, i32 3}
!56 = !{ptr @omap4_vc_i2c_timing_init._entry.20, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap4_vc_i2c_timing_init._entry_ptr.22, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @omap4_i2c_timing_data, !59, !"omap4_i2c_timing_data", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/vc.c", i32 617, i32 35}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/vc.c", i32 347, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug154, !61, !"__UNIQUE_ID_ddebug154", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../arch/arm/mach-omap2/vc.c", i32 366, i32 3}
!67 = !{ptr @omap3_vc_init_pmic_signaling.__UNIQUE_ID_ddebug155, !66, !"__UNIQUE_ID_ddebug155", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/vc.c", i32 439, i32 3}
!70 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @omap3_set_off_timings.__UNIQUE_ID_ddebug156, !69, !"__UNIQUE_ID_ddebug156", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/vc.c", i32 510, i32 3}
!74 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @omap4_calc_volt_ramp._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @omap4_calc_volt_ramp._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{i32 0, i32 33}
!88 = !{i8 0, i8 2}
!89 = !{i64 2998841}
!90 = !{i64 2148714451, i64 2148714456, i64 2148714469, i64 2148714513, i64 2148714547, i64 2148714568}
!91 = !{i64 1137339, i64 1137366}
!92 = !{i64 1138034, i64 1138061, i64 1138094, i64 1138115, i64 1138142, i64 1138168}
