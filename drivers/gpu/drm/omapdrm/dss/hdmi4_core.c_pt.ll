; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/hdmi4_core.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi4_features = type { i8, i8 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_video_format = type { i32, i32, i32 }
%struct.hdmi_config = type { %struct.videomode, %struct.hdmi_avi_infoframe, i32 }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.hdmi_audio_format = type { i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_audio_dma = type { i8, i8, i32, i16 }
%struct.omap_dss_audio = type { ptr, ptr }
%struct.hdmi_core_data = type { ptr, i8, i8, ptr, i32, ptr }
%struct.snd_cea_861_aud_if = type { i8, i8, i8, i8, i8 }

@hdmi4_core_ddc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013HDMICORE: omapdss HDMICORE error: Timeout aborting DDC transaction\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi4_core_ddc_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/omapdrm/dss/hdmi4_core.c\00", [55 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_init._entry_ptr = internal global ptr @hdmi4_core_ddc_init._entry, section ".printk_index", align 4
@hdmi4_core_ddc_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013HDMICORE: omapdss HDMICORE error: Timeout starting SCL clock\0A\00", [32 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_init._entry_ptr.5 = internal global ptr @hdmi4_core_ddc_init._entry.3, section ".printk_index", align 4
@hdmi4_core_ddc_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 70, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013HDMICORE: omapdss HDMICORE error: Timeout clearing DDC fifo\0A\00", [33 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_init._entry_ptr.8 = internal global ptr @hdmi4_core_ddc_init._entry.6, section ".printk_index", align 4
@hdmi4_core_ddc_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013HDMICORE: omapdss HDMICORE error: Timeout waiting DDC to be ready\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hdmi4_core_ddc_read\00", [44 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_read._entry_ptr = internal global ptr @hdmi4_core_ddc_read._entry, section ".printk_index", align 4
@hdmi4_core_ddc_read._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013HDMICORE: omapdss HDMICORE error: I2C Bus Low?\0A\00", [46 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_read._entry_ptr.13 = internal global ptr @hdmi4_core_ddc_read._entry.11, section ".printk_index", align 4
@hdmi4_core_ddc_read._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013HDMICORE: omapdss HDMICORE error: I2C No Ack\0A\00", [48 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_read._entry_ptr.16 = internal global ptr @hdmi4_core_ddc_read._entry.14, section ".printk_index", align 4
@hdmi4_core_ddc_read._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013HDMICORE: omapdss HDMICORE error: operation stopped when reading edid\0A\00", [55 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_read._entry_ptr.19 = internal global ptr @hdmi4_core_ddc_read._entry.17, section ".printk_index", align 4
@hdmi4_core_ddc_read._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.10, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013HDMICORE: omapdss HDMICORE error: timeout reading edid\0A\00", [38 x i8] zeroinitializer }, align 32
@hdmi4_core_ddc_read._entry_ptr.22 = internal global ptr @hdmi4_core_ddc_read._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@hdmi4_core_powerdown_disable.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.2, ptr @.str.25, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"hdmi4_core_powerdown_disable\00", [35 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Enter hdmi4_core_powerdown_disable\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"HDMICORE: Enter hdmi4_core_powerdown_disable\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_VND_IDL\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DEV_IDL\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DEV_IDH\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DEV_REV\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_SYS_SRST\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_SYS_CTRL1\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_SYS_SYS_STAT\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_SYS_CTRL3\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_DE_DLY\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DE_CTRL\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_DE_TOP\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DE_CNTL\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DE_CNTH\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_DE_LINL\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_DE_LINH_1\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_HRES_L\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_HRES_H\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_VRES_L\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_VRES_H\00", [43 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_IADJUST\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_POLDETECT\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_HWIDTH1\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_SYS_HWIDTH2\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_SYS_VWIDTH\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_SYS_VID_CTRL\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_SYS_VID_ACEN\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_SYS_VID_MODE\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_SYS_VID_BLANK1\00", [39 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_SYS_VID_BLANK3\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_DC_HEADER\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_SYS_VID_DITHER\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_RGB2XVYCC_CT\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_R2Y_COEFF_LOW\00", [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_R2Y_COEFF_UP\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_G2Y_COEFF_LOW\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_G2Y_COEFF_UP\00", [37 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_B2Y_COEFF_LOW\00", [36 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_B2Y_COEFF_UP\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_R2CB_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_R2CB_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_G2CB_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_G2CB_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_B2CB_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_B2CB_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_R2CR_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_R2CR_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_G2CR_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_G2CR_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_B2CR_COEFF_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_B2CR_COEFF_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_RGB_OFFSET_LOW\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"HDMI_CORE_SYS_RGB_OFFSET_UP\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_Y_OFFSET_LOW\00", [37 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI_CORE_SYS_Y_OFFSET_UP\00", [38 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_CORE_SYS_CBCR_OFFSET_LOW\00", [34 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"HDMI_CORE_SYS_CBCR_OFFSET_UP\00", [35 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_SYS_INTR_STATE\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_SYS_INTR1\00", [44 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_SYS_INTR2\00", [44 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_SYS_INTR3\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HDMI_CORE_SYS_INTR4\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_INTR_UNMASK1\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_INTR_UNMASK2\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_INTR_UNMASK3\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HDMI_CORE_SYS_INTR_UNMASK4\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_INTR_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_SYS_TMDS_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_DDC_ADDR\00", [45 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_DDC_SEGM\00", [45 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_DDC_OFFSET\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_DDC_COUNT1\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_DDC_COUNT2\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_DDC_STATUS\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_CORE_DDC_CMD\00", [46 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HDMI_CORE_DDC_DATA\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_ACR_CTRL\00", [42 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_FREQ_SVAL\00", [41 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_AV_N_SVAL1\00", [43 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_AV_N_SVAL2\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_AV_N_SVAL3\00", [43 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_SVAL1\00", [41 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_SVAL2\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_SVAL3\00", [41 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_HVAL1\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_HVAL2\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_CTS_HVAL3\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_AUD_MODE\00", [42 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_SPDIF_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_HW_SPDIF_FS\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_SWAP_I2S\00", [42 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_SPDIF_ERTH\00", [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_I2S_IN_MAP\00", [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_I2S_IN_CTRL\00", [39 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_I2S_CHST0\00", [41 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_I2S_CHST1\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_I2S_CHST2\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_I2S_CHST4\00", [41 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_I2S_CHST5\00", [41 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HDMI_CORE_AV_ASRC\00", [46 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_I2S_IN_LEN\00", [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_HDMI_CTRL\00", [41 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_AUDO_TXSTAT\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_CORE_AV_AUD_PAR_BUSCLK_1\00", [34 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_CORE_AV_AUD_PAR_BUSCLK_2\00", [34 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HDMI_CORE_AV_AUD_PAR_BUSCLK_3\00", [34 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_TEST_TXCTRL\00", [39 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HDMI_CORE_AV_DPD\00", [47 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_PB_CTRL1\00", [42 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_PB_CTRL2\00", [42 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_AVI_TYPE\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_AVI_VERS\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_AV_AVI_LEN\00", [43 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_AVI_CHSUM\00", [41 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s[%d]%*s %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_AVI_DBYTE\00", [41 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_SPD_TYPE\00", [42 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_SPD_VERS\00", [42 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HDMI_CORE_AV_SPD_LEN\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_SPD_CHSUM\00", [41 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_SPD_DBYTE\00", [41 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_AUDIO_TYPE\00", [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_AUDIO_VERS\00", [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_AUDIO_LEN\00", [41 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_AUDIO_CHSUM\00", [39 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_AUD_DBYTE\00", [41 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_MPEG_TYPE\00", [41 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_MPEG_VERS\00", [41 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_MPEG_LEN\00", [42 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_MPEG_CHSUM\00", [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_MPEG_DBYTE\00", [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HDMI_CORE_AV_GEN_DBYTE\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI_CORE_AV_CP_BYTE1\00", [42 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HDMI_CORE_AV_GEN2_DBYTE\00", [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HDMI_CORE_AV_CEC_ADDR_ID\00", [39 x i8] zeroinitializer }, align 32
@hdmi4_soc_devices = internal constant { [4 x %struct.soc_device_attribute], [48 x i8] } { [4 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.176, ptr null, ptr @.str.177, ptr null, ptr null, ptr @hdmi4430_es1_features, ptr null }, %struct.soc_device_attribute { ptr @.str.176, ptr null, ptr @.str.178, ptr null, ptr null, ptr @hdmi4430_es2_features, ptr null }, %struct.soc_device_attribute { ptr null, ptr @.str.179, ptr null, ptr null, ptr null, ptr @hdmi4_features, ptr null }, %struct.soc_device_attribute zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@hdmi_core_init.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.164, ptr @.str.2, ptr @.str.165, i8 0, i8 36, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_core_init\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Enter hdmi_core_init\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HDMICORE: Enter hdmi_core_init\0A\00", [32 x i8] zeroinitializer }, align 32
@hdmi_core_swreset_assert.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.167, ptr @.str.2, ptr @.str.168, i8 0, i8 43, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"hdmi_core_swreset_assert\00", [39 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Enter hdmi_core_swreset_assert\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"HDMICORE: Enter hdmi_core_swreset_assert\0A\00", [54 x i8] zeroinitializer }, align 32
@hdmi_core_swreset_release.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.170, ptr @.str.2, ptr @.str.171, i8 0, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.170 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"hdmi_core_swreset_release\00", [38 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Enter hdmi_core_swreset_release\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"HDMICORE: Enter hdmi_core_swreset_release\0A\00", [53 x i8] zeroinitializer }, align 32
@hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.173, ptr @.str.2, ptr @.str.174, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.173 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"hdmi_core_write_avi_infoframe\00", [34 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AVI: \00", [26 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OMAP4430\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.?\00", [26 x i8] zeroinitializer }, align 32
@hdmi4430_es1_features = internal constant { %struct.hdmi4_features, [30 x i8] } zeroinitializer, align 32
@.str.178 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES2.?\00", [26 x i8] zeroinitializer }, align 32
@hdmi4430_es2_features = internal constant { %struct.hdmi4_features, [30 x i8] } { %struct.hdmi4_features { i8 1, i8 0 }, [30 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OMAP4\00", [26 x i8] zeroinitializer }, align 32
@hdmi4_features = internal constant { %struct.hdmi4_features, [30 x i8] } { %struct.hdmi4_features { i8 1, i8 1 }, [30 x i8] zeroinitializer }, align 32
@switch.table.hdmi4_audio_config = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 44100, i32 32000, i32 48000, i32 32000, i32 32000, i32 32000, i32 32000, i32 32000, i32 88200, i32 32000, i32 96000, i32 32000, i32 176400, i32 32000, i32 192000], [36 x i8] zeroinitializer }, align 32
@switch.table.hdmi4_audio_config.180 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\03\07\0F\1F?\7F\FF", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 49, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 60, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 70, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 86, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 111, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 116, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 125, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 133, i32 5 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 160, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 320, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 321, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 322, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 323, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 324, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 325, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 326, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 327, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 328, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 329, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 330, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 331, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 332, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 333, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 334, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 335, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 336, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 337, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 338, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 339, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 340, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 341, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 342, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 343, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 344, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 345, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 346, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 347, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 348, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 350, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 351, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 352, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 353, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 354, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 355, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 356, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 357, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 358, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 359, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 360, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 361, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 362, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 363, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 364, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 365, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 366, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 367, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 368, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 369, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 370, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 371, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 372, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 373, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 374, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 375, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 376, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 377, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 378, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 379, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 380, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 381, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 382, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 383, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 384, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 385, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 386, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 387, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 389, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 390, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 391, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 392, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 393, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 394, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 395, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 396, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 398, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 399, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 400, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 401, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 402, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 403, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 404, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 405, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 406, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 407, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 408, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 409, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 410, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 411, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 412, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 413, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 414, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 415, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 416, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 417, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 418, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 419, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 420, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 421, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 422, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 423, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 424, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 425, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 426, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 427, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 428, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 429, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 430, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 431, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 432, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 433, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 434, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 435, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 438, i32 3 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 440, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 441, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 442, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 443, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 446, i32 3 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 448, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 449, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 450, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 451, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 454, i32 3 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 456, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 457, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 458, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 459, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 462, i32 3 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 465, i32 3 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 467, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 470, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 472, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [18 x i8] c"hdmi4_soc_devices\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 852, i32 42 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 883, i32 59 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 147, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 172, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 166, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 229, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 854, i32 14 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 855, i32 15 }
@___asan_gen_.706 = private unnamed_addr constant [22 x i8] c"hdmi4430_es1_features\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 837, i32 36 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 860, i32 15 }
@___asan_gen_.712 = private unnamed_addr constant [22 x i8] c"hdmi4430_es2_features\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 842, i32 36 }
@___asan_gen_.715 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 864, i32 13 }
@___asan_gen_.718 = private unnamed_addr constant [15 x i8] c"hdmi4_features\00", align 1
@___asan_gen_.719 = private constant [44 x i8] c"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.719, i32 847, i32 36 }
@___asan_gen_.721 = private unnamed_addr constant [32 x i8] c"switch.table.hdmi4_audio_config\00", align 1
@___asan_gen_.722 = private unnamed_addr constant [36 x i8] c"switch.table.hdmi4_audio_config.180\00", align 1
@llvm.compiler.used = appending global [190 x ptr] [ptr @hdmi4_core_ddc_init._entry, ptr @hdmi4_core_ddc_init._entry.3, ptr @hdmi4_core_ddc_init._entry.6, ptr @hdmi4_core_ddc_init._entry_ptr, ptr @hdmi4_core_ddc_init._entry_ptr.5, ptr @hdmi4_core_ddc_init._entry_ptr.8, ptr @hdmi4_core_ddc_read._entry, ptr @hdmi4_core_ddc_read._entry.11, ptr @hdmi4_core_ddc_read._entry.14, ptr @hdmi4_core_ddc_read._entry.17, ptr @hdmi4_core_ddc_read._entry.20, ptr @hdmi4_core_ddc_read._entry_ptr, ptr @hdmi4_core_ddc_read._entry_ptr.13, ptr @hdmi4_core_ddc_read._entry_ptr.16, ptr @hdmi4_core_ddc_read._entry_ptr.19, ptr @hdmi4_core_ddc_read._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @hdmi4_soc_devices, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @hdmi4430_es1_features, ptr @.str.178, ptr @hdmi4430_es2_features, ptr @.str.179, ptr @hdmi4_features, ptr @switch.table.hdmi4_audio_config, ptr @switch.table.hdmi4_audio_config.180], section "llvm.metadata"
@0 = internal global [182 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_read._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_read._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_read._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_core_ddc_read._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_soc_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4430_es1_features to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4430_es2_features to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi4_features to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hdmi4_audio_config to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hdmi4_audio_config.180 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi4_core_ddc_init(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 244
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !357
  %or = or i32 %2, 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !358
  %add.ptr.i48 = getelementptr i8, ptr %1, i32 968
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then:                                          ; preds = %entry
  %add.ptr.i49 = getelementptr i8, ptr %1, i32 972
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i49) #4, !srcloc !357
  %or6 = or i32 %5, 15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49, i32 %or6) #4, !srcloc !358
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not3.i = icmp eq i32 %7, 0
  br i1 %cmp.not3.i, label %if.then.if.end11_crit_edge, label %if.then.if.end.i_crit_edge

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  br label %if.end.i

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %t.04.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %if.then.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %t.04.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %10 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i)
  %cmp3.i = icmp ugt i32 %t.04.i, 9999
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %hdmi_wait_for_bit_change.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

hdmi_wait_for_bit_change.exit:                    ; preds = %if.end.i
  br i1 %cmp.not.i, label %hdmi_wait_for_bit_change.exit.if.end11_crit_edge, label %hdmi_wait_for_bit_change.exit.cleanup.sink.split_crit_edge

hdmi_wait_for_bit_change.exit.cleanup.sink.split_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

hdmi_wait_for_bit_change.exit.if.end11_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.end11:                                         ; preds = %hdmi_wait_for_bit_change.exit.if.end11_crit_edge, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %add.ptr.i51 = getelementptr i8, ptr %1, i32 972
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #4, !srcloc !357
  %and13 = and i32 %11, -16
  %or14 = or i32 %and13, 10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %or14) #4, !srcloc !358
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not3.i54 = icmp eq i32 %13, 0
  br i1 %cmp.not3.i54, label %if.end11.if.end23_crit_edge, label %if.end11.if.end.i62_crit_edge

if.end11.if.end.i62_crit_edge:                    ; preds = %if.end11
  br label %if.end.i62

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end.i62:                                       ; preds = %if.end.i62.if.end.i62_crit_edge, %if.end11.if.end.i62_crit_edge
  %t.04.i55 = phi i32 [ %inc.i56, %if.end.i62.if.end.i62_crit_edge ], [ 0, %if.end11.if.end.i62_crit_edge ]
  %inc.i56 = add nuw nsw i32 %t.04.i55, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %16 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i59 = icmp eq i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i55)
  %cmp3.i60 = icmp ugt i32 %t.04.i55, 9999
  %or.cond.i61 = select i1 %cmp.not.i59, i1 true, i1 %cmp3.i60
  br i1 %or.cond.i61, label %hdmi_wait_for_bit_change.exit64, label %if.end.i62.if.end.i62_crit_edge

if.end.i62.if.end.i62_crit_edge:                  ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i62

hdmi_wait_for_bit_change.exit64:                  ; preds = %if.end.i62
  br i1 %cmp.not.i59, label %hdmi_wait_for_bit_change.exit64.if.end23_crit_edge, label %hdmi_wait_for_bit_change.exit64.cleanup.sink.split_crit_edge

hdmi_wait_for_bit_change.exit64.cleanup.sink.split_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

hdmi_wait_for_bit_change.exit64.if.end23_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.end23:                                         ; preds = %hdmi_wait_for_bit_change.exit64.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i51) #4, !srcloc !357
  %and25 = and i32 %17, -16
  %or26 = or i32 %and25, 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51, i32 %or26) #4, !srcloc !358
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not3.i68 = icmp eq i32 %19, 0
  br i1 %cmp.not3.i68, label %if.end23.cleanup_crit_edge, label %if.end23.if.end.i76_crit_edge

if.end23.if.end.i76_crit_edge:                    ; preds = %if.end23
  br label %if.end.i76

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i76:                                       ; preds = %if.end.i76.if.end.i76_crit_edge, %if.end23.if.end.i76_crit_edge
  %t.04.i69 = phi i32 [ %inc.i70, %if.end.i76.if.end.i76_crit_edge ], [ 0, %if.end23.if.end.i76_crit_edge ]
  %inc.i70 = add nuw nsw i32 %t.04.i69, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #4, !srcloc !357
  %22 = and i32 %21, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.not.i73 = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i69)
  %cmp3.i74 = icmp ugt i32 %t.04.i69, 9999
  %or.cond.i75 = select i1 %cmp.not.i73, i1 true, i1 %cmp3.i74
  br i1 %or.cond.i75, label %hdmi_wait_for_bit_change.exit78, label %if.end.i76.if.end.i76_crit_edge

if.end.i76.if.end.i76_crit_edge:                  ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i76

hdmi_wait_for_bit_change.exit78:                  ; preds = %if.end.i76
  br i1 %cmp.not.i73, label %hdmi_wait_for_bit_change.exit78.cleanup_crit_edge, label %hdmi_wait_for_bit_change.exit78.cleanup.sink.split_crit_edge

hdmi_wait_for_bit_change.exit78.cleanup.sink.split_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

hdmi_wait_for_bit_change.exit78.cleanup_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %hdmi_wait_for_bit_change.exit78.cleanup.sink.split_crit_edge, %hdmi_wait_for_bit_change.exit64.cleanup.sink.split_crit_edge, %hdmi_wait_for_bit_change.exit.cleanup.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str, %hdmi_wait_for_bit_change.exit.cleanup.sink.split_crit_edge ], [ @.str.4, %hdmi_wait_for_bit_change.exit64.cleanup.sink.split_crit_edge ], [ @.str.7, %hdmi_wait_for_bit_change.exit78.cleanup.sink.split_crit_edge ]
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %hdmi_wait_for_bit_change.exit78.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hdmi_wait_for_bit_change.exit78.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ], [ -110, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi4_core_ddc_read(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 968
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %3 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not3.i = icmp eq i32 %3, 0
  br i1 %cmp.not3.i, label %entry.if.end_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.end.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %t.04.i = phi i32 [ %inc.i, %if.end.i.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %inc.i = add nuw nsw i32 %t.04.i, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %6 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9999, i32 %t.04.i)
  %cmp3.i = icmp ugt i32 %t.04.i, 9999
  %or.cond.i = select i1 %cmp.not.i, i1 true, i1 %cmp3.i
  br i1 %or.cond.i, label %hdmi_wait_for_bit_change.exit, label %if.end.i.if.end.i_crit_edge

if.end.i.if.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

hdmi_wait_for_bit_change.exit:                    ; preds = %if.end.i
  br i1 %cmp.not.i, label %hdmi_wait_for_bit_change.exit.if.end_crit_edge, label %hdmi_wait_for_bit_change.exit.cleanup79.sink.split_crit_edge

hdmi_wait_for_bit_change.exit.cleanup79.sink.split_crit_edge: ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79.sink.split

hdmi_wait_for_bit_change.exit.if.end_crit_edge:   ; preds = %hdmi_wait_for_bit_change.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %hdmi_wait_for_bit_change.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %1, i32 952
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !357
  %and = and i32 %7, -256
  %div107 = lshr i32 %block, 1
  %and4 = and i32 %div107, 255
  %or = or i32 %and, %and4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !358
  %add.ptr.i109 = getelementptr i8, ptr %1, i32 948
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #4, !srcloc !357
  %and6 = and i32 %8, -255
  %or7 = or i32 %and6, 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 %or7) #4, !srcloc !358
  %add.ptr.i111 = getelementptr i8, ptr %1, i32 956
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #4, !srcloc !357
  %and9 = and i32 %9, -256
  %rem = shl i32 %block, 7
  %10 = and i32 %rem, 128
  %or12 = or i32 %and9, %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %or12) #4, !srcloc !358
  %add.ptr.i113 = getelementptr i8, ptr %1, i32 960
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #4, !srcloc !357
  %and14 = and i32 %11, -256
  %and16 = and i32 %len, 255
  %or17 = or i32 %and14, %and16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %or17) #4, !srcloc !358
  %add.ptr.i115 = getelementptr i8, ptr %1, i32 964
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i115) #4, !srcloc !357
  %and19 = and i32 %12, -4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %and19) #4, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block)
  %tobool21.not = icmp eq i32 %block, 0
  %add.ptr.i119 = getelementptr i8, ptr %1, i32 972
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i119) #4
  %and27 = and i32 %13, -16
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or25 = or i32 %and27, 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %or25) #4, !srcloc !358
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %or28 = or i32 %and27, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %or28) #4, !srcloc !358
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then22
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %15 = and i32 %14, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp32.not = icmp eq i32 %15, 0
  br i1 %cmp32.not, label %if.end39, label %if.end29.cleanup79.sink.split_crit_edge

if.end29.cleanup79.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79.sink.split

if.end39:                                         ; preds = %if.end29
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %17 = and i32 %16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp43.not = icmp eq i32 %17, 0
  br i1 %cmp43.not, label %for.cond.preheader, label %if.end39.cleanup79.sink.split_crit_edge

if.end39.cleanup79.sink.split_crit_edge:          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79.sink.split

for.cond.preheader:                               ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp51132.not = icmp eq i32 %len, 0
  br i1 %cmp51132.not, label %for.cond.preheader.cleanup79_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup79_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %add.ptr.i125 = getelementptr i8, ptr %1, i32 976
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0133 = phi i32 [ 0, %for.body.lr.ph ], [ %inc78, %for.inc.for.body_crit_edge ]
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %19 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp55 = icmp eq i32 %19, 0
  br i1 %cmp55, label %for.body.cleanup79.sink.split_crit_edge, label %while.cond.preheader

for.body.cleanup79.sink.split_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79.sink.split

while.cond.preheader:                             ; preds = %for.body
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %21 = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp66.not130 = icmp eq i32 %21, 0
  br i1 %cmp66.not130, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

while.body:                                       ; preds = %if.end74.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %t.0131 = phi i32 [ %inc, %if.end74.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10001, i32 %t.0131)
  %exitcond = icmp eq i32 %t.0131, 10001
  br i1 %exitcond, label %while.body.cleanup79.sink.split_crit_edge, label %if.end74

while.body.cleanup79.sink.split_crit_edge:        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79.sink.split

if.end74:                                         ; preds = %while.body
  %inc = add nuw nsw i32 %t.0131, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748) #4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %24 = and i32 %23, 4
  %cmp66.not = icmp eq i32 %24, 0
  br i1 %cmp66.not, label %if.end74.for.inc_crit_edge, label %if.end74.while.body_crit_edge

if.end74.while.body_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end74.for.inc_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end74.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #4, !srcloc !357
  %conv = trunc i32 %25 to i8
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.0133
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %arrayidx, align 1
  %inc78 = add nuw i32 %i.0133, 1
  %exitcond134.not = icmp eq i32 %inc78, %len
  br i1 %exitcond134.not, label %for.inc.cleanup79_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup79_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup79

cleanup79.sink.split:                             ; preds = %while.body.cleanup79.sink.split_crit_edge, %for.body.cleanup79.sink.split_crit_edge, %if.end39.cleanup79.sink.split_crit_edge, %if.end29.cleanup79.sink.split_crit_edge, %hdmi_wait_for_bit_change.exit.cleanup79.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.9, %hdmi_wait_for_bit_change.exit.cleanup79.sink.split_crit_edge ], [ @.str.12, %if.end29.cleanup79.sink.split_crit_edge ], [ @.str.15, %if.end39.cleanup79.sink.split_crit_edge ], [ @.str.21, %while.body.cleanup79.sink.split_crit_edge ], [ @.str.18, %for.body.cleanup79.sink.split_crit_edge ]
  %retval.2.ph = phi i32 [ -110, %hdmi_wait_for_bit_change.exit.cleanup79.sink.split_crit_edge ], [ -5, %if.end29.cleanup79.sink.split_crit_edge ], [ -5, %if.end39.cleanup79.sink.split_crit_edge ], [ -110, %while.body.cleanup79.sink.split_crit_edge ], [ -5, %for.body.cleanup79.sink.split_crit_edge ]
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.18.sink) #7
  br label %cleanup79

cleanup79:                                        ; preds = %cleanup79.sink.split, %for.inc.cleanup79_crit_edge, %for.cond.preheader.cleanup79_crit_edge
  %retval.2 = phi i32 [ 0, %for.cond.preheader.cleanup79_crit_edge ], [ %retval.2.ph, %cleanup79.sink.split ], [ 0, %for.inc.cleanup79_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_core_powerdown_disable(ptr nocapture noundef readonly %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi4_core_powerdown_disable.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi4_core_powerdown_disable, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !359

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi4_core_powerdown_disable.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.26) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !357
  %or = or i32 %2, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #4, !srcloc !358
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_configure(ptr nocapture noundef readonly %core, ptr noundef %wp, ptr noundef %cfg) local_unnamed_addr #0 align 64 {
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
  store i32 -1, ptr %video_format, align 4, !annotation !360
  %2 = getelementptr inbounds %struct.hdmi_video_format, ptr %video_format, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !360
  %4 = getelementptr inbounds %struct.hdmi_video_format, ptr %video_format, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !360
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_init.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi4_configure, %hdmi_core_init.exit)) #4
          to label %if.then.i [label %hdmi_core_init.exit], !srcloc !359

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_init.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.166) #4
  br label %hdmi_core_init.exit

hdmi_core_init.exit:                              ; preds = %if.then.i, %entry
  call void @hdmi_wp_init_vid_fmt_timings(ptr noundef nonnull %video_format, ptr noundef nonnull %vm, ptr noundef %cfg) #4
  call void @hdmi_wp_video_config_timing(ptr noundef %wp, ptr noundef nonnull %vm) #4
  %6 = ptrtoint ptr %video_format to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %video_format, align 4
  call void @hdmi_wp_video_config_format(ptr noundef %wp, ptr noundef nonnull %video_format) #4
  call void @hdmi_wp_video_config_interface(ptr noundef %wp, ptr noundef nonnull %vm) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_swreset_assert.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi4_configure, %hdmi_core_video_config.exit)) #4
          to label %if.then.i11 [label %hdmi_core_video_config.exit], !srcloc !359

if.then.i11:                                      ; preds = %hdmi_core_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_swreset_assert.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.169) #4
  br label %hdmi_core_video_config.exit

hdmi_core_video_config.exit:                      ; preds = %if.then.i11, %hdmi_core_init.exit
  %7 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %core, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 20
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #4, !srcloc !357
  %or.i = or i32 %9, 1
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #4, !srcloc !358
  %hdmi_dvi_mode = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 2
  %10 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hdmi_dvi_mode, align 4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %add.ptr.i74.i = getelementptr i8, ptr %13, i32 32
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74.i) #4, !srcloc !357
  %or7.i = or i32 %14, 54
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %or7.i) #4, !srcloc !358
  %add.ptr.i76.i = getelementptr i8, ptr %13, i32 292
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76.i) #4, !srcloc !357
  %and9.i = and i32 %15, -193
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %and9.i) #4, !srcloc !358
  %add.ptr.i78.i = getelementptr i8, ptr %13, i32 296
  %16 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i78.i) #4, !srcloc !357
  %and13.i = and i32 %16, -225
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 %and13.i) #4, !srcloc !358
  %add.ptr.i80.i = getelementptr i8, ptr %13, i32 1468
  %17 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80.i) #4, !srcloc !357
  %and28.i = and i32 %17, -122
  %and38.i = and i32 %11, 1
  %or35.i = or i32 %and38.i, %and28.i
  %or39.i = or i32 %or35.i, 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 %or39.i) #4, !srcloc !358
  %add.ptr.i82.i = getelementptr i8, ptr %13, i32 520
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82.i) #4, !srcloc !357
  %and41.i = and i32 %18, -97
  %or44.i = or i32 %and41.i, 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %or44.i) #4, !srcloc !358
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_swreset_release.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi4_configure, %hdmi_core_swreset_release.exit)) #4
          to label %if.then.i14 [label %hdmi_core_swreset_release.exit], !srcloc !359

