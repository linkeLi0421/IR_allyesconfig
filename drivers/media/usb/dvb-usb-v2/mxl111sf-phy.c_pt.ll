; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mxl111sf_reg_ctrl_info = type { i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mxl111sf_state = type { ptr, i32, i8, i8, i8, i8, i32, i32, i32, %struct.tveeprom, %struct.mutex, i8, [3 x %struct.mxl111sf_adap_state], [64 x i8], [64 x i8], %struct.mutex, %struct.media_entity, [2 x %struct.media_pad] }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.mxl111sf_adap_state = type { i32, i32, i32, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.109 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }

@__const.mxl111sf_init_tuner_demod.mxl_111_overwrite_default = private unnamed_addr constant [21 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i8 7, i8 -1, i8 12 }, %struct.mxl111sf_reg_ctrl_info { i8 88, i8 -1, i8 -99 }, %struct.mxl111sf_reg_ctrl_info { i8 9, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info { i8 6, i8 -1, i8 6 }, %struct.mxl111sf_reg_ctrl_info { i8 -56, i8 -1, i8 64 }, %struct.mxl111sf_reg_ctrl_info { i8 -115, i8 1, i8 1 }, %struct.mxl111sf_reg_ctrl_info { i8 50, i8 -1, i8 -84 }, %struct.mxl111sf_reg_ctrl_info { i8 66, i8 -1, i8 67 }, %struct.mxl111sf_reg_ctrl_info { i8 116, i8 -1, i8 -60 }, %struct.mxl111sf_reg_ctrl_info { i8 113, i8 -1, i8 -26 }, %struct.mxl111sf_reg_ctrl_info { i8 -125, i8 -1, i8 100 }, %struct.mxl111sf_reg_ctrl_info { i8 -123, i8 -1, i8 100 }, %struct.mxl111sf_reg_ctrl_info { i8 -120, i8 -1, i8 -16 }, %struct.mxl111sf_reg_ctrl_info { i8 111, i8 -16, i8 -80 }, %struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 1 }, %struct.mxl111sf_reg_ctrl_info { i8 -127, i8 -1, i8 17 }, %struct.mxl111sf_reg_ctrl_info { i8 -12, i8 -1, i8 7 }, %struct.mxl111sf_reg_ctrl_info { i8 -44, i8 31, i8 15 }, %struct.mxl111sf_reg_ctrl_info { i8 -42, i8 -1, i8 12 }, %struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 1
@dvb_usb_mxl111sf_debug = external dso_local local_unnamed_addr global i32, align 4
@mxl111sf_init_tuner_demod._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\017%s: ()\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_init_tuner_demod\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c\00", [52 x i8] zeroinitializer }, align 32
@mxl111sf_init_tuner_demod._entry_ptr = internal global ptr @mxl111sf_init_tuner_demod._entry, section ".printk_index", align 4
@mxl1x1sf_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl1x1sf_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@mxl1x1sf_soft_reset._entry_ptr = internal global ptr @mxl1x1sf_soft_reset._entry, section ".printk_index", align 4
@mxl1x1sf_soft_reset._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: error %d on line %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mxl1x1sf_soft_reset._entry_ptr.6 = internal global ptr @mxl1x1sf_soft_reset._entry.4, section ".printk_index", align 4
@mxl1x1sf_soft_reset._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_soft_reset._entry_ptr.8 = internal global ptr @mxl1x1sf_soft_reset._entry.7, section ".printk_index", align 4
@mxl1x1sf_set_device_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: (%s)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl1x1sf_set_device_mode\00", [39 x i8] zeroinitializer }, align 32
@mxl1x1sf_set_device_mode._entry_ptr = internal global ptr @mxl1x1sf_set_device_mode._entry, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MXL_SOC_MODE\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MXL_TUNER_MODE\00", [17 x i8] zeroinitializer }, align 32
@mxl1x1sf_set_device_mode._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_set_device_mode._entry_ptr.14 = internal global ptr @mxl1x1sf_set_device_mode._entry.13, section ".printk_index", align 4
@mxl1x1sf_set_device_mode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.10, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl1x1sf_set_device_mode._entry_ptr.16 = internal global ptr @mxl1x1sf_set_device_mode._entry.15, section ".printk_index", align 4
@mxl1x1sf_top_master_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%s: (%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mxl1x1sf_top_master_ctrl\00", [39 x i8] zeroinitializer }, align 32
@mxl1x1sf_top_master_ctrl._entry_ptr = internal global ptr @mxl1x1sf_top_master_ctrl._entry, section ".printk_index", align 4
@mxl111sf_disable_656_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.19, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_disable_656_port\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_disable_656_port._entry_ptr = internal global ptr @mxl111sf_disable_656_port._entry, section ".printk_index", align 4
@mxl111sf_enable_usb_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.20, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mxl111sf_enable_usb_output\00", [37 x i8] zeroinitializer }, align 32
@mxl111sf_enable_usb_output._entry_ptr = internal global ptr @mxl111sf_enable_usb_output._entry, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: (%u,%u,%u,%u,%u)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mxl111sf_config_mpeg_in\00", [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr = internal global ptr @mxl111sf_config_mpeg_in._entry, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.24 = internal global ptr @mxl111sf_config_mpeg_in._entry.23, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.26 = internal global ptr @mxl111sf_config_mpeg_in._entry.25, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.28 = internal global ptr @mxl111sf_config_mpeg_in._entry.27, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.30 = internal global ptr @mxl111sf_config_mpeg_in._entry.29, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.32 = internal global ptr @mxl111sf_config_mpeg_in._entry.31, section ".printk_index", align 4
@mxl111sf_config_mpeg_in._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.22, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_mpeg_in._entry_ptr.34 = internal global ptr @mxl111sf_config_mpeg_in._entry.33, section ".printk_index", align 4
@mxl111sf_init_i2s_port.init_i2s = internal global { [7 x %struct.mxl111sf_reg_ctrl_info], [43 x i8] } { [7 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i8 27, i8 -1, i8 30 }, %struct.mxl111sf_reg_ctrl_info { i8 21, i8 96, i8 96 }, %struct.mxl111sf_reg_ctrl_info { i8 23, i8 -32, i8 32 }, %struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 2 }, %struct.mxl111sf_reg_ctrl_info { i8 38, i8 13, i8 13 }, %struct.mxl111sf_reg_ctrl_info { i8 0, i8 -1, i8 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], [43 x i8] zeroinitializer }, align 32
@mxl111sf_init_i2s_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s: (0x%02x)\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mxl111sf_init_i2s_port\00", [41 x i8] zeroinitializer }, align 32
@mxl111sf_init_i2s_port._entry_ptr = internal global ptr @mxl111sf_init_i2s_port._entry, section ".printk_index", align 4
@mxl111sf_init_i2s_port._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.36, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init_i2s_port._entry_ptr.38 = internal global ptr @mxl111sf_init_i2s_port._entry.37, section ".printk_index", align 4
@mxl111sf_init_i2s_port._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.36, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_init_i2s_port._entry_ptr.40 = internal global ptr @mxl111sf_init_i2s_port._entry.39, section ".printk_index", align 4
@mxl111sf_disable_i2s_port.disable_i2s = internal global { [2 x %struct.mxl111sf_reg_ctrl_info], [26 x i8] } { [2 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i8 21, i8 64, i8 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], [26 x i8] zeroinitializer }, align 32
@mxl111sf_disable_i2s_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.41, ptr @.str.2, i32 226, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mxl111sf_disable_i2s_port\00", [38 x i8] zeroinitializer }, align 32
@mxl111sf_disable_i2s_port._entry_ptr = internal global ptr @mxl111sf_disable_i2s_port._entry, section ".printk_index", align 4
@mxl111sf_config_i2s._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s: (0x%02x, 0x%02x)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl111sf_config_i2s\00", [44 x i8] zeroinitializer }, align 32
@mxl111sf_config_i2s._entry_ptr = internal global ptr @mxl111sf_config_i2s._entry, section ".printk_index", align 4
@mxl111sf_config_i2s._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.43, ptr @.str.2, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_i2s._entry_ptr.45 = internal global ptr @mxl111sf_config_i2s._entry.44, section ".printk_index", align 4
@mxl111sf_config_i2s._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.43, ptr @.str.2, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_i2s._entry_ptr.47 = internal global ptr @mxl111sf_config_i2s._entry.46, section ".printk_index", align 4
@mxl111sf_config_i2s._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.43, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_i2s._entry_ptr.49 = internal global ptr @mxl111sf_config_i2s._entry.48, section ".printk_index", align 4
@mxl111sf_config_i2s._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.43, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_i2s._entry_ptr.51 = internal global ptr @mxl111sf_config_i2s._entry.50, section ".printk_index", align 4
@mxl111sf_config_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.52, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mxl111sf_config_spi\00", [44 x i8] zeroinitializer }, align 32
@mxl111sf_config_spi._entry_ptr = internal global ptr @mxl111sf_config_spi._entry, section ".printk_index", align 4
@mxl111sf_config_spi._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.52, ptr @.str.2, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_spi._entry_ptr.54 = internal global ptr @mxl111sf_config_spi._entry.53, section ".printk_index", align 4
@mxl111sf_config_spi._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.52, ptr @.str.2, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_spi._entry_ptr.56 = internal global ptr @mxl111sf_config_spi._entry.55, section ".printk_index", align 4
@mxl111sf_config_spi._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.52, ptr @.str.2, i32 282, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_spi._entry_ptr.58 = internal global ptr @mxl111sf_config_spi._entry.57, section ".printk_index", align 4
@mxl111sf_config_spi._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.52, ptr @.str.2, i32 286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_config_spi._entry_ptr.60 = internal global ptr @mxl111sf_config_spi._entry.59, section ".printk_index", align 4
@mxl111sf_idac_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.61, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mxl111sf_idac_config\00", [43 x i8] zeroinitializer }, align 32
@mxl111sf_idac_config._entry_ptr = internal global ptr @mxl111sf_idac_config._entry, section ".printk_index", align 4
@mxl111sf_idac_config._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.61, ptr @.str.2, i32 321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mxl111sf_idac_config._entry_ptr.63 = internal global ptr @mxl111sf_idac_config._entry.62, section ".printk_index", align 4
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 37, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 45, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 48, i32 6 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 51, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 60, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 66, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 75, i32 6 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 86, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 93, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 100, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 116, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 121, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 132, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 137, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 158, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 168, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 184, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [9 x i8] c"init_i2s\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 191, i32 39 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 207, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 210, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 214, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"disable_i2s\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 221, i32 39 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 226, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 237, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 240, i32 6 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 246, i32 6 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 250, i32 6 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 256, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 266, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 269, i32 6 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 273, i32 6 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 282, i32 6 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 286, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 317, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.233 = private constant [47 x i8] c"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.233, i32 321, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @mxl111sf_config_i2s._entry, ptr @mxl111sf_config_i2s._entry.44, ptr @mxl111sf_config_i2s._entry.46, ptr @mxl111sf_config_i2s._entry.48, ptr @mxl111sf_config_i2s._entry.50, ptr @mxl111sf_config_i2s._entry_ptr, ptr @mxl111sf_config_i2s._entry_ptr.45, ptr @mxl111sf_config_i2s._entry_ptr.47, ptr @mxl111sf_config_i2s._entry_ptr.49, ptr @mxl111sf_config_i2s._entry_ptr.51, ptr @mxl111sf_config_mpeg_in._entry, ptr @mxl111sf_config_mpeg_in._entry.23, ptr @mxl111sf_config_mpeg_in._entry.25, ptr @mxl111sf_config_mpeg_in._entry.27, ptr @mxl111sf_config_mpeg_in._entry.29, ptr @mxl111sf_config_mpeg_in._entry.31, ptr @mxl111sf_config_mpeg_in._entry.33, ptr @mxl111sf_config_mpeg_in._entry_ptr, ptr @mxl111sf_config_mpeg_in._entry_ptr.24, ptr @mxl111sf_config_mpeg_in._entry_ptr.26, ptr @mxl111sf_config_mpeg_in._entry_ptr.28, ptr @mxl111sf_config_mpeg_in._entry_ptr.30, ptr @mxl111sf_config_mpeg_in._entry_ptr.32, ptr @mxl111sf_config_mpeg_in._entry_ptr.34, ptr @mxl111sf_config_spi._entry, ptr @mxl111sf_config_spi._entry.53, ptr @mxl111sf_config_spi._entry.55, ptr @mxl111sf_config_spi._entry.57, ptr @mxl111sf_config_spi._entry.59, ptr @mxl111sf_config_spi._entry_ptr, ptr @mxl111sf_config_spi._entry_ptr.54, ptr @mxl111sf_config_spi._entry_ptr.56, ptr @mxl111sf_config_spi._entry_ptr.58, ptr @mxl111sf_config_spi._entry_ptr.60, ptr @mxl111sf_disable_656_port._entry, ptr @mxl111sf_disable_656_port._entry_ptr, ptr @mxl111sf_disable_i2s_port._entry, ptr @mxl111sf_disable_i2s_port._entry_ptr, ptr @mxl111sf_enable_usb_output._entry, ptr @mxl111sf_enable_usb_output._entry_ptr, ptr @mxl111sf_idac_config._entry, ptr @mxl111sf_idac_config._entry.62, ptr @mxl111sf_idac_config._entry_ptr, ptr @mxl111sf_idac_config._entry_ptr.63, ptr @mxl111sf_init_i2s_port._entry, ptr @mxl111sf_init_i2s_port._entry.37, ptr @mxl111sf_init_i2s_port._entry.39, ptr @mxl111sf_init_i2s_port._entry_ptr, ptr @mxl111sf_init_i2s_port._entry_ptr.38, ptr @mxl111sf_init_i2s_port._entry_ptr.40, ptr @mxl111sf_init_tuner_demod._entry, ptr @mxl111sf_init_tuner_demod._entry_ptr, ptr @mxl1x1sf_set_device_mode._entry, ptr @mxl1x1sf_set_device_mode._entry.13, ptr @mxl1x1sf_set_device_mode._entry.15, ptr @mxl1x1sf_set_device_mode._entry_ptr, ptr @mxl1x1sf_set_device_mode._entry_ptr.14, ptr @mxl1x1sf_set_device_mode._entry_ptr.16, ptr @mxl1x1sf_soft_reset._entry, ptr @mxl1x1sf_soft_reset._entry.4, ptr @mxl1x1sf_soft_reset._entry.7, ptr @mxl1x1sf_soft_reset._entry_ptr, ptr @mxl1x1sf_soft_reset._entry_ptr.6, ptr @mxl1x1sf_soft_reset._entry_ptr.8, ptr @mxl1x1sf_top_master_ctrl._entry, ptr @mxl1x1sf_top_master_ctrl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @mxl111sf_init_i2s_port.init_i2s, ptr @.str.35, ptr @.str.36, ptr @mxl111sf_disable_i2s_port.disable_i2s, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.52, ptr @.str.61], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_tuner_demod._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_soft_reset._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_soft_reset._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_set_device_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_set_device_mode._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_set_device_mode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl1x1sf_top_master_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_disable_656_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_enable_usb_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_mpeg_in._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_i2s_port.init_i2s to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_i2s_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_i2s_port._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_init_i2s_port._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_disable_i2s_port.disable_i2s to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_disable_i2s_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_i2s._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_i2s._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_i2s._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_i2s._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_i2s._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_spi._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_spi._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_spi._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_config_spi._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_idac_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mxl111sf_idac_config._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_init_tuner_demod(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  %mxl_111_overwrite_default = alloca [21 x %struct.mxl111sf_reg_ctrl_info], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 63, ptr nonnull %mxl_111_overwrite_default) #4
  %0 = call ptr @memcpy(ptr %mxl_111_overwrite_default, ptr @__const.mxl111sf_init_tuner_demod.mxl_111_overwrite_default, i32 63)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = call i32 @mxl111sf_ctrl_program_regs(ptr noundef %state, ptr noundef nonnull %mxl_111_overwrite_default) #4
  call void @llvm.lifetime.end.p0(i64 63, ptr nonnull %mxl_111_overwrite_default) #4
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_ctrl_program_regs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl1x1sf_soft_reset(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.fail_crit_edge, label %do.end7

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end7:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %call1, i32 noundef 48) #7
  br label %fail

if.end14.critedge:                                ; preds = %if.end
  %call15 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 2, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %land.lhs.true20, label %if.end14.critedge.fail_crit_edge

if.end14.critedge.fail_crit_edge:                 ; preds = %if.end14.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true20:                                  ; preds = %if.end14.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and21 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true20.fail_crit_edge, label %do.end26

land.lhs.true20.fail_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end26:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %call15, i32 noundef 51) #7
  br label %fail

