; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi5_core.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_video_format = type { i32, i32, i32 }
%struct.hdmi_config = type { %struct.videomode, %struct.hdmi_avi_infoframe, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_audio_format = type { i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_audio_dma = type { i8, i8, i32, i16 }
%struct.omap_dss_audio = type { ptr, ptr }
%struct.snd_cea_861_aud_if = type { i8, i8, i8, i8, i8 }

@hdmi5_core_ddc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013omapdss error: HDMI I2CM reset failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi5_core_ddc_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi5_core.c\00", [55 x i8] zeroinitializer }, align 32
@hdmi5_core_ddc_init._entry_ptr = internal global ptr @hdmi5_core_ddc_init._entry, section ".printk_index", align 4
@hdmi5_core_ddc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013omapdss error: HDMI I2C Master Error\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi5_core_ddc_read\00", [44 x i8] zeroinitializer }, align 32
@hdmi5_core_ddc_read._entry_ptr = internal global ptr @hdmi5_core_ddc_read._entry, section ".printk_index", align 4
@hdmi5_core_ddc_read._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013omapdss error: HDMI I2C timeout reading EDID\0A\00", [48 x i8] zeroinitializer }, align 32
@hdmi5_core_ddc_read._entry_ptr.7 = internal global ptr @hdmi5_core_ddc_read._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INVIDCONF\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INHACTIV0\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INHACTIV1\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INHBLANK0\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INHBLANK1\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INVACTIV0\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_INVACTIV1\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_INVBLANK\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_FC_HSYNCINDELAY0\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_FC_HSYNCINDELAY1\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_FC_HSYNCINWIDTH0\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_FC_HSYNCINWIDTH1\00", [37 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_CORE_FC_VSYNCINDELAY\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_CORE_FC_VSYNCINWIDTH\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_FC_CTRLDUR\00", [43 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_FC_EXCTRLDUR\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_FC_EXCTRLSPAC\00", [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_CH0PREAM\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_CH1PREAM\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_CH2PREAM\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_AVICONF0\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_AVICONF1\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_FC_AVICONF2\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_FC_AVIVID\00", [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_FC_PRCONF\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_MC_CLKDIS\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_MC_SWRSTZREQ\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_MC_FLOWCTRL\00", [42 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_MC_PHYRSTZ\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_MC_LOCKONCLOCK\00", [39 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_I2CM_SLAVE\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_I2CM_ADDRESS\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_I2CM_DATAO\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_I2CM_DATAI\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_I2CM_OPERATION\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_I2CM_INT\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_I2CM_CTLINT\00", [42 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_I2CM_DIV\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_I2CM_SEGADDR\00", [41 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_I2CM_SOFTRSTZ\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_I2CM_SEGPTR\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_SS_SCL_HCNT_1_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_SS_SCL_HCNT_0_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_SS_SCL_LCNT_1_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_SS_SCL_LCNT_0_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_FS_SCL_HCNT_1_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_FS_SCL_HCNT_0_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_FS_SCL_LCNT_1_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HDMI_CORE_I2CM_FS_SCL_LCNT_0_ADDR\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_I2CM_SDA_HOLD_ADDR\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hdmi_core_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 59, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_core_init\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_core_init\0A\00", [16 x i8] zeroinitializer }, align 32
@hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 94, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hdmi_core_write_avi_infoframe\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVI: \00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@hdmi_core_enable_video_path.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.60, ptr @.str.66, ptr @.str.2, ptr @.str.67, i8 0, i8 121, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"hdmi_core_enable_video_path\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi_core_enable_video_path\0A\00", [35 x i8] zeroinitializer }, align 32
@switch.table.hdmi5_audio_config = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 44100, i32 32000, i32 48000, i32 32000, i32 32000, i32 32000, i32 32000, i32 32000, i32 88200, i32 32000, i32 96000, i32 32000, i32 176400, i32 32000, i32 192000], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 46, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 151, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 163, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 180, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 181, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 182, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 183, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 184, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 185, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 186, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 187, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 188, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 189, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 190, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 191, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 192, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 193, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 194, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 195, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 196, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 197, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 198, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 199, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 200, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 201, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 202, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 203, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 204, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 206, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 207, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 208, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 209, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 210, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 212, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 213, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 214, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 215, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 216, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 217, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 218, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 219, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 220, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 221, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 222, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 223, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 224, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 225, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 226, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 227, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 228, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 229, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 230, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 231, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 875, i32 59 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 237, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 378, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [44 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 487, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [32 x i8] c"switch.table.hdmi5_audio_config\00", align 1
@llvm.compiler.used = appending global [73 x ptr] [ptr @hdmi5_core_ddc_init._entry, ptr @hdmi5_core_ddc_init._entry_ptr, ptr @hdmi5_core_ddc_read._entry, ptr @hdmi5_core_ddc_read._entry.5, ptr @hdmi5_core_ddc_read._entry_ptr, ptr @hdmi5_core_ddc_read._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @switch.table.hdmi5_audio_config], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_core_ddc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_core_ddc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi5_core_ddc_read._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hdmi5_audio_config to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi5_core_ddc_init(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88044
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %and = and i32 %2, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #4, !srcloc !146
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp.not.not2.not.i = icmp eq i32 %and1.i, 0
  br i1 %cmp.not.not2.not.i, label %entry.if.end.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %t.03.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %t.03.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.03.i)
  %cmp3.i = icmp ugt i32 %t.03.i, 9999
  %or.cond.i = select i1 %cmp.not.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %hdmi_wait_for_bit_change.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

hdmi_wait_for_bit_change.exit:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not.not, label %do.end, label %hdmi_wait_for_bit_change.exit.if.end_crit_edge

hdmi_wait_for_bit_change.exit.if.end_crit_edge:   ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %hdmi_wait_for_bit_change.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i1641 = getelementptr i8, ptr %1, i32 88036
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1641) #4, !srcloc !145
  %and5 = and i32 %6, -9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1641, i32 %and5) #4, !srcloc !146
  %7 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 126019999) #8, !srcloc !147
  %8 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 126019999, i64 %7, i32 0) #8, !srcloc !148
  %asmresult10.i = extractvalue { i64, i32 } %8, 0
  %div1751635 = lshr i64 %asmresult10.i, 18
  %conv198 = trunc i64 %div1751635 to i32
  %add.ptr.i1643 = getelementptr i8, ptr %1, i32 88052
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1643) #4, !srcloc !145
  %and200 = and i32 %9, -256
  %shr201 = lshr i32 %conv198, 8
  %and202 = and i32 %shr201, 255
  %or205 = or i32 %and202, %and200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1643, i32 %or205) #4, !srcloc !146
  %add.ptr.i1645 = getelementptr i8, ptr %1, i32 88056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1645) #4, !srcloc !145
  %and207 = and i32 %10, -256
  %and208 = and i32 %conv198, 255
  %or211 = or i32 %and207, %and208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1645, i32 %or211) #4, !srcloc !146
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 147299999) #8, !srcloc !147
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 147299999, i64 %11, i32 0) #8, !srcloc !148
  %asmresult10.i1647 = extractvalue { i64, i32 } %12, 0
  %div4111636 = lshr i64 %asmresult10.i1647, 18
  %conv438 = trunc i64 %div4111636 to i32
  %add.ptr.i1648 = getelementptr i8, ptr %1, i32 88060
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1648) #4, !srcloc !145
  %and440 = and i32 %13, -256
  %shr441 = lshr i32 %conv438, 8
  %and442 = and i32 %shr441, 255
  %or445 = or i32 %and442, %and440
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1648, i32 %or445) #4, !srcloc !146
  %add.ptr.i1650 = getelementptr i8, ptr %1, i32 88064
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1650) #4, !srcloc !145
  %and447 = and i32 %14, -256
  %and448 = and i32 %conv438, 255
  %or451 = or i32 %and447, %and448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1650, i32 %or451) #4, !srcloc !146
  %15 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 16959999) #8, !srcloc !147
  %16 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 16959999, i64 %15, i32 0) #8, !srcloc !148
  %asmresult10.i1652 = extractvalue { i64, i32 } %16, 0
  %div6511637 = lshr i64 %asmresult10.i1652, 18
  %conv678 = trunc i64 %div6511637 to i32
  %add.ptr.i1653 = getelementptr i8, ptr %1, i32 88068
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1653) #4, !srcloc !145
  %and680 = and i32 %17, -256
  %shr681 = lshr i32 %conv678, 8
  %and682 = and i32 %shr681, 255
  %or685 = or i32 %and682, %and680
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1653, i32 %or685) #4, !srcloc !146
  %add.ptr.i1655 = getelementptr i8, ptr %1, i32 88072
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1655) #4, !srcloc !145
  %and687 = and i32 %18, -256
  %and688 = and i32 %conv678, 255
  %or691 = or i32 %and687, %and688
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1655, i32 %or691) #4, !srcloc !146
  %19 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 35579999) #8, !srcloc !147
  %20 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 35579999, i64 %19, i32 0) #8, !srcloc !148
  %asmresult10.i1657 = extractvalue { i64, i32 } %20, 0
  %div8911638 = lshr i64 %asmresult10.i1657, 18
  %conv918 = trunc i64 %div8911638 to i32
  %add.ptr.i1658 = getelementptr i8, ptr %1, i32 88076
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1658) #4, !srcloc !145
  %and920 = and i32 %21, -256
  %shr921 = lshr i32 %conv918, 8
  %and922 = and i32 %shr921, 255
  %or925 = or i32 %and922, %and920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1658, i32 %or925) #4, !srcloc !146
  %add.ptr.i1660 = getelementptr i8, ptr %1, i32 88080
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1660) #4, !srcloc !145
  %and927 = and i32 %22, -256
  %and928 = and i32 %conv918, 255
  %or931 = or i32 %and927, %and928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1660, i32 %or931) #4, !srcloc !146
  %23 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 27599999) #8, !srcloc !147
  %24 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 27599999, i64 %23, i32 0) #8, !srcloc !148
  %asmresult10.i1662 = extractvalue { i64, i32 } %24, 0
  %25 = trunc i64 %asmresult10.i1662 to i32
  %26 = lshr i32 %25, 18
  %add.ptr.i1663 = getelementptr i8, ptr %1, i32 88084
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1663) #4, !srcloc !145
  %and1160 = and i32 %27, -256
  %and1161 = and i32 %26, 255
  %or1164 = or i32 %and1161, %and1160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1663, i32 %or1164) #4, !srcloc !146
  %add.ptr.i1665 = getelementptr i8, ptr %1, i32 88008
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1665) #4, !srcloc !145
  %and1166 = and i32 %28, -128
  %or1167 = or i32 %and1166, 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1665, i32 %or1167) #4, !srcloc !146
  %add.ptr.i1667 = getelementptr i8, ptr %1, i32 88040
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1667) #4, !srcloc !145
  %and1169 = and i32 %29, -128
  %or1170 = or i32 %and1169, 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1667, i32 %or1170) #4, !srcloc !146
  %add.ptr.i1669 = getelementptr i8, ptr %1, i32 88032
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1669) #4, !srcloc !145
  %or1173 = or i32 %30, 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1669, i32 %or1173) #4, !srcloc !146
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1669) #4, !srcloc !145
  %and1175 = and i32 %31, -65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1669, i32 %and1175) #4, !srcloc !146
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1669) #4, !srcloc !145
  %or1179 = or i32 %32, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1669, i32 %or1179) #4, !srcloc !146
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1669) #4, !srcloc !145
  %and1181 = and i32 %33, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1669, i32 %and1181) #4, !srcloc !146
  %add.ptr.i1677 = getelementptr i8, ptr %1, i32 88028
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1677) #4, !srcloc !145
  %or1185 = or i32 %34, 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1677, i32 %or1185) #4, !srcloc !146
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1677) #4, !srcloc !145
  %and1187 = and i32 %35, -5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1677, i32 %and1187) #4, !srcloc !146
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi5_core_ddc_uninit(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 88032
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %or = or i32 %2, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !146
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %or4 = or i32 %3, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or4) #4, !srcloc !146
  %add.ptr.i16 = getelementptr i8, ptr %1, i32 88028
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #4, !srcloc !145
  %or7 = or i32 %4, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %or7) #4, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi5_core_ddc_read(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %div83 = lshr i32 %block, 1
  %conv2 = shl i32 %block, 7
  %add.ptr.i = getelementptr i8, ptr %1, i32 88048
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %and = and i32 %2, -256
  %conv3 = and i32 %div83, 255
  %or = or i32 %and, %conv3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp104.not = icmp eq i32 %len, 0
  br i1 %cmp104.not, label %entry.cleanup57_crit_edge, label %for.body.lr.ph