if.then.i14:                                      ; preds = %hdmi_core_video_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @hdmi_core_swreset_release.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.172) #4
  br label %hdmi_core_swreset_release.exit

hdmi_core_swreset_release.exit:                   ; preds = %if.then.i14, %hdmi_core_video_config.exit
  %19 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core, align 4
  %add.ptr.i.i15 = getelementptr i8, ptr %20, i32 20
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #4, !srcloc !357
  %and.i = and i32 %21, -2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i15, i32 %and.i) #4, !srcloc !358
  %22 = ptrtoint ptr %hdmi_dvi_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hdmi_dvi_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp = icmp eq i32 %23, 1
  br i1 %cmp, label %if.then, label %hdmi_core_swreset_release.exit.if.end_crit_edge

hdmi_core_swreset_release.exit.if.end_crit_edge:  ; preds = %hdmi_core_swreset_release.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %hdmi_core_swreset_release.exit
  call void @__sanitizer_cov_trace_pc() #6
  %infoframe = getelementptr inbounds %struct.hdmi_config, ptr %cfg, i32 0, i32 1
  call fastcc void @hdmi_core_write_avi_infoframe(ptr noundef %core, ptr noundef %infoframe)
  br label %if.end

if.end:                                           ; preds = %if.then, %hdmi_core_swreset_release.exit.if.end_crit_edge
  %repeat_cfg.sroa.0.0 = phi i32 [ 51, %if.then ], [ 0, %hdmi_core_swreset_release.exit.if.end_crit_edge ]
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %25, i32 1528
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %repeat_cfg.sroa.0.0) #4, !srcloc !358
  %26 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %core, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %27, i32 1532
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #4, !srcloc !358
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
  %call1 = call i32 @hdmi_avi_infoframe_pack(ptr noundef %frame, ptr noundef nonnull %data, i32 noundef 17) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hdmi_core_write_avi_infoframe, %do.end)) #4
          to label %if.then [label %do.end], !srcloc !359

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @print_hex_dump(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.174, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef nonnull %data, i32 noundef 17, i1 noundef zeroext false) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 16
  %4 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 15
  %5 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 14
  %6 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 13
  %7 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 12
  %8 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 11
  %9 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 10
  %10 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 9
  %11 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 8
  %12 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 7
  %13 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 6
  %14 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 5
  %15 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 4
  %16 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 3
  %17 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 2
  %18 = getelementptr inbounds [17 x i8], ptr %data, i32 0, i32 1
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %conv = zext i8 %20 to i32
  %add.ptr.i10 = getelementptr i8, ptr %1, i32 1536
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %conv) #4, !srcloc !358
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %18, align 1
  %conv.1 = zext i8 %22 to i32
  %add.ptr.i10.1 = getelementptr i8, ptr %1, i32 1540
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.1, i32 %conv.1) #4, !srcloc !358
  %23 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %17, align 1
  %conv.2 = zext i8 %24 to i32
  %add.ptr.i10.2 = getelementptr i8, ptr %1, i32 1544
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.2, i32 %conv.2) #4, !srcloc !358
  %25 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %16, align 1
  %conv.3 = zext i8 %26 to i32
  %add.ptr.i10.3 = getelementptr i8, ptr %1, i32 1548
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.3, i32 %conv.3) #4, !srcloc !358
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %15, align 1
  %conv.4 = zext i8 %28 to i32
  %add.ptr.i10.4 = getelementptr i8, ptr %1, i32 1552
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.4, i32 %conv.4) #4, !srcloc !358
  %29 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %14, align 1
  %conv.5 = zext i8 %30 to i32
  %add.ptr.i10.5 = getelementptr i8, ptr %1, i32 1556
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.5, i32 %conv.5) #4, !srcloc !358
  %31 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %13, align 1
  %conv.6 = zext i8 %32 to i32
  %add.ptr.i10.6 = getelementptr i8, ptr %1, i32 1560
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.6, i32 %conv.6) #4, !srcloc !358
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %12, align 1
  %conv.7 = zext i8 %34 to i32
  %add.ptr.i10.7 = getelementptr i8, ptr %1, i32 1564
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.7, i32 %conv.7) #4, !srcloc !358
  %35 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %11, align 1
  %conv.8 = zext i8 %36 to i32
  %add.ptr.i10.8 = getelementptr i8, ptr %1, i32 1568
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.8, i32 %conv.8) #4, !srcloc !358
  %37 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %10, align 1
  %conv.9 = zext i8 %38 to i32
  %add.ptr.i10.9 = getelementptr i8, ptr %1, i32 1572
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.9, i32 %conv.9) #4, !srcloc !358
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %9, align 1
  %conv.10 = zext i8 %40 to i32
  %add.ptr.i10.10 = getelementptr i8, ptr %1, i32 1576
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.10, i32 %conv.10) #4, !srcloc !358
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %8, align 1
  %conv.11 = zext i8 %42 to i32
  %add.ptr.i10.11 = getelementptr i8, ptr %1, i32 1580
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.11, i32 %conv.11) #4, !srcloc !358
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %7, align 1
  %conv.12 = zext i8 %44 to i32
  %add.ptr.i10.12 = getelementptr i8, ptr %1, i32 1584
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.12, i32 %conv.12) #4, !srcloc !358
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %6, align 1
  %conv.13 = zext i8 %46 to i32
  %add.ptr.i10.13 = getelementptr i8, ptr %1, i32 1588
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.13, i32 %conv.13) #4, !srcloc !358
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %5, align 1
  %conv.14 = zext i8 %48 to i32
  %add.ptr.i10.14 = getelementptr i8, ptr %1, i32 1592
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.14, i32 %conv.14) #4, !srcloc !358
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %4, align 1
  %conv.15 = zext i8 %50 to i32
  %add.ptr.i10.15 = getelementptr i8, ptr %1, i32 1596
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.15, i32 %conv.15) #4, !srcloc !358
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 1
  %conv.16 = zext i8 %52 to i32
  %add.ptr.i10.16 = getelementptr i8, ptr %1, i32 1600
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.16, i32 %conv.16) #4, !srcloc !358
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %data) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_core_dump(ptr noundef readonly %core, ptr noundef %s) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef %2) #4
  %3 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %core, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.29, i32 noundef %5) #4
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %add.ptr.i613 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i613) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.30, i32 noundef %8) #4
  %9 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %core, align 4
  %add.ptr.i614 = getelementptr i8, ptr %10, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i614) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.31, i32 noundef %11) #4
  %12 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %core, align 4
  %add.ptr.i615 = getelementptr i8, ptr %13, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i615) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.32, i32 noundef %14) #4
  %15 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %core, align 4
  %add.ptr.i616 = getelementptr i8, ptr %16, i32 32
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i616) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.33, i32 noundef %17) #4
  %18 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %core, align 4
  %add.ptr.i617 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i617) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.34, i32 noundef %20) #4
  %21 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %core, align 4
  %add.ptr.i618 = getelementptr i8, ptr %22, i32 40
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i618) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.35, i32 noundef %23) #4
  %24 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %core, align 4
  %add.ptr.i619 = getelementptr i8, ptr %25, i32 200
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i619) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.36, i32 noundef %26) #4
  %27 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %core, align 4
  %add.ptr.i620 = getelementptr i8, ptr %28, i32 204
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i620) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.37, i32 noundef %29) #4
  %30 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %core, align 4
  %add.ptr.i621 = getelementptr i8, ptr %31, i32 208
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i621) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.38, i32 noundef %32) #4
  %33 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %core, align 4
  %add.ptr.i622 = getelementptr i8, ptr %34, i32 216
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i622) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.39, i32 noundef %35) #4
  %36 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %core, align 4
  %add.ptr.i623 = getelementptr i8, ptr %37, i32 220
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i623) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.40, i32 noundef %38) #4
  %39 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %core, align 4
  %add.ptr.i624 = getelementptr i8, ptr %40, i32 224
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i624) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.41, i32 noundef %41) #4
  %42 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %core, align 4
  %add.ptr.i625 = getelementptr i8, ptr %43, i32 228
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i625) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.42, i32 noundef %44) #4
  %45 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %core, align 4
  %add.ptr.i626 = getelementptr i8, ptr %46, i32 232
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i626) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.43, i32 noundef %47) #4
  %48 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %core, align 4
  %add.ptr.i627 = getelementptr i8, ptr %49, i32 236
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i627) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.44, i32 noundef %50) #4
  %51 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %core, align 4
  %add.ptr.i628 = getelementptr i8, ptr %52, i32 240
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i628) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.45, i32 noundef %53) #4
  %54 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %core, align 4
  %add.ptr.i629 = getelementptr i8, ptr %55, i32 244
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i629) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.46, i32 noundef %56) #4
  %57 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %core, align 4
  %add.ptr.i630 = getelementptr i8, ptr %58, i32 248
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i630) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.47, i32 noundef %59) #4
  %60 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %core, align 4
  %add.ptr.i631 = getelementptr i8, ptr %61, i32 252
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i631) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.48, i32 noundef %62) #4
  %63 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %core, align 4
  %add.ptr.i632 = getelementptr i8, ptr %64, i32 272
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i632) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.49, i32 noundef %65) #4
  %66 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %core, align 4
  %add.ptr.i633 = getelementptr i8, ptr %67, i32 276
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i633) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.50, i32 noundef %68) #4
  %69 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %core, align 4
  %add.ptr.i634 = getelementptr i8, ptr %70, i32 284
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i634) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.51, i32 noundef %71) #4
  %72 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %core, align 4
  %add.ptr.i635 = getelementptr i8, ptr %73, i32 288
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i635) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.52, i32 noundef %74) #4
  %75 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %core, align 4
  %add.ptr.i636 = getelementptr i8, ptr %76, i32 292
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i636) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.53, i32 noundef %77) #4
  %78 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %core, align 4
  %add.ptr.i637 = getelementptr i8, ptr %79, i32 296
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i637) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.54, i32 noundef %80) #4
  %81 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %core, align 4
  %add.ptr.i638 = getelementptr i8, ptr %82, i32 300
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i638) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.55, i32 noundef %83) #4
  %84 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %core, align 4
  %add.ptr.i639 = getelementptr i8, ptr %85, i32 308
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i639) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.56, i32 noundef %86) #4
  %87 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %core, align 4
  %add.ptr.i640 = getelementptr i8, ptr %88, i32 300
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i640) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.55, i32 noundef %89) #4
  %90 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %core, align 4
  %add.ptr.i641 = getelementptr i8, ptr %91, i32 312
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i641) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.57, i32 noundef %92) #4
  %93 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %core, align 4
  %add.ptr.i642 = getelementptr i8, ptr %94, i32 316
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i642) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.58, i32 noundef %95) #4
  %96 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %core, align 4
  %add.ptr.i643 = getelementptr i8, ptr %97, i32 320
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i643) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.59, i32 noundef %98) #4
  %99 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %core, align 4
  %add.ptr.i644 = getelementptr i8, ptr %100, i32 324
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i644) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.60, i32 noundef %101) #4
  %102 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %core, align 4
  %add.ptr.i645 = getelementptr i8, ptr %103, i32 328
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i645) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.61, i32 noundef %104) #4
  %105 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %core, align 4
  %add.ptr.i646 = getelementptr i8, ptr %106, i32 332
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i646) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.62, i32 noundef %107) #4
  %108 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %core, align 4
  %add.ptr.i647 = getelementptr i8, ptr %109, i32 336
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i647) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.63, i32 noundef %110) #4
  %111 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %core, align 4
  %add.ptr.i648 = getelementptr i8, ptr %112, i32 340
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i648) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.64, i32 noundef %113) #4
  %114 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %core, align 4
  %add.ptr.i649 = getelementptr i8, ptr %115, i32 344
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i649) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.65, i32 noundef %116) #4
  %117 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %core, align 4
  %add.ptr.i650 = getelementptr i8, ptr %118, i32 348
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i650) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.66, i32 noundef %119) #4
  %120 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %core, align 4
  %add.ptr.i651 = getelementptr i8, ptr %121, i32 352
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i651) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.67, i32 noundef %122) #4
  %123 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %core, align 4
  %add.ptr.i652 = getelementptr i8, ptr %124, i32 356
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i652) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.68, i32 noundef %125) #4
  %126 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %core, align 4
  %add.ptr.i653 = getelementptr i8, ptr %127, i32 360
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i653) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.69, i32 noundef %128) #4
  %129 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %core, align 4
  %add.ptr.i654 = getelementptr i8, ptr %130, i32 364
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i654) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.70, i32 noundef %131) #4
  %132 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %core, align 4
  %add.ptr.i655 = getelementptr i8, ptr %133, i32 368
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i655) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.71, i32 noundef %134) #4
  %135 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %core, align 4
  %add.ptr.i656 = getelementptr i8, ptr %136, i32 372
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i656) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.72, i32 noundef %137) #4
  %138 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %core, align 4
  %add.ptr.i657 = getelementptr i8, ptr %139, i32 376
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i657) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.73, i32 noundef %140) #4
  %141 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %core, align 4
  %add.ptr.i658 = getelementptr i8, ptr %142, i32 380
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i658) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.74, i32 noundef %143) #4
  %144 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %core, align 4
  %add.ptr.i659 = getelementptr i8, ptr %145, i32 384
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i659) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.75, i32 noundef %146) #4
  %147 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %core, align 4
  %add.ptr.i660 = getelementptr i8, ptr %148, i32 388
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i660) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.76, i32 noundef %149) #4
  %150 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %core, align 4
  %add.ptr.i661 = getelementptr i8, ptr %151, i32 392
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i661) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.77, i32 noundef %152) #4
  %153 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %core, align 4
  %add.ptr.i662 = getelementptr i8, ptr %154, i32 396
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i662) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.78, i32 noundef %155) #4
  %156 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %core, align 4
  %add.ptr.i663 = getelementptr i8, ptr %157, i32 400
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i663) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.79, i32 noundef %158) #4
  %159 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %core, align 4
  %add.ptr.i664 = getelementptr i8, ptr %160, i32 404
  %161 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i664) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.80, i32 noundef %161) #4
  %162 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %core, align 4
  %add.ptr.i665 = getelementptr i8, ptr %163, i32 408
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i665) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.81, i32 noundef %164) #4
  %165 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %core, align 4
  %add.ptr.i666 = getelementptr i8, ptr %166, i32 412
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i666) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.82, i32 noundef %167) #4
  %168 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %core, align 4
  %add.ptr.i667 = getelementptr i8, ptr %169, i32 416
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i667) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.83, i32 noundef %170) #4
  %171 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %core, align 4
  %add.ptr.i668 = getelementptr i8, ptr %172, i32 448
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i668) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.84, i32 noundef %173) #4
  %174 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %core, align 4
  %add.ptr.i669 = getelementptr i8, ptr %175, i32 452
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i669) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.85, i32 noundef %176) #4
  %177 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %core, align 4
  %add.ptr.i670 = getelementptr i8, ptr %178, i32 456
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i670) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.86, i32 noundef %179) #4
  %180 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %core, align 4
  %add.ptr.i671 = getelementptr i8, ptr %181, i32 460
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i671) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.87, i32 noundef %182) #4
  %183 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %core, align 4
  %add.ptr.i672 = getelementptr i8, ptr %184, i32 464
  %185 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i672) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.88, i32 noundef %185) #4
  %186 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %core, align 4
  %add.ptr.i673 = getelementptr i8, ptr %187, i32 468
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i673) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.89, i32 noundef %188) #4
  %189 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %core, align 4
  %add.ptr.i674 = getelementptr i8, ptr %190, i32 472
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i674) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.90, i32 noundef %191) #4
  %192 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %core, align 4
  %add.ptr.i675 = getelementptr i8, ptr %193, i32 476
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i675) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.91, i32 noundef %194) #4
  %195 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %core, align 4
  %add.ptr.i676 = getelementptr i8, ptr %196, i32 480
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i676) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.92, i32 noundef %197) #4
  %198 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %core, align 4
  %add.ptr.i677 = getelementptr i8, ptr %199, i32 484
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i677) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.93, i32 noundef %200) #4
  %201 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %core, align 4
  %add.ptr.i678 = getelementptr i8, ptr %202, i32 520
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i678) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.94, i32 noundef %203) #4
  %204 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %core, align 4
  %add.ptr.i679 = getelementptr i8, ptr %205, i32 948
  %206 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i679) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.95, i32 noundef %206) #4
  %207 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %core, align 4
  %add.ptr.i680 = getelementptr i8, ptr %208, i32 952
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i680) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.96, i32 noundef %209) #4
  %210 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %core, align 4
  %add.ptr.i681 = getelementptr i8, ptr %211, i32 956
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i681) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.97, i32 noundef %212) #4
  %213 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %core, align 4
  %add.ptr.i682 = getelementptr i8, ptr %214, i32 960
  %215 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i682) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.98, i32 noundef %215) #4
  %216 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %core, align 4
  %add.ptr.i683 = getelementptr i8, ptr %217, i32 964
  %218 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i683) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.99, i32 noundef %218) #4
  %219 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %core, align 4
  %add.ptr.i684 = getelementptr i8, ptr %220, i32 968
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i684) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.100, i32 noundef %221) #4
  %222 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %core, align 4
  %add.ptr.i685 = getelementptr i8, ptr %223, i32 972
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i685) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.101, i32 noundef %224) #4
  %225 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %core, align 4
  %add.ptr.i686 = getelementptr i8, ptr %226, i32 976
  %227 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i686) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.102, i32 noundef %227) #4
  %228 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %core, align 4
  %add.ptr.i688 = getelementptr i8, ptr %229, i32 1284
  %230 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i688) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.103, i32 noundef %230) #4
  %231 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %core, align 4
  %add.ptr.i690 = getelementptr i8, ptr %232, i32 1288
  %233 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i690) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.104, i32 noundef %233) #4
  %234 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %core, align 4
  %add.ptr.i692 = getelementptr i8, ptr %235, i32 1292
  %236 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i692) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.105, i32 noundef %236) #4
  %237 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %core, align 4
  %add.ptr.i694 = getelementptr i8, ptr %238, i32 1296
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i694) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.106, i32 noundef %239) #4
  %240 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %core, align 4
  %add.ptr.i696 = getelementptr i8, ptr %241, i32 1300
  %242 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i696) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.107, i32 noundef %242) #4
  %243 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %core, align 4
  %add.ptr.i698 = getelementptr i8, ptr %244, i32 1304
  %245 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i698) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.108, i32 noundef %245) #4
  %246 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %core, align 4
  %add.ptr.i700 = getelementptr i8, ptr %247, i32 1308
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i700) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.109, i32 noundef %248) #4
  %249 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %core, align 4
  %add.ptr.i702 = getelementptr i8, ptr %250, i32 1312
  %251 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i702) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.110, i32 noundef %251) #4
  %252 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %core, align 4
  %add.ptr.i704 = getelementptr i8, ptr %253, i32 1316
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i704) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.111, i32 noundef %254) #4
  %255 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %core, align 4
  %add.ptr.i706 = getelementptr i8, ptr %256, i32 1320
  %257 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i706) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.112, i32 noundef %257) #4
  %258 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %core, align 4
  %add.ptr.i708 = getelementptr i8, ptr %259, i32 1324
  %260 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i708) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.113, i32 noundef %260) #4
  %261 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %core, align 4
  %add.ptr.i710 = getelementptr i8, ptr %262, i32 1360
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i710) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.114, i32 noundef %263) #4
  %264 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %core, align 4
  %add.ptr.i712 = getelementptr i8, ptr %265, i32 1364
  %266 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i712) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.115, i32 noundef %266) #4
  %267 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %core, align 4
  %add.ptr.i714 = getelementptr i8, ptr %268, i32 1376
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i714) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.116, i32 noundef %269) #4
  %270 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %core, align 4
  %add.ptr.i716 = getelementptr i8, ptr %271, i32 1380
  %272 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i716) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.117, i32 noundef %272) #4
  %273 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %core, align 4
  %add.ptr.i718 = getelementptr i8, ptr %274, i32 1388
  %275 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i718) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.118, i32 noundef %275) #4
  %276 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %core, align 4
  %add.ptr.i720 = getelementptr i8, ptr %277, i32 1392
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i720) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.119, i32 noundef %278) #4
  %279 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %core, align 4
  %add.ptr.i722 = getelementptr i8, ptr %280, i32 1396
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i722) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.120, i32 noundef %281) #4
  %282 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %core, align 4
  %add.ptr.i724 = getelementptr i8, ptr %283, i32 1400
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i724) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.121, i32 noundef %284) #4
  %285 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %core, align 4
  %add.ptr.i726 = getelementptr i8, ptr %286, i32 1404
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i726) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.122, i32 noundef %287) #4
  %288 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %core, align 4
  %add.ptr.i728 = getelementptr i8, ptr %289, i32 1408
  %290 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i728) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.123, i32 noundef %290) #4
  %291 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %core, align 4
  %add.ptr.i730 = getelementptr i8, ptr %292, i32 1412
  %293 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i730) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.124, i32 noundef %293) #4
  %294 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %core, align 4
  %add.ptr.i732 = getelementptr i8, ptr %295, i32 1416
  %296 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i732) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.125, i32 noundef %296) #4
  %297 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %core, align 4
  %add.ptr.i734 = getelementptr i8, ptr %298, i32 1420
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i734) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.126, i32 noundef %299) #4
  %300 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %core, align 4
  %add.ptr.i736 = getelementptr i8, ptr %301, i32 1424
  %302 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i736) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.127, i32 noundef %302) #4
  %303 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %core, align 4
  %add.ptr.i738 = getelementptr i8, ptr %304, i32 1468
  %305 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i738) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.128, i32 noundef %305) #4
  %306 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %core, align 4
  %add.ptr.i740 = getelementptr i8, ptr %307, i32 1472
  %308 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i740) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.129, i32 noundef %308) #4
  %309 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %core, align 4
  %add.ptr.i742 = getelementptr i8, ptr %310, i32 1484
  %311 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i742) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.130, i32 noundef %311) #4
  %312 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %core, align 4
  %add.ptr.i744 = getelementptr i8, ptr %313, i32 1488
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i744) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.131, i32 noundef %314) #4
  %315 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %core, align 4
  %add.ptr.i746 = getelementptr i8, ptr %316, i32 1492
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i746) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.132, i32 noundef %317) #4
  %318 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %core, align 4
  %add.ptr.i748 = getelementptr i8, ptr %319, i32 1520
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i748) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.133, i32 noundef %320) #4
  %321 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %core, align 4
  %add.ptr.i750 = getelementptr i8, ptr %322, i32 1524
  %323 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i750) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.134, i32 noundef %323) #4
  %324 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %core, align 4
  %add.ptr.i752 = getelementptr i8, ptr %325, i32 1528
  %326 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i752) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.135, i32 noundef %326) #4
  %327 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %core, align 4
  %add.ptr.i754 = getelementptr i8, ptr %328, i32 1532
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i754) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.136, i32 noundef %329) #4
  %330 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %core, align 4
  %add.ptr.i756 = getelementptr i8, ptr %331, i32 1536
  %332 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i756) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.137, i32 noundef %332) #4
  %333 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %core, align 4
  %add.ptr.i758 = getelementptr i8, ptr %334, i32 1540
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i758) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.138, i32 noundef %335) #4
  %336 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %core, align 4
  %add.ptr.i760 = getelementptr i8, ptr %337, i32 1544
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i760) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.139, i32 noundef %338) #4
  %339 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %core, align 4
  %add.ptr.i762 = getelementptr i8, ptr %340, i32 1548
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i762) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.140, i32 noundef %341) #4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0803 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.0803)
  %cmp227 = icmp ult i32 %i.0803, 10
  %cond = select i1 %cmp227, i32 10, i32 9
  %342 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %core, align 4
  %add.ptr.i763 = getelementptr i8, ptr %343, i32 1280
  %mul = shl i32 %i.0803, 2
  %add = add nuw nsw i32 %mul, 272
  %add.ptr.i764 = getelementptr i8, ptr %add.ptr.i763, i32 %add
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i764) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.142, i32 noundef %i.0803, i32 noundef %cond, ptr noundef nonnull @.str.143, i32 noundef %344) #4
  %inc = add nuw nsw i32 %i.0803, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  %345 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %core, align 4
  %add.ptr.i766 = getelementptr i8, ptr %346, i32 1664
  %347 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i766) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.144, i32 noundef %347) #4
  %348 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %core, align 4
  %add.ptr.i768 = getelementptr i8, ptr %349, i32 1668
  %350 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i768) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.145, i32 noundef %350) #4
  %351 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %core, align 4
  %add.ptr.i770 = getelementptr i8, ptr %352, i32 1672
  %353 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i770) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.146, i32 noundef %353) #4
  %354 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %core, align 4
  %add.ptr.i772 = getelementptr i8, ptr %355, i32 1676
  %356 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i772) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.147, i32 noundef %356) #4
  br label %for.body240