fail:                                             ; preds = %do.end26, %land.lhs.true20.fail_crit_edge, %if.end14.critedge.fail_crit_edge, %do.end7, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end7 ], [ %call15, %do.end26 ], [ %call15, %land.lhs.true20.fail_crit_edge ], [ %call15, %if.end14.critedge.fail_crit_edge ], [ %call1, %land.lhs.true.fail_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl1x1sf_set_device_mode(ptr noundef %state, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp = icmp eq i32 %mode, 1
  %cond = select i1 %cmp, ptr @.str.11, ptr @.str.12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mode)
  %cmp1 = icmp eq i32 %mode, 1
  %conv = zext i1 %cmp1 to i8
  %call3 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 3, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %land.lhs.true, label %if.end18.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %land.lhs.true.fail_crit_edge, label %do.end11

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %call3, i32 noundef 66) #7
  br label %fail

if.end18.critedge:                                ; preds = %if.end
  %conv22 = select i1 %cmp1, i8 0, i8 64
  %call23 = tail call i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext 125, i8 noundef zeroext 64, i8 noundef zeroext %conv22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %land.lhs.true28, label %if.end41.critedge

land.lhs.true28:                                  ; preds = %if.end18.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and29 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true28.fail_crit_edge, label %do.end34

land.lhs.true28.fail_crit_edge:                   ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end34:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.10, i32 noundef %call23, i32 noundef 75) #7
  br label %fail