entry.cleanup57_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %entry
  %conv = trunc i32 %div83 to i8
  %add.ptr.i85 = getelementptr i8, ptr %1, i32 1044
  %add.ptr.i87 = getelementptr i8, ptr %1, i32 88012
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool.not = icmp eq i8 %conv, 0
  %add.ptr.i89 = getelementptr i8, ptr %1, i32 88024
  %add.ptr.i94 = getelementptr i8, ptr %1, i32 88020
  br label %for.body

for.body:                                         ; preds = %for.inc54.for.body_crit_edge, %for.body.lr.ph
  %conv5106 = phi i32 [ 0, %for.body.lr.ph ], [ %conv5, %for.inc54.for.body_crit_edge ]
  %cur_addr.0105 = phi i8 [ 0, %for.body.lr.ph ], [ %inc55, %for.inc54.for.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #4, !srcloc !145
  %or9 = or i32 %3, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %or9) #4, !srcloc !146
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #4, !srcloc !145
  %and11 = and i32 %4, -256
  %add = add i32 %conv5106, %conv2
  %and15 = and i32 %add, 255
  %or16 = or i32 %and11, %and15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %or16) #4, !srcloc !146
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %or19 = or i32 %5, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %or19) #4, !srcloc !146
  br label %for.body26.preheader

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %or22 = or i32 %5, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 %or22) #4, !srcloc !146
  br label %for.body26.preheader

for.body26.preheader:                             ; preds = %if.else, %if.then
  br label %for.body26

for.body26:                                       ; preds = %for.inc.for.body26_crit_edge, %for.body26.preheader
  %i.0103 = phi i32 [ %inc, %for.inc.for.body26_crit_edge ], [ 0, %for.body26.preheader ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #4, !srcloc !145
  %and29 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end33, label %for.body26.cleanup57.sink.split_crit_edge

for.body26.cleanup57.sink.split_crit_edge:        ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57.sink.split

if.end33:                                         ; preds = %for.body26
  %and34 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %for.inc, label %for.inc54

for.inc:                                          ; preds = %if.end33
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #4
  %inc = add nuw nsw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, 1000
  br i1 %exitcond.not, label %for.inc.cleanup57.sink.split_crit_edge, label %for.inc.for.body26_crit_edge

for.inc.for.body26_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26

for.inc.cleanup57.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57.sink.split

for.inc54:                                        ; preds = %if.end33
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94) #4, !srcloc !145
  %conv50 = trunc i32 %7 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %conv5106
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv50, ptr %arrayidx, align 1
  %inc55 = add i8 %cur_addr.0105, 1
  %conv5 = zext i8 %inc55 to i32
  %cmp = icmp ult i32 %conv5, %len
  br i1 %cmp, label %for.inc54.for.body_crit_edge, label %for.inc54.cleanup57_crit_edge

for.inc54.cleanup57_crit_edge:                    ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup57