for.body240:                                      ; preds = %for.body240.for.body240_crit_edge, %for.end
  %i.1804 = phi i32 [ 0, %for.end ], [ %inc248, %for.body240.for.body240_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.1804)
  %cmp241 = icmp ult i32 %i.1804, 10
  %cond242 = select i1 %cmp241, i32 10, i32 9
  %357 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %core, align 4
  %add.ptr.i773 = getelementptr i8, ptr %358, i32 1280
  %mul244 = shl i32 %i.1804, 2
  %add245 = add nuw nsw i32 %mul244, 400
  %add.ptr.i774 = getelementptr i8, ptr %add.ptr.i773, i32 %add245
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i774) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.148, i32 noundef %i.1804, i32 noundef %cond242, ptr noundef nonnull @.str.143, i32 noundef %359) #4
  %inc248 = add nuw nsw i32 %i.1804, 1
  %exitcond809.not = icmp eq i32 %inc248, 27
  br i1 %exitcond809.not, label %for.end249, label %for.body240.for.body240_crit_edge

for.body240.for.body240_crit_edge:                ; preds = %for.body240
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body240

for.end249:                                       ; preds = %for.body240
  %360 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %core, align 4
  %add.ptr.i776 = getelementptr i8, ptr %361, i32 1792
  %362 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i776) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.149, i32 noundef %362) #4
  %363 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %core, align 4
  %add.ptr.i778 = getelementptr i8, ptr %364, i32 1796
  %365 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i778) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.150, i32 noundef %365) #4
  %366 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %core, align 4
  %add.ptr.i780 = getelementptr i8, ptr %367, i32 1800
  %368 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i780) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.151, i32 noundef %368) #4
  %369 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load ptr, ptr %core, align 4
  %add.ptr.i782 = getelementptr i8, ptr %370, i32 1804
  %371 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i782) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.152, i32 noundef %371) #4
  %372 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %core, align 4
  %add.ptr.i784 = getelementptr i8, ptr %373, i32 1808
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %374) #4
  %375 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %core, align 4
  %add.ptr.i784.1 = getelementptr i8, ptr %376, i32 1812
  %377 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.1) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 1, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %377) #4
  %378 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %core, align 4
  %add.ptr.i784.2 = getelementptr i8, ptr %379, i32 1816
  %380 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.2) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 2, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %380) #4
  %381 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %core, align 4
  %add.ptr.i784.3 = getelementptr i8, ptr %382, i32 1820
  %383 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.3) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 3, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %383) #4
  %384 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %core, align 4
  %add.ptr.i784.4 = getelementptr i8, ptr %385, i32 1824
  %386 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.4) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 4, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %386) #4
  %387 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %core, align 4
  %add.ptr.i784.5 = getelementptr i8, ptr %388, i32 1828
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.5) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 5, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %389) #4
  %390 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %core, align 4
  %add.ptr.i784.6 = getelementptr i8, ptr %391, i32 1832
  %392 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.6) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %392) #4
  %393 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %core, align 4
  %add.ptr.i784.7 = getelementptr i8, ptr %394, i32 1836
  %395 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.7) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 7, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %395) #4
  %396 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %core, align 4
  %add.ptr.i784.8 = getelementptr i8, ptr %397, i32 1840
  %398 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.8) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 8, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %398) #4
  %399 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %core, align 4
  %add.ptr.i784.9 = getelementptr i8, ptr %400, i32 1844
  %401 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i784.9) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.153, i32 noundef 9, i32 noundef 10, ptr noundef nonnull @.str.143, i32 noundef %401) #4
  %402 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %core, align 4
  %add.ptr.i786 = getelementptr i8, ptr %403, i32 1920
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i786) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.154, i32 noundef %404) #4
  %405 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %core, align 4
  %add.ptr.i788 = getelementptr i8, ptr %406, i32 1924
  %407 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i788) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.155, i32 noundef %407) #4
  %408 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %core, align 4
  %add.ptr.i790 = getelementptr i8, ptr %409, i32 1928
  %410 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i790) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.156, i32 noundef %410) #4
  %411 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %core, align 4
  %add.ptr.i792 = getelementptr i8, ptr %412, i32 1932
  %413 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i792) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.157, i32 noundef %413) #4
  br label %for.body280