if.end41.critedge:                                ; preds = %if.end18.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %device_mode = getelementptr inbounds %struct.mxl111sf_state, ptr %state, i32 0, i32 6
  %3 = ptrtoint ptr %device_mode to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mode, ptr %device_mode, align 4
  br label %fail

fail:                                             ; preds = %if.end41.critedge, %do.end34, %land.lhs.true28.fail_crit_edge, %do.end11, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call23, %if.end41.critedge ], [ %call3, %do.end11 ], [ %call23, %do.end34 ], [ %call3, %land.lhs.true.fail_crit_edge ], [ %call23, %land.lhs.true28.fail_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_write_reg_mask(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl1x1sf_top_master_ctrl(ptr noundef %state, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %onoff) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool1.not = icmp ne i32 %onoff, 0
  %conv = zext i1 %tobool1.not to i8
  %call2 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 1, i8 noundef zeroext %conv) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_disable_656_port(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext 18, i8 noundef zeroext 4, i8 noundef zeroext 0) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_enable_usb_output(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_write_reg_mask(ptr noundef %state, i8 noundef zeroext 23, i8 noundef zeroext 64, i8 noundef zeroext 0) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_config_mpeg_in(ptr noundef %state, i32 noundef %parallel_serial, i32 noundef %msb_lsb_1st, i32 noundef %clock_phase, i32 noundef %mpeg_valid_pol, i32 noundef %mpeg_sync_pol) local_unnamed_addr #0 align 64 {
entry:
  %mode = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode) #4
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %mode, align 1, !annotation !134
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %tmp, align 1, !annotation !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %parallel_serial, i32 noundef %msb_lsb_1st, i32 noundef %clock_phase, i32 noundef %mpeg_valid_pol, i32 noundef %mpeg_sync_pol) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 27, i8 noundef zeroext 30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %3 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end11_crit_edge, label %do.end8

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