for.inc54.for.body_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup57.sink.split:                             ; preds = %for.inc.cleanup57.sink.split_crit_edge, %for.body26.cleanup57.sink.split_crit_edge
  %.str.3.sink = phi ptr [ @.str.3, %for.body26.cleanup57.sink.split_crit_edge ], [ @.str.6, %for.inc.cleanup57.sink.split_crit_edge ]
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.3.sink) #7
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.sink.split, %for.inc54.cleanup57_crit_edge, %entry.cleanup57_crit_edge
  %retval.5 = phi i32 [ 0, %entry.cleanup57_crit_edge ], [ -5, %cleanup57.sink.split ], [ 0, %for.inc54.cleanup57_crit_edge ]
  ret i32 %retval.5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi5_core_dump(ptr noundef readonly %core, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16384
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %2) #4
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %add.ptr.i197 = getelementptr i8, ptr %4, i32 16388
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i197) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10, i32 noundef %5) #4
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %add.ptr.i198 = getelementptr i8, ptr %7, i32 16392
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11, i32 noundef %8) #4
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %add.ptr.i199 = getelementptr i8, ptr %10, i32 16396
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i199) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.12, i32 noundef %11) #4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %add.ptr.i200 = getelementptr i8, ptr %13, i32 16400
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13, i32 noundef %14) #4
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %add.ptr.i201 = getelementptr i8, ptr %16, i32 16404
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i201) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.14, i32 noundef %17) #4
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %add.ptr.i202 = getelementptr i8, ptr %19, i32 16408
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15, i32 noundef %20) #4
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 4
  %add.ptr.i203 = getelementptr i8, ptr %22, i32 16412
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i203) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, i32 noundef %23) #4
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %add.ptr.i204 = getelementptr i8, ptr %25, i32 16416
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.17, i32 noundef %26) #4
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 4
  %add.ptr.i205 = getelementptr i8, ptr %28, i32 16420
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i205) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i32 noundef %29) #4
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 4
  %add.ptr.i206 = getelementptr i8, ptr %31, i32 16424
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.19, i32 noundef %32) #4
  %33 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core, align 4
  %add.ptr.i207 = getelementptr i8, ptr %34, i32 16428
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.20, i32 noundef %35) #4
  %36 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core, align 4
  %add.ptr.i208 = getelementptr i8, ptr %37, i32 16432
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.21, i32 noundef %38) #4
  %39 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core, align 4
  %add.ptr.i209 = getelementptr i8, ptr %40, i32 16436
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i209) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.22, i32 noundef %41) #4
  %42 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core, align 4
  %add.ptr.i210 = getelementptr i8, ptr %43, i32 16452
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.23, i32 noundef %44) #4
  %45 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core, align 4
  %add.ptr.i211 = getelementptr i8, ptr %46, i32 16456
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i211) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.24, i32 noundef %47) #4
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 4
  %add.ptr.i212 = getelementptr i8, ptr %49, i32 16460
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.25, i32 noundef %50) #4
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %add.ptr.i213 = getelementptr i8, ptr %52, i32 16464
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i213) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, i32 noundef %53) #4
  %54 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core, align 4
  %add.ptr.i214 = getelementptr i8, ptr %55, i32 16468
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.27, i32 noundef %56) #4
  %57 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %core, align 4
  %add.ptr.i215 = getelementptr i8, ptr %58, i32 16472
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.28, i32 noundef %59) #4
  %60 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %core, align 4
  %add.ptr.i216 = getelementptr i8, ptr %61, i32 16484
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.29, i32 noundef %62) #4
  %63 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core, align 4
  %add.ptr.i217 = getelementptr i8, ptr %64, i32 16488
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.30, i32 noundef %65) #4
  %66 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %core, align 4
  %add.ptr.i218 = getelementptr i8, ptr %67, i32 16492
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.31, i32 noundef %68) #4
  %69 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %core, align 4
  %add.ptr.i219 = getelementptr i8, ptr %70, i32 16496
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i219) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.32, i32 noundef %71) #4
  %72 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core, align 4
  %add.ptr.i220 = getelementptr i8, ptr %73, i32 17280
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.33, i32 noundef %74) #4
  %75 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %core, align 4
  %add.ptr.i221 = getelementptr i8, ptr %76, i32 65540
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i221) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.34, i32 noundef %77) #4
  %78 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %core, align 4
  %add.ptr.i222 = getelementptr i8, ptr %79, i32 65544
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.35, i32 noundef %80) #4
  %81 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core, align 4
  %add.ptr.i223 = getelementptr i8, ptr %82, i32 65552
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i223) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.36, i32 noundef %83) #4
  %84 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %core, align 4
  %add.ptr.i224 = getelementptr i8, ptr %85, i32 65556
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.37, i32 noundef %86) #4
  %87 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %core, align 4
  %add.ptr.i225 = getelementptr i8, ptr %88, i32 65560
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i225) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.38, i32 noundef %89) #4
  %90 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %core, align 4
  %add.ptr.i226 = getelementptr i8, ptr %91, i32 88008
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.39, i32 noundef %92) #4
  %93 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core, align 4
  %add.ptr.i227 = getelementptr i8, ptr %94, i32 88012
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i227) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.40, i32 noundef %95) #4
  %96 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %core, align 4
  %add.ptr.i228 = getelementptr i8, ptr %97, i32 88016
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i228) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.41, i32 noundef %98) #4
  %99 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %core, align 4
  %add.ptr.i229 = getelementptr i8, ptr %100, i32 88020
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.42, i32 noundef %101) #4
  %102 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %core, align 4
  %add.ptr.i230 = getelementptr i8, ptr %103, i32 88024
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.43, i32 noundef %104) #4
  %105 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %core, align 4
  %add.ptr.i231 = getelementptr i8, ptr %106, i32 88028
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i231) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.44, i32 noundef %107) #4
  %108 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %core, align 4
  %add.ptr.i232 = getelementptr i8, ptr %109, i32 88032
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i232) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.45, i32 noundef %110) #4
  %111 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %core, align 4
  %add.ptr.i233 = getelementptr i8, ptr %112, i32 88036
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.46, i32 noundef %113) #4
  %114 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %core, align 4
  %add.ptr.i234 = getelementptr i8, ptr %115, i32 88040
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i234) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.47, i32 noundef %116) #4
  %117 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core, align 4
  %add.ptr.i235 = getelementptr i8, ptr %118, i32 88044
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i235) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.48, i32 noundef %119) #4
  %120 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %core, align 4
  %add.ptr.i236 = getelementptr i8, ptr %121, i32 88048
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i236) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.49, i32 noundef %122) #4
  %123 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %core, align 4
  %add.ptr.i237 = getelementptr i8, ptr %124, i32 88052
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.50, i32 noundef %125) #4
  %126 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %core, align 4
  %add.ptr.i238 = getelementptr i8, ptr %127, i32 88056
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i238) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.51, i32 noundef %128) #4
  %129 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %core, align 4
  %add.ptr.i239 = getelementptr i8, ptr %130, i32 88060
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.52, i32 noundef %131) #4
  %132 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %core, align 4
  %add.ptr.i240 = getelementptr i8, ptr %133, i32 88064
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.53, i32 noundef %134) #4
  %135 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %core, align 4
  %add.ptr.i241 = getelementptr i8, ptr %136, i32 88068
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i241) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.54, i32 noundef %137) #4
  %138 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %core, align 4
  %add.ptr.i242 = getelementptr i8, ptr %139, i32 88072
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.55, i32 noundef %140) #4
  %141 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %core, align 4
  %add.ptr.i243 = getelementptr i8, ptr %142, i32 88076
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.56, i32 noundef %143) #4
  %144 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %core, align 4
  %add.ptr.i244 = getelementptr i8, ptr %145, i32 88080
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.57, i32 noundef %146) #4
  %147 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %core, align 4
  %add.ptr.i245 = getelementptr i8, ptr %148, i32 88084
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i245) #4, !srcloc !145
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.58, i32 noundef %149) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi5_core_handle_irqs(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %or = or i32 %2, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !146
  %add.ptr.i44 = getelementptr i8, ptr %1, i32 1028
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #4, !srcloc !145
  %or4 = or i32 %3, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %or4) #4, !srcloc !146
  %add.ptr.i46 = getelementptr i8, ptr %1, i32 1032
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #4, !srcloc !145
  %or7 = or i32 %4, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %or7) #4, !srcloc !146
  %add.ptr.i48 = getelementptr i8, ptr %1, i32 1036
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !145
  %or10 = or i32 %5, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %or10) #4, !srcloc !146
  %add.ptr.i50 = getelementptr i8, ptr %1, i32 1040
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #4, !srcloc !145
  %or13 = or i32 %6, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %or13) #4, !srcloc !146
  %add.ptr.i52 = getelementptr i8, ptr %1, i32 1044
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #4, !srcloc !145
  %or16 = or i32 %7, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %or16) #4, !srcloc !146
  %add.ptr.i54 = getelementptr i8, ptr %1, i32 1048
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i54) #4, !srcloc !145
  %or19 = or i32 %8, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 %or19) #4, !srcloc !146
  %add.ptr.i56 = getelementptr i8, ptr %1, i32 1052
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #4, !srcloc !145
  %or22 = or i32 %9, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %or22) #4, !srcloc !146
  %add.ptr.i58 = getelementptr i8, ptr %1, i32 1056
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #4, !srcloc !145
  %or25 = or i32 %10, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58, i32 %or25) #4, !srcloc !146
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi5_configure(ptr nocapture noundef readonly %core, ptr noundef %wp, ptr noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  %video_format = alloca %struct.hdmi_video_format, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #4
  %0 = call ptr @memset(ptr %vm, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %video_format) #4
  %1 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %video_format, align 4, !annotation !149
  %2 = getelementptr inbounds %struct.hdmi_video_format, ptr %video_format, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !149
  %4 = getelementptr inbounds %struct.hdmi_video_format, ptr %video_format, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !149
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 2044
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !145
  %or.i = or i32 %8, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #4, !srcloc !146
  %add.ptr.i104.i = getelementptr i8, ptr %7, i32 8220
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104.i) #4, !srcloc !145
  %or4.i = or i32 %9, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104.i, i32 %or4.i) #4, !srcloc !146
  %add.ptr.i106.i = getelementptr i8, ptr %7, i32 17224
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i106.i) #4, !srcloc !145
  %and6.i = and i32 %10, -256
  %or7.i = or i32 %and6.i, 231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106.i, i32 %or7.i) #4, !srcloc !146
  %add.ptr.i108.i = getelementptr i8, ptr %7, i32 17240
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i108.i) #4, !srcloc !145
  %and9.i = and i32 %11, -256
  %or10.i = or i32 %and9.i, 251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108.i, i32 %or10.i) #4, !srcloc !146
  %add.ptr.i110.i = getelementptr i8, ptr %7, i32 17256
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110.i) #4, !srcloc !145
  %or13.i = or i32 %12, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110.i, i32 %or13.i) #4, !srcloc !146
  %add.ptr.i112.i = getelementptr i8, ptr %7, i32 50184
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i112.i) #4, !srcloc !145
  %or16.i = or i32 %13, 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112.i, i32 %or16.i) #4, !srcloc !146
  %add.ptr.i114.i = getelementptr i8, ptr %7, i32 54296
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114.i) #4, !srcloc !145
  %or19.i = or i32 %14, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114.i, i32 %or19.i) #4, !srcloc !146
  %add.ptr.i116.i = getelementptr i8, ptr %7, i32 95240
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116.i) #4, !srcloc !145
  %or22.i = or i32 %15, 127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116.i, i32 %or22.i) #4, !srcloc !146
  %add.ptr.i118.i = getelementptr i8, ptr %7, i32 88032
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i) #4, !srcloc !145
  %or25.i = or i32 %16, 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 %or25.i) #4, !srcloc !146
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i118.i) #4, !srcloc !145
  %or28.i = or i32 %17, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118.i, i32 %or28.i) #4, !srcloc !146
  %add.ptr.i122.i = getelementptr i8, ptr %7, i32 88028
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122.i) #4, !srcloc !145
  %or31.i = or i32 %18, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122.i, i32 %or31.i) #4, !srcloc !146
  %add.ptr.i124.i = getelementptr i8, ptr %7, i32 49176
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124.i) #4, !srcloc !145
  %and33.i = and i32 %19, -256
  %or34.i = or i32 %and33.i, 243
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124.i, i32 %or34.i) #4, !srcloc !146
  %add.ptr.i126.i = getelementptr i8, ptr %7, i32 1040
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126.i) #4, !srcloc !145
  %or37.i = or i32 %20, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 %or37.i) #4, !srcloc !146
  %add.ptr.i128.i = getelementptr i8, ptr %7, i32 1052
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128.i) #4, !srcloc !145
  %or40.i = or i32 %21, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128.i, i32 %or40.i) #4, !srcloc !146
  %add.ptr.i130.i = getelementptr i8, ptr %7, i32 1024
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130.i) #4, !srcloc !145
  %and42.i = and i32 %22, -256
  %or43.i = or i32 %and42.i, 231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130.i, i32 %or43.i) #4, !srcloc !146
  %add.ptr.i132.i = getelementptr i8, ptr %7, i32 1028
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132.i) #4, !srcloc !145
  %and45.i = and i32 %23, -256
  %or46.i = or i32 %and45.i, 251
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132.i, i32 %or46.i) #4, !srcloc !146
  %add.ptr.i134.i = getelementptr i8, ptr %7, i32 1032
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134.i) #4, !srcloc !145
  %or49.i = or i32 %24, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134.i, i32 %or49.i) #4, !srcloc !146
  %add.ptr.i136.i = getelementptr i8, ptr %7, i32 1036
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136.i) #4, !srcloc !145
  %or52.i = or i32 %25, 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136.i, i32 %or52.i) #4, !srcloc !146
  %add.ptr.i138.i = getelementptr i8, ptr %7, i32 1048
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138.i) #4, !srcloc !145
  %or55.i = or i32 %26, 127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138.i, i32 %or55.i) #4, !srcloc !146
  %add.ptr.i140.i = getelementptr i8, ptr %7, i32 1044
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140.i) #4, !srcloc !145
  %or58.i = or i32 %27, 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140.i, i32 %or58.i) #4, !srcloc !146
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126.i) #4, !srcloc !145
  %or61.i = or i32 %28, 255
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126.i, i32 %or61.i) #4, !srcloc !146
  %hdmi_dvi_mode = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 2
  %29 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hdmi_dvi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp = icmp eq i32 %30, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %video_code = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 1, i32 12
  %31 = ptrtoint ptr %video_code to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %video_code, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cmp1 = icmp ugt i8 %32, 1
  %cond = select i1 %cmp1, i32 1, i32 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %range.0 = phi i32 [ %cond, %if.then ], [ 2, %entry.if.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi5_configure, %do.end.i)) #4
          to label %if.then.i [label %do.end.i], !srcloc !150

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_init.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.62) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %v_core_cfg.sroa.4.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 4
  %33 = ptrtoint ptr %v_core_cfg.sroa.4.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %33)
  %v_core_cfg.sroa.4.0.copyload = load i32, ptr %v_core_cfg.sroa.4.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.8.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 8
  %34 = ptrtoint ptr %v_core_cfg.sroa.8.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %v_core_cfg.sroa.8.0.copyload = load i32, ptr %v_core_cfg.sroa.8.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.14.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 16
  %35 = ptrtoint ptr %v_core_cfg.sroa.14.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %35)
  %v_core_cfg.sroa.14.0.copyload = load i32, ptr %v_core_cfg.sroa.14.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.18.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 20
  %36 = ptrtoint ptr %v_core_cfg.sroa.18.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %36)
  %v_core_cfg.sroa.18.0.copyload = load i32, ptr %v_core_cfg.sroa.18.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.22.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 24
  %37 = ptrtoint ptr %v_core_cfg.sroa.22.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %37)
  %v_core_cfg.sroa.22.0.copyload = load i32, ptr %v_core_cfg.sroa.22.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.27.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 32
  %38 = ptrtoint ptr %v_core_cfg.sroa.27.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %38)
  %v_core_cfg.sroa.27.0.copyload = load i32, ptr %v_core_cfg.sroa.27.0.cfg.sroa_idx, align 4
  %v_core_cfg.sroa.30.0.cfg.sroa_idx = getelementptr inbounds i8, ptr %cfg, i32 36
  %39 = ptrtoint ptr %v_core_cfg.sroa.30.0.cfg.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %v_core_cfg.sroa.30.0.copyload = load i32, ptr %v_core_cfg.sroa.30.0.cfg.sroa_idx, align 4
  %hback_porch.i = getelementptr inbounds %struct.videomode, ptr %cfg, i32 0, i32 3
  %40 = ptrtoint ptr %hback_porch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hback_porch.i, align 4
  %add.i = add i32 %41, %v_core_cfg.sroa.8.0.copyload
  %add8.i = add i32 %add.i, %v_core_cfg.sroa.14.0.copyload
  %add11.i = add i32 %v_core_cfg.sroa.22.0.copyload, %v_core_cfg.sroa.27.0.copyload
  %vback_porch.i = getelementptr inbounds %struct.videomode, ptr %cfg, i32 0, i32 7
  %42 = ptrtoint ptr %vback_porch.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vback_porch.i, align 4
  %add13.i = add i32 %add11.i, %43
  %44 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hdmi_dvi_mode, align 4
  %and.i = and i32 %v_core_cfg.sroa.30.0.copyload, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %do.end.i.if.end39.i_crit_edge, label %if.then18.i