for.body280:                                      ; preds = %for.body280.for.body280_crit_edge, %for.end249
  %i.3806 = phi i32 [ 0, %for.end249 ], [ %inc288, %for.body280.for.body280_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.3806)
  %cmp281.inv = icmp ugt i32 %i.3806, 9
  %cond282 = select i1 %cmp281.inv, i32 8, i32 9
  %414 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load ptr, ptr %core, align 4
  %add.ptr.i793 = getelementptr i8, ptr %415, i32 1280
  %mul284 = shl i32 %i.3806, 2
  %add285 = add nuw nsw i32 %mul284, 656
  %add.ptr.i794 = getelementptr i8, ptr %add.ptr.i793, i32 %add285
  %416 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i794) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.158, i32 noundef %i.3806, i32 noundef %cond282, ptr noundef nonnull @.str.143, i32 noundef %416) #4
  %inc288 = add nuw nsw i32 %i.3806, 1
  %exitcond811.not = icmp eq i32 %inc288, 27
  br i1 %exitcond811.not, label %for.body280.for.body292_crit_edge, label %for.body280.for.body280_crit_edge

for.body280.for.body280_crit_edge:                ; preds = %for.body280
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body280

for.body280.for.body292_crit_edge:                ; preds = %for.body280
  br label %for.body292

