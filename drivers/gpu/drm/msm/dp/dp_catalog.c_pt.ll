; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dp/dp_catalog.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dp/dp_catalog.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dss_io_region = type { i32, ptr }
%struct.dss_io_data = type { %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region, %struct.dss_io_region }
%struct.dp_io = type { %struct.dss_io_data, ptr, %union.phy_configure_opts }
%union.phy_configure_opts = type { %struct.phy_configure_opts_mipi_dphy }
%struct.phy_configure_opts_mipi_dphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.dp_catalog = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.dp_catalog_private = type { ptr, ptr, ptr, %struct.dp_catalog, [10 x i8] }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dp_ahb\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dp_aux\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dp_link\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dp_p0\00", [26 x i8] zeroinitializer }, align 32
@dp_catalog_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016[drm-dp] %s: AHB regs\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp_catalog_dump_regs\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/msm/dp/dp_catalog.c\00", [60 x i8] zeroinitializer }, align 32
@dp_catalog_dump_regs._entry_ptr = internal global ptr @dp_catalog_dump_regs._entry, section ".printk_index", align 4
@dp_catalog_dump_regs._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016[drm-dp] %s: AUXCLK regs\0A\00", [36 x i8] zeroinitializer }, align 32
@dp_catalog_dump_regs._entry_ptr.9 = internal global ptr @dp_catalog_dump_regs._entry.7, section ".printk_index", align 4
@dp_catalog_dump_regs._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 275, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016[drm-dp] %s: LCLK regs\0A\00", [38 x i8] zeroinitializer }, align 32
@dp_catalog_dump_regs._entry_ptr.12 = internal global ptr @dp_catalog_dump_regs._entry.10, section ".printk_index", align 4
@dp_catalog_dump_regs._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 278, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016[drm-dp] %s: P0CLK regs\0A\00", [37 x i8] zeroinitializer }, align 32
@dp_catalog_dump_regs._entry_ptr.15 = internal global ptr @dp_catalog_dump_regs._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DP_CONFIGURATION_CTRL=0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"enable=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"misc settings = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid pixel mux divider\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mvid=0x%x, nvid=0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"hw: bit=%d train=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set pattern for link_train=%d failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mainlink not ready\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"intr_mask=%#x config=%#x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aux status: %#x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pattern: %#x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"No valid test pattern requested: %#x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: enabled tpg\0A\00", [47 x i8] zeroinitializer }, align 32
@__func__.dp_catalog_panel_tpg_enable = private unnamed_addr constant [28 x i8] c"dp_catalog_panel_tpg_enable\00", align 1
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"invalid input\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"select: %#x, acr_ctrl: %#x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dp_audio_cfg = 0x%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sdp_cfg = 0x%x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdp_cfg2 = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@dp_catalog_audio_init.sdp_map = internal global { [5 x [3 x i32]], [36 x i8] } { [5 x [3 x i32]] [[3 x i32] [i32 576, i32 580, i32 580], [3 x i32] [i32 560, i32 564, i32 564], [3 x i32] [i32 680, i32 684, i32 684], [3 x i32] [i32 632, i32 636, i32 636], [3 x i32] [i32 656, i32 660, i32 660]], [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"mainlink_level = 0x%x, safe_to_exit_level = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.6, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm-dp] %s: %08x: %08x %08x %08x %08x\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dump_regs\00", [22 x i8] zeroinitializer }, align 32
@dump_regs._entry_ptr = internal global ptr @dump_regs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 270000, i64 540000, i64 1620000]
@__sancov_gen_cov_switch_values.37 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 62, i32 71 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 63, i32 71 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 64, i32 73 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 65, i32 69 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 269, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 272, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 275, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 278, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 325, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 353, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 398, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 423, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 453, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 468, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 479, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 526, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 560, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 591, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 667, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 728, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 823, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 841, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 912, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 937, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 968, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 978, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [8 x i8] c"sdp_map\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 987, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1040, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [39 x i8] c"../drivers/gpu/drm/msm/dp/dp_catalog.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 258, i32 3 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @dp_catalog_dump_regs._entry, ptr @dp_catalog_dump_regs._entry.10, ptr @dp_catalog_dump_regs._entry.13, ptr @dp_catalog_dump_regs._entry.7, ptr @dp_catalog_dump_regs._entry_ptr, ptr @dp_catalog_dump_regs._entry_ptr.12, ptr @dp_catalog_dump_regs._entry_ptr.15, ptr @dp_catalog_dump_regs._entry_ptr.9, ptr @dump_regs._entry, ptr @dump_regs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @dp_catalog_audio_init.sdp_map, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_catalog_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_catalog_dump_regs._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_catalog_dump_regs._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_catalog_dump_regs._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp_catalog_audio_init.sdp_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_snapshot(ptr nocapture noundef readonly %dp_catalog, ptr noundef %disp_state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %base = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %3, ptr noundef %5, ptr noundef nonnull @.str) #6
  %aux = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %aux, align 4
  %base4 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %base4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base4, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %7, ptr noundef %9, ptr noundef nonnull @.str.1) #6
  %link = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %link, align 4
  %base7 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %base7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base7, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %11, ptr noundef %13, ptr noundef nonnull @.str.2) #6
  %p0 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %p0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %p0, align 4
  %base10 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %base10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base10, align 4
  tail call void (ptr, i32, ptr, ptr, ...) @msm_disp_snapshot_add_block(ptr noundef %disp_state, i32 noundef %15, ptr noundef %17, ptr noundef nonnull @.str.3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_disp_snapshot_add_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_read_data(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 52
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_write_data(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp_catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_catalog, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_write_trans(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dp_catalog to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dp_catalog, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_clear_trans(ptr nocapture noundef readonly %dp_catalog, i1 noundef zeroext %read) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %read, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = and i32 %4, -131073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %base.i5 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %9, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %5) #6, !srcloc !83
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %io.i7 = getelementptr i8, ptr %dp_catalog, i32 -8
  %10 = ptrtoint ptr %io.i7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i7, align 4
  %base.i8 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %base.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 0) #6, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_clear_hw_interrupts(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 188
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i, align 4
  %base.i5 = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %8, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 520093696) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %base.i8 = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %base.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %12, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 -1627389952) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %base.i11 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %16, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_reset(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %or = or i32 %5, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i7 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %6) #6, !srcloc !83
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %and = and i32 %5, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %base.i10 = getelementptr inbounds %struct.dss_io_data, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %11) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_enable(ptr nocapture noundef readonly %dp_catalog, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 48
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %base.i7 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %9, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 -65536) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %base.i10 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 -65536) #6, !srcloc !83
  %or = or i32 %5, 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %5, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %aux_ctrl.0 = phi i32 [ %or, %if.then ], [ %and, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %14 = tail call i32 @llvm.bswap.i32(i32 %aux_ctrl.0) #6
  %15 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %io.i, align 4
  %base.i13 = getelementptr inbounds %struct.dss_io_data, ptr %16, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %18, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %14) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_aux_update_cfg(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %phy1 = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %call = tail call i32 @phy_calibrate(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_dump_regs(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io1 = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io1, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #9
  %base = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i = add i32 %5, 15
  %div.i = sdiv i32 %sub.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i)
  %cmp29.i = icmp sgt i32 %sub.i, 15
  br i1 %cmp29.i, label %entry.for.body.i_crit_edge, label %entry.dump_regs.exit_crit_edge

entry.dump_regs.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.031.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %addr_off.030.i = phi i32 [ %add18.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %3, i32 %addr_off.030.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #6, !srcloc !81
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #6, !srcloc !81
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #6, !srcloc !81
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %addr_off.030.i, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13) #9
  %add18.i = add nuw nsw i32 %addr_off.030.i, 16
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div.i
  br i1 %exitcond.not.i, label %for.body.i.dump_regs.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.dump_regs.exit_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit

dump_regs.exit:                                   ; preds = %for.body.i.dump_regs.exit_crit_edge, %entry.dump_regs.exit_crit_edge
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5) #9
  %aux = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1
  %base9 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base9, align 4
  %16 = ptrtoint ptr %aux to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aux, align 4
  %sub.i35 = add i32 %17, 15
  %div.i36 = sdiv i32 %sub.i35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i35)
  %cmp29.i37 = icmp sgt i32 %sub.i35, 15
  br i1 %cmp29.i37, label %dump_regs.exit.for.body.i48_crit_edge, label %dump_regs.exit.dump_regs.exit49_crit_edge