do.end.i.if.end39.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end39.i

if.then18.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %div88.i = lshr i32 %v_core_cfg.sroa.18.0.copyload, 1
  %div26.i = sdiv i32 %add13.i, 2
  %div3089.i = lshr i32 %v_core_cfg.sroa.22.0.copyload, 1
  %div3490.i = lshr i32 %v_core_cfg.sroa.27.0.copyload, 1
  %46 = shl i32 %add13.i, 1
  %phi.bo = and i32 %46, 2
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then18.i, %do.end.i.if.end39.i_crit_edge
  %v_core_cfg.sroa.18.0 = phi i32 [ %v_core_cfg.sroa.18.0.copyload, %do.end.i.if.end39.i_crit_edge ], [ %div88.i, %if.then18.i ]
  %v_core_cfg.sroa.22.0 = phi i32 [ %v_core_cfg.sroa.22.0.copyload, %do.end.i.if.end39.i_crit_edge ], [ %div3089.i, %if.then18.i ]
  %v_core_cfg.sroa.27.0 = phi i32 [ %v_core_cfg.sroa.27.0.copyload, %do.end.i.if.end39.i_crit_edge ], [ %div3490.i, %if.then18.i ]
  %v_core_cfg.sroa.38.1 = phi i32 [ 0, %do.end.i.if.end39.i_crit_edge ], [ %phi.bo, %if.then18.i ]
  %v_core_cfg.sroa.45.0 = phi i32 [ %add13.i, %do.end.i.if.end39.i_crit_edge ], [ %div26.i, %if.then18.i ]
  %and42.i26 = and i32 %v_core_cfg.sroa.30.0.copyload, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i26)
  %tobool43.not.i = icmp eq i32 %and42.i26, 0
  br i1 %tobool43.not.i, label %if.end39.i.hdmi_core_init.exit_crit_edge, label %if.then44.i

if.end39.i.hdmi_core_init.exit_crit_edge:         ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdmi_core_init.exit

if.then44.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #6
  %mul.i = shl i32 %v_core_cfg.sroa.4.0.copyload, 1
  %mul48.i = shl i32 %add8.i, 1
  %mul52.i = shl i32 %v_core_cfg.sroa.8.0.copyload, 1
  %mul56.i = shl i32 %v_core_cfg.sroa.14.0.copyload, 1
  br label %hdmi_core_init.exit