do.end8:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call2, i32 noundef 121) #7
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %call13 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 23, ptr noundef nonnull %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clock_phase)
  %cmp14 = icmp eq i32 %clock_phase, 0
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 1
  %6 = and i8 %5, -33
  %masksel185 = select i1 %cmp14, i8 0, i8 32
  %storemerge = or i8 %6, %masksel185
  store i8 %storemerge, ptr %mode, align 1
  %call23 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 23, i8 noundef zeroext %storemerge) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25 = icmp slt i32 %call23, 0
  br i1 %cmp25, label %land.lhs.true28, label %if.end11.if.end37_crit_edge

if.end11.if.end37_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

land.lhs.true28:                                  ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %7 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and29 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %land.lhs.true28.if.end37_crit_edge, label %do.end34

land.lhs.true28.if.end37_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end37

do.end34:                                         ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call23, i32 noundef 132) #7
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %land.lhs.true28.if.end37_crit_edge, %if.end11.if.end37_crit_edge
  %call39 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 24, ptr noundef nonnull %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp41 = icmp slt i32 %call39, 0
  br i1 %cmp41, label %land.lhs.true44, label %if.end37.if.end53_crit_edge

if.end37.if.end53_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

land.lhs.true44:                                  ; preds = %if.end37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and45 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %land.lhs.true44.if.end53_crit_edge, label %do.end50