dump_regs.exit.dump_regs.exit49_crit_edge:        ; preds = %dump_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit49

dump_regs.exit.for.body.i48_crit_edge:            ; preds = %dump_regs.exit
  br label %for.body.i48

for.body.i48:                                     ; preds = %for.body.i48.for.body.i48_crit_edge, %dump_regs.exit.for.body.i48_crit_edge
  %i.031.i38 = phi i32 [ %inc.i46, %for.body.i48.for.body.i48_crit_edge ], [ 0, %dump_regs.exit.for.body.i48_crit_edge ]
  %addr_off.030.i39 = phi i32 [ %add18.i45, %for.body.i48.for.body.i48_crit_edge ], [ 0, %dump_regs.exit.for.body.i48_crit_edge ]
  %add.ptr.i40 = getelementptr i8, ptr %15, i32 %addr_off.030.i39
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #6, !srcloc !81
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %add.ptr3.i41 = getelementptr i8, ptr %add.ptr.i40, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i41) #6, !srcloc !81
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %add.ptr8.i42 = getelementptr i8, ptr %add.ptr.i40, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i42) #6, !srcloc !81
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %add.ptr13.i43 = getelementptr i8, ptr %add.ptr.i40, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i43) #6, !srcloc !81
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %call17.i44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %addr_off.030.i39, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  %add18.i45 = add nuw nsw i32 %addr_off.030.i39, 16
  %inc.i46 = add nuw nsw i32 %i.031.i38, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %div.i36
  br i1 %exitcond.not.i47, label %for.body.i48.dump_regs.exit49_crit_edge, label %for.body.i48.for.body.i48_crit_edge

for.body.i48.for.body.i48_crit_edge:              ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i48

for.body.i48.dump_regs.exit49_crit_edge:          ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit49

dump_regs.exit49:                                 ; preds = %for.body.i48.dump_regs.exit49_crit_edge, %dump_regs.exit.dump_regs.exit49_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5) #9
  %link = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2
  %base17 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %base17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base17, align 4
  %28 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %link, align 4
  %sub.i50 = add i32 %29, 15
  %div.i51 = sdiv i32 %sub.i50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i50)
  %cmp29.i52 = icmp sgt i32 %sub.i50, 15
  br i1 %cmp29.i52, label %dump_regs.exit49.for.body.i63_crit_edge, label %dump_regs.exit49.dump_regs.exit64_crit_edge

dump_regs.exit49.dump_regs.exit64_crit_edge:      ; preds = %dump_regs.exit49
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit64

dump_regs.exit49.for.body.i63_crit_edge:          ; preds = %dump_regs.exit49
  br label %for.body.i63