hdmi_core_init.exit:                              ; preds = %if.then44.i, %if.end39.i.hdmi_core_init.exit_crit_edge
  %v_core_cfg.sroa.4.0 = phi i32 [ %v_core_cfg.sroa.4.0.copyload, %if.end39.i.hdmi_core_init.exit_crit_edge ], [ %mul.i, %if.then44.i ]
  %v_core_cfg.sroa.8.0 = phi i32 [ %v_core_cfg.sroa.8.0.copyload, %if.end39.i.hdmi_core_init.exit_crit_edge ], [ %mul52.i, %if.then44.i ]
  %v_core_cfg.sroa.14.0 = phi i32 [ %v_core_cfg.sroa.14.0.copyload, %if.end39.i.hdmi_core_init.exit_crit_edge ], [ %mul56.i, %if.then44.i ]
  %v_core_cfg.sroa.41.0 = phi i32 [ %add8.i, %if.end39.i.hdmi_core_init.exit_crit_edge ], [ %mul48.i, %if.then44.i ]
  call void @hdmi_wp_init_vid_fmt_timings(ptr noundef nonnull %video_format, ptr noundef nonnull %vm, ptr noundef %cfg) #4
  call void @hdmi_wp_video_config_timing(ptr noundef %wp, ptr noundef nonnull %vm) #4
  %47 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %video_format, align 4
  call void @hdmi_wp_video_config_format(ptr noundef %wp, ptr noundef nonnull %video_format) #4
  call void @hdmi_wp_video_config_interface(ptr noundef %wp, ptr noundef nonnull %vm) #4
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %49, i32 66564
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #4, !srcloc !145
  %and.i28 = and i32 %50, -241
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i27, i32 %and.i28) #4, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %range.0)
  %cond.i = icmp eq i32 %range.0, 2
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %52, i32 66568
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #4, !srcloc !145
  %and.i.i = and i32 %53, -128
  %54 = select i1 %cond.i, i16 8192, i16 7036
  %55 = lshr i16 %54, 8
  %and2.i.i = zext i16 %55 to i32
  %or.i.i = or i32 %and.i.i, %and2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %or.i.i) #4, !srcloc !146
  %add.ptr.i240.i.i = getelementptr i8, ptr %52, i32 66572
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i240.i.i) #4, !srcloc !145
  %and4.i.i = and i32 %56, -256
  %57 = and i16 %54, 124
  %and8.i.i = zext i16 %57 to i32
  %or9.i.i = or i32 %and4.i.i, %and8.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i240.i.i, i32 %or9.i.i) #4, !srcloc !146
  %add.ptr.i242.i.i = getelementptr i8, ptr %52, i32 66576
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i242.i.i) #4, !srcloc !145
  %and11.i.i = and i32 %58, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i242.i.i, i32 %and11.i.i) #4, !srcloc !146
  %add.ptr.i244.i.i = getelementptr i8, ptr %52, i32 66580
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i244.i.i) #4, !srcloc !145
  %and18.i.i = and i32 %59, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i244.i.i, i32 %and18.i.i) #4, !srcloc !146
  %add.ptr.i246.i.i = getelementptr i8, ptr %52, i32 66584
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i246.i.i) #4, !srcloc !145
  %and25.i.i = and i32 %60, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i246.i.i, i32 %and25.i.i) #4, !srcloc !146
  %add.ptr.i248.i.i = getelementptr i8, ptr %52, i32 66588
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i248.i.i) #4, !srcloc !145
  %and32.i.i = and i32 %61, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i248.i.i, i32 %and32.i.i) #4, !srcloc !146
  %add.ptr.i250.i.i = getelementptr i8, ptr %52, i32 66592
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i250.i.i) #4, !srcloc !145
  %and39.i.i = and i32 %62, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i250.i.i, i32 %and39.i.i) #4, !srcloc !146
  %add.ptr.i252.i.i = getelementptr i8, ptr %52, i32 66596
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i252.i.i) #4, !srcloc !145
  %and46.i.i = and i32 %63, -256
  %and50.i.i = select i1 %cond.i, i32 0, i32 32
  %or51.i.i = or i32 %and46.i.i, %and50.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i252.i.i, i32 %or51.i.i) #4, !srcloc !146
  %add.ptr.i254.i.i = getelementptr i8, ptr %52, i32 66600
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i254.i.i) #4, !srcloc !145
  %and53.i.i = and i32 %64, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i254.i.i, i32 %and53.i.i) #4, !srcloc !146
  %add.ptr.i256.i.i = getelementptr i8, ptr %52, i32 66604
  %65 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i256.i.i) #4, !srcloc !145
  %and60.i.i = and i32 %65, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i256.i.i, i32 %and60.i.i) #4, !srcloc !146
  %add.ptr.i258.i.i = getelementptr i8, ptr %52, i32 66608
  %66 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i258.i.i) #4, !srcloc !145
  %and67.i.i = and i32 %66, -128
  %or72.i.i = or i32 %and67.i.i, %and2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i258.i.i, i32 %or72.i.i) #4, !srcloc !146
  %add.ptr.i260.i.i = getelementptr i8, ptr %52, i32 66612
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i260.i.i) #4, !srcloc !145
  %and74.i.i = and i32 %67, -256
  %or79.i.i = or i32 %and74.i.i, %and8.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260.i.i, i32 %or79.i.i) #4, !srcloc !146
  %add.ptr.i262.i.i = getelementptr i8, ptr %52, i32 66616
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i262.i.i) #4, !srcloc !145
  %and81.i.i = and i32 %68, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262.i.i, i32 %and81.i.i) #4, !srcloc !146
  %add.ptr.i264.i.i = getelementptr i8, ptr %52, i32 66620
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i264.i.i) #4, !srcloc !145
  %and88.i.i = and i32 %69, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264.i.i, i32 %and88.i.i) #4, !srcloc !146
  %add.ptr.i266.i.i = getelementptr i8, ptr %52, i32 66624
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i266.i.i) #4, !srcloc !145
  %and95.i.i = and i32 %70, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266.i.i, i32 %and95.i.i) #4, !srcloc !146
  %add.ptr.i268.i.i = getelementptr i8, ptr %52, i32 66628
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i268.i.i) #4, !srcloc !145
  %and102.i.i = and i32 %71, -256
  %or107.i.i = or i32 %and102.i.i, %and50.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268.i.i, i32 %or107.i.i) #4, !srcloc !146
  %add.ptr.i270.i.i = getelementptr i8, ptr %52, i32 66632
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i270.i.i) #4, !srcloc !145
  %and109.i.i = and i32 %72, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270.i.i, i32 %and109.i.i) #4, !srcloc !146
  %add.ptr.i272.i.i = getelementptr i8, ptr %52, i32 66636
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i272.i.i) #4, !srcloc !145
  %and116.i.i = and i32 %73, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272.i.i, i32 %and116.i.i) #4, !srcloc !146
  %add.ptr.i274.i.i = getelementptr i8, ptr %52, i32 66640
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i274.i.i) #4, !srcloc !145
  %and123.i.i = and i32 %74, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274.i.i, i32 %and123.i.i) #4, !srcloc !146
  %add.ptr.i276.i.i = getelementptr i8, ptr %52, i32 66644
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i276.i.i) #4, !srcloc !145
  %and130.i.i = and i32 %75, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276.i.i, i32 %and130.i.i) #4, !srcloc !146
  %add.ptr.i278.i.i = getelementptr i8, ptr %52, i32 66648
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i278.i.i) #4, !srcloc !145
  %and137.i.i = and i32 %76, -128
  %or142.i.i = or i32 %and137.i.i, %and2.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278.i.i, i32 %or142.i.i) #4, !srcloc !146
  %add.ptr.i280.i.i = getelementptr i8, ptr %52, i32 66652
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i280.i.i) #4, !srcloc !145
  %and144.i.i = and i32 %77, -256
  %or149.i.i = or i32 %and144.i.i, %and8.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280.i.i, i32 %or149.i.i) #4, !srcloc !146
  %add.ptr.i282.i.i = getelementptr i8, ptr %52, i32 66656
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i282.i.i) #4, !srcloc !145
  %and151.i.i = and i32 %78, -128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282.i.i, i32 %and151.i.i) #4, !srcloc !146
  %add.ptr.i284.i.i = getelementptr i8, ptr %52, i32 66660
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i284.i.i) #4, !srcloc !145
  %and158.i.i = and i32 %79, -256
  %or163.i.i = or i32 %and158.i.i, %and50.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284.i.i, i32 %or163.i.i) #4, !srcloc !146
  %add.ptr.i286.i.i = getelementptr i8, ptr %52, i32 65552
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i286.i.i) #4, !srcloc !145
  %or166.i.i = or i32 %80, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286.i.i, i32 %or166.i.i) #4, !srcloc !146
  %quantization_range = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 1, i32 10
  %81 = ptrtoint ptr %quantization_range to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %range.0, ptr %quantization_range, align 4
  %82 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %core, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %83, i32 16384
  %84 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #4, !srcloc !145
  %and11.i = and i32 %84, 140
  %85 = shl i32 %v_core_cfg.sroa.30.0.copyload, 3
  %shl.i = and i32 %85, 64
  %86 = shl i32 %v_core_cfg.sroa.30.0.copyload, 4
  %shl20.i = and i32 %86, 32
  %and39.i = lshr i32 %v_core_cfg.sroa.30.0.copyload, 8
  %and39.lobit.i = and i32 %and39.i, 1
  %or.i31 = or i32 %shl.i, %shl20.i
  %or22.i32 = or i32 %or.i31, %and39.lobit.i
  %or28.i34 = or i32 %or22.i32, %v_core_cfg.sroa.38.1
  %or34.i37 = or i32 %or28.i34, %and11.i
  %or45.i = or i32 %or34.i37, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %or45.i) #4, !srcloc !146
  %add.ptr.i200.i = getelementptr i8, ptr %83, i32 16392
  %87 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200.i) #4, !srcloc !145
  %and49.i = and i32 %87, -32
  %shr.i = lshr i32 %v_core_cfg.sroa.4.0, 8
  %and51.i = and i32 %shr.i, 31
  %or52.i39 = or i32 %and49.i, %and51.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 %or52.i39) #4, !srcloc !146
  %add.ptr.i202.i = getelementptr i8, ptr %83, i32 16388
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202.i) #4, !srcloc !145
  %and54.i = and i32 %88, -256
  %and56.i = and i32 %v_core_cfg.sroa.4.0, 255
  %or59.i = or i32 %and54.i, %and56.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202.i, i32 %or59.i) #4, !srcloc !146
  %add.ptr.i204.i = getelementptr i8, ptr %83, i32 16408
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204.i) #4, !srcloc !145
  %and61.i = and i32 %89, -32
  %shr62.i = lshr i32 %v_core_cfg.sroa.18.0, 8
  %and64.i = and i32 %shr62.i, 31
  %or65.i = or i32 %and61.i, %and64.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204.i, i32 %or65.i) #4, !srcloc !146
  %add.ptr.i206.i = getelementptr i8, ptr %83, i32 16404
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i206.i) #4, !srcloc !145
  %and67.i = and i32 %90, -256
  %and69.i = and i32 %v_core_cfg.sroa.18.0, 255
  %or72.i = or i32 %and67.i, %and69.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206.i, i32 %or72.i) #4, !srcloc !146
  %add.ptr.i208.i = getelementptr i8, ptr %83, i32 16400
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208.i) #4, !srcloc !145
  %and74.i = and i32 %91, -32
  %92 = lshr i32 %v_core_cfg.sroa.41.0, 8
  %and77.i = and i32 %92, 31
  %or78.i = or i32 %and74.i, %and77.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208.i, i32 %or78.i) #4, !srcloc !146
  %add.ptr.i210.i = getelementptr i8, ptr %83, i32 16396
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i210.i) #4, !srcloc !145
  %and80.i = and i32 %93, -256
  %and82.i = and i32 %v_core_cfg.sroa.41.0, 255
  %or85.i = or i32 %and80.i, %and82.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i210.i, i32 %or85.i) #4, !srcloc !146
  %add.ptr.i212.i = getelementptr i8, ptr %83, i32 16412
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212.i) #4, !srcloc !145
  %and87.i = and i32 %94, -256
  %and89.i = and i32 %v_core_cfg.sroa.45.0, 255
  %or90.i = or i32 %and87.i, %and89.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212.i, i32 %or90.i) #4, !srcloc !146
  %add.ptr.i214.i = getelementptr i8, ptr %83, i32 16420
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i214.i) #4, !srcloc !145
  %and92.i = and i32 %95, -32
  %shr93.i = lshr i32 %v_core_cfg.sroa.8.0, 8
  %and95.i = and i32 %shr93.i, 31
  %or96.i = or i32 %and92.i, %and95.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i214.i, i32 %or96.i) #4, !srcloc !146
  %add.ptr.i216.i = getelementptr i8, ptr %83, i32 16416
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i216.i) #4, !srcloc !145
  %and98.i = and i32 %96, -256
  %and100.i = and i32 %v_core_cfg.sroa.8.0, 255
  %or103.i = or i32 %and98.i, %and100.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i216.i, i32 %or103.i) #4, !srcloc !146
  %add.ptr.i218.i = getelementptr i8, ptr %83, i32 16432
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i218.i) #4, !srcloc !145
  %and105.i = and i32 %97, -256
  %and107.i = and i32 %v_core_cfg.sroa.22.0, 255
  %or108.i = or i32 %and105.i, %and107.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i218.i, i32 %or108.i) #4, !srcloc !146
  %add.ptr.i220.i = getelementptr i8, ptr %83, i32 16428
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i220.i) #4, !srcloc !145
  %and110.i = and i32 %98, -4
  %shr111.i = lshr i32 %v_core_cfg.sroa.14.0, 8
  %and113.i = and i32 %shr111.i, 3
  %or114.i = or i32 %and110.i, %and113.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220.i, i32 %or114.i) #4, !srcloc !146
  %add.ptr.i222.i = getelementptr i8, ptr %83, i32 16424
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222.i) #4, !srcloc !145
  %and116.i = and i32 %99, -256
  %and118.i = and i32 %v_core_cfg.sroa.14.0, 255
  %or121.i = or i32 %and116.i, %and118.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222.i, i32 %or121.i) #4, !srcloc !146
  %add.ptr.i224.i = getelementptr i8, ptr %83, i32 16436
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i224.i) #4, !srcloc !145
  %and123.i = and i32 %100, -64
  %and125.i = and i32 %v_core_cfg.sroa.27.0, 63
  %or126.i = or i32 %and123.i, %and125.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i224.i, i32 %or126.i) #4, !srcloc !146
  %101 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i30) #4, !srcloc !145
  %and128.i = and i32 %101, -9
  %shl130.i = shl i32 %45, 3
  %and131.i = and i32 %shl130.i, 8
  %or132.i = or i32 %and128.i, %and131.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 %or132.i) #4, !srcloc !146
  %add.ptr.i230.i = getelementptr i8, ptr %83, i32 17280
  %102 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230.i) #4
  %and140.i = and i32 %102, -241
  br i1 %tobool43.not.i, label %if.else.i, label %if.then.i48