land.lhs.true44.if.end53_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end53

do.end50:                                         ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #6
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call39, i32 noundef 137) #7
  br label %if.end53

if.end53:                                         ; preds = %do.end50, %land.lhs.true44.if.end53_crit_edge, %if.end37.if.end53_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parallel_serial)
  %cmp55 = icmp eq i32 %parallel_serial, 0
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode, align 1
  %11 = and i8 %10, -4
  br i1 %cmp55, label %if.then57, label %if.else64

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #6
  %12 = or i8 %11, 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %mode, align 1
  br label %if.end114

if.else64:                                        ; preds = %if.end53
  %14 = or i8 %11, 2
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %mode, align 1
  %call71 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 25, ptr noundef nonnull %tmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp73 = icmp slt i32 %call71, 0
  br i1 %cmp73, label %land.lhs.true76, label %if.else64.if.end85_crit_edge

if.else64.if.end85_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

land.lhs.true76:                                  ; preds = %if.else64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %16 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and77 = and i32 %16, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %land.lhs.true76.if.end85_crit_edge, label %do.end82

land.lhs.true76.if.end85_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

do.end82:                                         ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #6
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call71, i32 noundef 158) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %land.lhs.true76.if.end85_crit_edge, %if.else64.if.end85_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %msb_lsb_1st)
  %cmp87 = icmp eq i32 %msb_lsb_1st, 1
  %17 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tmp, align 1
  %19 = and i8 %18, 127
  %masksel186 = select i1 %cmp87, i8 -128, i8 0
  %storemerge182 = or i8 %19, %masksel186
  store i8 %storemerge182, ptr %tmp, align 1
  %call98 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 25, i8 noundef zeroext %storemerge182) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp100 = icmp slt i32 %call98, 0
  br i1 %cmp100, label %land.lhs.true103, label %if.end85.if.end114_crit_edge

if.end85.if.end114_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

land.lhs.true103:                                 ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %20 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and104 = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %land.lhs.true103.if.end114_crit_edge, label %do.end109

land.lhs.true103.if.end114_crit_edge:             ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end114

do.end109:                                        ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #6
  %call111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call98, i32 noundef 168) #7
  br label %if.end114

if.end114:                                        ; preds = %do.end109, %land.lhs.true103.if.end114_crit_edge, %if.end85.if.end114_crit_edge, %if.then57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mpeg_sync_pol)
  %cmp115 = icmp eq i32 %mpeg_sync_pol, 0
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mode, align 1
  %23 = and i8 %22, -13
  %masksel187 = select i1 %cmp115, i8 0, i8 4
  %storemerge183 = or i8 %23, %masksel187
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mpeg_valid_pol)
  %cmp126 = icmp eq i32 %mpeg_valid_pol, 0
  %masksel = select i1 %cmp126, i8 0, i8 8
  %storemerge184 = or i8 %storemerge183, %masksel
  %24 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %storemerge184, ptr %mode, align 1
  %call137 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 24, i8 noundef zeroext %storemerge184) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %cmp139 = icmp slt i32 %call137, 0
  br i1 %cmp139, label %land.lhs.true142, label %if.end114.if.end151_crit_edge

if.end114.if.end151_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

land.lhs.true142:                                 ; preds = %if.end114
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %25 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and143 = and i32 %25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143)
  %tobool144.not = icmp eq i32 %and143, 0
  br i1 %tobool144.not, label %land.lhs.true142.if.end151_crit_edge, label %do.end148

land.lhs.true142.if.end151_crit_edge:             ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end151

do.end148:                                        ; preds = %land.lhs.true142
  call void @__sanitizer_cov_trace_pc() #6
  %call150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.22, i32 noundef %call137, i32 noundef 184) #7
  br label %if.end151