for.body.i63:                                     ; preds = %for.body.i63.for.body.i63_crit_edge, %dump_regs.exit49.for.body.i63_crit_edge
  %i.031.i53 = phi i32 [ %inc.i61, %for.body.i63.for.body.i63_crit_edge ], [ 0, %dump_regs.exit49.for.body.i63_crit_edge ]
  %addr_off.030.i54 = phi i32 [ %add18.i60, %for.body.i63.for.body.i63_crit_edge ], [ 0, %dump_regs.exit49.for.body.i63_crit_edge ]
  %add.ptr.i55 = getelementptr i8, ptr %27, i32 %addr_off.030.i54
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #6, !srcloc !81
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %add.ptr3.i56 = getelementptr i8, ptr %add.ptr.i55, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i56) #6, !srcloc !81
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #6
  %add.ptr8.i57 = getelementptr i8, ptr %add.ptr.i55, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i57) #6, !srcloc !81
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #6
  %add.ptr13.i58 = getelementptr i8, ptr %add.ptr.i55, i32 12
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i58) #6, !srcloc !81
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #6
  %call17.i59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %addr_off.030.i54, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %37) #9
  %add18.i60 = add nuw nsw i32 %addr_off.030.i54, 16
  %inc.i61 = add nuw nsw i32 %i.031.i53, 1
  %exitcond.not.i62 = icmp eq i32 %inc.i61, %div.i51
  br i1 %exitcond.not.i62, label %for.body.i63.dump_regs.exit64_crit_edge, label %for.body.i63.for.body.i63_crit_edge

for.body.i63.for.body.i63_crit_edge:              ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i63

for.body.i63.dump_regs.exit64_crit_edge:          ; preds = %for.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit64

dump_regs.exit64:                                 ; preds = %for.body.i63.dump_regs.exit64_crit_edge, %dump_regs.exit49.dump_regs.exit64_crit_edge
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5) #9
  %p0 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 3
  %base25 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 3, i32 1
  %38 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base25, align 4
  %40 = ptrtoint ptr %p0 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %p0, align 4
  %sub.i65 = add i32 %41, 15
  %div.i66 = sdiv i32 %sub.i65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.i65)
  %cmp29.i67 = icmp sgt i32 %sub.i65, 15
  br i1 %cmp29.i67, label %dump_regs.exit64.for.body.i78_crit_edge, label %dump_regs.exit64.dump_regs.exit79_crit_edge

dump_regs.exit64.dump_regs.exit79_crit_edge:      ; preds = %dump_regs.exit64
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit79

dump_regs.exit64.for.body.i78_crit_edge:          ; preds = %dump_regs.exit64
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %dump_regs.exit64.for.body.i78_crit_edge
  %i.031.i68 = phi i32 [ %inc.i76, %for.body.i78.for.body.i78_crit_edge ], [ 0, %dump_regs.exit64.for.body.i78_crit_edge ]
  %addr_off.030.i69 = phi i32 [ %add18.i75, %for.body.i78.for.body.i78_crit_edge ], [ 0, %dump_regs.exit64.for.body.i78_crit_edge ]
  %add.ptr.i70 = getelementptr i8, ptr %39, i32 %addr_off.030.i69
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #6, !srcloc !81
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #6
  %add.ptr3.i71 = getelementptr i8, ptr %add.ptr.i70, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i71) #6, !srcloc !81
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #6
  %add.ptr8.i72 = getelementptr i8, ptr %add.ptr.i70, i32 8
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i72) #6, !srcloc !81
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #6
  %add.ptr13.i73 = getelementptr i8, ptr %add.ptr.i70, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i73) #6, !srcloc !81
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #6
  %call17.i74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %addr_off.030.i69, i32 noundef %43, i32 noundef %45, i32 noundef %47, i32 noundef %49) #9
  %add18.i75 = add nuw nsw i32 %addr_off.030.i69, 16
  %inc.i76 = add nuw nsw i32 %i.031.i68, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, %div.i66
  br i1 %exitcond.not.i77, label %for.body.i78.dump_regs.exit79_crit_edge, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i78

for.body.i78.dump_regs.exit79_crit_edge:          ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #8
  br label %dump_regs.exit79

dump_regs.exit79:                                 ; preds = %for.body.i78.dump_regs.exit79_crit_edge, %dump_regs.exit64.dump_regs.exit79_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_aux_get_irq(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %and = and i32 %5, -613566753
  %and1 = shl i32 %5, 1
  %shl = and i32 %and1, 306783376
  %or = or i32 %shl, 613566752
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i6 = getelementptr inbounds %struct.dss_io_region, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %6) #6, !srcloc !83
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_update_transfer_unit(ptr nocapture noundef readonly %dp_catalog, i32 noundef %dp_tu, i32 noundef %valid_boundary, i32 noundef %valid_boundary2) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %valid_boundary) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %1 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %dp_tu) #6
  %6 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io.i, align 4
  %base.i4 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %9, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %5) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %valid_boundary2) #6
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i, align 4
  %base.i7 = getelementptr inbounds %struct.dss_io_data, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %14, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %10) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_state_ctrl(ptr nocapture noundef readonly %dp_catalog, i32 noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %state) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %1 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_ctrl(ptr nocapture noundef readonly %dp_catalog, i32 noundef %cfg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.16, i32 noundef %cfg) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %cfg) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %1 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #6, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_lane_mapping(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -469762048) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_mainlink_ctrl(ptr nocapture noundef readonly %dp_catalog, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.17, i32 noundef %conv) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = and i32 %4, -50331649
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i23 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i23, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %5) #6, !srcloc !83
  %or = or i32 %6, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %base.i25 = getelementptr inbounds %struct.dss_io_data, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %base.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %11) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %16 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io.i, align 4
  %base.i27 = getelementptr inbounds %struct.dss_io_data, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %base.i27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i27, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %5) #6, !srcloc !83
  %or3 = or i32 %6, 33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %or3) #6
  %21 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io.i, align 4
  %base.i29 = getelementptr inbounds %struct.dss_io_data, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i29, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %20) #6, !srcloc !83
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %25 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %26 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io.i, align 4
  %base.i33 = getelementptr inbounds %struct.dss_io_data, ptr %27, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %base.i33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i33, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %25) #6, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_misc(ptr nocapture noundef readonly %dp_catalog, i32 noundef %colorimetry_cfg, i32 noundef %test_bits_depth) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = and i32 %4, 520093695
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl = shl i32 %colorimetry_cfg, 1
  %shl1 = shl i32 %test_bits_depth, 5
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, %6
  %or3 = or i32 %or2, 1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.18, i32 noundef %or3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or3) #6
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %base.i11 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %7) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_config_msa(ptr nocapture noundef readonly %dp_catalog, i32 noundef %rate, i32 noundef %stream_rate_khz, i1 noundef zeroext %fixed_nvid) local_unnamed_addr #0 align 64 {
entry:
  %den = alloca i32, align 4
  %num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %den) #6
  %0 = ptrtoint ptr %den to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %den, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #6
  %1 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num, align 4, !annotation !86
  call void @__sanitizer_cov_trace_const_cmp4(i32 810000, i32 %rate)
  %cmp = icmp eq i32 %rate, 810000
  br i1 %cmp, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else:                                          ; preds = %entry
  %2 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %if.else7 [
    i32 1620000, label %if.else.if.end9_crit_edge
    i32 270000, label %if.else.if.end9_crit_edge55
    i32 540000, label %if.then6
  ]