for.body292:                                      ; preds = %for.body292.for.body292_crit_edge, %for.body280.for.body292_crit_edge
  %i.4807 = phi i32 [ %inc300, %for.body292.for.body292_crit_edge ], [ 0, %for.body280.for.body292_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %i.4807)
  %cmp293 = icmp ult i32 %i.4807, 10
  %cond294 = select i1 %cmp293, i32 10, i32 9
  %417 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %core, align 4
  %add.ptr.i795 = getelementptr i8, ptr %418, i32 1280
  %mul296 = shl i32 %i.4807, 2
  %add297 = add nuw nsw i32 %mul296, 768
  %add.ptr.i796 = getelementptr i8, ptr %add.ptr.i795, i32 %add297
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i796) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.159, i32 noundef %i.4807, i32 noundef %cond294, ptr noundef nonnull @.str.143, i32 noundef %419) #4
  %inc300 = add nuw nsw i32 %i.4807, 1
  %exitcond812.not = icmp eq i32 %inc300, 31
  br i1 %exitcond812.not, label %for.end301, label %for.body292.for.body292_crit_edge

for.body292.for.body292_crit_edge:                ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body292

for.end301:                                       ; preds = %for.body292
  %420 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %core, align 4
  %add.ptr.i798 = getelementptr i8, ptr %421, i32 2172
  %422 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i798) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.160, i32 noundef %422) #4
  br label %for.body306