if.end151:                                        ; preds = %do.end148, %land.lhs.true142.if.end151_crit_edge, %if.end114.if.end151_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode) #4
  ret i32 %call137
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mxl111sf_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_init_i2s_port(ptr noundef %state, i8 noundef zeroext %sample_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %sample_size to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %conv) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_ctrl_program_regs(ptr noundef %state, ptr noundef nonnull @mxl111sf_init_i2s_port.init_i2s) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end15.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %land.lhs.true.fail_crit_edge, label %do.end8

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end8:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36, i32 noundef %call1, i32 noundef 210) #7
  br label %fail

if.end15.critedge:                                ; preds = %if.end
  %call16 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 22, i8 noundef zeroext %sample_size) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 0
  br i1 %cmp18, label %land.lhs.true21, label %if.end15.critedge.fail_crit_edge

if.end15.critedge.fail_crit_edge:                 ; preds = %if.end15.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true21:                                  ; preds = %if.end15.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22 = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true21.fail_crit_edge, label %do.end27

land.lhs.true21.fail_crit_edge:                   ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end27:                                         ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.36, i32 noundef %call16, i32 noundef 214) #7
  br label %fail

fail:                                             ; preds = %do.end27, %land.lhs.true21.fail_crit_edge, %if.end15.critedge.fail_crit_edge, %do.end8, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end8 ], [ %call16, %do.end27 ], [ %call16, %land.lhs.true21.fail_crit_edge ], [ %call16, %if.end15.critedge.fail_crit_edge ], [ %call1, %land.lhs.true.fail_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_disable_i2s_port(ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %0 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_ctrl_program_regs(ptr noundef %state, ptr noundef nonnull @mxl111sf_disable_i2s_port.disable_i2s) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_config_i2s(ptr noundef %state, i8 noundef zeroext %msb_start_pos, i8 noundef zeroext %data_width) local_unnamed_addr #0 align 64 {
entry:
  %tmp = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp) #4
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %tmp, align 1, !annotation !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %msb_start_pos to i32
  %conv2 = zext i8 %data_width to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 20, ptr noundef nonnull %tmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end17.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %land.lhs.true.fail_crit_edge, label %do.end10

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end10:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43, i32 noundef %call3, i32 noundef 240) #7
  br label %fail

if.end17.critedge:                                ; preds = %if.end
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tmp, align 1
  %5 = and i8 %4, -32
  %or102 = or i8 %5, %msb_start_pos
  store i8 %or102, ptr %tmp, align 1
  %call24 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 20, i8 noundef zeroext %or102) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp26 = icmp slt i32 %call24, 0
  br i1 %cmp26, label %land.lhs.true29, label %if.end42.critedge

land.lhs.true29:                                  ; preds = %if.end17.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %6 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and30 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %land.lhs.true29.fail_crit_edge, label %do.end35

land.lhs.true29.fail_crit_edge:                   ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end35:                                         ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43, i32 noundef %call24, i32 noundef 246) #7
  br label %fail

if.end42.critedge:                                ; preds = %if.end17.critedge
  %call43 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext 21, ptr noundef nonnull %tmp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp45 = icmp slt i32 %call43, 0
  br i1 %cmp45, label %land.lhs.true48, label %if.end61.critedge

land.lhs.true48:                                  ; preds = %if.end42.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %7 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and49 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %land.lhs.true48.fail_crit_edge, label %do.end54

land.lhs.true48.fail_crit_edge:                   ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end54:                                         ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43, i32 noundef %call43, i32 noundef 250) #7
  br label %fail

if.end61.critedge:                                ; preds = %if.end42.critedge
  %8 = ptrtoint ptr %tmp to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tmp, align 1
  %10 = and i8 %9, -32
  %or67103 = or i8 %10, %data_width
  store i8 %or67103, ptr %tmp, align 1
  %call69 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 21, i8 noundef zeroext %or67103) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp71 = icmp slt i32 %call69, 0
  br i1 %cmp71, label %land.lhs.true74, label %if.end61.critedge.fail_crit_edge

if.end61.critedge.fail_crit_edge:                 ; preds = %if.end61.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true74:                                  ; preds = %if.end61.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %11 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and75 = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %land.lhs.true74.fail_crit_edge, label %do.end80

land.lhs.true74.fail_crit_edge:                   ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end80:                                         ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #6
  %call82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.43, i32 noundef %call69, i32 noundef 256) #7
  br label %fail

fail:                                             ; preds = %do.end80, %land.lhs.true74.fail_crit_edge, %if.end61.critedge.fail_crit_edge, %do.end54, %land.lhs.true48.fail_crit_edge, %do.end35, %land.lhs.true29.fail_crit_edge, %do.end10, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call3, %do.end10 ], [ %call24, %do.end35 ], [ %call43, %do.end54 ], [ %call69, %do.end80 ], [ %call69, %land.lhs.true74.fail_crit_edge ], [ %call69, %if.end61.critedge.fail_crit_edge ], [ %call3, %land.lhs.true.fail_crit_edge ], [ %call24, %land.lhs.true29.fail_crit_edge ], [ %call43, %land.lhs.true48.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_config_spi(ptr noundef %state, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #4
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !134
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %1 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.52, i32 noundef %onoff) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 0, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end14.critedge

land.lhs.true:                                    ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %2 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and = and i32 %2, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %land.lhs.true.fail_crit_edge, label %do.end7

land.lhs.true.fail_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end7:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %call1, i32 noundef 269) #7
  br label %fail