if.then.i48:                                      ; preds = %hdmi_core_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or138.i = or i32 %and140.i, 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230.i, i32 %or138.i) #4, !srcloc !146
  br label %hdmi_core_video_config.exit

if.else.i:                                        ; preds = %hdmi_core_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or141.i = or i32 %and140.i, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i230.i, i32 %or141.i) #4, !srcloc !146
  br label %hdmi_core_video_config.exit

hdmi_core_video_config.exit:                      ; preds = %if.else.i, %if.then.i48
  %103 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %core, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %104, i32 8196
  %105 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #4, !srcloc !145
  %and.i50 = and i32 %105, -241
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i49, i32 %and.i50) #4, !srcloc !146
  %add.ptr.i53.i = getelementptr i8, ptr %104, i32 8208
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !145
  %or7.i51 = or i32 %106, 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %or7.i51) #4, !srcloc !146
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !145
  %and9.i52 = and i32 %107, -33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %and9.i52) #4, !srcloc !146
  %108 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !145
  %and16.i = and i32 %108, -9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %and16.i) #4, !srcloc !146
  %add.ptr.i59.i = getelementptr i8, ptr %104, i32 8200
  %109 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #4, !srcloc !145
  %and19.i = and i32 %109, -3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %and19.i) #4, !srcloc !146
  %110 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i59.i) #4, !srcloc !145
  %or27.i = or i32 %110, 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59.i, i32 %or27.i) #4, !srcloc !146
  %111 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53.i) #4, !srcloc !145
  %and29.i = and i32 %111, -4
  %or34.i53 = or i32 %and29.i, 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53.i, i32 %or34.i53) #4, !srcloc !146
  %112 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %core, align 4
  %add.ptr.i.i54 = getelementptr i8, ptr %113, i32 2048
  %114 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i54) #4, !srcloc !145
  %and.i55 = and i32 %114, -32
  %or.i56 = or i32 %and.i55, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i54, i32 %or.i56) #4, !srcloc !146
  %115 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %hdmi_dvi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %116)
  %cmp5 = icmp eq i32 %116, 1
  br i1 %cmp5, label %if.then7, label %hdmi_core_video_config.exit.if.end9_crit_edge

hdmi_core_video_config.exit.if.end9_crit_edge:    ; preds = %hdmi_core_video_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then7:                                         ; preds = %hdmi_core_video_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  %infoframe3 = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 1
  call fastcc void @hdmi_core_write_avi_infoframe(ptr noundef %core, ptr noundef %infoframe3)
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %hdmi_core_video_config.exit.if.end9_crit_edge
  call fastcc void @hdmi_core_enable_video_path(ptr noundef %core)
  %117 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %118, i32 2044
  %119 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i57) #4, !srcloc !145
  %and.i58 = and i32 %119, -4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 %and.i58) #4, !srcloc !146
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %video_format) #4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_init_vid_fmt_timings(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_video_config_timing(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_video_config_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_video_config_interface(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_core_write_avi_infoframe(ptr nocapture noundef readonly %core, ptr noundef %frame) unnamed_addr #0 align 64 {
entry:
  %data = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %data) #4
  %2 = call ptr @memset(ptr %data, i32 255, i32 17)
  %call = call i32 @hdmi_avi_infoframe_pack(ptr noundef %frame, ptr noundef nonnull %data, i32 noundef 17) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_core_write_avi_infoframe, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @print_hex_dump(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 17, i1 noundef zeroext false) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 8
  %4 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 7
  %5 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 6
  %6 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 5
  %7 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %10 = lshr i32 %conv, 5
  %and = and i32 %10, 3
  %and15 = and i32 %conv, 12
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %6, align 1
  %conv21 = zext i8 %12 to i32
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %5, align 1
  %conv33 = zext i8 %14 to i32
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %4, align 1
  %conv49 = zext i8 %16 to i32
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv51 = zext i8 %18 to i32
  %19 = lshr i32 %conv51, 4
  %and61 = and i32 %conv51, 15
  %20 = shl nuw nsw i32 %conv, 2
  %shl = and i32 %20, 64
  %and19 = shl nuw nsw i32 %conv, 4
  %shl62 = and i32 %and19, 48
  %or = or i32 %shl62, %and15
  %or64 = or i32 %or, %shl
  %or66 = or i32 %or64, %and
  %add.ptr.i = getelementptr i8, ptr %1, i32 16484
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or66) #4, !srcloc !146
  %add.ptr.i107 = getelementptr i8, ptr %1, i32 16488
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %conv21) #4, !srcloc !146
  %add.ptr.i108 = getelementptr i8, ptr %1, i32 16492
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %conv33) #4, !srcloc !146
  %add.ptr.i109 = getelementptr i8, ptr %1, i32 16496
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %conv49) #4, !srcloc !146
  %add.ptr.i110 = getelementptr i8, ptr %1, i32 16476
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %19) #4, !srcloc !146
  %add.ptr.i111 = getelementptr i8, ptr %1, i32 17280
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !145
  %and83 = and i32 %21, -16
  %or86 = or i32 %and83, %and61
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %or86) #4, !srcloc !146
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hdmi_core_enable_video_path(ptr nocapture noundef readonly %core) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_enable_video_path.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_core_enable_video_path, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_enable_video_path.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.67) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 16452
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !145
  %and = and i32 %2, -256
  %or = or i32 %and, 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !146
  %add.ptr.i43 = getelementptr i8, ptr %1, i32 16456
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i43) #4, !srcloc !145
  %and7 = and i32 %3, -256
  %or8 = or i32 %and7, 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %or8) #4, !srcloc !146
  %add.ptr.i45 = getelementptr i8, ptr %1, i32 16460
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i45) #4, !srcloc !145
  %and10 = and i32 %4, -256
  %or11 = or i32 %and10, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i45, i32 %or11) #4, !srcloc !146
  %add.ptr.i47 = getelementptr i8, ptr %1, i32 16464
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #4, !srcloc !145
  %and13 = and i32 %5, -256
  %or14 = or i32 %and13, 11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %or14) #4, !srcloc !146
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 16468
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !145
  %and16 = and i32 %6, -64
  %or17 = or i32 %and16, 22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %or17) #4, !srcloc !146
  %add.ptr.i51 = getelementptr i8, ptr %1, i32 16472
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #4, !srcloc !145
  %and19 = and i32 %7, -64
  %or20 = or i32 %and19, 33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %or20) #4, !srcloc !146
  %add.ptr.i53 = getelementptr i8, ptr %1, i32 65540
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #4, !srcloc !145
  %and22 = and i32 %8, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %and22) #4, !srcloc !146
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #4, !srcloc !145
  %and25 = and i32 %9, -3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %and25) #4, !srcloc !146
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi5_audio_config(ptr noundef readonly %core, ptr noundef %wp, ptr noundef readonly %audio, i32 noundef %pclk) local_unnamed_addr #0 align 64 {
entry:
  %audio_format = alloca %struct.hdmi_audio_format, align 8
  %audio_dma = alloca %struct.hdmi_audio_dma, align 4
  %n = alloca i32, align 4
  %cts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %audio_format) #4
  %0 = ptrtoint ptr %audio_format to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %audio_format, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audio_dma) #4
  %1 = call ptr @memset(ptr %audio_dma, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !149
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cts) #4
  %3 = ptrtoint ptr %cts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cts, align 4, !annotation !149
  %tobool.not = icmp eq ptr %audio, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %audio, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %cea = getelementptr inbounds %struct.omap_dss_audio, ptr %audio, i32 0, i32 1
  %6 = ptrtoint ptr %cea to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cea, align 4
  %tobool3.not = icmp eq ptr %7, null
  %tobool5.not = icmp eq ptr %core, null
  %or.cond = or i1 %tobool5.not, %tobool3.not
  br i1 %or.cond, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  %arrayidx = getelementptr [24 x i8], ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %10)
  %.not = icmp eq i8 %10, 2
  br i1 %.not, label %if.then15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %arrayidx22 = getelementptr [24 x i8], ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx22, align 1
  %13 = and i8 %12, 15
  %and24 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %13)
  %.not100 = icmp eq i8 %13, 15
  br i1 %.not100, label %if.then15.cleanup_crit_edge, label %switch.hole_check

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.then15
  %switch.maskindex = zext i8 %13 to i16
  %switch.shifted = lshr i16 21773, %switch.maskindex
  %14 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %switch.lobit.not = icmp eq i16 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.hdmi5_audio_config, i32 0, i32 %and24
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = call i32 @hdmi_compute_acr(i32 noundef %pclk, i32 noundef %switch.load, ptr noundef nonnull %n, ptr noundef nonnull %cts) #4
  %16 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n, align 4
  %18 = ptrtoint ptr %cts to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cts, align 4
  %20 = ptrtoint ptr %cea to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cea, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %24 = and i8 %23, 7
  %narrow = add nuw nsw i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %narrow)
  %switch.selectcmp = icmp eq i8 %narrow, 6
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow)
  %switch.selectcmp98 = icmp eq i8 %narrow, 2
  %switch.select99 = select i1 %switch.selectcmp98, i32 0, i32 %switch.select
  %25 = ptrtoint ptr %audio_dma to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 16, ptr %audio_dma, align 4
  %block_size = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 1
  %26 = ptrtoint ptr %block_size to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -64, ptr %block_size, align 1
  %mode = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 2
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %mode, align 4
  %fifo_threshold = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 3
  %28 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 32, ptr %fifo_threshold, align 4
  %samples_per_word = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 5
  %29 = ptrtoint ptr %samples_per_word to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %samples_per_word, align 4
  %sample_size = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 6
  %30 = ptrtoint ptr %sample_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %sample_size, align 8
  %justification = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 3
  %31 = ptrtoint ptr %justification to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %justification, align 4
  %sample_order = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 4
  %type = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 2
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %type, align 8
  %33 = ptrtoint ptr %sample_order to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %sample_order, align 8
  %en_sig_blk_strt_end = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 7
  %34 = ptrtoint ptr %en_sig_blk_strt_end to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %en_sig_blk_strt_end, align 4
  call void @hdmi_wp_audio_config_dma(ptr noundef %wp, ptr noundef nonnull %audio_dma) #4
  call void @hdmi_wp_audio_config_format(ptr noundef %wp, ptr noundef nonnull %audio_format) #4
  %35 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %core, align 4
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 16780
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !145
  %or.i = or i32 %37, 240
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #4, !srcloc !146
  %add.ptr.i347.i = getelementptr i8, ptr %36, i32 51200
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i347.i) #4, !srcloc !145
  %and3.i = and i32 %38, -256
  %and4.i = and i32 %17, 255
  %or5.i = or i32 %and3.i, %and4.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i347.i, i32 %or5.i) #4, !srcloc !146
  %add.ptr.i349.i = getelementptr i8, ptr %36, i32 51204
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i349.i) #4, !srcloc !145
  %and7.i = and i32 %39, -256
  %shr.i = lshr i32 %17, 8
  %and10.i = and i32 %shr.i, 255
  %or11.i = or i32 %and7.i, %and10.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i349.i, i32 %or11.i) #4, !srcloc !146
  %add.ptr.i351.i = getelementptr i8, ptr %36, i32 51208
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i351.i) #4, !srcloc !145
  %and13.i = and i32 %40, -16
  %shr15.i = lshr i32 %17, 16
  %and17.i = and i32 %shr15.i, 15
  %or18.i = or i32 %and13.i, %and17.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i351.i, i32 %or18.i) #4, !srcloc !146
  %add.ptr.i353.i = getelementptr i8, ptr %36, i32 51220
  %41 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i353.i) #4, !srcloc !145
  %or21.i = or i32 %41, 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i353.i, i32 %or21.i) #4, !srcloc !146
  %add.ptr.i355.i = getelementptr i8, ptr %36, i32 51212
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i355.i) #4, !srcloc !145
  %and23.i = and i32 %42, -256
  %and25.i = and i32 %19, 255
  %or26.i = or i32 %and23.i, %and25.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i355.i, i32 %or26.i) #4, !srcloc !146
  %add.ptr.i357.i = getelementptr i8, ptr %36, i32 51216
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i357.i) #4, !srcloc !145
  %and28.i = and i32 %43, -256
  %shr30.i = lshr i32 %19, 8
  %and32.i = and i32 %shr30.i, 255
  %or33.i = or i32 %and28.i, %and32.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357.i, i32 %or33.i) #4, !srcloc !146
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i353.i) #4, !srcloc !145
  %and35.i = and i32 %44, -16
  %shr37.i = lshr i32 %19, 16
  %and39.i = and i32 %shr37.i, 15
  %or40.i = or i32 %and35.i, %and39.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i353.i, i32 %or40.i) #4, !srcloc !146
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4
  br i1 %switch.selectcmp98, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %and42.i = and i32 %45, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and42.i) #4, !srcloc !146
  br label %if.end.i