for.body306:                                      ; preds = %for.body306.for.body306_crit_edge, %for.end301
  %i.5808 = phi i32 [ 0, %for.end301 ], [ %inc314, %for.body306.for.body306_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.5808)
  %cmp307.inv = icmp ugt i32 %i.5808, 9
  %cond308 = select i1 %cmp307.inv, i32 8, i32 9
  %423 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %core, align 4
  %add.ptr.i799 = getelementptr i8, ptr %424, i32 1280
  %mul310 = shl i32 %i.5808, 2
  %add311 = add nuw nsw i32 %mul310, 896
  %add.ptr.i800 = getelementptr i8, ptr %add.ptr.i799, i32 %add311
  %425 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i800) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.161, i32 noundef %i.5808, i32 noundef %cond308, ptr noundef nonnull @.str.143, i32 noundef %425) #4
  %inc314 = add nuw nsw i32 %i.5808, 1
  %exitcond813.not = icmp eq i32 %inc314, 31
  br i1 %exitcond813.not, label %for.end315, label %for.body306.for.body306_crit_edge

for.body306.for.body306_crit_edge:                ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body306

for.end315:                                       ; preds = %for.body306
  call void @__sanitizer_cov_trace_pc() #6
  %426 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load ptr, ptr %core, align 4
  %add.ptr.i802 = getelementptr i8, ptr %427, i32 2300
  %428 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i802) #4, !srcloc !357
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.162, i32 noundef %428) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi4_audio_config(ptr noundef readonly %core, ptr noundef %wp, ptr noundef readonly %audio, i32 noundef %pclk) local_unnamed_addr #0 align 64 {
entry:
  %audio_format = alloca %struct.hdmi_audio_format, align 4
  %audio_dma = alloca %struct.hdmi_audio_dma, align 4
  %n = alloca i32, align 4
  %cts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %audio_format) #4
  %0 = call ptr @memset(ptr %audio_format, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %audio_dma) #4
  %1 = call ptr @memset(ptr %audio_dma, i32 255, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %2 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %n, align 4, !annotation !360
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cts) #4
  %3 = ptrtoint ptr %cts to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cts, align 4, !annotation !360
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
  %11 = and i8 %9, 15
  %arrayidx47 = getelementptr [24 x i8], ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx47, align 1
  %14 = and i8 %13, 15
  %and49 = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %14)
  %.not192 = icmp eq i8 %14, 15
  br i1 %.not192, label %if.end.cleanup_crit_edge, label %switch.hole_check

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = zext i8 %14 to i16
  %switch.shifted = lshr i16 21773, %switch.maskindex
  %15 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %switch.lobit.not = icmp eq i16 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.hdmi4_audio_config, i32 0, i32 %and49
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = call i32 @hdmi_compute_acr(i32 noundef %pclk, i32 noundef %switch.load, ptr noundef nonnull %n, ptr noundef nonnull %cts) #4
  %17 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n, align 4
  %19 = ptrtoint ptr %cts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cts, align 4
  %cts_swmode = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 1
  %21 = ptrtoint ptr %cts_swmode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cts_swmode, align 4, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool58.not = icmp eq i8 %22, 0
  br i1 %tobool58.not, label %switch.lookup.if.then68_crit_edge, label %if.end65

switch.lookup.if.then68_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68

if.end65:                                         ; preds = %switch.lookup
  %audio_use_mclk = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 2
  %23 = ptrtoint ptr %audio_use_mclk to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %audio_use_mclk, align 1, !range !361
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool67.not = icmp eq i8 %24, 0
  br i1 %tobool67.not, label %if.end65.if.end69_crit_edge, label %if.end65.if.then68_crit_edge

if.end65.if.then68_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then68

if.end65.if.end69_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end69

if.then68:                                        ; preds = %if.end65.if.then68_crit_edge, %switch.lookup.if.then68_crit_edge
  %acore.sroa.44.0173 = phi i32 [ 1, %if.end65.if.then68_crit_edge ], [ 0, %switch.lookup.if.then68_crit_edge ]
  %acore.sroa.36.0171 = phi i32 [ 0, %if.end65.if.then68_crit_edge ], [ 1015552, %switch.lookup.if.then68_crit_edge ]
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end65.if.end69_crit_edge
  %tobool67.not176 = phi i1 [ true, %if.end65.if.end69_crit_edge ], [ false, %if.then68 ]
  %acore.sroa.44.0174 = phi i32 [ 1, %if.end65.if.end69_crit_edge ], [ %acore.sroa.44.0173, %if.then68 ]
  %acore.sroa.36.0172 = phi i32 [ 0, %if.end65.if.end69_crit_edge ], [ %acore.sroa.36.0171, %if.then68 ]
  %acore.sroa.53157.0 = phi i32 [ 7, %if.end65.if.end69_crit_edge ], [ 0, %if.then68 ]
  %25 = ptrtoint ptr %cea to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cea, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %26, align 1
  %29 = and i8 %28, 7
  %30 = zext i8 %29 to i32
  %switch.tableidx = add nsw i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %31 = icmp ult i32 %switch.tableidx, 7
  br i1 %31, label %switch.lookup189, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup189:                                 ; preds = %if.end69
  %switch.gep190 = getelementptr inbounds [7 x i8], ptr @switch.table.hdmi4_audio_config.180, i32 0, i32 %switch.tableidx
  %32 = ptrtoint ptr %switch.gep190 to i32
  call void @__asan_load1_noabort(i32 %32)
  %switch.load191 = load i8, ptr %switch.gep190, align 1
  %active_chnnls_msk85 = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 1
  %33 = ptrtoint ptr %active_chnnls_msk85 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %switch.load191, ptr %active_chnnls_msk85, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp = icmp eq i8 %29, 1
  br i1 %cmp, label %if.then89, label %if.else91

if.then89:                                        ; preds = %switch.lookup189
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %audio_format to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %audio_format, align 4
  br label %if.end98

if.else91:                                        ; preds = %switch.lookup189
  call void @__sanitizer_cov_trace_pc() #6
  %35 = ptrtoint ptr %audio_format to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %audio_format, align 4
  %36 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 7, ptr %26, align 1
  br label %if.end98

if.end98:                                         ; preds = %if.else91, %if.then89
  %acore.sroa.17.0 = phi i32 [ 20, %if.then89 ], [ 244, %if.else91 ]
  %acore.sroa.41.0 = phi i32 [ 0, %if.then89 ], [ 2, %if.else91 ]
  %. = select i1 %.not, i8 16, i8 32
  %37 = ptrtoint ptr %audio_dma to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %., ptr %audio_dma, align 4
  %block_size = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 1
  %38 = ptrtoint ptr %block_size to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -64, ptr %block_size, align 1
  %mode = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 2
  %39 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %mode, align 4
  %fifo_threshold = getelementptr inbounds %struct.hdmi_audio_dma, ptr %audio_dma, i32 0, i32 3
  %40 = ptrtoint ptr %fifo_threshold to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 32, ptr %fifo_threshold, align 4
  %spec.select = zext i1 %.not to i32
  %not..not = xor i1 %.not, true
  %spec.select188 = zext i1 %not..not to i32
  %41 = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.select, ptr %41, align 4
  %43 = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 6
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %spec.select188, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 3
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %spec.select188, ptr %45, align 4
  %type = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 2
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %type, align 4
  %sample_order = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 4
  %48 = ptrtoint ptr %sample_order to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %sample_order, align 4
  %en_sig_blk_strt_end = getelementptr inbounds %struct.hdmi_audio_format, ptr %audio_format, i32 0, i32 7
  %49 = ptrtoint ptr %en_sig_blk_strt_end to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %en_sig_blk_strt_end, align 4
  call void @hdmi_wp_audio_config_dma(ptr noundef %wp, ptr noundef nonnull %audio_dma) #4
  call void @hdmi_wp_audio_config_format(ptr noundef %wp, ptr noundef nonnull %audio_format) #4
  %50 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %core, align 4
  %add.ptr.i261.i = getelementptr i8, ptr %51, i32 1292
  %52 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261.i) #4, !srcloc !357
  %and.i = and i32 %52, -256
  %and2.i = and i32 %18, 255
  %or.i = or i32 %and.i, %and2.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261.i, i32 %or.i) #4, !srcloc !358
  %add.ptr.i263.i = getelementptr i8, ptr %51, i32 1296
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i263.i) #4, !srcloc !357
  %and4.i = and i32 %53, -256
  %shr.i = lshr i32 %18, 8
  %and7.i = and i32 %shr.i, 255
  %or8.i = or i32 %and4.i, %and7.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i263.i, i32 %or8.i) #4, !srcloc !358
  %add.ptr.i265.i = getelementptr i8, ptr %51, i32 1300
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265.i) #4, !srcloc !357
  %and10.i = and i32 %54, -256
  %shr12.i = lshr i32 %18, 16
  %and14.i = and i32 %shr12.i, 255
  %or15.i = or i32 %and10.i, %and14.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265.i, i32 %or15.i) #4, !srcloc !358
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %acore.sroa.44.0174)
  %cmp.i = icmp eq i32 %acore.sroa.44.0174, 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i267.i = getelementptr i8, ptr %51, i32 1304
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i267.i) #4, !srcloc !357
  %and17.i = and i32 %55, -256
  %and19.i = and i32 %20, 255
  %or20.i = or i32 %and17.i, %and19.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i267.i, i32 %or20.i) #4, !srcloc !358
  %add.ptr.i269.i = getelementptr i8, ptr %51, i32 1308
  %56 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i269.i) #4, !srcloc !357
  %and22.i = and i32 %56, -256
  %shr24.i = lshr i32 %20, 8
  %and26.i = and i32 %shr24.i, 255
  %or27.i = or i32 %and22.i, %and26.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269.i, i32 %or27.i) #4, !srcloc !358
  %add.ptr.i271.i = getelementptr i8, ptr %51, i32 1312
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i271.i) #4, !srcloc !357
  %and29.i = and i32 %57, -256
  %shr31.i = lshr i32 %20, 16
  %and33.i = and i32 %shr31.i, 255
  %or34.i = or i32 %and29.i, %and33.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271.i, i32 %or34.i) #4, !srcloc !358
  br label %if.end.i