if.end14.critedge:                                ; preds = %if.end
  %call15 = call i32 @mxl111sf_read_reg(ptr noundef %state, i8 noundef zeroext -23, ptr noundef nonnull %val) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp17 = icmp slt i32 %call15, 0
  br i1 %cmp17, label %land.lhs.true20, label %if.end33.critedge

land.lhs.true20:                                  ; preds = %if.end14.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %3 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and21 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %land.lhs.true20.fail_crit_edge, label %do.end26

land.lhs.true20.fail_crit_edge:                   ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end26:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %call15, i32 noundef 273) #7
  br label %fail

if.end33.critedge:                                ; preds = %if.end14.critedge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool34.not = icmp eq i32 %onoff, 0
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %val, align 1
  %6 = and i8 %5, -5
  %masksel = select i1 %tobool34.not, i8 0, i8 4
  %storemerge = or i8 %6, %masksel
  store i8 %storemerge, ptr %val, align 1
  %call42 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext -23, i8 noundef zeroext %storemerge) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp44 = icmp slt i32 %call42, 0
  br i1 %cmp44, label %land.lhs.true47, label %if.end60.critedge

land.lhs.true47:                                  ; preds = %if.end33.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %7 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and48 = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true47.fail_crit_edge, label %do.end53

land.lhs.true47.fail_crit_edge:                   ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end53:                                         ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %call42, i32 noundef 282) #7
  br label %fail

if.end60.critedge:                                ; preds = %if.end33.critedge
  %call61 = call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp63 = icmp slt i32 %call61, 0
  br i1 %cmp63, label %land.lhs.true66, label %if.end60.critedge.fail_crit_edge

if.end60.critedge.fail_crit_edge:                 ; preds = %if.end60.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

land.lhs.true66:                                  ; preds = %if.end60.critedge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %8 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and67 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %land.lhs.true66.fail_crit_edge, label %do.end72

land.lhs.true66.fail_crit_edge:                   ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

do.end72:                                         ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #6
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.52, i32 noundef %call61, i32 noundef 286) #7
  br label %fail

fail:                                             ; preds = %do.end72, %land.lhs.true66.fail_crit_edge, %if.end60.critedge.fail_crit_edge, %do.end53, %land.lhs.true47.fail_crit_edge, %do.end26, %land.lhs.true20.fail_crit_edge, %do.end7, %land.lhs.true.fail_crit_edge
  %ret.0 = phi i32 [ %call1, %do.end7 ], [ %call15, %do.end26 ], [ %call42, %do.end53 ], [ %call61, %do.end72 ], [ %call61, %land.lhs.true66.fail_crit_edge ], [ %call61, %if.end60.critedge.fail_crit_edge ], [ %call1, %land.lhs.true.fail_crit_edge ], [ %call15, %land.lhs.true20.fail_crit_edge ], [ %call42, %land.lhs.true47.fail_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mxl111sf_idac_config(ptr noundef %state, i8 noundef zeroext %control_mode, i8 noundef zeroext %current_setting, i8 noundef zeroext %current_value, i8 noundef zeroext %hysteresis_value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %control_mode)
  %cmp = icmp eq i8 %control_mode, 1
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %current_setting)
  %cmp5 = icmp eq i8 %current_setting, 1
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %0 = or i8 %current_value, -64
  br label %if.end28

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %1 = and i8 %current_value, 63
  %2 = or i8 %1, -128
  br label %if.end28

if.else13:                                        ; preds = %entry
  %3 = and i8 %current_value, 127
  %4 = and i8 %hysteresis_value, 63
  %call = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 11, i8 noundef zeroext %4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp20 = icmp slt i32 %call, 0
  br i1 %cmp20, label %land.lhs.true, label %if.else13.if.end28_crit_edge

if.else13.if.end28_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

land.lhs.true:                                    ; preds = %if.else13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %5 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and22 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end28_crit_edge, label %do.end

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61, i32 noundef %call, i32 noundef 317) #7
  br label %if.end28

if.end28:                                         ; preds = %do.end, %land.lhs.true.if.end28_crit_edge, %if.else13.if.end28_crit_edge, %if.else, %if.then7
  %val.0 = phi i8 [ %0, %if.then7 ], [ %2, %if.else ], [ %3, %do.end ], [ %3, %land.lhs.true.if.end28_crit_edge ], [ %3, %if.else13.if.end28_crit_edge ]
  %call29 = tail call i32 @mxl111sf_write_reg(ptr noundef %state, i8 noundef zeroext 12, i8 noundef zeroext %val.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31 = icmp slt i32 %call29, 0
  br i1 %cmp31, label %land.lhs.true34, label %if.end28.if.end43_crit_edge

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

land.lhs.true34:                                  ; preds = %if.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_mxl111sf_debug to i32))
  %6 = load i32, ptr @dvb_usb_mxl111sf_debug, align 4
  %and35 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %land.lhs.true34.if.end43_crit_edge, label %do.end40