if.else.if.end9_crit_edge55:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then6, %if.else.if.end9_crit_edge, %if.else.if.end9_crit_edge55, %entry.if.end9_crit_edge
  %pixel_div.0 = phi i32 [ 4, %if.then6 ], [ 0, %if.else7 ], [ 6, %entry.if.end9_crit_edge ], [ 2, %if.else.if.end9_crit_edge ], [ 2, %if.else.if.end9_crit_edge55 ]
  %mul = mul i32 %rate, 10
  %div = udiv i32 %mul, %pixel_div.0
  call void @rational_best_approximation(i32 noundef %div, i32 noundef %stream_rate_khz, i32 noundef 65535, i32 noundef 65535, ptr noundef nonnull %den, ptr noundef nonnull %num) #6
  %3 = ptrtoint ptr %den to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %den, align 4
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 4
  %7 = xor i32 %4, -1
  %neg = add i32 %6, %7
  %and = and i32 %neg, 65535
  store i32 %and, ptr %den, align 4
  %and10 = and i32 %6, 65535
  %mul11 = mul nuw nsw i32 %and10, 5
  %neg12 = sub i32 %4, %6
  %and13 = and i32 %neg12, 65535
  %add = add nuw nsw i32 %and13, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %add)
  %cmp15 = icmp ult i32 %add, 32768
  br i1 %cmp15, label %if.then16, label %if.end9.if.end21_crit_edge

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %div17.rhs.trunc = trunc i32 %add to i16
  %div1754 = udiv i16 -32768, %div17.rhs.trunc
  %div17.zext = zext i16 %div1754 to i32
  %mul18 = mul nuw nsw i32 %add, %div17.zext
  %mul20 = mul i32 %mul11, %div17.zext
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %if.end9.if.end21_crit_edge
  %nvid.0 = phi i32 [ %mul18, %if.then16 ], [ %add, %if.end9.if.end21_crit_edge ]
  %mvid.0 = phi i32 [ %mul20, %if.then16 ], [ %mul11, %if.end9.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 540000, i32 %rate)
  %cmp22 = icmp eq i32 %rate, 540000
  %mul24 = zext i1 %cmp22 to i32
  %spec.select = shl nuw nsw i32 %nvid.0, %mul24
  %mul28 = mul i32 %spec.select, 3
  %nvid.2 = select i1 %cmp, i32 %mul28, i32 %spec.select
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.20, i32 noundef %mvid.0, i32 noundef %nvid.2) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @arm_heavy_mb() #6
  %8 = call i32 @llvm.bswap.i32(i32 %mvid.0) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @arm_heavy_mb() #6
  %13 = call i32 @llvm.bswap.i32(i32 %nvid.2) #6
  %14 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io.i, align 4
  %base.i49 = getelementptr inbounds %struct.dss_io_data, ptr %15, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %17, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 %13) #6, !srcloc !83
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %base.i52 = getelementptr inbounds %struct.dss_io_data, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %21, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 0) #6, !srcloc !83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %den) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rational_best_approximation(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_set_pattern(ptr nocapture noundef readonly %dp_catalog, i32 noundef %pattern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %pattern, -1
  %shl = shl nuw i32 1, %sub
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.21, i32 noundef %shl, i32 noundef %pattern) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  %io.i.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %1 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %io.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.dss_io_data, ptr %2, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %0) #6, !srcloc !83
  %shl3 = shl i32 %shl, 3
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 477) #6
  %5 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i.i, align 4
  %base60 = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base60, align 4
  %add.ptr1161 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1161) #6, !srcloc !81
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %and62 = and i32 %10, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool.not63 = icmp eq i32 %and62, 0
  br i1 %tobool.not63, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then34.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call18 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call18, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call18, %add.i
  br i1 %cmp3.i, label %if.then21, label %if.then34

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i.i, align 4
  %base27 = getelementptr inbounds %struct.dss_io_data, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %14, i32 64
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !81
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  br label %for.end

if.then34:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %17 = ptrtoint ptr %io.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i.i, align 4
  %base = getelementptr inbounds %struct.dss_io_data, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !81
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  %and = and i32 %22, %shl3
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then34.land.lhs.true_crit_edge, label %if.then34.for.end_crit_edge

if.then34.for.end_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then34.land.lhs.true_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then34.for.end_crit_edge, %if.then21, %entry.for.end_crit_edge
  %data.0 = phi i32 [ %16, %if.then21 ], [ %10, %entry.for.end_crit_edge ], [ %22, %if.then34.for.end_crit_edge ]
  %and37 = and i32 %data.0, %shl3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then40, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %pattern) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %if.then40 ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_reset(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %or = or i32 %5, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i7 = getelementptr inbounds %struct.dss_io_region, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i7, align 4
  %add.ptr.i8 = getelementptr i8, ptr %10, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8, i32 %6) #6, !srcloc !83
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  %and = and i32 %5, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %11 = tail call i32 @llvm.bswap.i32(i32 %and) #6
  %12 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io.i, align 4
  %base.i10 = getelementptr inbounds %struct.dss_io_region, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %11) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @dp_catalog_ctrl_mainlink_ready(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 524) #6
  %io = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %base49 = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base49, align 4
  %add.ptr850 = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr850) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and51 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool.not52 = icmp eq i32 %and51, 0
  br i1 %tobool.not52, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then31.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call15 = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %if.then18, label %if.then31

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io, align 4
  %base24 = getelementptr inbounds %struct.dss_io_data, ptr %7, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %base24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base24, align 4
  %add.ptr25 = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #6, !srcloc !81
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  br label %for.end