if.else.i:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i273.i = getelementptr i8, ptr %51, i32 1484
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i273.i) #4, !srcloc !357
  %and36.i = and i32 %58, -256
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i273.i, i32 %and36.i) #4, !srcloc !358
  %add.ptr.i275.i = getelementptr i8, ptr %51, i32 1488
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i275.i) #4, !srcloc !357
  %and41.i = and i32 %59, -256
  %shr43.i = lshr i32 %acore.sroa.36.0172, 8
  %and45.i = and i32 %shr43.i, 255
  %or46.i = or i32 %and41.i, %and45.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i275.i, i32 %or46.i) #4, !srcloc !358
  %add.ptr.i277.i = getelementptr i8, ptr %51, i32 1492
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i277.i) #4, !srcloc !357
  %and48.i = and i32 %60, -256
  %shr50.i = lshr i32 %acore.sroa.36.0172, 16
  %or53.i = or i32 %and48.i, %shr50.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i277.i, i32 %or53.i) #4, !srcloc !358
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  br i1 %tobool67.not176, label %if.end.i.if.end60.i_crit_edge, label %if.then54.i

if.end.i.if.end60.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.i

if.then54.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr.i279.i = getelementptr i8, ptr %51, i32 1288
  %61 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i279.i) #4, !srcloc !357
  %and56.i = and i32 %61, -8
  %or59.i = or i32 %and56.i, %acore.sroa.53157.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i279.i, i32 %or59.i) #4, !srcloc !358
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then54.i, %if.end.i.if.end60.i_crit_edge
  %add.ptr.i281.i = getelementptr i8, ptr %51, i32 1284
  %62 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281.i) #4, !srcloc !357
  %and64.i = and i32 %62, -8
  %or68.i = or i32 %acore.sroa.44.0174, %and64.i
  %or73.i = or i32 %or68.i, 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281.i, i32 %or73.i) #4, !srcloc !358
  br i1 %tobool67.not176, label %if.end60.i.hdmi_core_audio_config.exit_crit_edge, label %if.then76.i

if.end60.i.hdmi_core_audio_config.exit_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdmi_core_audio_config.exit

if.then76.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #6
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i281.i) #4, !srcloc !357
  %or79.i = or i32 %63, 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i281.i, i32 %or79.i) #4, !srcloc !358
  br label %hdmi_core_audio_config.exit

hdmi_core_audio_config.exit:                      ; preds = %if.then76.i, %if.end60.i.hdmi_core_audio_config.exit_crit_edge
  %add.ptr.i285.i = getelementptr i8, ptr %51, i32 1364
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i285.i) #4, !srcloc !357
  %or87.i = or i32 %64, 2
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i285.i, i32 %or87.i) #4, !srcloc !358
  %65 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %5, align 1
  %conv88.i = zext i8 %66 to i32
  %add.ptr.i287.i = getelementptr i8, ptr %51, i32 1400
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i287.i, i32 %conv88.i) #4, !srcloc !358
  %arrayidx91.i = getelementptr [24 x i8], ptr %5, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx91.i, align 1
  %conv92.i = zext i8 %68 to i32
  %add.ptr.i288.i = getelementptr i8, ptr %51, i32 1404
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i288.i, i32 %conv92.i) #4, !srcloc !358
  %arrayidx95.i = getelementptr [24 x i8], ptr %5, i32 0, i32 2
  %69 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx95.i, align 1
  %conv96.i = zext i8 %70 to i32
  %add.ptr.i289.i = getelementptr i8, ptr %51, i32 1408
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i289.i, i32 %conv96.i) #4, !srcloc !358
  %71 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx47, align 1
  %conv100.i = zext i8 %72 to i32
  %add.ptr.i290.i = getelementptr i8, ptr %51, i32 1412
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i290.i, i32 %conv100.i) #4, !srcloc !358
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx, align 1
  %conv104.i = zext i8 %74 to i32
  %add.ptr.i291.i = getelementptr i8, ptr %51, i32 1416
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i291.i, i32 %conv104.i) #4, !srcloc !358
  %add.ptr.i292.i = getelementptr i8, ptr %51, i32 1396
  %75 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i292.i) #4, !srcloc !357
  %and106.i = and i32 %75, -88
  %or110.i = select i1 %.not, i32 64, i32 68
  %or122.i = or i32 %or110.i, %and106.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i292.i, i32 %or122.i) #4, !srcloc !358
  %add.ptr.i294.i = getelementptr i8, ptr %51, i32 1424
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i294.i) #4, !srcloc !357
  %and136.i = and i32 %76, -16
  %and140.i = zext i8 %11 to i32
  %or141.i = or i32 %and136.i, %and140.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i294.i, i32 %or141.i) #4, !srcloc !358
  %add.ptr.i296.i = getelementptr i8, ptr %51, i32 1468
  %77 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i296.i) #4, !srcloc !357
  %and143.i = and i32 %77, -7
  %or146.i = or i32 %and143.i, %acore.sroa.41.0
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i296.i, i32 %or146.i) #4, !srcloc !358
  %add.ptr.i298.i = getelementptr i8, ptr %51, i32 1360
  %78 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i298.i) #4, !srcloc !357
  %and148.i = and i32 %78, -255
  %or165.i = or i32 %acore.sroa.17.0, %and148.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i298.i, i32 %or165.i) #4, !srcloc !358
  %add.ptr.i300.i = getelementptr i8, ptr %51, i32 1392
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i300.i, i32 120) #4, !srcloc !358
  %add.ptr.i301.i = getelementptr i8, ptr %51, i32 1380
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i301.i) #4, !srcloc !357
  %or174.i = or i32 %79, 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i301.i, i32 %or174.i) #4, !srcloc !358
  %80 = ptrtoint ptr %cea to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cea, align 4
  %82 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %core, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %83, i32 1792
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 132) #4, !srcloc !358
  %add.ptr.i70.i = getelementptr i8, ptr %83, i32 1796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i, i32 1) #4, !srcloc !358
  %add.ptr.i71.i = getelementptr i8, ptr %83, i32 1800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i, i32 10) #4, !srcloc !358
  %84 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %81, align 1
  %conv2.i = zext i8 %85 to i32
  %add.ptr.i72.i = getelementptr i8, ptr %83, i32 1808
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i72.i, i32 %conv2.i) #4, !srcloc !358
  %86 = ptrtoint ptr %81 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %81, align 1
  %db2_sf_ss.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %81, i32 0, i32 1
  %88 = ptrtoint ptr %db2_sf_ss.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %db2_sf_ss.i, align 1
  %conv8.i = zext i8 %89 to i32
  %add.ptr.i73.i = getelementptr i8, ptr %83, i32 1812
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i73.i, i32 %conv8.i) #4, !srcloc !358
  %90 = ptrtoint ptr %db2_sf_ss.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %db2_sf_ss.i, align 1
  %db3.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %81, i32 0, i32 2
  %92 = ptrtoint ptr %db3.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %db3.i, align 1
  %conv14.i = zext i8 %93 to i32
  %add.ptr.i74.i = getelementptr i8, ptr %83, i32 1816
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74.i, i32 %conv14.i) #4, !srcloc !358
  %94 = ptrtoint ptr %db3.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %db3.i, align 1
  %db4_ca.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %81, i32 0, i32 3
  %96 = ptrtoint ptr %db4_ca.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %db4_ca.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp.not.i = icmp eq i8 %97, 0
  br i1 %cmp.not.i, label %hdmi_core_audio_config.exit.hdmi_core_audio_infoframe_cfg.exit_crit_edge, label %if.then.i140

hdmi_core_audio_config.exit.hdmi_core_audio_infoframe_cfg.exit_crit_edge: ; preds = %hdmi_core_audio_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %hdmi_core_audio_infoframe_cfg.exit

if.then.i140:                                     ; preds = %hdmi_core_audio_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  %98 = ptrtoint ptr %db4_ca.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 19, ptr %db4_ca.i, align 1
  br label %hdmi_core_audio_infoframe_cfg.exit

hdmi_core_audio_infoframe_cfg.exit:               ; preds = %if.then.i140, %hdmi_core_audio_config.exit.hdmi_core_audio_infoframe_cfg.exit_crit_edge
  %99 = ptrtoint ptr %db4_ca.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %db4_ca.i, align 1
  %conv24.i = zext i8 %100 to i32
  %add.ptr.i75.i = getelementptr i8, ptr %83, i32 1820
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %conv24.i) #4, !srcloc !358
  %101 = ptrtoint ptr %db4_ca.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %db4_ca.i, align 1
  %db5_dminh_lsv.i = getelementptr inbounds %struct.snd_cea_861_aud_if, ptr %81, i32 0, i32 4
  %103 = ptrtoint ptr %db5_dminh_lsv.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %db5_dminh_lsv.i, align 1
  %conv30.i = zext i8 %104 to i32
  %add.ptr.i76.i = getelementptr i8, ptr %83, i32 1824
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 %conv30.i) #4, !srcloc !358
  %105 = ptrtoint ptr %db5_dminh_lsv.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %db5_dminh_lsv.i, align 1
  %107 = add i8 %87, %91
  %108 = add i8 %107, %95
  %109 = add i8 %108, %102
  %110 = add i8 %109, %106
  %add34.neg.i = sub i8 113, %110
  %add.ptr.i77.i = getelementptr i8, ptr %83, i32 1828
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #4, !srcloc !358
  %add.ptr.i78.i = getelementptr i8, ptr %83, i32 1832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78.i, i32 0) #4, !srcloc !358
  %add.ptr.i79.i = getelementptr i8, ptr %83, i32 1836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 0) #4, !srcloc !358
  %add.ptr.i80.i = getelementptr i8, ptr %83, i32 1840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80.i, i32 0) #4, !srcloc !358
  %add.ptr.i81.i = getelementptr i8, ptr %83, i32 1844
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 0) #4, !srcloc !358
  %conv38.i = zext i8 %add34.neg.i to i32
  %add.ptr.i82.i = getelementptr i8, ptr %83, i32 1804
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82.i, i32 %conv38.i) #4, !srcloc !358
  br label %cleanup