if.else.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  %or46.i = or i32 %45, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or46.i) #4, !srcloc !146
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %shl78.i = phi i32 [ 0, %if.else.i ], [ 64, %if.then.i ]
  %shl72.i = phi i32 [ 0, %if.else.i ], [ 4, %if.then.i ]
  %shl66.i = phi i32 [ 0, %if.else.i ], [ 32, %if.then.i ]
  %shl60.i = phi i32 [ 0, %if.else.i ], [ 2, %if.then.i ]
  %add.ptr.i365.i = getelementptr i8, ptr %36, i32 16788
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and48.i = and i32 %46, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %and48.i) #4, !srcloc !146
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and51.i = and i32 %47, -17
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %and51.i) #4, !srcloc !146
  %48 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and59.i = and i32 %48, -3
  %or62.i = or i32 %and59.i, %shl60.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or62.i) #4, !srcloc !146
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and64.i = and i32 %49, -33
  %or68.i = or i32 %and64.i, %shl66.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or68.i) #4, !srcloc !146
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and70.i = and i32 %50, -5
  %or74.i = or i32 %and70.i, %shl72.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or74.i) #4, !srcloc !146
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and76.i = and i32 %51, -65
  %or80.i = or i32 %and76.i, %shl78.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or80.i) #4, !srcloc !146
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %switch.select99)
  %cmp82.i = icmp eq i32 %switch.select99, 2
  %narrow.i = or i1 %switch.selectcmp98, %cmp82.i
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and87.i = and i32 %52, -9
  %shl89.i = select i1 %narrow.i, i32 8, i32 0
  %or91.i = or i32 %and87.i, %shl89.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or91.i) #4, !srcloc !146
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i365.i) #4, !srcloc !145
  %and93.i = and i32 %53, -129
  %shl95.i = select i1 %narrow.i, i32 128, i32 0
  %or97.i = or i32 %and93.i, %shl95.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i365.i, i32 %or97.i) #4, !srcloc !146
  %add.ptr.i381.i = getelementptr i8, ptr %36, i32 16792
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i381.i) #4, !srcloc !145
  %and99.i = and i32 %54, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i381.i, i32 %and99.i) #4, !srcloc !146
  %arrayidx.i = getelementptr [24 x i8], ptr %5, i32 0, i32 5
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx.i, align 1
  %add.ptr.i383.i = getelementptr i8, ptr %36, i32 16796
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383.i) #4, !srcloc !145
  %and105.i = and i32 %57, -49
  %58 = shl i8 %56, 4
  %59 = and i8 %58, 48
  %and108.i = zext i8 %59 to i32
  %or109.i = or i32 %and105.i, %and108.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i383.i, i32 %or109.i) #4, !srcloc !146
  %60 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %5, align 1
  %62 = lshr i8 %61, 2
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i383.i) #4, !srcloc !145
  %and118.i = and i32 %63, -2
  %64 = and i8 %62, 1
  %and121.i = zext i8 %64 to i32
  %or122.i = or i32 %and118.i, %and121.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i383.i, i32 %or122.i) #4, !srcloc !146
  %arrayidx125.i = getelementptr [24 x i8], ptr %5, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx125.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx125.i, align 1
  %conv126.i = zext i8 %66 to i32
  %add.ptr.i387.i = getelementptr i8, ptr %36, i32 16800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i387.i, i32 %conv126.i) #4, !srcloc !146
  %67 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %5, align 1
  %add.ptr.i388.i = getelementptr i8, ptr %36, i32 16804
  %69 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388.i) #4, !srcloc !145
  %and135.i = and i32 %69, -113
  %70 = lshr i8 %68, 2
  %71 = and i8 %70, 48
  %and138.i = zext i8 %71 to i32
  %or139.i = or i32 %and135.i, %and138.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388.i, i32 %or139.i) #4, !srcloc !146
  %arrayidx142.i = getelementptr [24 x i8], ptr %5, i32 0, i32 2
  %72 = ptrtoint ptr %arrayidx142.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx142.i, align 1
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i388.i) #4, !srcloc !145
  %and147.i = and i32 %74, -16
  %75 = and i8 %73, 15
  %and150.i = zext i8 %75 to i32
  %or151.i = or i32 %and147.i, %and150.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i388.i, i32 %or151.i) #4, !srcloc !146
  %add.ptr.i392.i = getelementptr i8, ptr %36, i32 16808
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392.i) #4, !srcloc !145
  %and153.i = and i32 %76, -16
  %or154.i = or i32 %and153.i, 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392.i, i32 %or154.i) #4, !srcloc !146
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i392.i) #4, !srcloc !145
  %and156.i = and i32 %77, -241
  %or157.i = or i32 %and156.i, 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i392.i, i32 %or157.i) #4, !srcloc !146
  %add.ptr.i396.i = getelementptr i8, ptr %36, i32 16812
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396.i) #4, !srcloc !145
  %and159.i = and i32 %78, -16
  %or160.i = or i32 %and159.i, 6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396.i, i32 %or160.i) #4, !srcloc !146
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i396.i) #4, !srcloc !145
  %and162.i = and i32 %79, -241
  %or163.i = or i32 %and162.i, 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i396.i, i32 %or163.i) #4, !srcloc !146
  %add.ptr.i400.i = getelementptr i8, ptr %36, i32 16816
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i400.i) #4, !srcloc !145
  %and165.i = and i32 %80, -16
  %or166.i = or i32 %and165.i, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400.i, i32 %or166.i) #4, !srcloc !146
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i400.i) #4, !srcloc !145
  %and168.i = and i32 %81, -241
  %or169.i = or i32 %and168.i, 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i400.i, i32 %or169.i) #4, !srcloc !146
  %add.ptr.i404.i = getelementptr i8, ptr %36, i32 16820
  %82 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404.i) #4, !srcloc !145
  %and171.i = and i32 %82, -16
  %or172.i = or i32 %and171.i, 5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404.i, i32 %or172.i) #4, !srcloc !146
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i404.i) #4, !srcloc !145
  %and174.i = and i32 %83, -241
  %or175.i = or i32 %and174.i, 112
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i404.i, i32 %or175.i) #4, !srcloc !146
  %84 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx22, align 1
  %conv179.i = zext i8 %85 to i32
  %add.ptr.i408.i = getelementptr i8, ptr %36, i32 16824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i408.i, i32 %conv179.i) #4, !srcloc !146
  %86 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx, align 1
  %conv183.i = zext i8 %87 to i32
  %add.ptr.i409.i = getelementptr i8, ptr %36, i32 16828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i409.i, i32 %conv183.i) #4, !srcloc !146
  %add.ptr.i410.i = getelementptr i8, ptr %36, i32 50184
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i410.i) #4, !srcloc !145
  %or186.i = or i32 %88, 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i410.i, i32 %or186.i) #4, !srcloc !146
  %89 = zext i32 %switch.select99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values)
  switch i32 %switch.select99, label %if.else208.i [
    i32 0, label %if.then190.i
    i32 2, label %if.then201.i
  ]