land.lhs.true34.if.end43_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

do.end40:                                         ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #6
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61, i32 noundef %call29, i32 noundef 321) #7
  br label %if.end43

if.end43:                                         ; preds = %do.end40, %land.lhs.true34.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  ret i32 %call29
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !70, !71, !72, !73, !75, !76, !78, !79, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !122, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 37, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @mxl111sf_init_tuner_demod._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @mxl111sf_init_tuner_demod._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 45, i32 2}
!8 = !{ptr @mxl1x1sf_soft_reset._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @mxl1x1sf_soft_reset._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 48, i32 6}
!12 = !{ptr @mxl1x1sf_soft_reset._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @mxl1x1sf_soft_reset._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @mxl1x1sf_soft_reset._entry.7, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 51, i32 2}
!16 = !{ptr @mxl1x1sf_soft_reset._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 60, i32 2}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mxl1x1sf_set_device_mode._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @mxl1x1sf_set_device_mode._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mxl1x1sf_set_device_mode._entry.13, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 66, i32 6}
!26 = !{ptr @mxl1x1sf_set_device_mode._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @mxl1x1sf_set_device_mode._entry.15, !28, !"_entry", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 75, i32 6}
!29 = !{ptr @mxl1x1sf_set_device_mode._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 86, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mxl1x1sf_top_master_ctrl._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mxl1x1sf_top_master_ctrl._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 93, i32 2}
!37 = !{ptr @mxl111sf_disable_656_port._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mxl111sf_disable_656_port._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 100, i32 2}
!41 = !{ptr @mxl111sf_enable_usb_output._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mxl111sf_enable_usb_output._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 116, i32 2}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @mxl111sf_config_mpeg_in._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @mxl111sf_config_mpeg_in._entry.23, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 121, i32 2}
!50 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @mxl111sf_config_mpeg_in._entry.25, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 132, i32 2}
!53 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @mxl111sf_config_mpeg_in._entry.27, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 137, i32 2}
!56 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @mxl111sf_config_mpeg_in._entry.29, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 158, i32 3}
!59 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @mxl111sf_config_mpeg_in._entry.31, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 168, i32 3}
!62 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @mxl111sf_config_mpeg_in._entry.33, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 184, i32 2}
!65 = !{ptr @mxl111sf_config_mpeg_in._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @mxl111sf_init_i2s_port.init_i2s, !67, !"init_i2s", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 191, i32 39}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 207, i32 2}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @mxl111sf_init_i2s_port._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @mxl111sf_init_i2s_port._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @mxl111sf_init_i2s_port._entry.37, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 210, i32 6}
!75 = !{ptr @mxl111sf_init_i2s_port._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @mxl111sf_init_i2s_port._entry.39, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 214, i32 2}
!78 = !{ptr @mxl111sf_init_i2s_port._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @mxl111sf_disable_i2s_port.disable_i2s, !80, !"disable_i2s", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 221, i32 39}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 226, i32 2}
!83 = !{ptr @mxl111sf_disable_i2s_port._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @mxl111sf_disable_i2s_port._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 237, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @mxl111sf_config_i2s._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @mxl111sf_config_i2s._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @mxl111sf_config_i2s._entry.44, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 240, i32 6}
!92 = !{ptr @mxl111sf_config_i2s._entry_ptr.45, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @mxl111sf_config_i2s._entry.46, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 246, i32 6}
!95 = !{ptr @mxl111sf_config_i2s._entry_ptr.47, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @mxl111sf_config_i2s._entry.48, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 250, i32 6}
!98 = !{ptr @mxl111sf_config_i2s._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @mxl111sf_config_i2s._entry.50, !100, !"_entry", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 256, i32 2}
!101 = !{ptr @mxl111sf_config_i2s._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 266, i32 2}
!104 = !{ptr @mxl111sf_config_spi._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @mxl111sf_config_spi._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @mxl111sf_config_spi._entry.53, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 269, i32 6}
!108 = !{ptr @mxl111sf_config_spi._entry_ptr.54, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @mxl111sf_config_spi._entry.55, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 273, i32 6}
!111 = !{ptr @mxl111sf_config_spi._entry_ptr.56, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @mxl111sf_config_spi._entry.57, !113, !"_entry", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 282, i32 6}
!114 = !{ptr @mxl111sf_config_spi._entry_ptr.58, !113, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @mxl111sf_config_spi._entry.59, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 286, i32 2}
!117 = !{ptr @mxl111sf_config_spi._entry_ptr.60, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.61, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 317, i32 3}
!120 = !{ptr @mxl111sf_idac_config._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @mxl111sf_idac_config._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @mxl111sf_idac_config._entry.62, !123, !"_entry", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/dvb-usb-v2/mxl111sf-phy.c", i32 321, i32 2}
!124 = !{ptr @mxl111sf_idac_config._entry_ptr.63, !123, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{!"auto-init"}