cleanup:                                          ; preds = %hdmi_core_audio_infoframe_cfg.exit, %if.end69.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %hdmi_core_audio_infoframe_cfg.exit ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end69.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
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
define dso_local i32 @hdmi4_audio_start(ptr nocapture noundef readonly %core, ptr noundef %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 1360
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #4, !srcloc !357
  %or = or i32 %2, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %or) #4, !srcloc !358
  %call3 = tail call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_wp_audio_core_req_enable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @hdmi4_audio_stop(ptr nocapture noundef readonly %core, ptr noundef %wp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %add.ptr.i6 = getelementptr i8, ptr %1, i32 1360
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #4, !srcloc !357
  %and = and i32 %2, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %and) #4, !srcloc !358
  %call3 = tail call i32 @hdmi_wp_audio_core_req_enable(ptr noundef %wp, i1 noundef zeroext false) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @hdmi4_core_init(ptr noundef %pdev, ptr nocapture noundef %core) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @soc_device_match(ptr noundef nonnull @hdmi4_soc_devices) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data = getelementptr inbounds %struct.soc_device_attribute, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1, !range !361
  %cts_swmode2 = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 1
  %4 = ptrtoint ptr %cts_swmode2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %cts_swmode2, align 4
  %audio_use_mclk = getelementptr inbounds %struct.hdmi4_features, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %audio_use_mclk to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %audio_use_mclk, align 1, !range !361
  %audio_use_mclk4 = getelementptr inbounds %struct.hdmi_core_data, ptr %core, i32 0, i32 2
  %7 = ptrtoint ptr %audio_use_mclk4 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %audio_use_mclk4, align 1
  %call6 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.163) #4
  %8 = ptrtoint ptr %core to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %core, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call6 to i32
  %spec.select = select i1 %cmp.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_avi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 182)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !271, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !315, !316, !317, !319, !320, !321, !322, !324, !325, !326, !327, !329, !330, !331, !332, !334, !336, !338, !340, !342, !344, !346}
!llvm.module.flags = !{!348, !349, !350, !351, !352, !353, !354, !355}
!llvm.ident = !{!356}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 49, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @hdmi4_core_ddc_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @hdmi4_core_ddc_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 60, i32 3}
!8 = !{ptr @hdmi4_core_ddc_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @hdmi4_core_ddc_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 70, i32 3}
!12 = !{ptr @hdmi4_core_ddc_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @hdmi4_core_ddc_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 86, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @hdmi4_core_ddc_read._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @hdmi4_core_ddc_read._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 111, i32 3}
!21 = !{ptr @hdmi4_core_ddc_read._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @hdmi4_core_ddc_read._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 116, i32 3}
!25 = !{ptr @hdmi4_core_ddc_read._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @hdmi4_core_ddc_read._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 125, i32 4}
!29 = !{ptr @hdmi4_core_ddc_read._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @hdmi4_core_ddc_read._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 133, i32 5}
!33 = !{ptr @hdmi4_core_ddc_read._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @hdmi4_core_ddc_read._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 160, i32 2}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.25, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @hdmi4_core_powerdown_disable.__UNIQUE_ID_ddebug308, !36, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!40 = !{ptr @.str.26, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 320, i32 2}
!43 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 321, i32 2}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 322, i32 2}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 323, i32 2}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 324, i32 2}
!52 = !{ptr @.str.33, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 325, i32 2}
!54 = !{ptr @.str.34, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 326, i32 2}
!56 = !{ptr @.str.35, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 327, i32 2}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 328, i32 2}
!60 = !{ptr @.str.37, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 329, i32 2}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 330, i32 2}
!64 = !{ptr @.str.39, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 331, i32 2}
!66 = !{ptr @.str.40, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 332, i32 2}
!68 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 333, i32 2}
!70 = !{ptr @.str.42, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 334, i32 2}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 335, i32 2}
!74 = !{ptr @.str.44, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 336, i32 2}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 337, i32 2}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 338, i32 2}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 339, i32 2}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 340, i32 2}
!84 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 341, i32 2}
!86 = !{ptr @.str.50, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 342, i32 2}
!88 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 343, i32 2}
!90 = !{ptr @.str.52, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 344, i32 2}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 345, i32 2}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 346, i32 2}
!96 = !{ptr @.str.55, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 347, i32 2}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 348, i32 2}
!100 = !{ptr @.str.57, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 350, i32 2}
!102 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 351, i32 2}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 352, i32 2}
!106 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 353, i32 2}
!108 = !{ptr @.str.61, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 354, i32 2}
!110 = !{ptr @.str.62, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 355, i32 2}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 356, i32 2}
!114 = !{ptr @.str.64, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 357, i32 2}
!116 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 358, i32 2}
!118 = !{ptr @.str.66, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 359, i32 2}
!120 = !{ptr @.str.67, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 360, i32 2}
!122 = !{ptr @.str.68, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 361, i32 2}
!124 = !{ptr @.str.69, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 362, i32 2}
!126 = !{ptr @.str.70, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 363, i32 2}
!128 = !{ptr @.str.71, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 364, i32 2}
!130 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 365, i32 2}
!132 = !{ptr @.str.73, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 366, i32 2}
!134 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 367, i32 2}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 368, i32 2}
!138 = !{ptr @.str.76, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 369, i32 2}
!140 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 370, i32 2}
!142 = !{ptr @.str.78, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 371, i32 2}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 372, i32 2}
!146 = !{ptr @.str.80, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 373, i32 2}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 374, i32 2}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 375, i32 2}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 376, i32 2}
!154 = !{ptr @.str.84, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 377, i32 2}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 378, i32 2}
!158 = !{ptr @.str.86, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 379, i32 2}
!160 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 380, i32 2}
!162 = !{ptr @.str.88, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 381, i32 2}
!164 = !{ptr @.str.89, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 382, i32 2}
!166 = !{ptr @.str.90, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 383, i32 2}
!168 = !{ptr @.str.91, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 384, i32 2}
!170 = !{ptr @.str.92, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 385, i32 2}
!172 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 386, i32 2}
!174 = !{ptr @.str.94, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 387, i32 2}
!176 = !{ptr @.str.95, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 389, i32 2}
!178 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 390, i32 2}
!180 = !{ptr @.str.97, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 391, i32 2}
!182 = !{ptr @.str.98, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 392, i32 2}
!184 = !{ptr @.str.99, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 393, i32 2}
!186 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 394, i32 2}
!188 = !{ptr @.str.101, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 395, i32 2}
!190 = !{ptr @.str.102, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 396, i32 2}
!192 = !{ptr @.str.103, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 398, i32 2}
!194 = !{ptr @.str.104, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 399, i32 2}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 400, i32 2}
!198 = !{ptr @.str.106, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 401, i32 2}
!200 = !{ptr @.str.107, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 402, i32 2}
!202 = !{ptr @.str.108, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 403, i32 2}
!204 = !{ptr @.str.109, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 404, i32 2}
!206 = !{ptr @.str.110, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 405, i32 2}
!208 = !{ptr @.str.111, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 406, i32 2}
!210 = !{ptr @.str.112, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 407, i32 2}
!212 = !{ptr @.str.113, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 408, i32 2}
!214 = !{ptr @.str.114, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 409, i32 2}
!216 = !{ptr @.str.115, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 410, i32 2}
!218 = !{ptr @.str.116, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 411, i32 2}
!220 = !{ptr @.str.117, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 412, i32 2}
!222 = !{ptr @.str.118, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 413, i32 2}
!224 = !{ptr @.str.119, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 414, i32 2}
!226 = !{ptr @.str.120, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 415, i32 2}
!228 = !{ptr @.str.121, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 416, i32 2}
!230 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 417, i32 2}
!232 = !{ptr @.str.123, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 418, i32 2}
!234 = !{ptr @.str.124, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 419, i32 2}
!236 = !{ptr @.str.125, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 420, i32 2}
!238 = !{ptr @.str.126, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 421, i32 2}
!240 = !{ptr @.str.127, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 422, i32 2}
!242 = !{ptr @.str.128, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 423, i32 2}
!244 = !{ptr @.str.129, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 424, i32 2}
!246 = !{ptr @.str.130, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 425, i32 2}
!248 = !{ptr @.str.131, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 426, i32 2}
!250 = !{ptr @.str.132, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 427, i32 2}
!252 = !{ptr @.str.133, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 428, i32 2}
!254 = !{ptr @.str.134, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 429, i32 2}
!256 = !{ptr @.str.135, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 430, i32 2}
!258 = !{ptr @.str.136, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 431, i32 2}
!260 = !{ptr @.str.137, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 432, i32 2}
!262 = !{ptr @.str.138, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 433, i32 2}
!264 = !{ptr @.str.139, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 434, i32 2}
!266 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 435, i32 2}
!268 = !{ptr @.str.141, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 438, i32 3}
!270 = !{ptr @.str.142, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.143, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.144, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 440, i32 2}
!274 = !{ptr @.str.145, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 441, i32 2}
!276 = !{ptr @.str.146, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 442, i32 2}
!278 = !{ptr @.str.147, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 443, i32 2}
!280 = !{ptr @.str.148, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 446, i32 3}
!282 = !{ptr @.str.149, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 448, i32 2}
!284 = !{ptr @.str.150, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 449, i32 2}
!286 = !{ptr @.str.151, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 450, i32 2}
!288 = !{ptr @.str.152, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 451, i32 2}
!290 = !{ptr @.str.153, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 454, i32 3}
!292 = !{ptr @.str.154, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 456, i32 2}
!294 = !{ptr @.str.155, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 457, i32 2}
!296 = !{ptr @.str.156, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 458, i32 2}
!298 = !{ptr @.str.157, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 459, i32 2}
!300 = !{ptr @.str.158, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 462, i32 3}
!302 = !{ptr @.str.159, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 465, i32 3}
!304 = !{ptr @.str.160, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 467, i32 2}
!306 = !{ptr @.str.161, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 470, i32 3}
!308 = !{ptr @.str.162, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 472, i32 2}
!310 = !{ptr @.str.163, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 883, i32 59}
!312 = !{ptr @.str.164, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 147, i32 2}
!314 = !{ptr @.str.165, !313, !"<string literal>", i1 false, i1 false}
!315 = !{ptr @hdmi_core_init.__UNIQUE_ID_ddebug307, !313, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!316 = !{ptr @.str.166, !313, !"<string literal>", i1 false, i1 false}
!317 = !{ptr @.str.167, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 172, i32 2}
!319 = !{ptr @.str.168, !318, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @hdmi_core_swreset_assert.__UNIQUE_ID_ddebug310, !318, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!321 = !{ptr @.str.169, !318, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.170, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 166, i32 2}
!324 = !{ptr @.str.171, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @hdmi_core_swreset_release.__UNIQUE_ID_ddebug309, !323, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!326 = !{ptr @.str.172, !323, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @.str.173, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 229, i32 2}
!329 = !{ptr @.str.174, !328, !"<string literal>", i1 false, i1 false}
!330 = !{ptr @hdmi_core_write_avi_infoframe.__UNIQUE_ID_ddebug311, !328, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!331 = !{ptr @.str.175, !328, !"<string literal>", i1 false, i1 false}
!332 = !{ptr @.str.176, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 854, i32 14}
!334 = !{ptr @.str.177, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 855, i32 15}
!336 = !{ptr @.str.178, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 860, i32 15}
!338 = !{ptr @.str.179, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 864, i32 13}
!340 = !{ptr @hdmi4_soc_devices, !341, !"hdmi4_soc_devices", i1 false, i1 false}
!341 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 852, i32 42}
!342 = !{ptr @hdmi4430_es1_features, !343, !"hdmi4430_es1_features", i1 false, i1 false}
!343 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 837, i32 36}
!344 = !{ptr @hdmi4430_es2_features, !345, !"hdmi4430_es2_features", i1 false, i1 false}
!345 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 842, i32 36}
!346 = !{ptr @hdmi4_features, !347, !"hdmi4_features", i1 false, i1 false}
!347 = !{!"../drivers/gpu/drm/omapdrm/dss/hdmi4_core.c", i32 847, i32 36}
!348 = !{i32 1, !"wchar_size", i32 2}
!349 = !{i32 1, !"min_enum_size", i32 4}
!350 = !{i32 8, !"branch-target-enforcement", i32 0}
!351 = !{i32 8, !"sign-return-address", i32 0}
!352 = !{i32 8, !"sign-return-address-all", i32 0}
!353 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!354 = !{i32 7, !"uwtable", i32 1}
!355 = !{i32 7, !"frame-pointer", i32 2}
!356 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!357 = !{i64 4060501}
!358 = !{i64 4060083}
!359 = !{i64 2148715978, i64 2148715983, i64 2148715996, i64 2148716040, i64 2148716074, i64 2148716095}
!360 = !{!"auto-init"}
!361 = !{i8 0, i8 2}