if.then190.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i412.i = getelementptr i8, ptr %36, i32 50176
  %90 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412.i) #4, !srcloc !145
  %and192.i = and i32 %90, -33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i412.i, i32 %and192.i) #4, !srcloc !146
  %add.ptr.i414.i = getelementptr i8, ptr %36, i32 54276
  %91 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414.i) #4, !srcloc !145
  %and195.i = and i32 %91, -256
  %or196.i = or i32 %and195.i, 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i414.i, i32 %or196.i) #4, !srcloc !146
  br label %hdmi5_core_audio_config.exit

if.then201.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i416.i = getelementptr i8, ptr %36, i32 50176
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i416.i) #4, !srcloc !145
  %and203.i = and i32 %92, -33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i416.i, i32 %and203.i) #4, !srcloc !146
  %add.ptr.i418.i = getelementptr i8, ptr %36, i32 54276
  %93 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418.i) #4, !srcloc !145
  %and206.i = and i32 %93, -256
  %or207.i = or i32 %and206.i, 63
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i418.i, i32 %or207.i) #4, !srcloc !146
  br label %hdmi5_core_audio_config.exit

if.else208.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i420.i = getelementptr i8, ptr %36, i32 50176
  %94 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420.i) #4, !srcloc !145
  %and210.i = and i32 %94, -33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i420.i, i32 %and210.i) #4, !srcloc !146
  %add.ptr.i422.i = getelementptr i8, ptr %36, i32 54276
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422.i) #4, !srcloc !145
  %or214.i = or i32 %95, 255
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i422.i, i32 %or214.i) #4, !srcloc !146
  br label %hdmi5_core_audio_config.exit

hdmi5_core_audio_config.exit:                     ; preds = %if.else208.i, %if.then201.i, %if.then190.i
  %add.ptr.i424.i = getelementptr i8, ptr %36, i32 54280
  %96 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424.i) #4, !srcloc !145
  %and218.i = and i32 %96, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424.i, i32 %and218.i) #4, !srcloc !146
  %97 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424.i) #4, !srcloc !145
  %or222.i = or i32 %97, 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i424.i, i32 %or222.i) #4, !srcloc !146
  %add.ptr.i428.i = getelementptr i8, ptr %36, i32 54296
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428.i) #4, !srcloc !145
  %or225.i = or i32 %98, 3
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i428.i, i32 %or225.i) #4, !srcloc !146
  %add.ptr.i430.i = getelementptr i8, ptr %36, i32 54292
  %99 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430.i) #4, !srcloc !145
  %or228.i = or i32 %99, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i430.i, i32 %or228.i) #4, !srcloc !146
  %100 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !145
  %and230.i = and i32 %100, -241
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %and230.i) #4, !srcloc !146
  %101 = ptrtoint ptr %cea to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %cea, align 4
  %103 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %core, align 4
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %102, align 1
  %conv.i = zext i8 %106 to i32
  %and.i = shl nuw nsw i32 %conv.i, 4
  %shl.i = and i32 %and.i, 112
  %107 = lshr i32 %conv.i, 4
  %or.i74 = or i32 %shl.i, %107
  %add.ptr.i.i75 = getelementptr i8, ptr %104, i32 16532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i75, i32 %or.i74) #4, !srcloc !146
  %db2_sf_ss.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %102, i32 0, i32 1
  %108 = ptrtoint ptr %db2_sf_ss.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %db2_sf_ss.i, align 1
  %conv5.i = zext i8 %109 to i32
  %add.ptr.i22.i = getelementptr i8, ptr %104, i32 16536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 %conv5.i) #4, !srcloc !146
  %db4_ca.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %102, i32 0, i32 3
  %110 = ptrtoint ptr %db4_ca.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %db4_ca.i, align 1
  %conv6.i = zext i8 %111 to i32
  %add.ptr.i23.i = getelementptr i8, ptr %104, i32 16540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 %conv6.i) #4, !srcloc !146
  %db5_dminh_lsv.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %102, i32 0, i32 4
  %112 = ptrtoint ptr %db5_dminh_lsv.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %db5_dminh_lsv.i, align 1
  %conv7.i = zext i8 %113 to i32
  %and8.i = lshr i32 %conv7.i, 3
  %114 = and i32 %and8.i, 16
  %and12.i = and i32 %conv7.i, 120
  %or13.i = or i32 %114, %and12.i
  %add.ptr.i24.i = getelementptr i8, ptr %104, i32 16544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 %or13.i) #4, !srcloc !146
  br label %cleanup

cleanup:                                          ; preds = %hdmi5_core_audio_config.exit, %switch.hole_check.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hdmi5_core_audio_config.exit ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cts) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %audio_dma) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %audio_format) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_compute_acr(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_audio_config_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hdmi_wp_audio_config_format(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi5_core_init(ptr noundef %pdev, ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.59) #4
  %0 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %core, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call to i32
  %spec.select = select i1 %cmp.i, i32 %1, i32 0
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !122, !123, !125, !127, !129, !130, !131, !132, !134, !135}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 46, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hdmi5_core_ddc_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hdmi5_core_ddc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 151, i32 5}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @hdmi5_core_ddc_read._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @hdmi5_core_ddc_read._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 163, i32 4}
!13 = !{ptr @hdmi5_core_ddc_read._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @hdmi5_core_ddc_read._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 180, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 181, i32 2}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 182, i32 2}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 183, i32 2}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 184, i32 2}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 185, i32 2}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 186, i32 2}
!30 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 187, i32 2}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 188, i32 2}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 189, i32 2}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 190, i32 2}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 191, i32 2}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 192, i32 2}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 193, i32 2}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 194, i32 2}
!46 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 195, i32 2}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 196, i32 2}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 197, i32 2}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 198, i32 2}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 199, i32 2}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 200, i32 2}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 201, i32 2}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 202, i32 2}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 203, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 204, i32 2}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 206, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 207, i32 2}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 208, i32 2}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 209, i32 2}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 210, i32 2}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 212, i32 2}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 213, i32 2}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 214, i32 2}
!82 = !{ptr @.str.42, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 215, i32 2}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 216, i32 2}
!86 = !{ptr @.str.44, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 217, i32 2}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 218, i32 2}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 219, i32 2}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 220, i32 2}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 221, i32 2}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 222, i32 2}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 223, i32 2}
!100 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 224, i32 2}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 225, i32 2}
!104 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 226, i32 2}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 227, i32 2}
!108 = !{ptr @.str.55, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 228, i32 2}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 229, i32 2}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 230, i32 2}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 231, i32 2}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 875, i32 59}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 237, i32 2}
!120 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @hdmi_core_init.__UNIQUE_ID_ddebug307, !119, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!123 = distinct !{null, !124, !"csc_limited_range", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 457, i32 32}
!125 = distinct !{null, !126, !"csc_full_range", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 460, i32 32}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 378, i32 2}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug308, !128, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!131 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.66, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi5_core.c", i32 487, i32 2}
!134 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @hdmi_core_enable_video_path.__UNIQUE_ID_ddebug309, !133, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 4061369}
!146 = !{i64 4060951}
!147 = !{i64 1139734, i64 1139761}
!148 = !{i64 1140429, i64 1140456, i64 1140489, i64 1140510, i64 1140537, i64 1140563}
!149 = !{!"auto-init"}
!150 = !{i64 2148716846, i64 2148716851, i64 2148716864, i64 2148716908, i64 2148716942, i64 2148716963}