if.then31:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %12 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %io, align 4
  %base = getelementptr inbounds %struct.dss_io_data, ptr %13, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr8 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #6, !srcloc !81
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  %and = and i32 %17, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then31.land.lhs.true_crit_edge, label %if.then31.for.end_crit_edge

if.then31.for.end_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then31.land.lhs.true_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

for.end:                                          ; preds = %if.then31.for.end_crit_edge, %if.then18, %entry.for.end_crit_edge
  %data.0 = phi i32 [ %11, %if.then18 ], [ %5, %entry.for.end_crit_edge ], [ %17, %if.then31.for.end_crit_edge ]
  %and34 = and i32 %data.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.then37, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %for.end.cleanup_crit_edge
  %18 = xor i1 %tobool35.not, true
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_enable_irq(ptr nocapture noundef readonly %dp_catalog, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 541692452) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %base.i5 = getelementptr inbounds %struct.dss_io_region, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 604569600) #6, !srcloc !83
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %base.i11 = getelementptr inbounds %struct.dss_io_region, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 0) #6, !srcloc !83
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_hpd_config_intr(ptr nocapture noundef readonly %dp_catalog, i32 noundef %intr_mask, i1 noundef zeroext %en) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %or = or i32 %5, %intr_mask
  %neg = xor i32 %intr_mask, -1
  %and = and i32 %5, %neg
  %cond = select i1 %en, i32 %or, i32 %and
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef %intr_mask, i32 noundef %cond) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %and1 = shl i32 %cond, 24
  %6 = and i32 %and1, 251658240
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i9 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i9, align 4
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %6) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_hpd_config(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i, align 4
  %base.i.i = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !81
  %10 = or i32 %9, 150994944
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.24, i32 noundef 9, i32 noundef %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %and1.i = shl i32 %11, 24
  %12 = and i32 %and1.i, 251658240
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %base.i9.i = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %base.i9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i9.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10.i, i32 %12) #6, !srcloc !83
  %17 = or i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %base.i6 = getelementptr inbounds %struct.dss_io_data, ptr %19, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %17) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io.i, align 4
  %base.i9 = getelementptr inbounds %struct.dss_io_data, ptr %23, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %base.i9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i9, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 16777216) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_link_is_connected(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.25, i32 noundef %5) #6
  %shr = lshr i32 %5, 28
  ret i32 %shr
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_hpd_get_intr_status(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  %and = shl i32 %5, 24
  %6 = and i32 %and, 251658240
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i4 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %6) #6, !srcloc !83
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_get_interrupt(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  %and = and i32 %5, -2341
  %and1 = shl i32 %5, 1
  %shl = and i32 %and1, 1170
  %or = or i32 %shl, 2340
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %6 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i6 = getelementptr inbounds %struct.dss_io_region, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %6) #6, !srcloc !83
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_phy_reset(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_region, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 83886080) #6, !srcloc !83
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %base.i3 = getelementptr inbounds %struct.dss_io_region, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i3, align 4
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_update_vx_px(ptr nocapture noundef readonly %dp_catalog, i8 noundef zeroext %v_level, i8 noundef zeroext %p_level) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io, align 4
  %phy1 = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %phy_opts = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 2
  %conv = zext i8 %v_level to i32
  %voltage = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 2, i32 0, i32 2
  %4 = ptrtoint ptr %voltage to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %voltage, align 4
  %conv2 = zext i8 %p_level to i32
  %pre = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 2, i32 0, i32 6
  %5 = ptrtoint ptr %pre to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %pre, align 4
  %set_voltages = getelementptr inbounds %struct.dp_io, ptr %1, i32 0, i32 2, i32 0, i32 10
  %6 = ptrtoint ptr %set_voltages to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %set_voltages, align 4
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %set_voltages, align 4
  %call = tail call i32 @phy_configure(ptr noundef %3, ptr noundef %phy_opts) #6
  %7 = ptrtoint ptr %set_voltages to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load6 = load i8, ptr %set_voltages, align 4
  %bf.clear7 = and i8 %bf.load6, -17
  store i8 %bf.clear7, ptr %set_voltages, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_configure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_ctrl_send_phy_pattern(ptr noundef readonly %dp_catalog, i32 noundef %pattern) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.26, i32 noundef %pattern) #6
  %4 = zext i32 %pattern to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %pattern, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 5, label %sw.bb4
    i32 7, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %io.i, align 4
  %base.i43 = getelementptr inbounds %struct.dss_io_data, ptr %6, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %base.i43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i43, align 4
  %add.ptr.i44 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 16777216) #6, !srcloc !83
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %io.i, align 4
  %base.i46 = getelementptr inbounds %struct.dss_io_data, ptr %10, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %base.i46 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io.i, align 4
  %base.i49 = getelementptr inbounds %struct.dss_io_data, ptr %14, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %base.i49 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i50, i32 -67108864) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %base.i52 = getelementptr inbounds %struct.dss_io_data, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %20, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 33554432) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io.i, align 4
  %base.i55 = getelementptr inbounds %struct.dss_io_data, ptr %22, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 268435456) #6, !srcloc !83
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io.i, align 4
  %base.i58 = getelementptr inbounds %struct.dss_io_data, ptr %26, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %base.i58 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i58, align 4
  %add.ptr.i59 = getelementptr i8, ptr %28, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 536870912) #6, !srcloc !83
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %io.i, align 4
  %base.i61 = getelementptr inbounds %struct.dss_io_data, ptr %30, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %base.i61 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i61, align 4
  %add.ptr.i62 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 1073741824) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  %base.i64 = getelementptr inbounds %struct.dss_io_data, ptr %34, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %base.i64 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i64, align 4
  %add.ptr.i65 = getelementptr i8, ptr %36, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 -528281794) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io.i, align 4
  %base.i67 = getelementptr inbounds %struct.dss_io_data, ptr %38, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %base.i67 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i67, align 4
  %add.ptr.i68 = getelementptr i8, ptr %40, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 -119504113) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io.i, align 4
  %base.i70 = getelementptr inbounds %struct.dss_io_data, ptr %42, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i70, align 4
  %add.ptr.i71 = getelementptr i8, ptr %44, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 1056440320) #6, !srcloc !83
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %io.i, align 4
  %base.i73 = getelementptr inbounds %struct.dss_io_data, ptr %46, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %base.i73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i73, align 4
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #6, !srcloc !81
  %50 = and i32 %49, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %51 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %io.i, align 4
  %base.i75 = getelementptr inbounds %struct.dss_io_data, ptr %52, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %base.i75 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i75, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %50) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io.i, align 4
  %base.i77 = getelementptr inbounds %struct.dss_io_data, ptr %56, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %base.i77 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i77, align 4
  %add.ptr.i78 = getelementptr i8, ptr %58, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i78, i32 256) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %59 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %io.i, align 4
  %base.i80 = getelementptr inbounds %struct.dss_io_data, ptr %60, i32 0, i32 2, i32 1
  %61 = ptrtoint ptr %base.i80 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i80, align 4
  %add.ptr.i81 = getelementptr i8, ptr %62, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 -67108608) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %io.i, align 4
  %base.i83 = getelementptr inbounds %struct.dss_io_data, ptr %64, i32 0, i32 2, i32 1
  %65 = ptrtoint ptr %base.i83 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i83, align 4
  %add.ptr.i84 = getelementptr i8, ptr %66, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 33554432) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %io.i, align 4
  %base.i86 = getelementptr inbounds %struct.dss_io_data, ptr %68, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %base.i86 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i86, align 4
  %add.ptr.i87 = getelementptr i8, ptr %70, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 268435456) #6, !srcloc !83
  %71 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io.i, align 4
  %base.i89 = getelementptr inbounds %struct.dss_io_data, ptr %72, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %base.i89 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i89, align 4
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #6, !srcloc !81
  %76 = or i32 %75, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %io.i, align 4
  %base.i91 = getelementptr inbounds %struct.dss_io_data, ptr %78, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %base.i91 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i91, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %76) #6, !srcloc !83
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %81 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io.i, align 4
  %base.i93 = getelementptr inbounds %struct.dss_io_data, ptr %82, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %base.i93 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i93, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 16777216) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %85 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %io.i, align 4
  %base.i95 = getelementptr inbounds %struct.dss_io_data, ptr %86, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %base.i95 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 134217728) #6, !srcloc !83
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.27, i32 noundef %pattern) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb9, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_ctrl_read_phy_pattern(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dp_catalog_panel_timing_cfg(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %total = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 1
  %0 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %total, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !83
  %sync_start = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 2
  %7 = ptrtoint ptr %sync_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sync_start, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #6
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %base.i10 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %base.i10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %9) #6, !srcloc !83
  %width_blanking = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 3
  %14 = ptrtoint ptr %width_blanking to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width_blanking, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #6
  %17 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io.i, align 4
  %base.i13 = getelementptr inbounds %struct.dss_io_data, ptr %18, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %base.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %20, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %16) #6, !srcloc !83
  %dp_active = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 4
  %21 = ptrtoint ptr %dp_active to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dp_active, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %io.i, align 4
  %base.i16 = getelementptr inbounds %struct.dss_io_data, ptr %25, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %base.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %27, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %23) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i, align 4
  %base.i19 = getelementptr inbounds %struct.dss_io_data, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i19, align 4
  %add.ptr.i20 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 0) #6, !srcloc !83
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_panel_tpg_enable(ptr noundef readonly %dp_catalog, ptr nocapture noundef readonly %drm_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 4
  %0 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %htotal, align 2
  %conv = zext i16 %1 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 9
  %2 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vtotal, align 4
  %conv1 = zext i16 %3 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 7
  %4 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vsync_start, align 4
  %conv4 = zext i16 %5 to i32
  %sub = sub nsw i32 %conv1, %conv4
  %mul = mul i32 %sub, %conv
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay, align 2
  %conv7 = zext i16 %7 to i32
  %sub9 = add nsw i32 %sub, %conv7
  %mul10 = mul i32 %sub9, %conv
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 2
  %8 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_start, align 2
  %conv14 = zext i16 %9 to i32
  %sub15 = sub nsw i32 %conv, %conv14
  %add = add i32 %sub15, %mul
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv18 = zext i16 %11 to i32
  %12 = xor i32 %conv14, -1
  %13 = add nsw i32 %conv18, %12
  %sub20 = add i32 %mul10, %13
  %sub32 = add nsw i32 %13, %conv
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 8
  %14 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vsync_end, align 2
  %conv33 = zext i16 %15 to i32
  %sub36 = sub nsw i32 %conv33, %conv4
  %shl = shl nuw i32 %conv, 16
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 3
  %16 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_end, align 4
  %conv37 = zext i16 %17 to i32
  %sub40 = sub nsw i32 %conv37, %conv14
  %or = or i32 %sub40, %shl
  %shl41 = shl i32 %sub32, 16
  %or42 = or i32 %shl41, %sub15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %19, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %23 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %io.i, align 4
  %base.i91 = getelementptr inbounds %struct.dss_io_data, ptr %24, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %base.i91 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i91, align 4
  %add.ptr.i92 = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %22) #6, !srcloc !83
  %mul43 = mul nuw i32 %conv1, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %mul43) #6
  %28 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io.i, align 4
  %base.i94 = getelementptr inbounds %struct.dss_io_data, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %base.i94 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i94, align 4
  %add.ptr.i95 = getelementptr i8, ptr %31, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %27) #6, !srcloc !83
  %mul44 = mul i32 %sub36, %conv
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %mul44) #6
  %33 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io.i, align 4
  %base.i97 = getelementptr inbounds %struct.dss_io_data, ptr %34, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %base.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i97, align 4
  %add.ptr.i98 = getelementptr i8, ptr %36, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %32) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io.i, align 4
  %base.i100 = getelementptr inbounds %struct.dss_io_data, ptr %38, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %base.i100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i100, align 4
  %add.ptr.i101 = getelementptr i8, ptr %40, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %io.i, align 4
  %base.i103 = getelementptr inbounds %struct.dss_io_data, ptr %42, i32 0, i32 3, i32 1
  %43 = ptrtoint ptr %base.i103 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i103, align 4
  %add.ptr.i104 = getelementptr i8, ptr %44, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %45 = tail call i32 @llvm.bswap.i32(i32 %or42) #6
  %46 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %io.i, align 4
  %base.i106 = getelementptr inbounds %struct.dss_io_data, ptr %47, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %base.i106 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i106, align 4
  %add.ptr.i107 = getelementptr i8, ptr %49, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %45) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %50 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %io.i, align 4
  %base.i109 = getelementptr inbounds %struct.dss_io_data, ptr %51, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %base.i109 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i109, align 4
  %add.ptr.i110 = getelementptr i8, ptr %53, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %add) #6
  %55 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %io.i, align 4
  %base.i112 = getelementptr inbounds %struct.dss_io_data, ptr %56, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %base.i112 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i112, align 4
  %add.ptr.i113 = getelementptr i8, ptr %58, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %54) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %59 = tail call i32 @llvm.bswap.i32(i32 %sub20) #6
  %60 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io.i, align 4
  %base.i115 = getelementptr inbounds %struct.dss_io_data, ptr %61, i32 0, i32 3, i32 1
  %62 = ptrtoint ptr %base.i115 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i115, align 4
  %add.ptr.i116 = getelementptr i8, ptr %63, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %59) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %io.i, align 4
  %base.i118 = getelementptr inbounds %struct.dss_io_data, ptr %65, i32 0, i32 3, i32 1
  %66 = ptrtoint ptr %base.i118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i118, align 4
  %add.ptr.i119 = getelementptr i8, ptr %67, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %68 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %io.i, align 4
  %base.i121 = getelementptr inbounds %struct.dss_io_data, ptr %69, i32 0, i32 3, i32 1
  %70 = ptrtoint ptr %base.i121 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i121, align 4
  %add.ptr.i122 = getelementptr i8, ptr %71, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %io.i, align 4
  %base.i124 = getelementptr inbounds %struct.dss_io_data, ptr %73, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %base.i124 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i124, align 4
  %add.ptr.i125 = getelementptr i8, ptr %75, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io.i, align 4
  %base.i127 = getelementptr inbounds %struct.dss_io_data, ptr %77, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %base.i127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i127, align 4
  %add.ptr.i128 = getelementptr i8, ptr %79, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %80 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %io.i, align 4
  %base.i130 = getelementptr inbounds %struct.dss_io_data, ptr %81, i32 0, i32 3, i32 1
  %82 = ptrtoint ptr %base.i130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i130, align 4
  %add.ptr.i131 = getelementptr i8, ptr %83, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i131, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %84 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %io.i, align 4
  %base.i133 = getelementptr inbounds %struct.dss_io_data, ptr %85, i32 0, i32 3, i32 1
  %86 = ptrtoint ptr %base.i133 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i133, align 4
  %add.ptr.i134 = getelementptr i8, ptr %87, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io.i, align 4
  %base.i136 = getelementptr inbounds %struct.dss_io_data, ptr %89, i32 0, i32 3, i32 1
  %90 = ptrtoint ptr %base.i136 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i136, align 4
  %add.ptr.i137 = getelementptr i8, ptr %91, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i137, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %92 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %io.i, align 4
  %base.i139 = getelementptr inbounds %struct.dss_io_data, ptr %93, i32 0, i32 3, i32 1
  %94 = ptrtoint ptr %base.i139 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i139, align 4
  %add.ptr.i140 = getelementptr i8, ptr %95, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 65536) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %io.i, align 4
  %base.i142 = getelementptr inbounds %struct.dss_io_data, ptr %97, i32 0, i32 3, i32 1
  %98 = ptrtoint ptr %base.i142 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i142, align 4
  %add.ptr.i143 = getelementptr i8, ptr %99, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i143, i32 83886080) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %io.i, align 4
  %base.i145 = getelementptr inbounds %struct.dss_io_data, ptr %101, i32 0, i32 3, i32 1
  %102 = ptrtoint ptr %base.i145 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i145, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 16777216) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io.i, align 4
  %base.i147 = getelementptr inbounds %struct.dss_io_data, ptr %105, i32 0, i32 3, i32 1
  %106 = ptrtoint ptr %base.i147 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i147, align 4
  %add.ptr.i148 = getelementptr i8, ptr %107, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 16777216) #6, !srcloc !83
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dp_catalog_panel_tpg_enable) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_panel_tpg_disable(ptr nocapture noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %io.i, align 4
  %base.i4 = getelementptr inbounds %struct.dss_io_data, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %base.i6 = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %base.i6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #6, !srcloc !83
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dp_catalog_get(ptr noundef %dev, ptr noundef %io) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %io, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %io7 = getelementptr inbounds %struct.dp_catalog_private, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %io7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %io, ptr %io7, align 4
  %dp_catalog = getelementptr inbounds %struct.dp_catalog_private, ptr %call.i, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %dp_catalog, %if.end5 ], [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_get_header(ptr noundef %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_map = getelementptr i8, ptr %dp_catalog, i32 -4
  %0 = ptrtoint ptr %audio_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_map, align 4
  %sdp_type = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 5
  %2 = ptrtoint ptr %sdp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdp_type, align 4
  %sdp_header = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 6
  %4 = ptrtoint ptr %sdp_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdp_header, align 4
  %arrayidx1 = getelementptr [3 x i32], ptr %1, i32 %3, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %8 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %9, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #6
  %audio_data = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 7
  %14 = ptrtoint ptr %audio_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %audio_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_set_header(ptr noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_map = getelementptr i8, ptr %dp_catalog, i32 -4
  %0 = ptrtoint ptr %audio_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %audio_map, align 4
  %sdp_type = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 5
  %2 = ptrtoint ptr %sdp_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sdp_type, align 4
  %sdp_header = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 6
  %4 = ptrtoint ptr %sdp_header to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sdp_header, align 4
  %audio_data = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 7
  %6 = ptrtoint ptr %audio_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %audio_data, align 4
  %arrayidx1 = getelementptr [3 x i32], ptr %1, i32 %3, i32 %5
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_config_acr(ptr noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_data = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 7
  %0 = ptrtoint ptr %audio_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_data, align 4
  %shl = shl i32 %1, 4
  %or2 = or i32 %shl, -2147467008
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.30, i32 noundef %1, i32 noundef %or2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %2 = tail call i32 @llvm.bswap.i32(i32 %or2) #6
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %3 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %4, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 528
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_enable(ptr noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_data = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 7
  %0 = ptrtoint ptr %audio_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp ne i32 %1, 0
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 512
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %7 = and i32 %6, -16777217
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %masksel = zext i1 %tobool1.not to i32
  %audio_ctrl.0 = or i32 %8, %masksel
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.31, i32 noundef %audio_ctrl.0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %audio_ctrl.0) #6
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %base.i15 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %13, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16, i32 %9) #6, !srcloc !83
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_config_sdp(ptr noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %0 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 552
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %5 = or i32 %4, 1711280128
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.32, i32 noundef %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io.i, align 4
  %base.i23 = getelementptr inbounds %struct.dss_io_data, ptr %8, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %base.i23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i23, align 4
  %add.ptr.i24 = getelementptr i8, ptr %10, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %5) #6, !srcloc !83
  %11 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io.i, align 4
  %base.i26 = getelementptr inbounds %struct.dss_io_data, ptr %12, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %base.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i26, align 4
  %add.ptr.i27 = getelementptr i8, ptr %14, i32 556
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i27) #6, !srcloc !81
  %16 = and i32 %15, -50331649
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.33, i32 noundef %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io.i, align 4
  %base.i29 = getelementptr inbounds %struct.dss_io_data, ptr %19, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %base.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %21, i32 556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %16) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @dp_catalog_audio_init(ptr noundef writeonly %dp_catalog) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_map = getelementptr i8, ptr %dp_catalog, i32 -4
  %0 = ptrtoint ptr %audio_map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @dp_catalog_audio_init.sdp_map, ptr %audio_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dp_catalog_audio_sfe_level(ptr noundef readonly %dp_catalog) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dp_catalog, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %audio_data = getelementptr inbounds %struct.dp_catalog, ptr %dp_catalog, i32 0, i32 7
  %0 = ptrtoint ptr %audio_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audio_data, align 4
  %io.i = getelementptr i8, ptr %dp_catalog, i32 -8
  %2 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io.i, align 4
  %base.i = getelementptr inbounds %struct.dss_io_data, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 68
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !81
  %7 = and i32 %6, -535887872
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %or = or i32 %8, %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 256, ptr noundef nonnull @.str.34, i32 noundef %or, i32 noundef %1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  %10 = ptrtoint ptr %io.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io.i, align 4
  %base.i11 = getelementptr inbounds %struct.dss_io_data, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %base.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i11, align 4
  %add.ptr.i12 = getelementptr i8, ptr %13, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %9) #6, !srcloc !83
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 62, i32 71}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 63, i32 71}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 64, i32 73}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 65, i32 69}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 269, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @dp_catalog_dump_regs._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @dp_catalog_dump_regs._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 272, i32 2}
!16 = !{ptr @dp_catalog_dump_regs._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dp_catalog_dump_regs._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 275, i32 2}
!20 = !{ptr @dp_catalog_dump_regs._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dp_catalog_dump_regs._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 278, i32 2}
!24 = !{ptr @dp_catalog_dump_regs._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dp_catalog_dump_regs._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 325, i32 2}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 353, i32 2}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 398, i32 2}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 423, i32 3}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 453, i32 2}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 468, i32 2}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 479, i32 3}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 526, i32 3}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 560, i32 2}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 591, i32 2}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 667, i32 2}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 728, i32 3}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 823, i32 2}
!52 = !{ptr @__func__.dp_catalog_panel_tpg_enable, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 841, i32 3}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 912, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 937, i32 2}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 968, i32 2}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 978, i32 2}
!63 = !{ptr @dp_catalog_audio_init.sdp_map, !64, !"sdp_map", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 987, i32 13}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 1040, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/dp/dp_catalog.c", i32 258, i32 3}
!69 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @dump_regs._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @dump_regs._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i64 3012281}
!82 = !{i64 2157310913}
!83 = !{i64 3011863}
!84 = !{i64 2157312100}
!85 = !{i64 2157314473}
!86 = !{!"auto-init"}
!87 = !{i64 2157312715}
!88 = !{i64 2157358362}
!89 = !{i64 2157358984}
!90 = !{i64 2157363733}
!91 = !{i64 2157364355}
!92 = !{i64 2157393080}
